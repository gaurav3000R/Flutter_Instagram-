import 'package:cloud_firestore/cloud_firestore.dart';

class Post {
  final String description;
  final String uid;
  final String postUrl;
  final String username;
  final String postId;
  final datePublished;
  final String profImage;
  final Likes;

  const Post(
      {required this.username,
      required this.uid,
      required this.description,
      required this.postUrl,
      required this.postId,
      required this.datePublished,
      required this.profImage,
      required this.Likes});

  static Post fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;

    return Post(
      username: snapshot["username"],
      uid: snapshot["uid"],
      description: snapshot["description"],
      postUrl: snapshot["postUrl"],
      postId: snapshot["postId"],
      datePublished: snapshot["datePublished"],
      Likes: snapshot["Likes"],
      profImage: snapshot["profImage"],
    );
  }

  Map<String, dynamic> toJson() => {
        "username": username,
        "uid": uid,
        "description": description,
        "postUrl": postUrl,
        "postId": postId,
        "datePublished": datePublished,
        "Likes": Likes,
        "profImage": profImage,
      };
}
