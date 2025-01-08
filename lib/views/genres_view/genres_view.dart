import 'package:flutter/material.dart';
import 'package:music_app/widgets/clickable_image.dart';

class GenresView extends StatelessWidget {
  const GenresView({super.key, this.boxSize = 130.0});

  final double boxSize;

  void _onImageTap(String genre) {
    print('Genre: $genre');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                ClickableImage(
                  imagePath: 'assets/images/POP.png',
                  size: boxSize,
                  onPressed: () => _onImageTap('POP'),
                ),
                const SizedBox(
                  height: 30,
                ),
                ClickableImage(
                  imagePath: 'assets/images/RAP.png',
                  size: boxSize,
                  onPressed: () => _onImageTap('RAP'),
                ),
                const SizedBox(
                  height: 30,
                ),
                ClickableImage(
                  imagePath: 'assets/images/ROCK.png',
                  size: boxSize,
                  onPressed: () => _onImageTap('ROCK'),
                ),
                const SizedBox(
                  height: 30,
                ),
                ClickableImage(
                  imagePath: 'assets/images/Alternatif.png',
                  size: boxSize,
                  onPressed: () => _onImageTap('Alternatif'),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
            const SizedBox(
              width: 30,
            ),
            Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                ClickableImage(
                  imagePath: 'assets/images/EDM.png',
                  size: boxSize,
                  onPressed: () => _onImageTap('EDM'),
                ),
                const SizedBox(
                  height: 30,
                ),
                ClickableImage(
                  imagePath: 'assets/images/METAL.png',
                  size: boxSize,
                  onPressed: () => _onImageTap('METAL'),
                ),
                const SizedBox(
                  height: 30,
                ),
                ClickableImage(
                  imagePath: 'assets/images/RnB.png',
                  size: boxSize,
                  onPressed: () => _onImageTap('RnB'),
                ),
                const SizedBox(
                  height: 30,
                ),
                ClickableImage(
                  imagePath: 'assets/images/Akustik.png',
                  size: boxSize,
                  onPressed: () => _onImageTap('Akustik'),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
