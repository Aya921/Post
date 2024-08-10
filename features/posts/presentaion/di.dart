import '../data/data_source/post_remote_data.dart';
import '../data/repository/post_repository_imp.dart';
import '../domain/usecases/add_post.dart';
import '../domain/usecases/delete_post.dart';
import '../domain/usecases/get_all_posts.dart';
import '../domain/usecases/get_post.dart';
import '../domain/usecases/update_post.dart';
import 'states.dart';

PostRepositoryImp postRepositoryImp = PostRepositoryImp(PostRemoteData());

//! Use cases

GetAllPosts getAllPosts = GetAllPosts(postRepositoryImp);
AddPost addPost = AddPost(postRepositoryImp);
DeletePost deletePost = DeletePost(postRepositoryImp);
GetPost getPost = GetPost(postRepositoryImp);
UpdatePost updatePost = UpdatePost(postRepositoryImp);

//! stated

GetAllPostState getAllPostState = GetAllPostState();
AddPostState addPostState = AddPostState();
DeletePostState deletePostState = DeletePostState();
GetPostState getPostState = GetPostState();
UpdatePostState updatePostState = UpdatePostState(); 
