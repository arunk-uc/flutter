import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CachedImage extends StatefulWidget {
  CachedImage({Key key}) : super(key: key);

  @override
  _CachedImageState createState() => _CachedImageState();
}

class _CachedImageState extends State<CachedImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cached Images'),
      ),
      // body: Column(children: [
      //   Text('Hello google Fonts',
      //       style: GoogleFonts.getFont(
      //         'Public Sans',
      //         fontSize: 30,
      //       )),
      //   CachedNetworkImage(
      //     imageUrl:
      //         'https://miro.medium.com/max/1000/1*ilC2Aqp5sZd1wi0CopD1Hw.png',
      //     progressIndicatorBuilder: (context, url, downloadProgress) =>
      //         CircularProgressIndicator(
      //       value: downloadProgress.progress,
      //     ),
      //     errorWidget: (context, url, error) => Icon(Icons.error),
      //   ),
      // ]),
    );
  }
}
