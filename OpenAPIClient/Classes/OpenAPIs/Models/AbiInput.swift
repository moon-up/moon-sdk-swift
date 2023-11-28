//
// AbiInput.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AbiInput: Codable, JSONEncodable, Hashable {

    public var name: String
    public var type: String
    public var indexed: Bool?
    public var components: [AbiInput]?
    public var internalType: String?

    public init(name: String, type: String, indexed: Bool? = nil, components: [AbiInput]? = nil, internalType: String? = nil) {
        self.name = name
        self.type = type
        self.indexed = indexed
        self.components = components
        self.internalType = internalType
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case type
        case indexed
        case components
        case internalType
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encode(type, forKey: .type)
        try container.encodeIfPresent(indexed, forKey: .indexed)
        try container.encodeIfPresent(components, forKey: .components)
        try container.encodeIfPresent(internalType, forKey: .internalType)
    }
}

