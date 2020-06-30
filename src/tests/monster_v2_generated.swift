// automatically generated by the FlatBuffers compiler, do not modify

import FlatBuffers

public enum zzz_DflatGen__MyGame__SampleV2__Monster {
public enum MyGame {
public enum SampleV2 {

public enum Color: Int8, Enum { 
    public typealias T = Int8
    public static var byteSize: Int { return MemoryLayout<Int8>.size }
    public var value: Int8 { return self.rawValue }
    case red = 0
    case green = 1
    case blue = 2
    

    public static var max: Color { return .blue }
    public static var min: Color { return .red }
}

public enum Equipment: UInt8, Enum { 
    public typealias T = UInt8
    public static var byteSize: Int { return MemoryLayout<UInt8>.size }
    public var value: UInt8 { return self.rawValue }
    case none_ = 0
    case weapon = 1
    case orb = 2
    case empty = 3
    

    public static var max: Equipment { return .empty }
    public static var min: Equipment { return .none_ }
}

public struct Vec3: Readable {

    static func validateVersion() { FlatBuffersVersion_1_12_0() }
    public var __buffer: ByteBuffer! { return _accessor.bb }
    private var _accessor: Struct

    public static var size = 12
    public static var alignment = 4
    public init(_ bb: ByteBuffer, o: Int32) { _accessor = Struct(bb: bb, position: o) }

    public var x: Float32 { return _accessor.readBuffer(of: Float32.self, at: 0) }
    public var y: Float32 { return _accessor.readBuffer(of: Float32.self, at: 4) }
    public var z: Float32 { return _accessor.readBuffer(of: Float32.self, at: 8) }
}

public static func createVec3(x: Float32 = 0.0, y: Float32 = 0.0, z: Float32 = 0.0) -> UnsafeMutableRawPointer {
    let memory = UnsafeMutableRawPointer.allocate(byteCount: Vec3.size, alignment: Vec3.alignment)
    memory.initializeMemory(as: UInt8.self, repeating: 0, count: Vec3.size)
    memory.storeBytes(of: x, toByteOffset: 0, as: Float32.self)
    memory.storeBytes(of: y, toByteOffset: 4, as: Float32.self)
    memory.storeBytes(of: z, toByteOffset: 8, as: Float32.self)
    return memory
}

public struct Empty: FlatBufferObject {

    static func validateVersion() { FlatBuffersVersion_1_12_0() }
    public var __buffer: ByteBuffer! { return _accessor.bb }
    private var _accessor: Table

    public static func getRootAsEmpty(bb: ByteBuffer) -> Empty { return Empty(Table(bb: bb, position: Int32(bb.read(def: UOffset.self, position: bb.reader)) + Int32(bb.reader))) }

    private init(_ t: Table) { _accessor = t }
    public init(_ bb: ByteBuffer, o: Int32) { _accessor = Table(bb: bb, position: o) }

    public static func startEmpty(_ fbb: inout FlatBufferBuilder) -> UOffset { fbb.startTable(with: 0) }
    public static func endEmpty(_ fbb: inout FlatBufferBuilder, start: UOffset) -> Offset<UOffset> { let end = Offset<UOffset>(offset: fbb.endTable(at: start)); return end }
}

public struct Monster: FlatBufferObject {

    static func validateVersion() { FlatBuffersVersion_1_12_0() }
    public var __buffer: ByteBuffer! { return _accessor.bb }
    private var _accessor: Table

    public static func getRootAsMonster(bb: ByteBuffer) -> Monster { return Monster(Table(bb: bb, position: Int32(bb.read(def: UOffset.self, position: bb.reader)) + Int32(bb.reader))) }

    private init(_ t: Table) { _accessor = t }
    public init(_ bb: ByteBuffer, o: Int32) { _accessor = Table(bb: bb, position: o) }

    enum VTOFFSET: VOffset {
        case pos = 4
        case mana = 6
        case hp = 8
        case name = 10
        case color = 12
        case inventory = 16
        case weapons = 22
        case equippedType = 24
        case equipped = 26
        case colors = 28
        case path = 30
        case wearType = 32
        case wear = 34
        var v: Int32 { Int32(self.rawValue) }
        var p: VOffset { self.rawValue }
    }

