//
// AccountsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class AccountsAPI {

    /**

     - parameter authorization: (header)  
     - parameter accountName: (path)  
     - parameter broadcastInput: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func broadcastTx(authorization: String, accountName: String, broadcastInput: BroadcastInput, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: BroadCastRawTransactionAPIResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return broadcastTxWithRequestBuilder(authorization: authorization, accountName: accountName, broadcastInput: broadcastInput).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - POST /accounts/{accountName}/broadcast-tx
     - API Key:
       - type: apiKey x-api-key (HEADER)
       - name: ApiKeyAuth
     - API Key:
       - type: apiKey Authorization (HEADER)
       - name: BearerAuth
     - parameter authorization: (header)  
     - parameter accountName: (path)  
     - parameter broadcastInput: (body)  
     - returns: RequestBuilder<BroadCastRawTransactionAPIResponse> 
     */
    open class func broadcastTxWithRequestBuilder(authorization: String, accountName: String, broadcastInput: BroadcastInput) -> RequestBuilder<BroadCastRawTransactionAPIResponse> {
        var localVariablePath = "/accounts/{accountName}/broadcast-tx"
        let accountNamePreEscape = "\(APIHelper.mapValueToPathItem(accountName))"
        let accountNamePostEscape = accountNamePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{accountName}", with: accountNamePostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: broadcastInput)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
            "Authorization": authorization.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BroadCastRawTransactionAPIResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter authorization: (header)  
     - parameter createAccountInput: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func createAccount(authorization: String, createAccountInput: CreateAccountInput, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AccountAPIResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return createAccountWithRequestBuilder(authorization: authorization, createAccountInput: createAccountInput).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - POST /accounts
     - API Key:
       - type: apiKey x-api-key (HEADER)
       - name: ApiKeyAuth
     - API Key:
       - type: apiKey Authorization (HEADER)
       - name: BearerAuth
     - parameter authorization: (header)  
     - parameter createAccountInput: (body)  
     - returns: RequestBuilder<AccountAPIResponse> 
     */
    open class func createAccountWithRequestBuilder(authorization: String, createAccountInput: CreateAccountInput) -> RequestBuilder<AccountAPIResponse> {
        let localVariablePath = "/accounts"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createAccountInput)

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
    open class func deleteAccount(authorization: String, accountName: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AccountAPIResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return deleteAccountWithRequestBuilder(authorization: authorization, accountName: accountName).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - DELETE /accounts/{accountName}
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
    open class func deleteAccountWithRequestBuilder(authorization: String, accountName: String) -> RequestBuilder<AccountAPIResponse> {
        var localVariablePath = "/accounts/{accountName}"
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

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter authorization: (header)  
     - parameter accountName: (path)  
     - parameter deployInput: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func deployContract(authorization: String, accountName: String, deployInput: DeployInput, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: TransactionAPIResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return deployContractWithRequestBuilder(authorization: authorization, accountName: accountName, deployInput: deployInput).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - POST /accounts/{accountName}/deploy
     - API Key:
       - type: apiKey x-api-key (HEADER)
       - name: ApiKeyAuth
     - API Key:
       - type: apiKey Authorization (HEADER)
       - name: BearerAuth
     - parameter authorization: (header)  
     - parameter accountName: (path)  
     - parameter deployInput: (body)  
     - returns: RequestBuilder<TransactionAPIResponse> 
     */
    open class func deployContractWithRequestBuilder(authorization: String, accountName: String, deployInput: DeployInput) -> RequestBuilder<TransactionAPIResponse> {
        var localVariablePath = "/accounts/{accountName}/deploy"
        let accountNamePreEscape = "\(APIHelper.mapValueToPathItem(accountName))"
        let accountNamePostEscape = accountNamePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{accountName}", with: accountNamePostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: deployInput)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
            "Authorization": authorization.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<TransactionAPIResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter authorization: (header)  
     - parameter accountName: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getAccount(authorization: String, accountName: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AccountAPIResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return getAccountWithRequestBuilder(authorization: authorization, accountName: accountName).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /accounts/{accountName}
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
    open class func getAccountWithRequestBuilder(authorization: String, accountName: String) -> RequestBuilder<AccountAPIResponse> {
        var localVariablePath = "/accounts/{accountName}"
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

     - parameter accountName: (path)  
     - parameter authorization: (header)  
     - parameter chainId: (query)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getBalance(accountName: String, authorization: String, chainId: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: BalanceAPIResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return getBalanceWithRequestBuilder(accountName: accountName, authorization: authorization, chainId: chainId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /accounts/{accountName}/balance
     - API Key:
       - type: apiKey x-api-key (HEADER)
       - name: ApiKeyAuth
     - API Key:
       - type: apiKey Authorization (HEADER)
       - name: BearerAuth
     - parameter accountName: (path)  
     - parameter authorization: (header)  
     - parameter chainId: (query)  
     - returns: RequestBuilder<BalanceAPIResponse> 
     */
    open class func getBalanceWithRequestBuilder(accountName: String, authorization: String, chainId: String) -> RequestBuilder<BalanceAPIResponse> {
        var localVariablePath = "/accounts/{accountName}/balance"
        let accountNamePreEscape = "\(APIHelper.mapValueToPathItem(accountName))"
        let accountNamePostEscape = accountNamePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{accountName}", with: accountNamePostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "chainId": (wrappedValue: chainId.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            "Authorization": authorization.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BalanceAPIResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter accountName: (path)  
     - parameter authorization: (header)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getNonce(accountName: String, authorization: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: NonceAPIResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return getNonceWithRequestBuilder(accountName: accountName, authorization: authorization).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /accounts/{accountName}/nonce
     - API Key:
       - type: apiKey x-api-key (HEADER)
       - name: ApiKeyAuth
     - API Key:
       - type: apiKey Authorization (HEADER)
       - name: BearerAuth
     - parameter accountName: (path)  
     - parameter authorization: (header)  
     - returns: RequestBuilder<NonceAPIResponse> 
     */
    open class func getNonceWithRequestBuilder(accountName: String, authorization: String) -> RequestBuilder<NonceAPIResponse> {
        var localVariablePath = "/accounts/{accountName}/nonce"
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

        let localVariableRequestBuilder: RequestBuilder<NonceAPIResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter authorization: (header)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func listAccounts(authorization: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AccountAPIResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return listAccountsWithRequestBuilder(authorization: authorization).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /accounts
     - API Key:
       - type: apiKey x-api-key (HEADER)
       - name: ApiKeyAuth
     - API Key:
       - type: apiKey Authorization (HEADER)
       - name: BearerAuth
     - parameter authorization: (header)  
     - returns: RequestBuilder<AccountAPIResponse> 
     */
    open class func listAccountsWithRequestBuilder(authorization: String) -> RequestBuilder<AccountAPIResponse> {
        let localVariablePath = "/accounts"
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

     - parameter accountName: (path)  
     - parameter authorization: (header)  
     - parameter signMessage: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func signMessage(accountName: String, authorization: String, signMessage: SignMessage, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: SignMessageAPIResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return signMessageWithRequestBuilder(accountName: accountName, authorization: authorization, signMessage: signMessage).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - POST /accounts/{accountName}/sign-message
     - API Key:
       - type: apiKey x-api-key (HEADER)
       - name: ApiKeyAuth
     - API Key:
       - type: apiKey Authorization (HEADER)
       - name: BearerAuth
     - parameter accountName: (path)  
     - parameter authorization: (header)  
     - parameter signMessage: (body)  
     - returns: RequestBuilder<SignMessageAPIResponse> 
     */
    open class func signMessageWithRequestBuilder(accountName: String, authorization: String, signMessage: SignMessage) -> RequestBuilder<SignMessageAPIResponse> {
        var localVariablePath = "/accounts/{accountName}/sign-message"
        let accountNamePreEscape = "\(APIHelper.mapValueToPathItem(accountName))"
        let accountNamePostEscape = accountNamePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{accountName}", with: accountNamePostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: signMessage)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
            "Authorization": authorization.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SignMessageAPIResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter accountName: (path)  
     - parameter authorization: (header)  
     - parameter inputBody: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func signTransaction(accountName: String, authorization: String, inputBody: InputBody, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: TransactionAPIResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return signTransactionWithRequestBuilder(accountName: accountName, authorization: authorization, inputBody: inputBody).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - POST /accounts/{accountName}/sign-transaction
     - API Key:
       - type: apiKey x-api-key (HEADER)
       - name: ApiKeyAuth
     - API Key:
       - type: apiKey Authorization (HEADER)
       - name: BearerAuth
     - parameter accountName: (path)  
     - parameter authorization: (header)  
     - parameter inputBody: (body)  
     - returns: RequestBuilder<TransactionAPIResponse> 
     */
    open class func signTransactionWithRequestBuilder(accountName: String, authorization: String, inputBody: InputBody) -> RequestBuilder<TransactionAPIResponse> {
        var localVariablePath = "/accounts/{accountName}/sign-transaction"
        let accountNamePreEscape = "\(APIHelper.mapValueToPathItem(accountName))"
        let accountNamePostEscape = accountNamePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{accountName}", with: accountNamePostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: inputBody)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
            "Authorization": authorization.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<TransactionAPIResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter accountName: (path)  
     - parameter authorization: (header)  
     - parameter signTypedData: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func signTypedData(accountName: String, authorization: String, signTypedData: SignTypedData, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: SignMessageAPIResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return signTypedDataWithRequestBuilder(accountName: accountName, authorization: authorization, signTypedData: signTypedData).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - POST /accounts/{accountName}/sign-typed-data
     - API Key:
       - type: apiKey x-api-key (HEADER)
       - name: ApiKeyAuth
     - API Key:
       - type: apiKey Authorization (HEADER)
       - name: BearerAuth
     - parameter accountName: (path)  
     - parameter authorization: (header)  
     - parameter signTypedData: (body)  
     - returns: RequestBuilder<SignMessageAPIResponse> 
     */
    open class func signTypedDataWithRequestBuilder(accountName: String, authorization: String, signTypedData: SignTypedData) -> RequestBuilder<SignMessageAPIResponse> {
        var localVariablePath = "/accounts/{accountName}/sign-typed-data"
        let accountNamePreEscape = "\(APIHelper.mapValueToPathItem(accountName))"
        let accountNamePostEscape = accountNamePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{accountName}", with: accountNamePostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: signTypedData)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
            "Authorization": authorization.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SignMessageAPIResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter accountName: (path)  
     - parameter authorization: (header)  
     - parameter inputBody: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func transferEth(accountName: String, authorization: String, inputBody: InputBody, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: TransactionAPIResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return transferEthWithRequestBuilder(accountName: accountName, authorization: authorization, inputBody: inputBody).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - POST /accounts/{accountName}/transfer-eth
     - API Key:
       - type: apiKey x-api-key (HEADER)
       - name: ApiKeyAuth
     - API Key:
       - type: apiKey Authorization (HEADER)
       - name: BearerAuth
     - parameter accountName: (path)  
     - parameter authorization: (header)  
     - parameter inputBody: (body)  
     - returns: RequestBuilder<TransactionAPIResponse> 
     */
    open class func transferEthWithRequestBuilder(accountName: String, authorization: String, inputBody: InputBody) -> RequestBuilder<TransactionAPIResponse> {
        var localVariablePath = "/accounts/{accountName}/transfer-eth"
        let accountNamePreEscape = "\(APIHelper.mapValueToPathItem(accountName))"
        let accountNamePostEscape = accountNamePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{accountName}", with: accountNamePostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: inputBody)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
            "Authorization": authorization.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<TransactionAPIResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
