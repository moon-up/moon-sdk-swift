//
// Erc20API.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech

import Foundation
import Combine
import OpenAPITransport


open class Erc20API {
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


    /// - POST /erc20/{name}/allowance
    /// - API Key:
    /// - type: apiKey x-api-key 
    /// - name: ApiKeyAuth
    /// - API Key:
    /// - type: apiKey Authorization 
    /// - name: BearerAuth
    /// - parameter authorization: (header)  
    /// - parameter name: (path)  
    /// - parameter inputBody: (body)  
    /// - returns: AnyPublisher<AccountControllerResponse, Error> 
    open func allowanceErc20(authorization: String, name: String, inputBody: InputBody) -> AnyPublisher<AccountControllerResponse, Error> {
        Deferred {
            Result<URLRequest, Error> {
                guard let baseURL = self.transport.baseURL ?? self.baseURL else {
                    throw OpenAPITransportError.badURLError()
                }
                var path = "/erc20/{name}/allowance"
                path = path.replacingOccurrences(of: "{name}", with: name)
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
                request.httpBody = try self.encoder.encode(inputBody)
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


    /// - POST /erc20/{name}/approve
    /// - API Key:
    /// - type: apiKey x-api-key 
    /// - name: ApiKeyAuth
    /// - API Key:
    /// - type: apiKey Authorization 
    /// - name: BearerAuth
    /// - parameter authorization: (header)  
    /// - parameter name: (path)  
    /// - parameter inputBody: (body)  
    /// - returns: AnyPublisher<AccountControllerResponse, Error> 
    open func approveErc20(authorization: String, name: String, inputBody: InputBody) -> AnyPublisher<AccountControllerResponse, Error> {
        Deferred {
            Result<URLRequest, Error> {
                guard let baseURL = self.transport.baseURL ?? self.baseURL else {
                    throw OpenAPITransportError.badURLError()
                }
                var path = "/erc20/{name}/approve"
                path = path.replacingOccurrences(of: "{name}", with: name)
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
                request.httpBody = try self.encoder.encode(inputBody)
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


    /// - POST /erc20/{name}/balance-of
    /// - API Key:
    /// - type: apiKey x-api-key 
    /// - name: ApiKeyAuth
    /// - API Key:
    /// - type: apiKey Authorization 
    /// - name: BearerAuth
    /// - parameter authorization: (header)  
    /// - parameter name: (path)  
    /// - parameter inputBody: (body)  
    /// - returns: AnyPublisher<AccountControllerResponse, Error> 
    open func balanceOfErc20(authorization: String, name: String, inputBody: InputBody) -> AnyPublisher<AccountControllerResponse, Error> {
        Deferred {
            Result<URLRequest, Error> {
                guard let baseURL = self.transport.baseURL ?? self.baseURL else {
                    throw OpenAPITransportError.badURLError()
                }
                var path = "/erc20/{name}/balance-of"
                path = path.replacingOccurrences(of: "{name}", with: name)
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
                request.httpBody = try self.encoder.encode(inputBody)
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


    /// - POST /erc20/{name}/decimals
    /// - API Key:
    /// - type: apiKey x-api-key 
    /// - name: ApiKeyAuth
    /// - API Key:
    /// - type: apiKey Authorization 
    /// - name: BearerAuth
    /// - parameter authorization: (header)  
    /// - parameter name: (path)  
    /// - parameter inputBody: (body)  
    /// - returns: AnyPublisher<AccountControllerResponse, Error> 
    open func decimalsErc20(authorization: String, name: String, inputBody: InputBody) -> AnyPublisher<AccountControllerResponse, Error> {
        Deferred {
            Result<URLRequest, Error> {
                guard let baseURL = self.transport.baseURL ?? self.baseURL else {
                    throw OpenAPITransportError.badURLError()
                }
                var path = "/erc20/{name}/decimals"
                path = path.replacingOccurrences(of: "{name}", with: name)
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
                request.httpBody = try self.encoder.encode(inputBody)
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


    /// - POST /erc20/{name}/name
    /// - API Key:
    /// - type: apiKey x-api-key 
    /// - name: ApiKeyAuth
    /// - API Key:
    /// - type: apiKey Authorization 
    /// - name: BearerAuth
    /// - parameter authorization: (header)  
    /// - parameter name: (path)  
    /// - parameter inputBody: (body)  
    /// - returns: AnyPublisher<AccountControllerResponse, Error> 
    open func nameErc20(authorization: String, name: String, inputBody: InputBody) -> AnyPublisher<AccountControllerResponse, Error> {
        Deferred {
            Result<URLRequest, Error> {
                guard let baseURL = self.transport.baseURL ?? self.baseURL else {
                    throw OpenAPITransportError.badURLError()
                }
                var path = "/erc20/{name}/name"
                path = path.replacingOccurrences(of: "{name}", with: name)
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
                request.httpBody = try self.encoder.encode(inputBody)
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


    /// - POST /erc20/{name}/symbol
    /// - API Key:
    /// - type: apiKey x-api-key 
    /// - name: ApiKeyAuth
    /// - API Key:
    /// - type: apiKey Authorization 
    /// - name: BearerAuth
    /// - parameter authorization: (header)  
    /// - parameter name: (path)  
    /// - parameter inputBody: (body)  
    /// - returns: AnyPublisher<AccountControllerResponse, Error> 
    open func symbolErc20(authorization: String, name: String, inputBody: InputBody) -> AnyPublisher<AccountControllerResponse, Error> {
        Deferred {
            Result<URLRequest, Error> {
                guard let baseURL = self.transport.baseURL ?? self.baseURL else {
                    throw OpenAPITransportError.badURLError()
                }
                var path = "/erc20/{name}/symbol"
                path = path.replacingOccurrences(of: "{name}", with: name)
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
                request.httpBody = try self.encoder.encode(inputBody)
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


    /// - POST /erc20/{name}/total-supply
    /// - API Key:
    /// - type: apiKey x-api-key 
    /// - name: ApiKeyAuth
    /// - API Key:
    /// - type: apiKey Authorization 
    /// - name: BearerAuth
    /// - parameter authorization: (header)  
    /// - parameter name: (path)  
    /// - parameter inputBody: (body)  
    /// - returns: AnyPublisher<AccountControllerResponse, Error> 
    open func totalSupplyErc20(authorization: String, name: String, inputBody: InputBody) -> AnyPublisher<AccountControllerResponse, Error> {
        Deferred {
            Result<URLRequest, Error> {
                guard let baseURL = self.transport.baseURL ?? self.baseURL else {
                    throw OpenAPITransportError.badURLError()
                }
                var path = "/erc20/{name}/total-supply"
                path = path.replacingOccurrences(of: "{name}", with: name)
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
                request.httpBody = try self.encoder.encode(inputBody)
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


    /// - POST /erc20/{name}/transfer
    /// - API Key:
    /// - type: apiKey x-api-key 
    /// - name: ApiKeyAuth
    /// - API Key:
    /// - type: apiKey Authorization 
    /// - name: BearerAuth
    /// - parameter authorization: (header)  
    /// - parameter name: (path)  
    /// - parameter inputBody: (body)  
    /// - returns: AnyPublisher<AccountControllerResponse, Error> 
    open func transferErc20(authorization: String, name: String, inputBody: InputBody) -> AnyPublisher<AccountControllerResponse, Error> {
        Deferred {
            Result<URLRequest, Error> {
                guard let baseURL = self.transport.baseURL ?? self.baseURL else {
                    throw OpenAPITransportError.badURLError()
                }
                var path = "/erc20/{name}/transfer"
                path = path.replacingOccurrences(of: "{name}", with: name)
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
                request.httpBody = try self.encoder.encode(inputBody)
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


    /// - POST /erc20/{name}/transfer-from
    /// - API Key:
    /// - type: apiKey x-api-key 
    /// - name: ApiKeyAuth
    /// - API Key:
    /// - type: apiKey Authorization 
    /// - name: BearerAuth
    /// - parameter authorization: (header)  
    /// - parameter name: (path)  
    /// - parameter inputBody: (body)  
    /// - returns: AnyPublisher<AccountControllerResponse, Error> 
    open func transferFromErc20(authorization: String, name: String, inputBody: InputBody) -> AnyPublisher<AccountControllerResponse, Error> {
        Deferred {
            Result<URLRequest, Error> {
                guard let baseURL = self.transport.baseURL ?? self.baseURL else {
                    throw OpenAPITransportError.badURLError()
                }
                var path = "/erc20/{name}/transfer-from"
                path = path.replacingOccurrences(of: "{name}", with: name)
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
                request.httpBody = try self.encoder.encode(inputBody)
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
