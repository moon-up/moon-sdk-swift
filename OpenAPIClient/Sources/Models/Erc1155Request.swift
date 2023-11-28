//
// Erc1155Request.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct Erc1155Request: Codable {
    public var to: String?
    public var data: String?
    public var input: String?
    public var value: String?
    public var nonce: String?
    public var gas: String?
    public var gasPrice: String?
    public var chainId: String?
    public var encoding: String?
    public var EOA: Bool?
    public var contractAddress: String?
    public var tokenId: String?
    public var tokenIds: String?
    public var approved: Bool?
    public var broadcast: Bool?

    public init(to: String? = nil, data: String? = nil, input: String? = nil, value: String? = nil, nonce: String? = nil, gas: String? = nil, gasPrice: String? = nil, chainId: String? = nil, encoding: String? = nil, EOA: Bool? = nil, contractAddress: String? = nil, tokenId: String? = nil, tokenIds: String? = nil, approved: Bool? = nil, broadcast: Bool? = nil) {
        self.to = to
        self.data = data
        self.input = input
        self.value = value
        self.nonce = nonce
        self.gas = gas
        self.gasPrice = gasPrice
        self.chainId = chainId
        self.encoding = encoding
        self.EOA = EOA
        self.contractAddress = contractAddress
        self.tokenId = tokenId
        self.tokenIds = tokenIds
        self.approved = approved
        self.broadcast = broadcast
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case to
        case data
        case input
        case value
        case nonce
        case gas
        case gasPrice
        case chainId = "chain_id"
        case encoding
        case EOA
        case contractAddress = "contract_address"
        case tokenId = "token_id"
        case tokenIds = "token_ids"
        case approved
        case broadcast
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        to = try container.decodeIfPresent(String.self, forKey: .to)
        data = try container.decodeIfPresent(String.self, forKey: .data)
        input = try container.decodeIfPresent(String.self, forKey: .input)
        value = try container.decodeIfPresent(String.self, forKey: .value)
        nonce = try container.decodeIfPresent(String.self, forKey: .nonce)
        gas = try container.decodeIfPresent(String.self, forKey: .gas)
        gasPrice = try container.decodeIfPresent(String.self, forKey: .gasPrice)
        chainId = try container.decodeIfPresent(String.self, forKey: .chainId)
        encoding = try container.decodeIfPresent(String.self, forKey: .encoding)
        EOA = try container.decodeIfPresent(Bool.self, forKey: .EOA)
        contractAddress = try container.decodeIfPresent(String.self, forKey: .contractAddress)
        tokenId = try container.decodeIfPresent(String.self, forKey: .tokenId)
        tokenIds = try container.decodeIfPresent(String.self, forKey: .tokenIds)
        approved = try container.decodeIfPresent(Bool.self, forKey: .approved)
        broadcast = try container.decodeIfPresent(Bool.self, forKey: .broadcast)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(to, forKey: .to)
        try container.encodeIfPresent(data, forKey: .data)
        try container.encodeIfPresent(input, forKey: .input)
        try container.encodeIfPresent(value, forKey: .value)
        try container.encodeIfPresent(nonce, forKey: .nonce)
        try container.encodeIfPresent(gas, forKey: .gas)
        try container.encodeIfPresent(gasPrice, forKey: .gasPrice)
        try container.encodeIfPresent(chainId, forKey: .chainId)
        try container.encodeIfPresent(encoding, forKey: .encoding)
        try container.encodeIfPresent(EOA, forKey: .EOA)
        try container.encodeIfPresent(contractAddress, forKey: .contractAddress)
        try container.encodeIfPresent(tokenId, forKey: .tokenId)
        try container.encodeIfPresent(tokenIds, forKey: .tokenIds)
        try container.encodeIfPresent(approved, forKey: .approved)
        try container.encodeIfPresent(broadcast, forKey: .broadcast)
    }
}
