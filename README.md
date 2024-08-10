
```
project
├─ core
│  ├─ identifier.dart
│  └─ mixins.dart
└─ features
   └─ posts
      ├─ data
      │  ├─ data_source
      │  │  └─ post_remote_data.dart
      │  └─ repository
      │     └─ post_repository_imp.dart
      └─ domain
         ├─ entity
         │  └─ post.dart
         ├─ repository
         │  └─ post_repository.dart
         └─ usecases
            ├─ add_post.dart
            ├─ delete_post.dart
            ├─ get_all_posts.dart
            ├─ get_post.dart
            └─ update_post.dart

```