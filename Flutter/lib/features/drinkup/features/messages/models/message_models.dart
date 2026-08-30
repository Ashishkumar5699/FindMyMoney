class DuMessage {
  final String   messageId;
  final String   senderId;
  final String   senderName;
  final String   text;
  final DateTime sentAt;
  final bool     isRead;

  const DuMessage({
    required this.messageId,
    required this.senderId,
    required this.senderName,
    required this.text,
    required this.sentAt,
    required this.isRead,
  });

  factory DuMessage.fromJson(Map<String, dynamic> j) => DuMessage(
    messageId:  j['messageId']  as String,
    senderId:   j['senderId']   as String,
    senderName: j['senderName'] as String,
    text:       j['text']       as String,
    sentAt:     DateTime.parse(j['sentAt'] as String),
    isRead:     j['isRead']     as bool,
  );
}

class ConversationSummary {
  final String   friendAccountId;
  final String   friendName;
  final String   friendDisplayName;
  final String   lastMessage;
  final DateTime lastMessageAt;
  final int      unreadCount;

  const ConversationSummary({
    required this.friendAccountId,
    required this.friendName,
    required this.friendDisplayName,
    required this.lastMessage,
    required this.lastMessageAt,
    required this.unreadCount,
  });

  factory ConversationSummary.fromJson(Map<String, dynamic> j) =>
      ConversationSummary(
        friendAccountId:  j['friendAccountId']  as String,
        friendName:       j['friendName']        as String,
        friendDisplayName: j['friendDisplayName'] as String,
        lastMessage:      j['lastMessage']       as String,
        lastMessageAt:    DateTime.parse(j['lastMessageAt'] as String),
        unreadCount:      j['unreadCount']       as int,
      );
}
