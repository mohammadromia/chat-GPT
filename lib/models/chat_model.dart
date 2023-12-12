// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ChatModel {
  final String msg;
  final int chatIndex;

  ChatModel({
    required this.msg,
    required this.chatIndex,
  });

  factory ChatModel.fromJson(Map<String, dynamic> json) => ChatModel(
        msg: json["msg"],
        chatIndex: json["chatIndex"],
      );

  ChatModel copyWith({
    String? msg,
    int? chatIndex,
  }) {
    return ChatModel(
      msg: msg ?? this.msg,
      chatIndex: chatIndex ?? this.chatIndex,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'msg': msg,
      'chatIndex': chatIndex,
    };
  }

  factory ChatModel.fromMap(Map<String, dynamic> map) {
    return ChatModel(
      msg: map['msg'] as String,
      chatIndex: map['chatIndex'] as int,
    );
  }

  String toJson() => json.encode(toMap());


  @override
  String toString() => 'ChatModel(msg: $msg, chatIndex: $chatIndex)';

  @override
  bool operator ==(covariant ChatModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.msg == msg &&
      other.chatIndex == chatIndex;
  }

  @override
  int get hashCode => msg.hashCode ^ chatIndex.hashCode;
}
