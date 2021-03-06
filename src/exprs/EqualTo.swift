import FlatBuffers

public struct EqualToExpr<L: Expr, R: Expr>: Expr where L.ResultType == R.ResultType, L.ResultType: Equatable {
  public typealias ResultType = Bool
  public let left: L
  public let right: R
  public func evaluate(object: Evaluable) -> (result: ResultType, unknown: Bool) {
    let lval = left.evaluate(object: object)
    let rval = right.evaluate(object: object)
    return (lval.result == rval.result, lval.unknown || rval.unknown)
  }
  // See discussion in And.swift. For Comparable, we can get correct answer if any of them is partial. Thus,
  // if the value on both side exist, we will get correct answer, otherwise we will get UNKNOWN, and it is OK
  // because additional OR (field ISNULL) will cover that case and we will evaluate later.
  public func canUsePartialIndex(_ indexSurvey: IndexSurvey) -> IndexUsefulness {
    let lval = left.canUsePartialIndex(indexSurvey)
    let rval = right.canUsePartialIndex(indexSurvey)
    if lval == .full && rval == .full {
      return .full
    } else if lval != .none && rval != .none {
      return .partial
    }
    return .none
  }
  public func existingIndex(_ existingIndexes: inout Set<String>) {
    left.existingIndex(&existingIndexes)
    right.existingIndex(&existingIndexes)
  }
}

public func == <L, R>(left: L, right: R) -> EqualToExpr<L, R> where L.ResultType == R.ResultType, L.ResultType: Equatable {
  return EqualToExpr(left: left, right: right)
}

public func == <L, R>(left: L, right: R) -> EqualToExpr<L, ValueExpr<R>> where L.ResultType == R, R: Equatable {
  return EqualToExpr(left: left, right: ValueExpr(right))
}

public func == <L, R>(left: L, right: R) -> EqualToExpr<ValueExpr<L>, R> where L: Equatable, L == R.ResultType {
  return EqualToExpr(left: ValueExpr(left), right: right)
}
