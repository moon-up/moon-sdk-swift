# ENSAPI

All URIs are relative to *https://vault-api.usemoon.ai*

Method | HTTP request | Description
------------- | ------------- | -------------
[**resolve**](ENSAPI.md#resolve) | **POST** /ens/resolve | 


# **resolve**
```swift
    open class func resolve(authorization: String, ensResolveInput: EnsResolveInput, completion: @escaping (_ data: AccountControllerResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let authorization = "authorization_example" // String | 
let ensResolveInput = EnsResolveInput(domain: "domain_example", chainId: "chainId_example") // EnsResolveInput | 

ENSAPI.resolve(authorization: authorization, ensResolveInput: ensResolveInput) { (response, error) in
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
 **ensResolveInput** | [**EnsResolveInput**](EnsResolveInput.md) |  | 

### Return type

[**AccountControllerResponse**](AccountControllerResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

