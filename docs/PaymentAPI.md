# PaymentAPI

All URIs are relative to *https://vault-api.usemoon.ai*

Method | HTTP request | Description
------------- | ------------- | -------------
[**moralisWebhook**](PaymentAPI.md#moraliswebhook) | **POST** /payment/webhook/{id} | 
[**paymentCreatePaymentIntent**](PaymentAPI.md#paymentcreatepaymentintent) | **POST** /payment | 
[**paymentDeletePaymentIntent**](PaymentAPI.md#paymentdeletepaymentintent) | **DELETE** /payment/{id} | 
[**paymentGetAllPaymentIntents**](PaymentAPI.md#paymentgetallpaymentintents) | **GET** /payment | 
[**paymentGetAvailableChains**](PaymentAPI.md#paymentgetavailablechains) | **GET** /payment/chains | 
[**paymentGetPaymentIntent**](PaymentAPI.md#paymentgetpaymentintent) | **GET** /payment/{id} | 
[**paymentUpdatePaymentIntent**](PaymentAPI.md#paymentupdatepaymentintent) | **PUT** /payment/{id} | 
[**tatumWebhook**](PaymentAPI.md#tatumwebhook) | **POST** /payment/tatum/webhook/{id} | 


# **moralisWebhook**
```swift
    open class func moralisWebhook(id: String, iWebhook: IWebhook, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | 
let iWebhook = IWebhook(block: Block(number: "number_example", hash: "hash_example", timestamp: "timestamp_example"), chainId: "chainId_example", logs: [Log(triggers: [TriggerOutput(value: 123, name: "name_example")], logIndex: "logIndex_example", transactionHash: "transactionHash_example", address: "address_example", data: "data_example", topic0: "topic0_example", topic1: "topic1_example", topic2: "topic2_example", topic3: "topic3_example")], txs: [Transaction(transactionHash: "transactionHash_example", signedTransaction: "signedTransaction_example", rawTransaction: "rawTransaction_example", data: "data_example", transactions: [TransactionData(moonScanUrl: "moonScanUrl_example", transactionHash: "transactionHash_example", signedTransaction: "signedTransaction_example", signedMessage: "signedMessage_example", rawTransaction: "rawTransaction_example", signature: "signature_example", transaction: Tx(type: 123, chainId: 123, data: "data_example", gas: "gas_example", gasPrice: "gasPrice_example", gasTipCap: "gasTipCap_example", gasFeeCap: "gasFeeCap_example", value: "value_example", nonce: 123, from: "from_example", to: "to_example", blobGas: "blobGas_example", blobGasFeeCap: "blobGasFeeCap_example", blobHashes: ["blobHashes_example"], v: "v_example", r: "r_example", s: "s_example"), userOps: [TransactionRequest(nonce: "nonce_example", data: "data_example", value: "value_example", to: "to_example", from: "from_example", maxFeePerGas: "maxFeePerGas_example", maxPriorityFeePerGas: "maxPriorityFeePerGas_example")], useropTransaction: "useropTransaction_example")], moonScanUrl: "moonScanUrl_example", signature: "signature_example", transaction: nil, userOps: [nil], useropTransaction: "useropTransaction_example")], txsInternal: [InternalTransaction(from: "from_example", to: "to_example", value: "value_example", transactionHash: "transactionHash_example", gas: "gas_example")], abi: [AbiItem(anonymous: false, constant: false, inputs: [AbiInput(name: "name_example", type: "type_example", indexed: false, components: [nil], internalType: "internalType_example")], name: "name_example", outputs: [AbiOutput(name: "name_example", type: "type_example", components: [nil], internalType: "internalType_example")], payable: false, stateMutability: "stateMutability_example", type: "type_example", gas: 123)], retries: 123, confirmed: false, tag: "tag_example", streamId: "streamId_example", erc20Transfers: [IERC20Transfer(transactionHash: "transactionHash_example", contract: "contract_example", logIndex: "logIndex_example", from: "from_example", to: "to_example", value: "value_example", tokenDecimals: "tokenDecimals_example", tokenName: "tokenName_example", tokenSymbol: "tokenSymbol_example", valueWithDecimals: "valueWithDecimals_example", triggers: [nil])], erc20Approvals: [IERC20Approval(transactionHash: "transactionHash_example", contract: "contract_example", logIndex: "logIndex_example", owner: "owner_example", spender: "spender_example", value: "value_example", tokenDecimals: "tokenDecimals_example", tokenName: "tokenName_example", tokenSymbol: "tokenSymbol_example", valueWithDecimals: "valueWithDecimals_example", triggers: [nil])], nftTransfers: [INFTTransfer(transactionHash: "transactionHash_example", contract: "contract_example", logIndex: "logIndex_example", tokenContractType: "tokenContractType_example", tokenName: "tokenName_example", tokenSymbol: "tokenSymbol_example", triggers: [nil], _operator: "_operator_example", from: "from_example", to: "to_example", tokenId: "tokenId_example", amount: "amount_example")], nativeBalances: [INativeBalance(address: "address_example", balance: "balance_example")], nftApprovals: IOldNFTApproval(eRC721: [INFTApprovalERC721(transactionHash: "transactionHash_example", contract: "contract_example", logIndex: "logIndex_example", owner: "owner_example", approved: "approved_example", tokenId: "tokenId_example", tokenContractType: "tokenContractType_example", tokenName: "tokenName_example", tokenSymbol: "tokenSymbol_example")], eRC1155: [INFTApprovalERC1155(transactionHash: "transactionHash_example", contract: "contract_example", logIndex: "logIndex_example", account: "account_example", _operator: "_operator_example", approved: false, tokenContractType: "tokenContractType_example", tokenName: "tokenName_example", tokenSymbol: "tokenSymbol_example")]), nftTokenApprovals: [INFTApproval(transactionHash: "transactionHash_example", contract: "contract_example", logIndex: "logIndex_example", tokenContractType: "tokenContractType_example", tokenName: "tokenName_example", tokenSymbol: "tokenSymbol_example", account: "account_example", _operator: "_operator_example", approvedAll: false, tokenId: "tokenId_example")]) // IWebhook | 

PaymentAPI.moralisWebhook(id: id, iWebhook: iWebhook) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** |  | 
 **iWebhook** | [**IWebhook**](IWebhook.md) |  | 

### Return type

**AnyCodable**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **paymentCreatePaymentIntent**
```swift
    open class func paymentCreatePaymentIntent(authorization: String, createPaymentIntentInput: CreatePaymentIntentInput, completion: @escaping (_ data: PaymentIntentResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let authorization = "authorization_example" // String | 
let createPaymentIntentInput = CreatePaymentIntentInput(metadata: "TODO", network: "network_example", amount: 123, currency: "currency_example") // CreatePaymentIntentInput | 

PaymentAPI.paymentCreatePaymentIntent(authorization: authorization, createPaymentIntentInput: createPaymentIntentInput) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String** |  | 
 **createPaymentIntentInput** | [**CreatePaymentIntentInput**](CreatePaymentIntentInput.md) |  | 

### Return type

[**PaymentIntentResponse**](PaymentIntentResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **paymentDeletePaymentIntent**
```swift
    open class func paymentDeletePaymentIntent(authorization: String, id: String, completion: @escaping (_ data: PaymentIntentResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let authorization = "authorization_example" // String | 
let id = "id_example" // String | 

PaymentAPI.paymentDeletePaymentIntent(authorization: authorization, id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String** |  | 
 **id** | **String** |  | 

### Return type

[**PaymentIntentResponse**](PaymentIntentResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **paymentGetAllPaymentIntents**
```swift
    open class func paymentGetAllPaymentIntents(authorization: String, completion: @escaping (_ data: [PaymentIntentResponse]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let authorization = "authorization_example" // String | 

PaymentAPI.paymentGetAllPaymentIntents(authorization: authorization) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String** |  | 

### Return type

[**[PaymentIntentResponse]**](PaymentIntentResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **paymentGetAvailableChains**
```swift
    open class func paymentGetAvailableChains(completion: @escaping (_ data: [String]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


PaymentAPI.paymentGetAvailableChains() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**[String]**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **paymentGetPaymentIntent**
```swift
    open class func paymentGetPaymentIntent(authorization: String, id: String, completion: @escaping (_ data: PaymentIntentResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let authorization = "authorization_example" // String | 
let id = "id_example" // String | 

PaymentAPI.paymentGetPaymentIntent(authorization: authorization, id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String** |  | 
 **id** | **String** |  | 

### Return type

[**PaymentIntentResponse**](PaymentIntentResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **paymentUpdatePaymentIntent**
```swift
    open class func paymentUpdatePaymentIntent(authorization: String, id: String, createPaymentIntentInput: CreatePaymentIntentInput, completion: @escaping (_ data: PaymentIntentResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let authorization = "authorization_example" // String | 
let id = "id_example" // String | 
let createPaymentIntentInput = CreatePaymentIntentInput(metadata: "TODO", network: "network_example", amount: 123, currency: "currency_example") // CreatePaymentIntentInput | 

PaymentAPI.paymentUpdatePaymentIntent(authorization: authorization, id: id, createPaymentIntentInput: createPaymentIntentInput) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String** |  | 
 **id** | **String** |  | 
 **createPaymentIntentInput** | [**CreatePaymentIntentInput**](CreatePaymentIntentInput.md) |  | 

### Return type

[**PaymentIntentResponse**](PaymentIntentResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tatumWebhook**
```swift
    open class func tatumWebhook(id: String, body: AnyCodable, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | 
let body =  // AnyCodable | 

PaymentAPI.tatumWebhook(id: id, body: body) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** |  | 
 **body** | **AnyCodable** |  | 

### Return type

**AnyCodable**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

