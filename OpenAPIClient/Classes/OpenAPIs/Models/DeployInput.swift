//
// DeployInput.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct DeployInput: Codable, JSONEncodable, Hashable {

    public var chainId: String?
    public var abi: String
    public var bytecode: String
    public var constructorArgs: String?

    public init(chainId: String? = nil, abi: String, bytecode: String, constructorArgs: String? = nil) {
        self.chainId = chainId
        self.abi = abi
        self.bytecode = bytecode
        self.constructorArgs = constructorArgs
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case chainId = "chain_id"
        case abi
        case bytecode
        case constructorArgs = "constructor_args"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(chainId, forKey: .chainId)
        try container.encode(abi, forKey: .abi)
        try container.encode(bytecode, forKey: .bytecode)
        try container.encodeIfPresent(constructorArgs, forKey: .constructorArgs)
    }
}
