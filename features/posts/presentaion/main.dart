import 'dart:io';

import 'di.dart';
import 'msgs.dart';

void main() {
  while (true) {
    welcomeMsg();
    int choice = int.parse(stdin.readLineSync()!);
    switch (choice) {
      case 1:
        getAllPostState();
      case 2:
        getPostState();
      case 3:
        addPostState();

      case 4:
        updatePostState();
      case 5:
        deletePostState();
      case 6:
        exit(0);

      default:
        print('Invalid choice . please try again');
    }
  }
}
