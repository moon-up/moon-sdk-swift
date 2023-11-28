//
// PaymentIntentResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PaymentIntentResponse: Codable, JSONEncodable, Hashable {

    public var metadata: [String: String]?
    public var uri: String?
    public var qrCode: String?
    public var status: String?
    public var destination: String?
    public var amount: Double?
    public var network: String?
    public var currency: String?
    public var id: String?
    public var message: String?
    public var success: Bool

    public init(metadata: [String: String]? = nil, uri: String? = nil, qrCode: String? = nil, status: String? = nil, destination: String? = nil, amount: Double? = nil, network: String? = nil, currency: String? = nil, id: String? = nil, message: String? = nil, success: Bool) {
        self.metadata = metadata
        self.uri = uri
        self.qrCode = qrCode
        self.status = status
        self.destination = destination
        self.amount = amount
        self.network = network
        self.currency = currency
        self.id = id
        self.message = message
        self.success = success
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case metadata
        case uri
        case qrCode = "qr_code"
        case status
        case destination
        case amount
        case network
        case currency
        case id
        case message
        case success
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(metadata, forKey: .metadata)
        try container.encodeIfPresent(uri, forKey: .uri)
        try container.encodeIfPresent(qrCode, forKey: .qrCode)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(destination, forKey: .destination)
        try container.encodeIfPresent(amount, forKey: .amount)
        try container.encodeIfPresent(network, forKey: .network)
        try container.encodeIfPresent(currency, forKey: .currency)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(message, forKey: .message)
        try container.encode(success, forKey: .success)
    }
}
