import '../entity/post.dart';
import '../repository/post_repository.dart';

class UpdatePost {
  final PostRepository postRepository;
  const UpdatePost(this.postRepository);

  void call (Post post) {
    postRepository.updatePost(post);
  }
}