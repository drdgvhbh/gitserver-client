part of gitserver.api;

class Reference {
  /* The hash of the commit this reference points to */
  String hash = null;
  /* The name of the reference */
  String name = null;
  Reference();

  @override
  String toString() {
    return 'Reference[hash=$hash, name=$name, ]';
  }

  Reference.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['hash'] == null) {
      hash = null;
    } else {
          hash = json['hash'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (hash != null)
      json['hash'] = hash;
    if (name != null)
      json['name'] = name;
    return json;
  }

  static List<Reference> listFromJson(List<dynamic> json) {
    return json == null ? new List<Reference>() : json.map((value) => new Reference.fromJson(value)).toList();
  }

  static Map<String, Reference> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, Reference>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new Reference.fromJson(value));
    }
    return map;
  }
}

