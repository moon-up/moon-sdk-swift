//
// IOldNFTApproval.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct IOldNFTApproval: Codable, JSONEncodable, Hashable {

    public var eRC721: [INFTApprovalERC721]
    public var eRC1155: [INFTApprovalERC1155]

    public init(eRC721: [INFTApprovalERC721], eRC1155: [INFTApprovalERC1155]) {
        self.eRC721 = eRC721
        self.eRC1155 = eRC1155
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case eRC721 = "ERC721"
        case eRC1155 = "ERC1155"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(eRC721, forKey: .eRC721)
        try container.encode(eRC1155, forKey: .eRC1155)
    }
}
