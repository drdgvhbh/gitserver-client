part of gitserver.api;



class DefaultApi {
  final ApiClient apiClient;

  DefaultApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// List commits
  ///
  /// This will list the commit in the specified repository.
  Future<InlineResponse200> listCommits(String directory) async {
    Object postBody;

    // verify required params are set
    if(directory == null) {
     throw new ApiException(400, "Missing required param: directory");
    }

    // create path and map variables
    String path = "/repositories/{directory}/commits".replaceAll("{format}","json").replaceAll("{" + "directory" + "}", directory.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["api_key"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'InlineResponse200') as InlineResponse200;
    } else {
      return null;
    }
  }
}
