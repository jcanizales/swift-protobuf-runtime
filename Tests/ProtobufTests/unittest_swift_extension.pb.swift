/*
 * DO NOT EDIT.
 *
 * Generated by the protocol buffer compiler.
 * Source: unittest_swift_extension.proto
 *
 */

//  Protos/unittest_swift_extension.proto - test proto
// 
//  This source file is part of the Swift.org open source project
// 
//  Copyright (c) 2014 - 2016 Apple Inc. and the Swift project authors
//  Licensed under Apache License v2.0 with Runtime Library Exception
// 
//  See http://swift.org/LICENSE.txt for license information
//  See http://swift.org/CONTRIBUTORS.txt for the list of Swift project authors
// 
//  -----------------------------------------------------------------------------
// /
// / Test handling of extensions to deeply nested messages.
// /
//  -----------------------------------------------------------------------------

import Foundation
import Protobuf


public struct ProtobufUnittest_Extend_Foo: ProtobufGeneratedMessage {
  public var swiftClassName: String {return "ProtobufUnittest_Extend_Foo"}
  public var protoMessageName: String {return "Foo"}
  public var protoPackageName: String {return "protobuf_unittest.extend"}
  public var jsonFieldNames: [String: Int] {return [:]}
  public var protoFieldNames: [String: Int] {return [:]}

  var unknown = ProtobufUnknownStorage()

  public struct Bar: ProtobufGeneratedMessage {
    public var swiftClassName: String {return "ProtobufUnittest_Extend_Foo.Bar"}
    public var protoMessageName: String {return "Bar"}
    public var protoPackageName: String {return "protobuf_unittest.extend"}
    public var jsonFieldNames: [String: Int] {return [:]}
    public var protoFieldNames: [String: Int] {return [:]}

    var unknown = ProtobufUnknownStorage()

    public struct Baz: ProtobufGeneratedMessage, ProtobufExtensibleMessage {
      public var swiftClassName: String {return "ProtobufUnittest_Extend_Foo.Bar.Baz"}
      public var protoMessageName: String {return "Baz"}
      public var protoPackageName: String {return "protobuf_unittest.extend"}
      public var jsonFieldNames: [String: Int] {return [
        "a": 1,
      ]}
      public var protoFieldNames: [String: Int] {return [
        "a": 1,
      ]}

      var unknown = ProtobufUnknownStorage()

      public var a: Int32? = nil

      public init() {}

      public init(a: Int32? = nil)
      {
        self.a = a
      }

      public mutating func _protoc_generated_decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
        let handled: Bool
        switch protoFieldNumber {
        case 1: handled = try setter.decodeOptionalField(fieldType: ProtobufInt32.self, value: &a)
        default:
          if (100 <= protoFieldNumber && protoFieldNumber < 1001) {
            handled = try setter.decodeExtensionField(values: &extensionFieldValues, messageType: Baz.self, protoFieldNumber: protoFieldNumber)
          } else {
            handled = false
          }
        }
        if handled {
            return true
        } else {
            return try unknown.decodeField(setter: &setter)
        }
      }

      public func _protoc_generated_traverse(visitor: inout ProtobufVisitor) throws {
        if let v = a {
          try visitor.visitSingularField(fieldType: ProtobufInt32.self, value: v, protoFieldNumber: 1, protoFieldName: "a", jsonFieldName: "a", swiftFieldName: "a")
        }
        try extensionFieldValues.traverse(visitor: &visitor, start: 100, end: 1001)
        unknown.traverse(visitor: &visitor)
      }

      public var _protoc_generated_isEmpty: Bool {
        if a != nil {return false}
        if !unknown.isEmpty {return false}
        if !extensionFieldValues.isEmpty {return false}
        return true
      }

      public func _protoc_generated_isEqualTo(other: ProtobufUnittest_Extend_Foo.Bar.Baz) -> Bool {
        if ((a != nil || other.a != nil) && (a == nil || other.a == nil || a! != other.a!)) {return false}
        if unknown != other.unknown {return false}
        if extensionFieldValues != other.extensionFieldValues {return false}
        return true
      }

      private var extensionFieldValues = ProtobufExtensionFieldValueSet()

      public mutating func setExtensionValue<F: ProtobufExtensionField>(ext: ProtobufGenericMessageExtension<F, Baz>, value: F.ValueType) {
        extensionFieldValues[ext.protoFieldNumber] = ext.set(value: value)
      }

      public func getExtensionValue<F: ProtobufExtensionField>(ext: ProtobufGenericMessageExtension<F, Baz>) -> F.ValueType {
        if let fieldValue = extensionFieldValues[ext.protoFieldNumber] as? F {
          return fieldValue.value
        }
        return ext.defaultValue
      }
    }

