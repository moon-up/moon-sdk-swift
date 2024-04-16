//
// NonceAPIResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct NonceAPIResponse: Codable, JSONEncodable, Hashable {

    public var success: Bool
    public var message: String
    public var body: InputBody?
    public var address: String?
    public var data: NonceResponse?

    public init(success: Bool, message: String, body: InputBody? = nil, address: String? = nil, data: NonceResponse? = nil) {
        self.success = success
        self.message = message
        self.body = body
        self.address = address
        self.data = data
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case success
        case message
        case body
        case address
        case data
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(success, forKey: .success)
        try container.encode(message, forKey: .message)
        try container.encodeIfPresent(body, forKey: .body)
        try container.encodeIfPresent(address, forKey: .address)
        try container.encodeIfPresent(data, forKey: .data)
    }
}

