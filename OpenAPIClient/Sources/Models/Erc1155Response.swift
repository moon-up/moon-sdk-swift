//
// Erc1155Response.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct Erc1155Response: Codable {
    public var moonScanUrl: String?
    public var transactionHash: String
    public var signedTransaction: String
    public var signedMessage: String?
    public var rawTransaction: String?
    public var signature: String?
    public var transaction: [String: Tx]?
    public var userOps: [TransactionRequest]?
    public var useropTransaction: String?
    public var balanceOf: String?
    public var balanceOfBatch: String?

    public init(moonScanUrl: String? = nil, transactionHash: String, signedTransaction: String, signedMessage: String? = nil, rawTransaction: String? = nil, signature: String? = nil, transaction: [String: Tx]? = nil, userOps: [TransactionRequest]? = nil, useropTransaction: String? = nil, balanceOf: String? = nil, balanceOfBatch: String? = nil) {
        self.moonScanUrl = moonScanUrl
        self.transactionHash = transactionHash
        self.signedTransaction = signedTransaction
        self.signedMessage = signedMessage
        self.rawTransaction = rawTransaction
        self.signature = signature
        self.transaction = transaction
        self.userOps = userOps
        self.useropTransaction = useropTransaction
        self.balanceOf = balanceOf
        self.balanceOfBatch = balanceOfBatch
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case moonScanUrl = "moon_scan_url"
        case transactionHash = "transaction_hash"
        case signedTransaction = "signed_transaction"
        case signedMessage = "signed_message"
        case rawTransaction = "raw_transaction"
        case signature
        case transaction
        case userOps
        case useropTransaction = "userop_transaction"
        case balanceOf = "balance_of"
        case balanceOfBatch = "balance_of_batch"
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        moonScanUrl = try container.decodeIfPresent(String.self, forKey: .moonScanUrl)
        transactionHash = try container.decode(String.self, forKey: .transactionHash)
        signedTransaction = try container.decode(String.self, forKey: .signedTransaction)
        signedMessage = try container.decodeIfPresent(String.self, forKey: .signedMessage)
        rawTransaction = try container.decodeIfPresent(String.self, forKey: .rawTransaction)
        signature = try container.decodeIfPresent(String.self, forKey: .signature)
        transaction = try container.decodeIfPresent([String: Tx].self, forKey: .transaction)
        userOps = try container.decodeIfPresent([TransactionRequest].self, forKey: .userOps)
        useropTransaction = try container.decodeIfPresent(String.self, forKey: .useropTransaction)
        balanceOf = try container.decodeIfPresent(String.self, forKey: .balanceOf)
        balanceOfBatch = try container.decodeIfPresent(String.self, forKey: .balanceOfBatch)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(moonScanUrl, forKey: .moonScanUrl)
        try container.encode(transactionHash, forKey: .transactionHash)
        try container.encode(signedTransaction, forKey: .signedTransaction)
        try container.encodeIfPresent(signedMessage, forKey: .signedMessage)
        try container.encodeIfPresent(rawTransaction, forKey: .rawTransaction)
        try container.encodeIfPresent(signature, forKey: .signature)
        try container.encodeIfPresent(transaction, forKey: .transaction)
        try container.encodeIfPresent(userOps, forKey: .userOps)
        try container.encodeIfPresent(useropTransaction, forKey: .useropTransaction)
        try container.encodeIfPresent(balanceOf, forKey: .balanceOf)
        try container.encodeIfPresent(balanceOfBatch, forKey: .balanceOfBatch)
    }
}
