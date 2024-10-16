import 'package:flutter/material.dart';

import '../../../../../core/utils/AppImage.dart';

class HalfImageBackgroundWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.blue,
          width: 150,
          height: 100,
          child: Stack(
            children: [
              // Image in the background, covering half of the container
              FractionallySizedBox(
                widthFactor: 1, // Shows half of the image horizontally
                child: Image.asset(
                  Assets.assetsFoodItem,
                  fit: BoxFit.cover,
                ),
              ),
              // Text on top of the image
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  height: 50,
                  color: Colors.red,
                  child: Text(
                    'Flutter Expert',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: HalfImageBackgroundWidget(),
  ));
}
