# UniSwapAPI

All URIs are relative to *https://vault-api.usemoon.ai*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addLiquidity**](UniSwapAPI.md#addliquidity) | **POST** /uniswap/{name}/add-liquidity | 
[**removeLiquidity**](UniSwapAPI.md#removeliquidity) | **POST** /uniswap/{name}/remove-liquidity | 
[**swapExactETHForTokens**](UniSwapAPI.md#swapexactethfortokens) | **POST** /uniswap/{name}/swap-exact-eth-for-tokens | 
[**swapExactTokensForTokens**](UniSwapAPI.md#swapexacttokensfortokens) | **POST** /uniswap/{name}/swap-exact-tokens-for-tokens | 


# **addLiquidity**
```swift
    open class func addLiquidity(authorization: String, name: String, uniswapInput: UniswapInput, completion: @escaping (_ data: AccountControllerResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let authorization = "authorization_example" // String | 
let name = "name_example" // String | 
let uniswapInput = UniswapInput(to: "to_example", data: "data_example", input: "input_example", value: "value_example", nonce: "nonce_example", gas: "gas_example", gasPrice: "gasPrice_example", chainId: "chainId_example", encoding: "encoding_example", EOA: false, contractAddress: "contractAddress_example", tokenId: "tokenId_example", tokenIds: "tokenIds_example", approved: false, broadcast: false, tokenA: "tokenA_example", tokenB: "tokenB_example", amountA: "amountA_example", amountB: "amountB_example") // UniswapInput | 

UniSwapAPI.addLiquidity(authorization: authorization, name: name, uniswapInput: uniswapInput) { (response, error) in
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
 **uniswapInput** | [**UniswapInput**](UniswapInput.md) |  | 

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
    open class func removeLiquidity(authorization: String, name: String, uniswapInput: UniswapInput, completion: @escaping (_ data: AccountControllerResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let authorization = "authorization_example" // String | 
let name = "name_example" // String | 
let uniswapInput = UniswapInput(to: "to_example", data: "data_example", input: "input_example", value: "value_example", nonce: "nonce_example", gas: "gas_example", gasPrice: "gasPrice_example", chainId: "chainId_example", encoding: "encoding_example", EOA: false, contractAddress: "contractAddress_example", tokenId: "tokenId_example", tokenIds: "tokenIds_example", approved: false, broadcast: false, tokenA: "tokenA_example", tokenB: "tokenB_example", amountA: "amountA_example", amountB: "amountB_example") // UniswapInput | 

UniSwapAPI.removeLiquidity(authorization: authorization, name: name, uniswapInput: uniswapInput) { (response, error) in
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
 **uniswapInput** | [**UniswapInput**](UniswapInput.md) |  | 

### Return type

[**AccountControllerResponse**](AccountControllerResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **swapExactETHForTokens**
```swift
    open class func swapExactETHForTokens(authorization: String, name: String, uniswapInput: UniswapInput, completion: @escaping (_ data: AccountControllerResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let authorization = "authorization_example" // String | 
let name = "name_example" // String | 
let uniswapInput = UniswapInput(to: "to_example", data: "data_example", input: "input_example", value: "value_example", nonce: "nonce_example", gas: "gas_example", gasPrice: "gasPrice_example", chainId: "chainId_example", encoding: "encoding_example", EOA: false, contractAddress: "contractAddress_example", tokenId: "tokenId_example", tokenIds: "tokenIds_example", approved: false, broadcast: false, tokenA: "tokenA_example", tokenB: "tokenB_example", amountA: "amountA_example", amountB: "amountB_example") // UniswapInput | 

UniSwapAPI.swapExactETHForTokens(authorization: authorization, name: name, uniswapInput: uniswapInput) { (response, error) in
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
 **uniswapInput** | [**UniswapInput**](UniswapInput.md) |  | 

### Return type

[**AccountControllerResponse**](AccountControllerResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **swapExactTokensForTokens**
```swift
    open class func swapExactTokensForTokens(authorization: String, name: String, uniswapInput: UniswapInput, completion: @escaping (_ data: AccountControllerResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let authorization = "authorization_example" // String | 
let name = "name_example" // String | 
let uniswapInput = UniswapInput(to: "to_example", data: "data_example", input: "input_example", value: "value_example", nonce: "nonce_example", gas: "gas_example", gasPrice: "gasPrice_example", chainId: "chainId_example", encoding: "encoding_example", EOA: false, contractAddress: "contractAddress_example", tokenId: "tokenId_example", tokenIds: "tokenIds_example", approved: false, broadcast: false, tokenA: "tokenA_example", tokenB: "tokenB_example", amountA: "amountA_example", amountB: "amountB_example") // UniswapInput | 

UniSwapAPI.swapExactTokensForTokens(authorization: authorization, name: name, uniswapInput: uniswapInput) { (response, error) in
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
 **uniswapInput** | [**UniswapInput**](UniswapInput.md) |  | 

### Return type

[**AccountControllerResponse**](AccountControllerResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

