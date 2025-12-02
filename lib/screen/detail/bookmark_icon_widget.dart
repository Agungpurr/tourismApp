import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tourism_app/data/model/tourism.dart';
import 'package:tourism_app/provider/detail/bookmark_list_provider.dart';

class BookmarkIconWidget extends StatelessWidget {
  final Tourism tourism;
  const BookmarkIconWidget({super.key, required this.tourism});

  @override
  Widget build(BuildContext context) {
    return Consumer<BookmarkListProvider>(
      builder: (context, provider, child) {
        final isBookmarked = provider.checkItemBookmark(tourism);

        return IconButton(
          icon: Icon(
            isBookmarked ? Icons.bookmark : Icons.bookmark_outline,
          ),
          onPressed: () {
            if (isBookmarked) {
              provider.removeBookmark(tourism);
            } else {
              provider.addBookmark(tourism);
            }
          },
        );
      },
    );
  }
}
