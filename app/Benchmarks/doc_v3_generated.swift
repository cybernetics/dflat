// automatically generated by the FlatBuffers compiler, do not modify

import FlatBuffers

public enum zzz_DflatGen__BenchDocV3 {

public struct BenchDocV3: FlatBufferObject {

    static func validateVersion() { FlatBuffersVersion_1_12_0() }
    public var __buffer: ByteBuffer! { return _accessor.bb }
    private var _accessor: Table

    public static func getRootAsBenchDocV3(bb: ByteBuffer) -> BenchDocV3 { return BenchDocV3(Table(bb: bb, position: Int32(bb.read(def: UOffset.self, position: bb.reader)) + Int32(bb.reader))) }

    private init(_ t: Table) { _accessor = t }
    public init(_ bb: ByteBuffer, o: Int32) { _accessor = Table(bb: bb, position: o) }

    enum VTOFFSET: VOffset {
        case title = 4
        case tag = 6
        case priority = 8
        case text = 10
        var v: Int32 { Int32(self.rawValue) }
        var p: VOffset { self.rawValue }
    }

    public var title: String? { let o = _accessor.offset(VTOFFSET.title.v); return o == 0 ? nil : _accessor.string(at: o) }
    public var titleSegmentArray: [UInt8]? { return _accessor.getVector(at: VTOFFSET.title.v) }
    public var tag: String? { let o = _accessor.offset(VTOFFSET.tag.v); return o == 0 ? nil : _accessor.string(at: o) }
    public var tagSegmentArray: [UInt8]? { return _accessor.getVector(at: VTOFFSET.tag.v) }
    public var priority: Int32 { let o = _accessor.offset(VTOFFSET.priority.v); return o == 0 ? 0 : _accessor.readBuffer(of: Int32.self, at: o) }
    public var text: String? { let o = _accessor.offset(VTOFFSET.text.v); return o == 0 ? nil : _accessor.string(at: o) }
    public var textSegmentArray: [UInt8]? { return _accessor.getVector(at: VTOFFSET.text.v) }
    public static func startBenchDocV3(_ fbb: inout FlatBufferBuilder) -> UOffset { fbb.startTable(with: 4) }
    public static func add(title: Offset<String>, _ fbb: inout FlatBufferBuilder) { fbb.add(offset: title, at: VTOFFSET.title.p)  }
    public static func add(tag: Offset<String>, _ fbb: inout FlatBufferBuilder) { fbb.add(offset: tag, at: VTOFFSET.tag.p)  }
    public static func add(priority: Int32, _ fbb: inout FlatBufferBuilder) { fbb.add(element: priority, def: 0, at: VTOFFSET.priority.p) }
    public static func add(text: Offset<String>, _ fbb: inout FlatBufferBuilder) { fbb.add(offset: text, at: VTOFFSET.text.p)  }
    public static func endBenchDocV3(_ fbb: inout FlatBufferBuilder, start: UOffset) -> Offset<UOffset> { let end = Offset<UOffset>(offset: fbb.endTable(at: start)); return end }
    public static func createBenchDocV3(_ fbb: inout FlatBufferBuilder,
    offsetOfTitle title: Offset<String> = Offset(),
    offsetOfTag tag: Offset<String> = Offset(),
    priority: Int32 = 0,
    offsetOfText text: Offset<String> = Offset()) -> Offset<UOffset> {
        let __start = BenchDocV3.startBenchDocV3(&fbb)
        BenchDocV3.add(title: title, &fbb)
        BenchDocV3.add(tag: tag, &fbb)
        BenchDocV3.add(priority: priority, &fbb)
        BenchDocV3.add(text: text, &fbb)
        return BenchDocV3.endBenchDocV3(&fbb, start: __start)
    }
}

}

// MARK: - zzz_DflatGen__BenchDocV3


