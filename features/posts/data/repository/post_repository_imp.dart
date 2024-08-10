import '../../domain/entity/post.dart';
import '../../domain/repository/post_repository.dart';
import '../data_source/post_remote_data.dart';

class PostRepositoryImp implements PostRepository {
  PostRemoteData postRemoteData;
  PostRepositoryImp(this.postRemoteData);
  List<Post> getAllPosts () {
    return postRemoteData.getAllPosts();
  }
  Post getPost(int id) {
    return postRemoteData.getPost(id);
  }
  void addPost(Post post) {
    postRemoteData.addPost(post);
  }
  void updatePost(Post post) {
    postRemoteData.updatePost(post);
  }
  void deletePost(int id) {
    postRemoteData.deletePost(id);
  }
}