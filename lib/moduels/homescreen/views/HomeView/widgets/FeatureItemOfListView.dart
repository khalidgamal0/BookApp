import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class FeatureItemOfListView extends StatelessWidget {
  const FeatureItemOfListView({
    super.key, required this.imgUrl,
  });
  final String imgUrl;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3/4,
      child:ClipRRect(
        child: CachedNetworkImage(
          imageUrl:imgUrl,
          fit:BoxFit.fill,
          errorWidget: (context, url, error) => Icon(Icons.error),
          placeholder: (context, url) =>const Center(child:CircularProgressIndicator()),
        ),
      ),
    );
  }
}
