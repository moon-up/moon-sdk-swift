//
// BitcoinCashAPIResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct BitcoinCashAPIResponse: Codable, JSONEncodable, Hashable {

    public var success: Bool
    public var message: String
    public var data: BitcoinCashTransactionOutput?

    public init(success: Bool, message: String, data: BitcoinCashTransactionOutput? = nil) {
        self.success = success
        self.message = message
        self.data = data
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case success
        case message
        case data
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(success, forKey: .success)
        try container.encode(message, forKey: .message)
        try container.encodeIfPresent(data, forKey: .data)
    }
}