    public init() {}

    public mutating func _protoc_generated_decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
      return try unknown.decodeField(setter: &setter)
    }

    public func _protoc_generated_traverse(visitor: inout ProtobufVisitor) throws {
      unknown.traverse(visitor: &visitor)
    }

    public var _protoc_generated_isEmpty: Bool {
      if !unknown.isEmpty {return false}
      return true
    }

    public func _protoc_generated_isEqualTo(other: ProtobufUnittest_Extend_Foo.Bar) -> Bool {
      if unknown != other.unknown {return false}
      return true
    }
  }

  public init() {}

  public mutating func _protoc_generated_decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
    return try unknown.decodeField(setter: &setter)
  }

  public func _protoc_generated_traverse(visitor: inout ProtobufVisitor) throws {
    unknown.traverse(visitor: &visitor)
  }

  public var _protoc_generated_isEmpty: Bool {
    if !unknown.isEmpty {return false}
    return true
  }

  public func _protoc_generated_isEqualTo(other: ProtobufUnittest_Extend_Foo) -> Bool {
    if unknown != other.unknown {return false}
    return true
  }
}

public struct ProtobufUnittest_Extend_C: ProtobufGeneratedGroup {
  public var swiftClassName: String {return "ProtobufUnittest_Extend_C"}
  public var protoMessageName: String {return "C"}
  public var protoPackageName: String {return "protobuf_unittest.extend"}
  public var jsonFieldNames: [String: Int] {return [
    "c": 999,
  ]}
  public var protoFieldNames: [String: Int] {return [
    "c": 999,
  ]}

  var unknown = ProtobufUnknownStorage()

  ///   extensions 10 to 20;
  public var c: Int64? = nil

  public init() {}

  public init(c: Int64? = nil)
  {
    self.c = c
  }

  public mutating func _protoc_generated_decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
    let handled: Bool
    switch protoFieldNumber {
    case 999: handled = try setter.decodeOptionalField(fieldType: ProtobufInt64.self, value: &c)
    default:
      handled = false
    }
    if handled {
        return true
    } else {
        return try unknown.decodeField(setter: &setter)
    }
  }

  public func _protoc_generated_traverse(visitor: inout ProtobufVisitor) throws {
    if let v = c {
      try visitor.visitSingularField(fieldType: ProtobufInt64.self, value: v, protoFieldNumber: 999, protoFieldName: "c", jsonFieldName: "c", swiftFieldName: "c")
    }
    unknown.traverse(visitor: &visitor)
  }

  public var _protoc_generated_isEmpty: Bool {
    if c != nil {return false}
    if !unknown.isEmpty {return false}
    return true
  }

  public func _protoc_generated_isEqualTo(other: ProtobufUnittest_Extend_C) -> Bool {
    if ((c != nil || other.c != nil) && (c == nil || other.c == nil || c! != other.c!)) {return false}
    if unknown != other.unknown {return false}
    return true
  }
}

let ProtobufUnittest_Extend_Foo_Bar_Baz_b = ProtobufGenericMessageExtension<ProtobufOptionalField<ProtobufString>, ProtobufUnittest_Extend_Foo.Bar.Baz>(protoFieldNumber: 100, protoFieldName: "b", jsonFieldName: "b", swiftFieldName: "b", defaultValue: nil)

let ProtobufUnittest_Extend_Foo_Bar_Baz_c = ProtobufGenericMessageExtension<ProtobufOptionalGroupField<ProtobufUnittest_Extend_C>, ProtobufUnittest_Extend_Foo.Bar.Baz>(protoFieldNumber: 101, protoFieldName: "c", jsonFieldName: "c", swiftFieldName: "c", defaultValue: nil)

extension ProtobufUnittest_Extend_Foo.Bar.Baz {
  var b: String? {
    get {return getExtensionValue(ext: ProtobufUnittest_Extend_Foo_Bar_Baz_b)}
    set {setExtensionValue(ext: ProtobufUnittest_Extend_Foo_Bar_Baz_b, value: newValue)}
  }
}

extension ProtobufUnittest_Extend_Foo.Bar.Baz {
  var c: ProtobufUnittest_Extend_C? {
    get {return getExtensionValue(ext: ProtobufUnittest_Extend_Foo_Bar_Baz_c)}
    set {setExtensionValue(ext: ProtobufUnittest_Extend_Foo_Bar_Baz_c, value: newValue)}
  }
}

let ProtobufUnittest_Extend_UnittestSwiftExtension_Extensions: ProtobufExtensionSet = [
  ProtobufUnittest_Extend_Foo_Bar_Baz_b,
  ProtobufUnittest_Extend_Foo_Bar_Baz_c
]
