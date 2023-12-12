// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ModelsModel {
  final String id;
  final int created;
  final String root;

  ModelsModel({
    required this.id,
    required this.created,
    required this.root,
  });

  factory ModelsModel.fromJson(Map<String, dynamic> json) => ModelsModel(
        id: json["id"],
        root: json["root"],
        created: json["created"],
      );

  static List<ModelsModel> modelsFromSnapshot(List modelSnapshot) {
    return modelSnapshot.map((data) => ModelsModel.fromJson(data)).toList();
  }

  ModelsModel copyWith({
    String? id,
    int? created,
    String? root,
  }) {
    return ModelsModel(
      id: id ?? this.id,
      created: created ?? this.created,
      root: root ?? this.root,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'created': created,
      'root': root,
    };
  }

  factory ModelsModel.fromMap(Map<String, dynamic> map) {
    return ModelsModel(
      id: map['id'] as String,
      created: map['created'] as int,
      root: map['root'] as String,
    );
  }

  String toJson() => json.encode(toMap());


  @override
  String toString() => 'ModelsModel(id: $id, created: $created, root: $root)';

  @override
  bool operator ==(covariant ModelsModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.created == created &&
      other.root == root;
  }

  @override
  int get hashCode => id.hashCode ^ created.hashCode ^ root.hashCode;
}
