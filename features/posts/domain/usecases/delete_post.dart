import '../repository/post_repository.dart';

class DeletePost {
  final PostRepository postRepository;
  const DeletePost(this.postRepository);

  void call(int id) {
    postRepository.deletePost(id);
  }
}