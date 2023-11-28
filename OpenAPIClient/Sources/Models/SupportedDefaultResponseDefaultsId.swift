//
// SupportedDefaultResponseDefaultsId.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct SupportedDefaultResponseDefaultsId: Codable {
    public var provider: String
    public var paymentMethod: String
    public var amount: Double
    public var target: String
    public var source: String

    public init(provider: String, paymentMethod: String, amount: Double, target: String, source: String) {
        self.provider = provider
        self.paymentMethod = paymentMethod
        self.amount = amount
        self.target = target
        self.source = source
    }
}
