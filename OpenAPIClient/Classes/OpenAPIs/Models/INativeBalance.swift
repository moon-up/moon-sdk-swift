//
// INativeBalance.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct INativeBalance: Codable, JSONEncodable, Hashable {

    public var address: String
    public var balance: String

    public init(address: String, balance: String) {
        self.address = address
        self.balance = balance
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case address
        case balance
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(address, forKey: .address)
        try container.encode(balance, forKey: .balance)
    }
}
