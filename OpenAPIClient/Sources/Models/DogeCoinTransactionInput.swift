//
// DogeCoinTransactionInput.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct DogeCoinTransactionInput: Codable {
    public var to: String?
    public var value: Double?
    public var network: String?
    public var compress: Bool?

    public init(to: String? = nil, value: Double? = nil, network: String? = nil, compress: Bool? = nil) {
        self.to = to
        self.value = value
        self.network = network
        self.compress = compress
    }
}
