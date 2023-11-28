# YearnAPI

All URIs are relative to *https://vault-api.usemoon.ai*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addLiquidity**](YearnAPI.md#addliquidity) | **POST** /yearn/{name}/add-liquidity | 
[**addLiquidityWeth**](YearnAPI.md#addliquidityweth) | **POST** /yearn/{name}/add-liquidity-weth | 
[**removeLiquidity**](YearnAPI.md#removeliquidity) | **POST** /yearn/{name}/remove-liquidity | 
[**removeLiquidityWeth**](YearnAPI.md#removeliquidityweth) | **POST** /yearn/{name}/remove-liquidity-weth | 


# **addLiquidity**
```swift
    open class func addLiquidity(authorization: String, name: String, inputBody: InputBody, completion: @escaping (_ data: AccountControllerResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let authorization = "authorization_example" // String | 
let name = "name_example" // String | 
let inputBody = InputBody(to: "to_example", data: "data_example", input: "input_example", value: "value_example", nonce: "nonce_example", gas: "gas_example", gasPrice: "gasPrice_example", chainId: "chainId_example", encoding: "encoding_example", EOA: false, contractAddress: "contractAddress_example", tokenId: "tokenId_example", tokenIds: "tokenIds_example", approved: false, broadcast: false) // InputBody | 

YearnAPI.addLiquidity(authorization: authorization, name: name, inputBody: inputBody) { (response, error) in
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
 **inputBody** | [**InputBody**](InputBody.md) |  | 

### Return type

[**AccountControllerResponse**](AccountControllerResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addLiquidityWeth**
```swift
    open class func addLiquidityWeth(authorization: String, name: String, inputBody: InputBody, completion: @escaping (_ data: AccountControllerResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let authorization = "authorization_example" // String | 
let name = "name_example" // String | 
let inputBody = InputBody(to: "to_example", data: "data_example", input: "input_example", value: "value_example", nonce: "nonce_example", gas: "gas_example", gasPrice: "gasPrice_example", chainId: "chainId_example", encoding: "encoding_example", EOA: false, contractAddress: "contractAddress_example", tokenId: "tokenId_example", tokenIds: "tokenIds_example", approved: false, broadcast: false) // InputBody | 

YearnAPI.addLiquidityWeth(authorization: authorization, name: name, inputBody: inputBody) { (response, error) in
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
 **inputBody** | [**InputBody**](InputBody.md) |  | 

### Return type

[**AccountControllerResponse**](AccountControllerResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeLiquidity**
```swift
    open class func removeLiquidity(authorization: String, name: String, inputBody: InputBody, completion: @escaping (_ data: AccountControllerResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let authorization = "authorization_example" // String | 
let name = "name_example" // String | 
let inputBody = InputBody(to: "to_example", data: "data_example", input: "input_example", value: "value_example", nonce: "nonce_example", gas: "gas_example", gasPrice: "gasPrice_example", chainId: "chainId_example", encoding: "encoding_example", EOA: false, contractAddress: "contractAddress_example", tokenId: "tokenId_example", tokenIds: "tokenIds_example", approved: false, broadcast: false) // InputBody | 

YearnAPI.removeLiquidity(authorization: authorization, name: name, inputBody: inputBody) { (response, error) in
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
 **inputBody** | [**InputBody**](InputBody.md) |  | 

### Return type

[**AccountControllerResponse**](AccountControllerResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeLiquidityWeth**
```swift
    open class func removeLiquidityWeth(authorization: String, name: String, inputBody: InputBody, completion: @escaping (_ data: AccountControllerResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let authorization = "authorization_example" // String | 
let name = "name_example" // String | 
let inputBody = InputBody(to: "to_example", data: "data_example", input: "input_example", value: "value_example", nonce: "nonce_example", gas: "gas_example", gasPrice: "gasPrice_example", chainId: "chainId_example", encoding: "encoding_example", EOA: false, contractAddress: "contractAddress_example", tokenId: "tokenId_example", tokenIds: "tokenIds_example", approved: false, broadcast: false) // InputBody | 

YearnAPI.removeLiquidityWeth(authorization: authorization, name: name, inputBody: inputBody) { (response, error) in
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
 **inputBody** | [**InputBody**](InputBody.md) |  | 

### Return type

[**AccountControllerResponse**](AccountControllerResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

