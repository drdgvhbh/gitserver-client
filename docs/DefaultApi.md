# gitserver.api.DefaultApi

## Load the API package
```dart
import 'package:gitserver/api.dart';
```

All URIs are relative to *http://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCommit**](DefaultApi.md#getCommit) | **GET** /repositories/{directory}/commits/{hash} | Get commit
[**getCommitChanges**](DefaultApi.md#getCommitChanges) | **GET** /repositories/{directory}/commits/{hash}/changes | Get commit changes
[**listCommits**](DefaultApi.md#listCommits) | **GET** /repositories/{directory}/commits | List commits
[**listReferences**](DefaultApi.md#listReferences) | **GET** /repositories/{directory}/references | List references


# **getCommit**
> InlineResponse2001 getCommit(directory, hash)

Get commit

This will get the specified commit in the specified repository.

### Example 
```dart
import 'package:gitserver/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';

var api_instance = new DefaultApi();
var directory = directory_example; // String | The directory of the repository
var hash = hash_example; // String | The hash of the commit

try { 
    var result = api_instance.getCommit(directory, hash);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->getCommit: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **directory** | **String**| The directory of the repository | [default to null]
 **hash** | **String**| The hash of the commit | [default to null]

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCommitChanges**
> InlineResponse2002 getCommitChanges(directory, hash)

Get commit changes

This will get the changes of the specified commit in the specified repository.

### Example 
```dart
import 'package:gitserver/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';

var api_instance = new DefaultApi();
var directory = directory_example; // String | The directory of the repository
var hash = hash_example; // String | The hash of the commit

try { 
    var result = api_instance.getCommitChanges(directory, hash);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->getCommitChanges: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **directory** | **String**| The directory of the repository | [default to null]
 **hash** | **String**| The hash of the commit | [default to null]

### Return type

[**InlineResponse2002**](InlineResponse2002.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listCommits**
> InlineResponse200 listCommits(directory)

List commits

This will list the commit in the specified repository.

### Example 
```dart
import 'package:gitserver/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';

var api_instance = new DefaultApi();
var directory = directory_example; // String | The directory of the repository

try { 
    var result = api_instance.listCommits(directory);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->listCommits: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **directory** | **String**| The directory of the repository | [default to null]

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listReferences**
> InlineResponse2003 listReferences(directory)

List references

This will list the references in the specified repository.

### Example 
```dart
import 'package:gitserver/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';

var api_instance = new DefaultApi();
var directory = directory_example; // String | The directory of the repository

try { 
    var result = api_instance.listReferences(directory);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->listReferences: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **directory** | **String**| The directory of the repository | [default to null]

### Return type

[**InlineResponse2003**](InlineResponse2003.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

