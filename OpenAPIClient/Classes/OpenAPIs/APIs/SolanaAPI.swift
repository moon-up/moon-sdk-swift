//
// SolanaAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class SolanaAPI {

    /**

     - parameter authorization: (header)  
     - parameter solanaInput: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func createSolanaAccount(authorization: String, solanaInput: SolanaInput, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AccountControllerResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return createSolanaAccountWithRequestBuilder(authorization: authorization, solanaInput: solanaInput).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - POST /solana
     - API Key:
       - type: apiKey x-api-key (HEADER)
       - name: ApiKeyAuth
     - API Key:
       - type: apiKey Authorization (HEADER)
       - name: BearerAuth
     - parameter authorization: (header)  
     - parameter solanaInput: (body)  
     - returns: RequestBuilder<AccountControllerResponse> 
     */
    open class func createSolanaAccountWithRequestBuilder(authorization: String, solanaInput: SolanaInput) -> RequestBuilder<AccountControllerResponse> {
        let localVariablePath = "/solana"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: solanaInput)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Authorization": authorization.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AccountControllerResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter authorization: (header)  
     - parameter accountName: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getSolanaAccount(authorization: String, accountName: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AccountControllerResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return getSolanaAccountWithRequestBuilder(authorization: authorization, accountName: accountName).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /solana/{accountName}
     - API Key:
       - type: apiKey x-api-key (HEADER)
       - name: ApiKeyAuth
     - API Key:
       - type: apiKey Authorization (HEADER)
       - name: BearerAuth
     - parameter authorization: (header)  
     - parameter accountName: (path)  
     - returns: RequestBuilder<AccountControllerResponse> 
     */
    open class func getSolanaAccountWithRequestBuilder(authorization: String, accountName: String) -> RequestBuilder<AccountControllerResponse> {
        var localVariablePath = "/solana/{accountName}"
        let accountNamePreEscape = "\(APIHelper.mapValueToPathItem(accountName))"
        let accountNamePostEscape = accountNamePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{accountName}", with: accountNamePostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Authorization": authorization.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AccountControllerResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter authorization: (header)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func listSolanaAccounts(authorization: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AccountControllerResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return listSolanaAccountsWithRequestBuilder(authorization: authorization).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /solana
     - API Key:
       - type: apiKey x-api-key (HEADER)
       - name: ApiKeyAuth
     - API Key:
       - type: apiKey Authorization (HEADER)
       - name: BearerAuth
     - parameter authorization: (header)  
     - returns: RequestBuilder<AccountControllerResponse> 
     */
    open class func listSolanaAccountsWithRequestBuilder(authorization: String) -> RequestBuilder<AccountControllerResponse> {
        let localVariablePath = "/solana"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Authorization": authorization.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AccountControllerResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter authorization: (header)  
     - parameter accountName: (path)  
     - parameter solanaTransactionInput: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func signSolanaTransaction(authorization: String, accountName: String, solanaTransactionInput: SolanaTransactionInput, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AccountControllerResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return signSolanaTransactionWithRequestBuilder(authorization: authorization, accountName: accountName, solanaTransactionInput: solanaTransactionInput).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - POST /solana/{accountName}/sign-tx
     - API Key:
       - type: apiKey x-api-key (HEADER)
       - name: ApiKeyAuth
     - API Key:
       - type: apiKey Authorization (HEADER)
       - name: BearerAuth
     - parameter authorization: (header)  
     - parameter accountName: (path)  
     - parameter solanaTransactionInput: (body)  
     - returns: RequestBuilder<AccountControllerResponse> 
     */
    open class func signSolanaTransactionWithRequestBuilder(authorization: String, accountName: String, solanaTransactionInput: SolanaTransactionInput) -> RequestBuilder<AccountControllerResponse> {
        var localVariablePath = "/solana/{accountName}/sign-tx"
        let accountNamePreEscape = "\(APIHelper.mapValueToPathItem(accountName))"
        let accountNamePostEscape = accountNamePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{accountName}", with: accountNamePostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: solanaTransactionInput)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Authorization": authorization.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AccountControllerResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
