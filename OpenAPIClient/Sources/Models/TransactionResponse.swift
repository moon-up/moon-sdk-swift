//
// TransactionResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct TransactionResponse: Codable {
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
}
