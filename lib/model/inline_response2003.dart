part of gitserver.api;

class InlineResponse2003 {
  /* The API version */
  String apiVersion = null;
  /* The response data */
  List<Reference> data = [];
  /* The request method */
  String method = null;
  /* The request ID */
  String id = null;
  InlineResponse2003();

  @override
  String toString() {
    return 'InlineResponse2003[apiVersion=$apiVersion, data=$data, method=$method, id=$id, ]';
  }

  InlineResponse2003.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['apiVersion'] == null) {
      apiVersion = null;
    } else {
          apiVersion = json['apiVersion'];
    }
    if (json['data'] == null) {
      data = null;
    } else {
      data = Reference.listFromJson(json['data']);
    }
    if (json['method'] == null) {
      method = null;
    } else {
          method = json['method'];
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (apiVersion != null)
      json['apiVersion'] = apiVersion;
    if (data != null)
      json['data'] = data;
    if (method != null)
      json['method'] = method;
    if (id != null)
      json['id'] = id;
    return json;
  }

  static List<InlineResponse2003> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse2003>() : json.map((value) => new InlineResponse2003.fromJson(value)).toList();
  }

  static Map<String, InlineResponse2003> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse2003>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse2003.fromJson(value));
    }
    return map;
  }
}

