//
// Erc4337API.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class Erc4337API {

    /**

     - parameter authorization: (header)  
     - parameter accountName: (path)  
     - parameter inputBody: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getAddress(authorization: String, accountName: String, inputBody: InputBody, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AccountControllerResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return getAddressWithRequestBuilder(authorization: authorization, accountName: accountName, inputBody: inputBody).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - POST /erc4337/{accountName}/address
     - API Key:
       - type: apiKey x-api-key (HEADER)
       - name: ApiKeyAuth
     - API Key:
       - type: apiKey Authorization (HEADER)
       - name: BearerAuth
     - parameter authorization: (header)  
     - parameter accountName: (path)  
     - parameter inputBody: (body)  
     - returns: RequestBuilder<AccountControllerResponse> 
     */
    open class func getAddressWithRequestBuilder(authorization: String, accountName: String, inputBody: InputBody) -> RequestBuilder<AccountControllerResponse> {
        var localVariablePath = "/erc4337/{accountName}/address"
        let accountNamePreEscape = "\(APIHelper.mapValueToPathItem(accountName))"
        let accountNamePostEscape = accountNamePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{accountName}", with: accountNamePostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: inputBody)

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
     - parameter inputBody: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func signBroadcastUserOpTx(authorization: String, accountName: String, inputBody: InputBody, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AccountControllerResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return signBroadcastUserOpTxWithRequestBuilder(authorization: authorization, accountName: accountName, inputBody: inputBody).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - POST /erc4337/{accountName}/sign-broadcast-userop-tx
     - API Key:
       - type: apiKey x-api-key (HEADER)
       - name: ApiKeyAuth
     - API Key:
       - type: apiKey Authorization (HEADER)
       - name: BearerAuth
     - parameter authorization: (header)  
     - parameter accountName: (path)  
     - parameter inputBody: (body)  
     - returns: RequestBuilder<AccountControllerResponse> 
     */
    open class func signBroadcastUserOpTxWithRequestBuilder(authorization: String, accountName: String, inputBody: InputBody) -> RequestBuilder<AccountControllerResponse> {
        var localVariablePath = "/erc4337/{accountName}/sign-broadcast-userop-tx"
        let accountNamePreEscape = "\(APIHelper.mapValueToPathItem(accountName))"
        let accountNamePostEscape = accountNamePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{accountName}", with: accountNamePostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: inputBody)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Authorization": authorization.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AccountControllerResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
