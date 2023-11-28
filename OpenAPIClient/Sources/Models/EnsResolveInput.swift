//
// EnsResolveInput.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct EnsResolveInput: Codable {
    public var domain: String
    public var chainId: String

    public init(domain: String, chainId: String) {
        self.domain = domain
        self.chainId = chainId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case domain
        case chainId = "chain_id"
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        domain = try container.decode(String.self, forKey: .domain)
        chainId = try container.decode(String.self, forKey: .chainId)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(domain, forKey: .domain)
        try container.encode(chainId, forKey: .chainId)
    }
}