    public var pos: zzz_DflatGen__MyGame__SampleV2__Monster.MyGame.SampleV2.Vec3? { let o = _accessor.offset(VTOFFSET.pos.v); return o == 0 ? nil : zzz_DflatGen__MyGame__SampleV2__Monster.MyGame.SampleV2.Vec3(_accessor.bb, o: o + _accessor.postion) }
    public var mana: Int16 { let o = _accessor.offset(VTOFFSET.mana.v); return o == 0 ? 150 : _accessor.readBuffer(of: Int16.self, at: o) }
    public var hp: Int16 { let o = _accessor.offset(VTOFFSET.hp.v); return o == 0 ? 100 : _accessor.readBuffer(of: Int16.self, at: o) }
    public var name: String? { let o = _accessor.offset(VTOFFSET.name.v); return o == 0 ? nil : _accessor.string(at: o) }
    public var nameSegmentArray: [UInt8]? { return _accessor.getVector(at: VTOFFSET.name.v) }
    public var color: zzz_DflatGen__MyGame__SampleV2__Monster.MyGame.SampleV2.Color { let o = _accessor.offset(VTOFFSET.color.v); return o == 0 ? .blue : zzz_DflatGen__MyGame__SampleV2__Monster.MyGame.SampleV2.Color(rawValue: _accessor.readBuffer(of: Int8.self, at: o)) ?? .blue }
    public var inventoryCount: Int32 { let o = _accessor.offset(VTOFFSET.inventory.v); return o == 0 ? 0 : _accessor.vector(count: o) }
    public func inventory(at index: Int32) -> UInt8 { let o = _accessor.offset(VTOFFSET.inventory.v); return o == 0 ? 0 : _accessor.directRead(of: UInt8.self, offset: _accessor.vector(at: o) + index * 1) }
    public var inventory: [UInt8] { return _accessor.getVector(at: VTOFFSET.inventory.v) ?? [] }
    public var weaponsCount: Int32 { let o = _accessor.offset(VTOFFSET.weapons.v); return o == 0 ? 0 : _accessor.vector(count: o) }
    public func weapons(at index: Int32) -> zzz_DflatGen__MyGame__SampleV2__Monster.MyGame.SampleV2.Weapon? { let o = _accessor.offset(VTOFFSET.weapons.v); return o == 0 ? nil : zzz_DflatGen__MyGame__SampleV2__Monster.MyGame.SampleV2.Weapon(_accessor.bb, o: _accessor.indirect(_accessor.vector(at: o) + index * 4)) }
    public var equippedType: zzz_DflatGen__MyGame__SampleV2__Monster.MyGame.SampleV2.Equipment { let o = _accessor.offset(VTOFFSET.equippedType.v); return o == 0 ? .none_ : zzz_DflatGen__MyGame__SampleV2__Monster.MyGame.SampleV2.Equipment(rawValue: _accessor.readBuffer(of: UInt8.self, at: o)) ?? .none_ }
    public func equipped<T: FlatBufferObject>(type: T.Type) -> T? { let o = _accessor.offset(VTOFFSET.equipped.v); return o == 0 ? nil : _accessor.union(o) }
    public var colorsCount: Int32 { let o = _accessor.offset(VTOFFSET.colors.v); return o == 0 ? 0 : _accessor.vector(count: o) }
    public func colors(at index: Int32) -> zzz_DflatGen__MyGame__SampleV2__Monster.MyGame.SampleV2.Color? { let o = _accessor.offset(VTOFFSET.colors.v); return o == 0 ? zzz_DflatGen__MyGame__SampleV2__Monster.MyGame.SampleV2.Color.red : zzz_DflatGen__MyGame__SampleV2__Monster.MyGame.SampleV2.Color(rawValue: _accessor.directRead(of: Int8.self, offset: _accessor.vector(at: o) + index * 1)) }
    public var pathCount: Int32 { let o = _accessor.offset(VTOFFSET.path.v); return o == 0 ? 0 : _accessor.vector(count: o) }
    public func path(at index: Int32) -> zzz_DflatGen__MyGame__SampleV2__Monster.MyGame.SampleV2.Vec3? { let o = _accessor.offset(VTOFFSET.path.v); return o == 0 ? nil : zzz_DflatGen__MyGame__SampleV2__Monster.MyGame.SampleV2.Vec3(_accessor.bb, o: _accessor.vector(at: o) + index * 12) }
    public var wearType: zzz_DflatGen__MyGame__SampleV2__Monster.MyGame.SampleV2.Equipment { let o = _accessor.offset(VTOFFSET.wearType.v); return o == 0 ? .none_ : zzz_DflatGen__MyGame__SampleV2__Monster.MyGame.SampleV2.Equipment(rawValue: _accessor.readBuffer(of: UInt8.self, at: o)) ?? .none_ }
    public func wear<T: FlatBufferObject>(type: T.Type) -> T? { let o = _accessor.offset(VTOFFSET.wear.v); return o == 0 ? nil : _accessor.union(o) }
    public static func startMonster(_ fbb: inout FlatBufferBuilder) -> UOffset { fbb.startTable(with: 16) }
    public static func add(pos: UnsafeMutableRawPointer?, _ fbb: inout FlatBufferBuilder) { guard let pos = pos else { return }; fbb.create(struct: pos, type: zzz_DflatGen__MyGame__SampleV2__Monster.MyGame.SampleV2.Vec3.self); fbb.add(structOffset: VTOFFSET.pos.p) }
    public static func add(mana: Int16, _ fbb: inout FlatBufferBuilder) { fbb.add(element: mana, def: 150, at: VTOFFSET.mana.p) }
    public static func add(hp: Int16, _ fbb: inout FlatBufferBuilder) { fbb.add(element: hp, def: 100, at: VTOFFSET.hp.p) }
    public static func add(name: Offset<String>, _ fbb: inout FlatBufferBuilder) { fbb.add(offset: name, at: VTOFFSET.name.p)  }
    public static func add(color: zzz_DflatGen__MyGame__SampleV2__Monster.MyGame.SampleV2.Color, _ fbb: inout FlatBufferBuilder) { fbb.add(element: color.rawValue, def: 2, at: VTOFFSET.color.p) }
    public static func addVectorOf(inventory: Offset<UOffset>, _ fbb: inout FlatBufferBuilder) { fbb.add(offset: inventory, at: VTOFFSET.inventory.p)  }
    public static func addVectorOf(weapons: Offset<UOffset>, _ fbb: inout FlatBufferBuilder) { fbb.add(offset: weapons, at: VTOFFSET.weapons.p)  }
    public static func add(equippedType: zzz_DflatGen__MyGame__SampleV2__Monster.MyGame.SampleV2.Equipment, _ fbb: inout FlatBufferBuilder) { fbb.add(element: equippedType.rawValue, def: 0, at: VTOFFSET.equippedType.p) }
    public static func add(equipped: Offset<UOffset>, _ fbb: inout FlatBufferBuilder) { fbb.add(offset: equipped, at: VTOFFSET.equipped.p)  }
    public static func addVectorOf(colors: Offset<UOffset>, _ fbb: inout FlatBufferBuilder) { fbb.add(offset: colors, at: VTOFFSET.colors.p)  }
    public static func addVectorOf(path: Offset<UOffset>, _ fbb: inout FlatBufferBuilder) { fbb.add(offset: path, at: VTOFFSET.path.p)  }
    public static func add(wearType: zzz_DflatGen__MyGame__SampleV2__Monster.MyGame.SampleV2.Equipment, _ fbb: inout FlatBufferBuilder) { fbb.add(element: wearType.rawValue, def: 0, at: VTOFFSET.wearType.p) }
    public static func add(wear: Offset<UOffset>, _ fbb: inout FlatBufferBuilder) { fbb.add(offset: wear, at: VTOFFSET.wear.p)  }
    public static func endMonster(_ fbb: inout FlatBufferBuilder, start: UOffset) -> Offset<UOffset> { let end = Offset<UOffset>(offset: fbb.endTable(at: start)); return end }
    public static func createMonster(_ fbb: inout FlatBufferBuilder,
    structOfPos pos: UnsafeMutableRawPointer? = nil,
    mana: Int16 = 150,
    hp: Int16 = 100,
    offsetOfName name: Offset<String> = Offset(),
    color: zzz_DflatGen__MyGame__SampleV2__Monster.MyGame.SampleV2.Color = .blue,
    vectorOfInventory inventory: Offset<UOffset> = Offset(),
    vectorOfWeapons weapons: Offset<UOffset> = Offset(),
    equippedType: zzz_DflatGen__MyGame__SampleV2__Monster.MyGame.SampleV2.Equipment = .none_,
    offsetOfEquipped equipped: Offset<UOffset> = Offset(),
    vectorOfColors colors: Offset<UOffset> = Offset(),
    vectorOfPath path: Offset<UOffset> = Offset(),
    wearType: zzz_DflatGen__MyGame__SampleV2__Monster.MyGame.SampleV2.Equipment = .none_,
    offsetOfWear wear: Offset<UOffset> = Offset()) -> Offset<UOffset> {
        let __start = Monster.startMonster(&fbb)
        Monster.add(pos: pos, &fbb)
        Monster.add(mana: mana, &fbb)
        Monster.add(hp: hp, &fbb)
        Monster.add(name: name, &fbb)
        Monster.add(color: color, &fbb)
        Monster.addVectorOf(inventory: inventory, &fbb)
        Monster.addVectorOf(weapons: weapons, &fbb)
        Monster.add(equippedType: equippedType, &fbb)
        Monster.add(equipped: equipped, &fbb)
        Monster.addVectorOf(colors: colors, &fbb)
        Monster.addVectorOf(path: path, &fbb)
        Monster.add(wearType: wearType, &fbb)
        Monster.add(wear: wear, &fbb)
        return Monster.endMonster(&fbb, start: __start)
    }
}

public struct Weapon: FlatBufferObject {

