import 'package:cached_network_image/cached_network_image.dart';
import 'package:common_widget/app/constants/app_color.dart';
import 'package:doc_widget/doc_widget.dart';
import 'package:flutter/material.dart';

/// ```dart
/// final imageView = ImageView(
///   imageUrl: "https://sm.mashable.com/mashable_in/photo/default/datasecurity_pb31.jpg",
///   width: 200,
///   height: 200,
///   radius: 200,
/// );
/// ```
@docWidget
class ImageView extends StatelessWidget {
  final String imageUrl;
  final double radius;
  final double height;
  final double width;

  ImageView({
    this.imageUrl,
    this.radius = 0,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: CachedNetworkImage(
        height: height,
        width: width,
        imageUrl: imageUrl,
        imageBuilder: (context, imageProvider) => Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: imageProvider,
              fit: BoxFit.cover,
            ),
          ),
        ),
        placeholder: (context, url) => _defaultPlaceHolder(),
        errorWidget: (context, url, error) => _defaultPlaceHolder(),
      ),
    );
  }

  Widget _defaultPlaceHolder() {
    return Container(
      width: 328,
      height: 164,
      decoration: BoxDecoration(
          color: FF404040, borderRadius: BorderRadius.all(Radius.circular(10))),
    );
  }
}
