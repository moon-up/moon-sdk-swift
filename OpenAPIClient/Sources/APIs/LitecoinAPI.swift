//
// LitecoinAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech

import Foundation
import Combine
import OpenAPITransport


open class LitecoinAPI {
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


    /// - POST /litecoin
    /// - API Key:
    /// - type: apiKey x-api-key 
    /// - name: ApiKeyAuth
    /// - API Key:
    /// - type: apiKey Authorization 
    /// - name: BearerAuth
    /// - parameter authorization: (header)  
    /// - parameter litecoinInput: (body)  
    /// - returns: AnyPublisher<AccountControllerResponse, Error> 
    open func createLitecoinAccount(authorization: String, litecoinInput: LitecoinInput) -> AnyPublisher<AccountControllerResponse, Error> {
        Deferred {
            Result<URLRequest, Error> {
                guard let baseURL = self.transport.baseURL ?? self.baseURL else {
                    throw OpenAPITransportError.badURLError()
                }
                let path = "/litecoin"
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
                request.httpBody = try self.encoder.encode(litecoinInput)
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


    /// - GET /litecoin/{accountName}
    /// - API Key:
    /// - type: apiKey x-api-key 
    /// - name: ApiKeyAuth
    /// - API Key:
    /// - type: apiKey Authorization 
    /// - name: BearerAuth
    /// - parameter authorization: (header)  
    /// - parameter accountName: (path)  
    /// - returns: AnyPublisher<AccountControllerResponse, Error> 
    open func getLitecoinAccount(authorization: String, accountName: String) -> AnyPublisher<AccountControllerResponse, Error> {
        Deferred {
            Result<URLRequest, Error> {
                guard let baseURL = self.transport.baseURL ?? self.baseURL else {
                    throw OpenAPITransportError.badURLError()
                }
                var path = "/litecoin/{accountName}"
                path = path.replacingOccurrences(of: "{accountName}", with: accountName)
                let url = baseURL.appendingPathComponent(path)
                let components = URLComponents(url: url, resolvingAgainstBaseURL: false)
                guard let requestURL = components?.url else {
                    throw OpenAPITransportError.badURLError()
                }
                var request = URLRequest(url: requestURL)
                request.httpMethod = "GET"
                var headers = [String: String]()
                headers["Authorization"] = authorization
                request.allHTTPHeaderFields = headers
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


    /// - GET /litecoin
    /// - API Key:
    /// - type: apiKey x-api-key 
    /// - name: ApiKeyAuth
    /// - API Key:
    /// - type: apiKey Authorization 
    /// - name: BearerAuth
    /// - parameter authorization: (header)  
    /// - returns: AnyPublisher<AccountControllerResponse, Error> 
    open func listLitecoinAccounts(authorization: String) -> AnyPublisher<AccountControllerResponse, Error> {
        Deferred {
            Result<URLRequest, Error> {
                guard let baseURL = self.transport.baseURL ?? self.baseURL else {
                    throw OpenAPITransportError.badURLError()
                }
                let path = "/litecoin"
                let url = baseURL.appendingPathComponent(path)
                let components = URLComponents(url: url, resolvingAgainstBaseURL: false)
                guard let requestURL = components?.url else {
                    throw OpenAPITransportError.badURLError()
                }
                var request = URLRequest(url: requestURL)
                request.httpMethod = "GET"
                var headers = [String: String]()
                headers["Authorization"] = authorization
                request.allHTTPHeaderFields = headers
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


    /// - POST /litecoin/{accountName}/sign-tx
    /// - API Key:
    /// - type: apiKey x-api-key 
    /// - name: ApiKeyAuth
    /// - API Key:
    /// - type: apiKey Authorization 
    /// - name: BearerAuth
    /// - parameter authorization: (header)  
    /// - parameter accountName: (path)  
    /// - parameter litecoinTransactionInput: (body)  
    /// - returns: AnyPublisher<AccountControllerResponse, Error> 
    open func signLitecoinTransaction(authorization: String, accountName: String, litecoinTransactionInput: LitecoinTransactionInput) -> AnyPublisher<AccountControllerResponse, Error> {
        Deferred {
            Result<URLRequest, Error> {
                guard let baseURL = self.transport.baseURL ?? self.baseURL else {
                    throw OpenAPITransportError.badURLError()
                }
                var path = "/litecoin/{accountName}/sign-tx"
                path = path.replacingOccurrences(of: "{accountName}", with: accountName)
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
                request.httpBody = try self.encoder.encode(litecoinTransactionInput)
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
