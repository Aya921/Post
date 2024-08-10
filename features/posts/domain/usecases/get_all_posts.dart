import '../entity/post.dart';
import '../repository/post_repository.dart';

class GetAllPosts {
  final PostRepository postRepository;
  const GetAllPosts(this.postRepository);
  List<Post> call() {
    return postRepository.getAllPosts();
  }

  String yay() {
    return('make it');
  }
}
