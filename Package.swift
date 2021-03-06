// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "Dflat",
  platforms: [.macOS(.v10_14), .iOS(.v11)],
  products: [
    .library(name: "Dflat", type: .static, targets: ["Dflat"]),
    .library(name: "SQLiteDflat", type: .static, targets: ["SQLiteDflat"]),
  ],
  dependencies: [
    .package(name: "FlatBuffers", url: "https://github.com/mustiikhalil/flatbuffers.git", from: "0.5.3"),
    .package(name: "SwiftAtomics", url: "https://github.com/glessard/swift-atomics.git", from: "6.0.0"),
  ],
  targets: [
  /*
    .target(
      name: "FlatBuffers",
      path: "src/FlatBuffers",
      sources: [
        "ByteBuffer.swift",
        "FlatBufferBuilder.swift",
        "FlatBuffersUtils.swift",
        "Message.swift",
        "Offset.swift",
        "Table.swift",
        "Constants.swift",
        "FlatBufferObject.swift",
        "Int+extension.swift",
        "Mutable.swift",
        "Struct.swift"
      ]
    ),
    */
    .target(
      name: "Dflat",
      dependencies: ["FlatBuffers", "SwiftAtomics"],
      path: "src",
      sources: [
        "Atom.swift",
        "ChangeRequest.swift",
        "Expr.swift",
        "FetchedResult.swift",
        "Publisher.swift",
        "QueryBuilder.swift",
        "TransactionContext.swift",
        "Workspace.swift",
        "exprs/Addition.swift",
        "exprs/Field.swift",
        "exprs/In.swift",
        "exprs/LessThan.swift",
        "exprs/Not.swift",
        "exprs/Or.swift",
        "exprs/And.swift",
        "exprs/GreaterThan.swift",
        "exprs/IsNotNull.swift",
        "exprs/LessThanOrEqualTo.swift",
        "exprs/NotEqualTo.swift",
        "exprs/Subtraction.swift",
        "exprs/EqualTo.swift",
        "exprs/GreaterThanOrEqualTo.swift",
        "exprs/IsNull.swift",
        "exprs/Mod.swift",
        "exprs/NotIn.swift",
        "exprs/Value.swift"
      ]),
    .target(
      name: "SQLiteDflatObjC",
      path: "src/sqlite",
      sources: [
        "Bridge.m",
      ],
      publicHeadersPath: "include"),
    .target(
      name: "SQLiteDflat",
      dependencies: ["Dflat", "SQLiteDflatObjC"],
      path: "src/sqlite",
      sources: [
        "SQLiteAtom.swift",
        "SQLiteConnection.swift",
        "SQLiteConnectionPool.swift",
        "SQLiteExpr.swift",
        "SQLiteFetchedResult.swift",
        "SQLiteObjectRepository.swift",
        "SQLitePersistenceToolbox.swift",
        "SQLitePublisher.swift",
        "SQLiteQueryBuilder.swift",
        "SQLiteResultPublisher.swift",
        "SQLiteTableSpace.swift",
        "SQLiteTableState.swift",
        "SQLiteTransactionContext.swift",
        "SQLiteWorkspace.swift",
        "SQLiteWorkspaceState.swift",
        "exprs/SQLiteAddition.swift",
        "exprs/SQLiteField.swift",
        "exprs/SQLiteIn.swift",
        "exprs/SQLiteLessThan.swift",
        "exprs/SQLiteNot.swift",
        "exprs/SQLiteOr.swift",
        "exprs/SQLiteAnd.swift",
        "exprs/SQLiteGreaterThan.swift",
        "exprs/SQLiteIsNotNull.swift",
        "exprs/SQLiteLessThanOrEqualTo.swift",
        "exprs/SQLiteNotEqualTo.swift",
        "exprs/SQLiteSubtraction.swift",
        "exprs/SQLiteEqualTo.swift",
        "exprs/SQLiteGreaterThanOrEqualTo.swift",
        "exprs/SQLiteIsNull.swift",
        "exprs/SQLiteMod.swift",
        "exprs/SQLiteNotIn.swift",
        "exprs/SQLiteValue.swift"
      ]),
    .testTarget(
      name: "Tests",
      dependencies: ["SQLiteDflat"],
      path: "src/tests",
      sources: [
        "ConcurrencyTests.swift",
        "ExprTests.swift",
        "FetchTests.swift",
        "namespace.swift",
        "monster_generated.swift",
        "monster_data_model_generated.swift",
        "monster_mutating_generated.swift",
        "monster_query_generated.swift",
        "monster_v2_generated.swift",
        "monster_v2_data_model_generated.swift",
        "monster_v2_mutating_generated.swift",
        "monster_v2_query_generated.swift",
        "ObjectRepositoryTests.swift",
        "SchemaUpgradeTests.swift",
        "SQLiteWorkspaceCRUDTests.swift",
        "SubscribeTests.swift",
      ])
  ]
)
