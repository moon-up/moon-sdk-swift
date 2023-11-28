//
// SupportedAssetResponseAssetsInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct SupportedAssetResponseAssetsInner: Codable {
    public var crypto: [String]
    public var paymentMethods: [String]
    public var fiat: String

    public init(crypto: [String], paymentMethods: [String], fiat: String) {
        self.crypto = crypto
        self.paymentMethods = paymentMethods
        self.fiat = fiat
    }
}
