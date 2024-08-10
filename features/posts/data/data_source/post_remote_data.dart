import '../../../../core/mixins.dart';
import '../../domain/entity/post.dart';

class PostRemoteData with GenerateId<Post> {
  static List<Post> posts = [];
  List<Post> getAllPosts () {
    return posts;
  }
  Post getPost(int id) {
    return posts.firstWhere((post) => post.id == id);
  }
  void addPost(Post post) {
    post.id = getId(posts);
    posts.add(post);
    print('Post is added');
  }
  void updatePost(Post post) {
    posts = posts.map<Post>((p) {
      if(p.id == post.id) {
        return post;
      }
      return p;
    }).toList();
    print('post is updated');
  }

  void deletePost(int id) {
    posts.removeWhere((post) => post.id == id);
    print('post is deleted');
  }
}