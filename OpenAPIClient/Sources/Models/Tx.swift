//
// Tx.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct Tx: Codable {
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

    public init(type: Double? = nil, chainId: Double? = nil, data: String? = nil, gas: String? = nil, gasPrice: String? = nil, gasTipCap: String? = nil, gasFeeCap: String? = nil, value: String? = nil, nonce: Double? = nil, from: String? = nil, to: String? = nil, blobGas: String? = nil, blobGasFeeCap: String? = nil, blobHashes: [String]? = nil, v: String? = nil, r: String? = nil, s: String? = nil) {
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
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        type = try container.decodeIfPresent(Double.self, forKey: .type)
        chainId = try container.decodeIfPresent(Double.self, forKey: .chainId)
        data = try container.decodeIfPresent(String.self, forKey: .data)
        gas = try container.decodeIfPresent(String.self, forKey: .gas)
        gasPrice = try container.decodeIfPresent(String.self, forKey: .gasPrice)
        gasTipCap = try container.decodeIfPresent(String.self, forKey: .gasTipCap)
        gasFeeCap = try container.decodeIfPresent(String.self, forKey: .gasFeeCap)
        value = try container.decodeIfPresent(String.self, forKey: .value)
        nonce = try container.decodeIfPresent(Double.self, forKey: .nonce)
        from = try container.decodeIfPresent(String.self, forKey: .from)
        to = try container.decodeIfPresent(String.self, forKey: .to)
        blobGas = try container.decodeIfPresent(String.self, forKey: .blobGas)
        blobGasFeeCap = try container.decodeIfPresent(String.self, forKey: .blobGasFeeCap)
        blobHashes = try container.decodeIfPresent([String].self, forKey: .blobHashes)
        v = try container.decodeIfPresent(String.self, forKey: .v)
        r = try container.decodeIfPresent(String.self, forKey: .r)
        s = try container.decodeIfPresent(String.self, forKey: .s)
    }

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
    }
}