# gitserver.model.Commit

## Load the model package
```dart
import 'package:gitserver/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**author** | [**Contributor**](Contributor.md) |  | [default to null]
**committer** | [**Contributor**](Contributor.md) |  | [default to null]
**hash** | **String** | The hash of the commit | [default to null]
**references** | **List&lt;String&gt;** | The references pointing to this commit | [default to []]
**summary** | **String** | The summary of the commit | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


