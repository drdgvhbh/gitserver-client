part of gitserver.api;

class Commit {
  
  Contributor author = null;
  
  Contributor committer = null;
  /* The hash of the commit */
  String hash = null;
  /* The references pointing to this commit */
  List<String> references = [];
  /* The summary of the commit */
  String summary = null;
  Commit();

  @override
  String toString() {
    return 'Commit[author=$author, committer=$committer, hash=$hash, references=$references, summary=$summary, ]';
  }

  Commit.fromJson(Map<String, dynamic> json) {
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
    if (json['references'] == null) {
      references = null;
    } else {
      references = (json['references'] as List).cast<String>();
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
    if (references != null)
      json['references'] = references;
    if (summary != null)
      json['summary'] = summary;
    return json;
  }

  static List<Commit> listFromJson(List<dynamic> json) {
    return json == null ? new List<Commit>() : json.map((value) => new Commit.fromJson(value)).toList();
  }

  static Map<String, Commit> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, Commit>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new Commit.fromJson(value));
    }
    return map;
  }
}

