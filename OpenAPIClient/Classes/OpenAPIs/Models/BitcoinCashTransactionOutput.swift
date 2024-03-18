//
// BitcoinCashTransactionOutput.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct BitcoinCashTransactionOutput: Codable, JSONEncodable, Hashable {

    public var signedTx: String?
    public var transactionHash: String?

    public init(signedTx: String? = nil, transactionHash: String? = nil) {
        self.signedTx = signedTx
        self.transactionHash = transactionHash
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case signedTx
        case transactionHash = "transaction_hash"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(signedTx, forKey: .signedTx)
        try container.encodeIfPresent(transactionHash, forKey: .transactionHash)
    }
}

