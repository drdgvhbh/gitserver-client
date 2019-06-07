part of gitserver.api;

class InlineResponse2002 {
  /* The API version */
  String apiVersion = null;
  /* The response data */
  List<Change> data = [];
  /* The request method */
  String method = null;
  /* The request ID */
  String id = null;
  InlineResponse2002();

  @override
  String toString() {
    return 'InlineResponse2002[apiVersion=$apiVersion, data=$data, method=$method, id=$id, ]';
  }

  InlineResponse2002.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['apiVersion'] == null) {
      apiVersion = null;
    } else {
          apiVersion = json['apiVersion'];
    }
    if (json['data'] == null) {
      data = null;
    } else {
      data = Change.listFromJson(json['data']);
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

  static List<InlineResponse2002> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse2002>() : json.map((value) => new InlineResponse2002.fromJson(value)).toList();
  }

  static Map<String, InlineResponse2002> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse2002>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse2002.fromJson(value));
    }
    return map;
  }
}

