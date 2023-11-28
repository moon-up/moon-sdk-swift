//
// AbiItem.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/// The abi to parse the log object of the contract 
public struct AbiItem: Codable {
    public var anonymous: Bool?
    public var constant: Bool?
    public var inputs: [AbiInput]?
    public var name: String?
    public var outputs: [AbiOutput]?
    public var payable: Bool?
    public var stateMutability: String?
    public var type: String
    public var gas: Double?

    public init(anonymous: Bool? = nil, constant: Bool? = nil, inputs: [AbiInput]? = nil, name: String? = nil, outputs: [AbiOutput]? = nil, payable: Bool? = nil, stateMutability: String? = nil, type: String, gas: Double? = nil) {
        self.anonymous = anonymous
        self.constant = constant
        self.inputs = inputs
        self.name = name
        self.outputs = outputs
        self.payable = payable
        self.stateMutability = stateMutability
        self.type = type
        self.gas = gas
    }
}
