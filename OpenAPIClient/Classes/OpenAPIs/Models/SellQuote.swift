//
// SellQuote.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct SellQuote: Codable, JSONEncodable, Hashable {

    public var recommendations: [String]
    public var quoteId: String
    public var paymentMethod: String
    public var ramp: String
    public var payout: Double
    public var transactionFee: Double
    public var networkFee: Double
    public var rate: Double

    public init(recommendations: [String], quoteId: String, paymentMethod: String, ramp: String, payout: Double, transactionFee: Double, networkFee: Double, rate: Double) {
        self.recommendations = recommendations
        self.quoteId = quoteId
        self.paymentMethod = paymentMethod
        self.ramp = ramp
        self.payout = payout
        self.transactionFee = transactionFee
        self.networkFee = networkFee
        self.rate = rate
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case recommendations
        case quoteId
        case paymentMethod
        case ramp
        case payout
        case transactionFee
        case networkFee
        case rate
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(recommendations, forKey: .recommendations)
        try container.encode(quoteId, forKey: .quoteId)
        try container.encode(paymentMethod, forKey: .paymentMethod)
        try container.encode(ramp, forKey: .ramp)
        try container.encode(payout, forKey: .payout)
        try container.encode(transactionFee, forKey: .transactionFee)
        try container.encode(networkFee, forKey: .networkFee)
        try container.encode(rate, forKey: .rate)
    }
}

