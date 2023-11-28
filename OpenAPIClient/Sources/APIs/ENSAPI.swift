//
// ENSAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech

import Foundation
import Combine
import OpenAPITransport


open class ENSAPI {
    private let transport: OpenAPITransport
    public var encoder: JSONEncoder = {
        let encoder = JSONEncoder()
        encoder.dateEncodingStrategy = .formatted(OpenISO8601DateFormatter())
        return encoder
    }()
    public var decoder: JSONDecoder = {
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .formatted(OpenISO8601DateFormatter())
        return decoder
    }()
    public var baseURL = URL(string: "https://vault-api.usemoon.ai")

    public init(_ transport: OpenAPITransport) {
        self.transport = transport
    }


    /// - POST /ens/resolve
    /// - API Key:
    /// - type: apiKey x-api-key 
    /// - name: ApiKeyAuth
    /// - API Key:
    /// - type: apiKey Authorization 
    /// - name: BearerAuth
    /// - parameter authorization: (header)  
    /// - parameter ensResolveInput: (body)  
    /// - returns: AnyPublisher<AccountControllerResponse, Error> 
    open func resolve(authorization: String, ensResolveInput: EnsResolveInput) -> AnyPublisher<AccountControllerResponse, Error> {
        Deferred {
            Result<URLRequest, Error> {
                guard let baseURL = self.transport.baseURL ?? self.baseURL else {
                    throw OpenAPITransportError.badURLError()
                }
                let path = "/ens/resolve"
                let url = baseURL.appendingPathComponent(path)
                let components = URLComponents(url: url, resolvingAgainstBaseURL: false)
                guard let requestURL = components?.url else {
                    throw OpenAPITransportError.badURLError()
                }
                var request = URLRequest(url: requestURL)
                request.httpMethod = "POST"
                var headers = [String: String]()
                headers["Authorization"] = authorization
                request.allHTTPHeaderFields = headers
                request.httpBody = try self.encoder.encode(ensResolveInput)
                request.setValue("application/json", forHTTPHeaderField: "Content-Type")
                return request
            }.publisher
        }.flatMap { request -> AnyPublisher<AccountControllerResponse, Error> in 
            return self.transport.send(request: request)
                .tryMap { response in
                    try self.decoder.decode(AccountControllerResponse.self, from: response.data)
                }
                .eraseToAnyPublisher()
        }.eraseToAnyPublisher()
    }
}
