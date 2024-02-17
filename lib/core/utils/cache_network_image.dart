import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:opensooq/core/utils/media_query_values.dart';

class CacheNetworkImageApp extends StatelessWidget {
  const CacheNetworkImageApp({Key? key, required this.urlImage, this.height, this.width, this.fit}) : super(key: key);
  final String urlImage;
  final double? height;
  final double? width;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: height ?? context.height * 0.18,
      width: width ?? double.infinity,
      child: CachedNetworkImage(
        key: ValueKey(urlImage),
        imageUrl: urlImage,
        fit: fit ?? BoxFit.contain,
        errorWidget: (context, s, d) {
          return const Icon(
            Icons.error,
          );
        },
        placeholder: (context, s) {
          return const Center(
            child: CircularProgressIndicator.adaptive(),
          );
        },
      ),
    );
  }
}