    static func validateVersion() { FlatBuffersVersion_1_12_0() }
    public var __buffer: ByteBuffer! { return _accessor.bb }
    private var _accessor: Table

    public static func getRootAsWeapon(bb: ByteBuffer) -> Weapon { return Weapon(Table(bb: bb, position: Int32(bb.read(def: UOffset.self, position: bb.reader)) + Int32(bb.reader))) }

    private init(_ t: Table) { _accessor = t }
    public init(_ bb: ByteBuffer, o: Int32) { _accessor = Table(bb: bb, position: o) }

    enum VTOFFSET: VOffset {
        case name = 4
        case damage = 6
        var v: Int32 { Int32(self.rawValue) }
        var p: VOffset { self.rawValue }
    }

    public var name: String? { let o = _accessor.offset(VTOFFSET.name.v); return o == 0 ? nil : _accessor.string(at: o) }
    public var nameSegmentArray: [UInt8]? { return _accessor.getVector(at: VTOFFSET.name.v) }
    public var damage: Int16 { let o = _accessor.offset(VTOFFSET.damage.v); return o == 0 ? 0 : _accessor.readBuffer(of: Int16.self, at: o) }
    public static func startWeapon(_ fbb: inout FlatBufferBuilder) -> UOffset { fbb.startTable(with: 2) }
    public static func add(name: Offset<String>, _ fbb: inout FlatBufferBuilder) { fbb.add(offset: name, at: VTOFFSET.name.p)  }
    public static func add(damage: Int16, _ fbb: inout FlatBufferBuilder) { fbb.add(element: damage, def: 0, at: VTOFFSET.damage.p) }
    public static func endWeapon(_ fbb: inout FlatBufferBuilder, start: UOffset) -> Offset<UOffset> { let end = Offset<UOffset>(offset: fbb.endTable(at: start)); return end }
    public static func createWeapon(_ fbb: inout FlatBufferBuilder,
    offsetOfName name: Offset<String> = Offset(),
    damage: Int16 = 0) -> Offset<UOffset> {
        let __start = Weapon.startWeapon(&fbb)
        Weapon.add(name: name, &fbb)
        Weapon.add(damage: damage, &fbb)
        return Weapon.endWeapon(&fbb, start: __start)
    }
}

public struct Orb: FlatBufferObject {

