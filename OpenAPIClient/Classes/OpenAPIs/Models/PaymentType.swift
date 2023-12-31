//
// PaymentType.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PaymentType: Codable, JSONEncodable, Hashable {

    public var icon: String
    public var name: String
    public var paymentTypeId: String

    public init(icon: String, name: String, paymentTypeId: String) {
        self.icon = icon
        self.name = name
        self.paymentTypeId = paymentTypeId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case icon
        case name
        case paymentTypeId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(icon, forKey: .icon)
        try container.encode(name, forKey: .name)
        try container.encode(paymentTypeId, forKey: .paymentTypeId)
    }
}

