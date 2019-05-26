# gitserver.api.DefaultApi

## Load the API package
```dart
import 'package:gitserver/api.dart';
```

All URIs are relative to *http://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**listCommits**](DefaultApi.md#listCommits) | **GET** /repositories/{directory}/commit | List commits


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

