import 'package:flutter_app/user_model.dart';


class Message {
  final User sender;
  final String
      time; // Would usually be type DateTime or Firebase Timestamp in production apps
  final String text;
  final bool isLiked;
  final bool unread;

  Message({
    this.sender,
    this.time,
    this.text,
    this.isLiked,
    this.unread,
  });
}

// YOU - current user
final User currentUser = User(
  id: 0,
  name: 'Current User',
  imageUrl: 'assets/images/greg.jpg',
);

// USERS
final User Alp = User(
  id: 1,
  name: 'Alp',
  imageUrl: 'assets/images/foto1.jpg',
);
final User Yunus = User(
  id: 2,
  name: 'Yunus',
  imageUrl: 'assets/images/foto2.jpg',
);
final User Berke = User(
  id: 3,
  name: 'Berke',
  imageUrl: 'assets/images/foto3.jpg',
);
final User Nergis = User(
  id: 4,
  name: 'Nergis',
  imageUrl: 'assets/images/kitap.jpg',
);
final User Ilayda = User(
  id: 5,
  name: 'İlayda',
  imageUrl: 'assets/images/nice.jpg',
);
final User Amine = User(
  id: 6,
  name: 'Amine',
  imageUrl: 'assets/images/wallpaper.jpg',
);
final User Kaan = User(
  id: 7,
  name: 'Kağan',
  imageUrl: 'assets/images/music.jpg',
);

List<User> favorites = [Ilayda, Kaan, Nergis, Berke, Alp];

// EXAMPLE CHATS ON HOME SCREEN
List<Message> chats = [
  Message(
    sender: Yunus,
    time: '5:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: Nergis,
    time: '4:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: Berke,
    time: '3:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: Amine,
    time: '2:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: Kaan,
    time: '1:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: Ilayda,
    time: '12:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: Alp,
    time: '11:30 AM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
];

// EXAMPLE MESSAGES IN CHAT SCREEN
List<Message> messages = [
  Message(
    sender: Yunus,
    time: '5:30 PM',
    text: 'Then we drink tea on the beach.',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '4:30 PM',
    text: 'It does not matter :)',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: Yunus,
    time: '3:45 PM',
    text: 'What kind of movies do you like?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: Yunus,
    time: '3:15 PM',
    text: 'Great, let\'s go together',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    text: 'Actually, but I have a cinema mission today.',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: Yunus,
    time: '2:00 PM',
    text: 'Hi where are you, Shall we drink tea together ?',
    isLiked: false,
    unread: true,
  ),
];
