//
// Erc1155Response.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct Erc1155Response: Codable, JSONEncodable, Hashable {

    public var type: Double?
    public var chainId: Double?
    public var data: String?
    public var gas: String?
    public var gasPrice: String?
    public var gasTipCap: String?
    public var gasFeeCap: String?
    public var value: String?
    public var nonce: Double?
    public var from: String?
    public var to: String?
    public var blobGas: String?
    public var blobGasFeeCap: String?
    public var blobHashes: [String]?
    public var v: String?
    public var r: String?
    public var s: String?
    public var balanceOf: String?
    public var balanceOfBatch: String?

    public init(type: Double? = nil, chainId: Double? = nil, data: String? = nil, gas: String? = nil, gasPrice: String? = nil, gasTipCap: String? = nil, gasFeeCap: String? = nil, value: String? = nil, nonce: Double? = nil, from: String? = nil, to: String? = nil, blobGas: String? = nil, blobGasFeeCap: String? = nil, blobHashes: [String]? = nil, v: String? = nil, r: String? = nil, s: String? = nil, balanceOf: String? = nil, balanceOfBatch: String? = nil) {
        self.type = type
        self.chainId = chainId
        self.data = data
        self.gas = gas
        self.gasPrice = gasPrice
        self.gasTipCap = gasTipCap
        self.gasFeeCap = gasFeeCap
        self.value = value
        self.nonce = nonce
        self.from = from
        self.to = to
        self.blobGas = blobGas
        self.blobGasFeeCap = blobGasFeeCap
        self.blobHashes = blobHashes
        self.v = v
        self.r = r
        self.s = s
        self.balanceOf = balanceOf
        self.balanceOfBatch = balanceOfBatch
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case chainId = "chain_id"
        case data
        case gas
        case gasPrice = "gas_price"
        case gasTipCap = "gas_tip_cap"
        case gasFeeCap = "gas_fee_cap"
        case value
        case nonce
        case from
        case to
        case blobGas = "blob_gas"
        case blobGasFeeCap = "blob_gas_fee_cap"
        case blobHashes = "blob_hashes"
        case v
        case r
        case s
        case balanceOf = "balance_of"
        case balanceOfBatch = "balance_of_batch"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(chainId, forKey: .chainId)
        try container.encodeIfPresent(data, forKey: .data)
        try container.encodeIfPresent(gas, forKey: .gas)
        try container.encodeIfPresent(gasPrice, forKey: .gasPrice)
        try container.encodeIfPresent(gasTipCap, forKey: .gasTipCap)
        try container.encodeIfPresent(gasFeeCap, forKey: .gasFeeCap)
        try container.encodeIfPresent(value, forKey: .value)
        try container.encodeIfPresent(nonce, forKey: .nonce)
        try container.encodeIfPresent(from, forKey: .from)
        try container.encodeIfPresent(to, forKey: .to)
        try container.encodeIfPresent(blobGas, forKey: .blobGas)
        try container.encodeIfPresent(blobGasFeeCap, forKey: .blobGasFeeCap)
        try container.encodeIfPresent(blobHashes, forKey: .blobHashes)
        try container.encodeIfPresent(v, forKey: .v)
        try container.encodeIfPresent(r, forKey: .r)
        try container.encodeIfPresent(s, forKey: .s)
        try container.encodeIfPresent(balanceOf, forKey: .balanceOf)
        try container.encodeIfPresent(balanceOfBatch, forKey: .balanceOfBatch)
    }
}

