//
// CreatePaymentIntentInput.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct CreatePaymentIntentInput: Codable {
    public var metadata: [String: String]
    public var network: String?
    public var amount: Double
    public var currency: String?

    public init(metadata: [String: String], network: String? = nil, amount: Double, currency: String? = nil) {
        self.metadata = metadata
        self.network = network
        self.amount = amount
        self.currency = currency
    }
}