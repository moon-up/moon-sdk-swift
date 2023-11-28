//
// TransactionResponseTx.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct TransactionResponseTx: Codable, JSONEncodable, Hashable {

    public var data: String
    public var value: String
    public var nonce: Double
    public var gas: String
    public var to: String
    public var from: String

    public init(data: String, value: String, nonce: Double, gas: String, to: String, from: String) {
        self.data = data
        self.value = value
        self.nonce = nonce
        self.gas = gas
        self.to = to
        self.from = from
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case data
        case value
        case nonce
        case gas
        case to
        case from
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(data, forKey: .data)
        try container.encode(value, forKey: .value)
        try container.encode(nonce, forKey: .nonce)
        try container.encode(gas, forKey: .gas)
        try container.encode(to, forKey: .to)
        try container.encode(from, forKey: .from)
    }
}
