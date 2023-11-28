//
// SignMessage.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct SignMessage: Codable, JSONEncodable, Hashable {

    public var name: String?
    public var data: String
    public var encoding: String?
    public var header: Bool?
    public var signtype: Bool?

    public init(name: String? = nil, data: String, encoding: String? = nil, header: Bool? = nil, signtype: Bool? = nil) {
        self.name = name
        self.data = data
        self.encoding = encoding
        self.header = header
        self.signtype = signtype
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case data
        case encoding
        case header
        case signtype
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encode(data, forKey: .data)
        try container.encodeIfPresent(encoding, forKey: .encoding)
        try container.encodeIfPresent(header, forKey: .header)
        try container.encodeIfPresent(signtype, forKey: .signtype)
    }
}

