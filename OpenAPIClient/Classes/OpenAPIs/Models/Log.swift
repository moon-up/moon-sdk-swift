//
// Log.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct Log: Codable, JSONEncodable, Hashable {

    public var triggers: [TriggerOutput]?
    public var logIndex: String
    public var transactionHash: String
    public var address: String
    public var data: String
    public var topic0: String?
    public var topic1: String?
    public var topic2: String?
    public var topic3: String?

    public init(triggers: [TriggerOutput]? = nil, logIndex: String, transactionHash: String, address: String, data: String, topic0: String?, topic1: String?, topic2: String?, topic3: String?) {
        self.triggers = triggers
        self.logIndex = logIndex
        self.transactionHash = transactionHash
        self.address = address
        self.data = data
        self.topic0 = topic0
        self.topic1 = topic1
        self.topic2 = topic2
        self.topic3 = topic3
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case triggers
        case logIndex
        case transactionHash
        case address
        case data
        case topic0
        case topic1
        case topic2
        case topic3
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(triggers, forKey: .triggers)
        try container.encode(logIndex, forKey: .logIndex)
        try container.encode(transactionHash, forKey: .transactionHash)
        try container.encode(address, forKey: .address)
        try container.encode(data, forKey: .data)
        try container.encode(topic0, forKey: .topic0)
        try container.encode(topic1, forKey: .topic1)
        try container.encode(topic2, forKey: .topic2)
        try container.encode(topic3, forKey: .topic3)
    }
}
