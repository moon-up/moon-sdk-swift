//
// CosmosTransactionInput.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CosmosTransactionInput: Codable, JSONEncodable, Hashable {

    public var to: String?
    public var value: Double?
    public var network: String?
    public var compress: Bool?

    public init(to: String? = nil, value: Double? = nil, network: String? = nil, compress: Bool? = nil) {
        self.to = to
        self.value = value
        self.network = network
        self.compress = compress
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case to
        case value
        case network
        case compress
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(to, forKey: .to)
        try container.encodeIfPresent(value, forKey: .value)
        try container.encodeIfPresent(network, forKey: .network)
        try container.encodeIfPresent(compress, forKey: .compress)
    }
}

