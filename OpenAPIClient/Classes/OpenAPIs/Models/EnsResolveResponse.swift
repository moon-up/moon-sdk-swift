//
// EnsResolveResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct EnsResolveResponse: Codable, JSONEncodable, Hashable {

    public var address: String

    public init(address: String) {
        self.address = address
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case address
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(address, forKey: .address)
    }
}

