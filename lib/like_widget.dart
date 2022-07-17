import 'package:flutter/material.dart';

class LikeWidget extends StatefulWidget {
  const LikeWidget({Key? key}) : super(key: key);

  @override
  State<LikeWidget> createState() => _LikeWidgetState();
}

class _LikeWidgetState extends State<LikeWidget> {
  bool _isFavorited = false;
  int _favoriteCount = 0;
  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _favoriteCount -= 1;
        _isFavorited = false;
      } else {
        _favoriteCount += 1;
        _isFavorited = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(0),
              child: IconButton(
                padding: const EdgeInsets.all(0),
                icon: (_isFavorited
                    ? const Icon(Icons.favorite)
                    : const Icon(Icons.favorite_border)),
                color: Colors.red,
                onPressed: _toggleFavorite,
              ),
            ),
            SizedBox(
              width: 18,
              child: SizedBox(child: Text('$_favoriteCount')),
            )
          ],
        ),
      ),
    );
  }
}
