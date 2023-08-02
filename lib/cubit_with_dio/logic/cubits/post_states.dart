import '../../Models/post_model.dart';

abstract class PostStates{}

class PostLoaded1State extends PostStates{
  final List<PostModel2> posts;
  PostLoaded1State(this.posts);
}
class PostLoading1State extends PostStates{}
class PostError1State extends PostStates{
  final String error;
  PostError1State(this.error);
}