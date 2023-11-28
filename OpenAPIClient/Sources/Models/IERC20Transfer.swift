//
// IERC20Transfer.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct IERC20Transfer: Codable {
    public var transactionHash: String
    public var contract: String
    public var logIndex: String
    public var from: String
    public var to: String
    public var value: String
    public var tokenDecimals: String
    public var tokenName: String
    public var tokenSymbol: String
    public var valueWithDecimals: String?
    public var triggers: [TriggerOutput]?

    public init(transactionHash: String, contract: String, logIndex: String, from: String, to: String, value: String, tokenDecimals: String, tokenName: String, tokenSymbol: String, valueWithDecimals: String? = nil, triggers: [TriggerOutput]? = nil) {
        self.transactionHash = transactionHash
        self.contract = contract
        self.logIndex = logIndex
        self.from = from
        self.to = to
        self.value = value
        self.tokenDecimals = tokenDecimals
        self.tokenName = tokenName
        self.tokenSymbol = tokenSymbol
        self.valueWithDecimals = valueWithDecimals
        self.triggers = triggers
    }
}