    static func validateVersion() { FlatBuffersVersion_1_12_0() }
    public var __buffer: ByteBuffer! { return _accessor.bb }
    private var _accessor: Table

    public static func getRootAsOrb(bb: ByteBuffer) -> Orb { return Orb(Table(bb: bb, position: Int32(bb.read(def: UOffset.self, position: bb.reader)) + Int32(bb.reader))) }

    private init(_ t: Table) { _accessor = t }
    public init(_ bb: ByteBuffer, o: Int32) { _accessor = Table(bb: bb, position: o) }

    enum VTOFFSET: VOffset {
        case name = 4
        case color = 6
        var v: Int32 { Int32(self.rawValue) }
        var p: VOffset { self.rawValue }
    }

    public var name: String? { let o = _accessor.offset(VTOFFSET.name.v); return o == 0 ? nil : _accessor.string(at: o) }
    public var nameSegmentArray: [UInt8]? { return _accessor.getVector(at: VTOFFSET.name.v) }
    public var color: zzz_DflatGen__MyGame__SampleV2__Monster.MyGame.SampleV2.Color { let o = _accessor.offset(VTOFFSET.color.v); return o == 0 ? .red : zzz_DflatGen__MyGame__SampleV2__Monster.MyGame.SampleV2.Color(rawValue: _accessor.readBuffer(of: Int8.self, at: o)) ?? .red }
    public static func startOrb(_ fbb: inout FlatBufferBuilder) -> UOffset { fbb.startTable(with: 2) }
    public static func add(name: Offset<String>, _ fbb: inout FlatBufferBuilder) { fbb.add(offset: name, at: VTOFFSET.name.p)  }
    public static func add(color: zzz_DflatGen__MyGame__SampleV2__Monster.MyGame.SampleV2.Color, _ fbb: inout FlatBufferBuilder) { fbb.add(element: color.rawValue, def: 0, at: VTOFFSET.color.p) }
    public static func endOrb(_ fbb: inout FlatBufferBuilder, start: UOffset) -> Offset<UOffset> { let end = Offset<UOffset>(offset: fbb.endTable(at: start)); return end }
    public static func createOrb(_ fbb: inout FlatBufferBuilder,
    offsetOfName name: Offset<String> = Offset(),
    color: zzz_DflatGen__MyGame__SampleV2__Monster.MyGame.SampleV2.Color = .red) -> Offset<UOffset> {
        let __start = Orb.startOrb(&fbb)
        Orb.add(name: name, &fbb)
        Orb.add(color: color, &fbb)
        return Orb.endOrb(&fbb, start: __start)
    }
}

}

// MARK: - SampleV2

}

// MARK: - MyGame

}

// MARK: - zzz_DflatGen__MyGame__SampleV2__Monster


