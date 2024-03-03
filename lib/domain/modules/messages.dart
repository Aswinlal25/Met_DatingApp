class Message {
  final String senderId;
  final String messageContent;

  Message({
    required this.senderId,
    required this.messageContent,
  });

  factory Message.fromJson(Map<String, dynamic> json) {
    return Message(
      senderId: json['senderId'],
      messageContent: json['messageContent'],
    );
  }
}
