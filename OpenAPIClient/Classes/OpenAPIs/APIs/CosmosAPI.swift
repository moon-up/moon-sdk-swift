//
// CosmosAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class CosmosAPI {

    /**

     - parameter authorization: (header)  
     - parameter cosmosInput: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func createCosmosAccount(authorization: String, cosmosInput: CosmosInput, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AccountControllerResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return createCosmosAccountWithRequestBuilder(authorization: authorization, cosmosInput: cosmosInput).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - POST /cosmos
     - API Key:
       - type: apiKey x-api-key (HEADER)
       - name: ApiKeyAuth
     - API Key:
       - type: apiKey Authorization (HEADER)
       - name: BearerAuth
     - parameter authorization: (header)  
     - parameter cosmosInput: (body)  
     - returns: RequestBuilder<AccountControllerResponse> 
     */
    open class func createCosmosAccountWithRequestBuilder(authorization: String, cosmosInput: CosmosInput) -> RequestBuilder<AccountControllerResponse> {
        let localVariablePath = "/cosmos"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: cosmosInput)

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
    open class func getCosmosAccount(authorization: String, accountName: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AccountControllerResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return getCosmosAccountWithRequestBuilder(authorization: authorization, accountName: accountName).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /cosmos/{accountName}
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
    open class func getCosmosAccountWithRequestBuilder(authorization: String, accountName: String) -> RequestBuilder<AccountControllerResponse> {
        var localVariablePath = "/cosmos/{accountName}"
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
    open class func listCosmosAccounts(authorization: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AccountControllerResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return listCosmosAccountsWithRequestBuilder(authorization: authorization).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /cosmos
     - API Key:
       - type: apiKey x-api-key (HEADER)
       - name: ApiKeyAuth
     - API Key:
       - type: apiKey Authorization (HEADER)
       - name: BearerAuth
     - parameter authorization: (header)  
     - returns: RequestBuilder<AccountControllerResponse> 
     */
    open class func listCosmosAccountsWithRequestBuilder(authorization: String) -> RequestBuilder<AccountControllerResponse> {
        let localVariablePath = "/cosmos"
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
     - parameter cosmosTransactionInput: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func signCosmosTransaction(authorization: String, accountName: String, cosmosTransactionInput: CosmosTransactionInput, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AccountControllerResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return signCosmosTransactionWithRequestBuilder(authorization: authorization, accountName: accountName, cosmosTransactionInput: cosmosTransactionInput).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - POST /cosmos/{accountName}/sign-tx
     - API Key:
       - type: apiKey x-api-key (HEADER)
       - name: ApiKeyAuth
     - API Key:
       - type: apiKey Authorization (HEADER)
       - name: BearerAuth
     - parameter authorization: (header)  
     - parameter accountName: (path)  
     - parameter cosmosTransactionInput: (body)  
     - returns: RequestBuilder<AccountControllerResponse> 
     */
    open class func signCosmosTransactionWithRequestBuilder(authorization: String, accountName: String, cosmosTransactionInput: CosmosTransactionInput) -> RequestBuilder<AccountControllerResponse> {
        var localVariablePath = "/cosmos/{accountName}/sign-tx"
        let accountNamePreEscape = "\(APIHelper.mapValueToPathItem(accountName))"
        let accountNamePostEscape = accountNamePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{accountName}", with: accountNamePostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: cosmosTransactionInput)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Authorization": authorization.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AccountControllerResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}