part of gitserver.api;

class Change {
  /* The relative file path in the repository */
  String path = null;
  /* The type of change */
  String type = null;
  //enum typeEnum {  MODIFY,  INSERT,  DELETE,  };{
  Change();

  @override
  String toString() {
    return 'Change[path=$path, type=$type, ]';
  }

  Change.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['path'] == null) {
      path = null;
    } else {
          path = json['path'];
    }
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (path != null)
      json['path'] = path;
    if (type != null)
      json['type'] = type;
    return json;
  }

  static List<Change> listFromJson(List<dynamic> json) {
    return json == null ? new List<Change>() : json.map((value) => new Change.fromJson(value)).toList();
  }

  static Map<String, Change> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, Change>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new Change.fromJson(value));
    }
    return map;
  }
}

