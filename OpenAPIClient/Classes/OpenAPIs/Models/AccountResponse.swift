//
// AccountResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AccountResponse: Codable, JSONEncodable, Hashable {

    public var keys: [String]?
    public var address: String?

    public init(keys: [String]? = nil, address: String? = nil) {
        self.keys = keys
        self.address = address
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case keys
        case address
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(keys, forKey: .keys)
        try container.encodeIfPresent(address, forKey: .address)
    }
}
