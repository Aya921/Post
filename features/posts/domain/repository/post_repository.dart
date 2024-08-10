import '../entity/post.dart';

abstract class PostRepository {
  // CRUD
  List<Post> getAllPosts ();
  Post getPost(int id);
  void addPost(Post post);
  void deletePost(int id);
  void updatePost(Post post);
}