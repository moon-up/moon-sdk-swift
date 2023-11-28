//
// EnsResolveInput.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct EnsResolveInput: Codable, JSONEncodable, Hashable {

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

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(domain, forKey: .domain)
        try container.encode(chainId, forKey: .chainId)
    }
}
