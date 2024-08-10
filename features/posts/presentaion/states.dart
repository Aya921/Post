import '../domain/entity/post.dart';
import 'di.dart';
import 'msgs.dart';
import 'dart:io';

sealed class PostState {}

class AddPostState extends PostState {
  void call() {
    recieverMsg('the title of the post');
    String title = stdin.readLineSync()!;
    recieverMsg('the body of the post');
    String body = stdin.readLineSync()!;
    addPost(Post(title: title, body: body));

    endTaskMsg();
  }
}

class DeletePostState extends PostState {
  void call() {
    recieverMsg('the id of the post you want to delete ');
    int id = int.parse(stdin.readLineSync()!);
    deletePost(id);
    endTaskMsg();
  }
}

class GetAllPostState extends PostState {
  void call() {
    getAllPosts().forEach((post) {
      print('''
PostID: ${post.id}
Post Title: ${post.title}
Post Body: ${post.body}

**********************************

''');
    });
  }
}

class GetPostState extends PostState {
  void call() {
    recieverMsg('the id no. of the wanted post');
    int id = int.parse(stdin.readLineSync()!);
    Post post = getPost(id);
    print('''
PostID: ${post.id}
Post Title: ${post.title}
Post Body: ${post.body}

**********************************

''');

    endTaskMsg();
  }
}

class UpdatePostState {
  void call() {
    recieverMsg('the id of the post you want to edit');
    int id = int.parse(stdin.readLineSync()!);
    Post post = getPost(id);

    recieverMsg('the new title of the post');
    String title = stdin.readLineSync()!;

    recieverMsg('the new body of the post');
    String body = stdin.readLineSync()!;

    updatePost(Post(title: title, body: body, id: post.id));

    endTaskMsg(); 
  }
}
