import '../entity/post.dart';
import '../repository/post_repository.dart';

class AddPost {
  final PostRepository postRepository;
  const AddPost(this.postRepository);

  void call (Post post) {
    postRepository.addPost(post);
  }
}