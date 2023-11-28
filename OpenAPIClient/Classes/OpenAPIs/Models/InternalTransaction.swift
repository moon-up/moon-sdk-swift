//
// InternalTransaction.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct InternalTransaction: Codable, JSONEncodable, Hashable {

    public var from: String?
    public var to: String?
    public var value: String?
    public var transactionHash: String
    public var gas: String?

    public init(from: String?, to: String?, value: String?, transactionHash: String, gas: String?) {
        self.from = from
        self.to = to
        self.value = value
        self.transactionHash = transactionHash
        self.gas = gas
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case from
        case to
        case value
        case transactionHash
        case gas
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(from, forKey: .from)
        try container.encode(to, forKey: .to)
        try container.encode(value, forKey: .value)
        try container.encode(transactionHash, forKey: .transactionHash)
        try container.encode(gas, forKey: .gas)
    }
}

