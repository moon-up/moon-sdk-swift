//
// BitcoinInput.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct BitcoinInput: Codable {
    public var network: String?
    public var privateKey: String?

    public init(network: String? = nil, privateKey: String? = nil) {
        self.network = network
        self.privateKey = privateKey
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case network
        case privateKey = "private_key"
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        network = try container.decodeIfPresent(String.self, forKey: .network)
        privateKey = try container.decodeIfPresent(String.self, forKey: .privateKey)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(network, forKey: .network)
        try container.encodeIfPresent(privateKey, forKey: .privateKey)
    }
}
