import 'package:flutter/material.dart';

class PhotoTile extends StatelessWidget {
  final String url;
  final String title;

  const PhotoTile({Key? key, required this.url, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Column(
        children: [
          //Image
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  vertical: size.height * 0.005,
                  horizontal: size.width * 0.015),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[700],
                    borderRadius: BorderRadius.circular(20.0),
                    image: DecorationImage(
                        fit: BoxFit.cover, image: NetworkImage(url))),
              ),
            ),
          ),
          //Tile text
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.all(size.width * 0.02),
              child: Text(
                title,
                overflow: TextOverflow.clip,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: size.width * 0.04,
                    fontFamily: 'DMSans'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
