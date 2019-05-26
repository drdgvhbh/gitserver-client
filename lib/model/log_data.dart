part of openapi.api;

class LogData {
  
  Contributor author = null;
  
  Contributor committer = null;
  /* The hash of the commit */
  String hash = null;
  /* The summary of the commit */
  String summary = null;
  LogData();

  @override
  String toString() {
    return 'LogData[author=$author, committer=$committer, hash=$hash, summary=$summary, ]';
  }

  LogData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['author'] == null) {
      author = null;
    } else {
      author = new Contributor.fromJson(json['author']);
    }
    if (json['committer'] == null) {
      committer = null;
    } else {
      committer = new Contributor.fromJson(json['committer']);
    }
    if (json['hash'] == null) {
      hash = null;
    } else {
          hash = json['hash'];
    }
    if (json['summary'] == null) {
      summary = null;
    } else {
          summary = json['summary'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (author != null)
      json['author'] = author;
    if (committer != null)
      json['committer'] = committer;
    if (hash != null)
      json['hash'] = hash;
    if (summary != null)
      json['summary'] = summary;
    return json;
  }

  static List<LogData> listFromJson(List<dynamic> json) {
    return json == null ? new List<LogData>() : json.map((value) => new LogData.fromJson(value)).toList();
  }

  static Map<String, LogData> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, LogData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new LogData.fromJson(value));
    }
    return map;
  }
}

