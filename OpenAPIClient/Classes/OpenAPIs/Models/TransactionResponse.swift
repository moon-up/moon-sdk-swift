//
// TransactionResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct TransactionResponse: Codable, JSONEncodable, Hashable {

    public var message: String
    public var tx: TransactionResponseTx
    public var info: TransactionResponseInfo
    public var chainId: Double
    public var currentBlockNumber: Double

    public init(message: String, tx: TransactionResponseTx, info: TransactionResponseInfo, chainId: Double, currentBlockNumber: Double) {
        self.message = message
        self.tx = tx
        self.info = info
        self.chainId = chainId
        self.currentBlockNumber = currentBlockNumber
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case message
        case tx
        case info
        case chainId
        case currentBlockNumber
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(message, forKey: .message)
        try container.encode(tx, forKey: .tx)
        try container.encode(info, forKey: .info)
        try container.encode(chainId, forKey: .chainId)
        try container.encode(currentBlockNumber, forKey: .currentBlockNumber)
    }
}

