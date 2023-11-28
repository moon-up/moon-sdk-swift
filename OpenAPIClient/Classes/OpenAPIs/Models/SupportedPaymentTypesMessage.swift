//
// SupportedPaymentTypesMessage.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct SupportedPaymentTypesMessage: Codable, JSONEncodable, Hashable {

    public var googlepay: PaymentType
    public var applepay: PaymentType
    public var creditcard: PaymentType

    public init(googlepay: PaymentType, applepay: PaymentType, creditcard: PaymentType) {
        self.googlepay = googlepay
        self.applepay = applepay
        self.creditcard = creditcard
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case googlepay
        case applepay
        case creditcard
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(googlepay, forKey: .googlepay)
        try container.encode(applepay, forKey: .applepay)
        try container.encode(creditcard, forKey: .creditcard)
    }
}

