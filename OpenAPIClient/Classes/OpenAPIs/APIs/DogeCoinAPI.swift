//
// DogeCoinAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class DogeCoinAPI {

    /**

     - parameter authorization: (header)  
     - parameter dogeCoinInput: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func createDogeCoinAccount(authorization: String, dogeCoinInput: DogeCoinInput, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AccountAPIResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return createDogeCoinAccountWithRequestBuilder(authorization: authorization, dogeCoinInput: dogeCoinInput).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - POST /dogecoin
     - API Key:
       - type: apiKey x-api-key (HEADER)
       - name: ApiKeyAuth
     - API Key:
       - type: apiKey Authorization (HEADER)
       - name: BearerAuth
     - parameter authorization: (header)  
     - parameter dogeCoinInput: (body)  
     - returns: RequestBuilder<AccountAPIResponse> 
     */
    open class func createDogeCoinAccountWithRequestBuilder(authorization: String, dogeCoinInput: DogeCoinInput) -> RequestBuilder<AccountAPIResponse> {
        let localVariablePath = "/dogecoin"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: dogeCoinInput)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
            "Authorization": authorization.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AccountAPIResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter authorization: (header)  
     - parameter accountName: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getDogeCoinAccount(authorization: String, accountName: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AccountAPIResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return getDogeCoinAccountWithRequestBuilder(authorization: authorization, accountName: accountName).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /dogecoin/{accountName}
     - API Key:
       - type: apiKey x-api-key (HEADER)
       - name: ApiKeyAuth
     - API Key:
       - type: apiKey Authorization (HEADER)
       - name: BearerAuth
     - parameter authorization: (header)  
     - parameter accountName: (path)  
     - returns: RequestBuilder<AccountAPIResponse> 
     */
    open class func getDogeCoinAccountWithRequestBuilder(authorization: String, accountName: String) -> RequestBuilder<AccountAPIResponse> {
        var localVariablePath = "/dogecoin/{accountName}"
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

        let localVariableRequestBuilder: RequestBuilder<AccountAPIResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter authorization: (header)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func listDogeCoinAccounts(authorization: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AccountAPIResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return listDogeCoinAccountsWithRequestBuilder(authorization: authorization).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /dogecoin
     - API Key:
       - type: apiKey x-api-key (HEADER)
       - name: ApiKeyAuth
     - API Key:
       - type: apiKey Authorization (HEADER)
       - name: BearerAuth
     - parameter authorization: (header)  
     - returns: RequestBuilder<AccountAPIResponse> 
     */
    open class func listDogeCoinAccountsWithRequestBuilder(authorization: String) -> RequestBuilder<AccountAPIResponse> {
        let localVariablePath = "/dogecoin"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Authorization": authorization.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AccountAPIResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter authorization: (header)  
     - parameter accountName: (path)  
     - parameter dogeCoinTransactionInput: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func signDogeCoinTransaction(authorization: String, accountName: String, dogeCoinTransactionInput: DogeCoinTransactionInput, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: DogeCoinAPIResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return signDogeCoinTransactionWithRequestBuilder(authorization: authorization, accountName: accountName, dogeCoinTransactionInput: dogeCoinTransactionInput).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - POST /dogecoin/{accountName}/sign-tx
     - API Key:
       - type: apiKey x-api-key (HEADER)
       - name: ApiKeyAuth
     - API Key:
       - type: apiKey Authorization (HEADER)
       - name: BearerAuth
     - parameter authorization: (header)  
     - parameter accountName: (path)  
     - parameter dogeCoinTransactionInput: (body)  
     - returns: RequestBuilder<DogeCoinAPIResponse> 
     */
    open class func signDogeCoinTransactionWithRequestBuilder(authorization: String, accountName: String, dogeCoinTransactionInput: DogeCoinTransactionInput) -> RequestBuilder<DogeCoinAPIResponse> {
        var localVariablePath = "/dogecoin/{accountName}/sign-tx"
        let accountNamePreEscape = "\(APIHelper.mapValueToPathItem(accountName))"
        let accountNamePostEscape = accountNamePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{accountName}", with: accountNamePostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: dogeCoinTransactionInput)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
            "Authorization": authorization.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<DogeCoinAPIResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
