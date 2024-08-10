import '../entity/post.dart';
import '../repository/post_repository.dart';

class GetPost {
  final PostRepository postRepository;
  const GetPost(this.postRepository);
  Post call(int id) {
    return postRepository.getPost(id);
  }
}