# AaveAPI

All URIs are relative to *https://vault-api.usemoon.ai*

Method | HTTP request | Description
------------- | ------------- | -------------
[**borrow**](AaveAPI.md#borrow) | **POST** /aave/{name}/borrow | 
[**lend**](AaveAPI.md#lend) | **POST** /aave/{name}/lend | 
[**repay**](AaveAPI.md#repay) | **POST** /aave/{name}/repay | 
[**userReserveData**](AaveAPI.md#userreservedata) | **POST** /aave/{name}/user-reserve-data | 


# **borrow**
```swift
    open class func borrow(authorization: String, name: String, aaveInput: AaveInput, completion: @escaping (_ data: AccountControllerResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let authorization = "authorization_example" // String | 
let name = "name_example" // String | 
let aaveInput = AaveInput(to: "to_example", data: "data_example", input: "input_example", value: "value_example", nonce: "nonce_example", gas: "gas_example", gasPrice: "gasPrice_example", chainId: "chainId_example", encoding: "encoding_example", EOA: false, contractAddress: "contractAddress_example", tokenId: "tokenId_example", tokenIds: "tokenIds_example", approved: false, broadcast: false, lendingPool: "lendingPool_example", amount: "amount_example", atokenToRedeeem: "atokenToRedeeem_example", refCode: "refCode_example", interestRateMode: "interestRateMode_example") // AaveInput | 

AaveAPI.borrow(authorization: authorization, name: name, aaveInput: aaveInput) { (response, error) in
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
 **name** | **String** |  | 
 **aaveInput** | [**AaveInput**](AaveInput.md) |  | 

### Return type

[**AccountControllerResponse**](AccountControllerResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **lend**
```swift
    open class func lend(authorization: String, name: String, aaveInput: AaveInput, completion: @escaping (_ data: AccountControllerResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let authorization = "authorization_example" // String | 
let name = "name_example" // String | 
let aaveInput = AaveInput(to: "to_example", data: "data_example", input: "input_example", value: "value_example", nonce: "nonce_example", gas: "gas_example", gasPrice: "gasPrice_example", chainId: "chainId_example", encoding: "encoding_example", EOA: false, contractAddress: "contractAddress_example", tokenId: "tokenId_example", tokenIds: "tokenIds_example", approved: false, broadcast: false, lendingPool: "lendingPool_example", amount: "amount_example", atokenToRedeeem: "atokenToRedeeem_example", refCode: "refCode_example", interestRateMode: "interestRateMode_example") // AaveInput | 

AaveAPI.lend(authorization: authorization, name: name, aaveInput: aaveInput) { (response, error) in
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
 **name** | **String** |  | 
 **aaveInput** | [**AaveInput**](AaveInput.md) |  | 

### Return type

[**AccountControllerResponse**](AccountControllerResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **repay**
```swift
    open class func repay(authorization: String, name: String, aaveInput: AaveInput, completion: @escaping (_ data: AccountControllerResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let authorization = "authorization_example" // String | 
let name = "name_example" // String | 
let aaveInput = AaveInput(to: "to_example", data: "data_example", input: "input_example", value: "value_example", nonce: "nonce_example", gas: "gas_example", gasPrice: "gasPrice_example", chainId: "chainId_example", encoding: "encoding_example", EOA: false, contractAddress: "contractAddress_example", tokenId: "tokenId_example", tokenIds: "tokenIds_example", approved: false, broadcast: false, lendingPool: "lendingPool_example", amount: "amount_example", atokenToRedeeem: "atokenToRedeeem_example", refCode: "refCode_example", interestRateMode: "interestRateMode_example") // AaveInput | 

AaveAPI.repay(authorization: authorization, name: name, aaveInput: aaveInput) { (response, error) in
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
 **name** | **String** |  | 
 **aaveInput** | [**AaveInput**](AaveInput.md) |  | 

### Return type

[**AccountControllerResponse**](AccountControllerResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userReserveData**
```swift
    open class func userReserveData(authorization: String, name: String, aaveInput: AaveInput, completion: @escaping (_ data: AccountControllerResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let authorization = "authorization_example" // String | 
let name = "name_example" // String | 
let aaveInput = AaveInput(to: "to_example", data: "data_example", input: "input_example", value: "value_example", nonce: "nonce_example", gas: "gas_example", gasPrice: "gasPrice_example", chainId: "chainId_example", encoding: "encoding_example", EOA: false, contractAddress: "contractAddress_example", tokenId: "tokenId_example", tokenIds: "tokenIds_example", approved: false, broadcast: false, lendingPool: "lendingPool_example", amount: "amount_example", atokenToRedeeem: "atokenToRedeeem_example", refCode: "refCode_example", interestRateMode: "interestRateMode_example") // AaveInput | 

AaveAPI.userReserveData(authorization: authorization, name: name, aaveInput: aaveInput) { (response, error) in
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
 **name** | **String** |  | 
 **aaveInput** | [**AaveInput**](AaveInput.md) |  | 

### Return type

[**AccountControllerResponse**](AccountControllerResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

