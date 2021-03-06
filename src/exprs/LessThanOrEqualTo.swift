import FlatBuffers

public struct LessThanOrEqualToExpr<L: Expr, R: Expr>: Expr where L.ResultType == R.ResultType, L.ResultType: Comparable {
  public typealias ResultType = Bool
  public let left: L
  public let right: R
  public func evaluate(object: Evaluable) -> (result: ResultType, unknown: Bool) {
    let lval = left.evaluate(object: object)
    let rval = right.evaluate(object: object)
    return (lval.result <= rval.result, lval.unknown || rval.unknown)
  }
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

public func <= <L, R>(left: L, right: R) -> LessThanOrEqualToExpr<L, R> where L.ResultType == R.ResultType, L.ResultType: Comparable {
  return LessThanOrEqualToExpr(left: left, right: right)
}

public func <= <L, R>(left: L, right: R) -> LessThanOrEqualToExpr<L, ValueExpr<R>> where L.ResultType == R, R: Comparable {
  return LessThanOrEqualToExpr(left: left, right: ValueExpr(right))
}

public func <= <L, R>(left: L, right: R) -> LessThanOrEqualToExpr<ValueExpr<L>, R> where L: Comparable, L == R.ResultType {
  return LessThanOrEqualToExpr(left: ValueExpr(left), right: right)
}
