part of gitserver-client.api;

class Contributor {
  /* Contributor's email */
  String email = null;
  /* Contributor's Name */
  String name = null;
  /* Timestamp of contribution */
  String timestamp = null;
  Contributor();

  @override
  String toString() {
    return 'Contributor[email=$email, name=$name, timestamp=$timestamp, ]';
  }

  Contributor.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['email'] == null) {
      email = null;
    } else {
          email = json['email'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['timestamp'] == null) {
      timestamp = null;
    } else {
          timestamp = json['timestamp'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (email != null)
      json['email'] = email;
    if (name != null)
      json['name'] = name;
    if (timestamp != null)
      json['timestamp'] = timestamp;
    return json;
  }

  static List<Contributor> listFromJson(List<dynamic> json) {
    return json == null ? new List<Contributor>() : json.map((value) => new Contributor.fromJson(value)).toList();
  }

  static Map<String, Contributor> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, Contributor>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new Contributor.fromJson(value));
    }
    return map;
  }
}

