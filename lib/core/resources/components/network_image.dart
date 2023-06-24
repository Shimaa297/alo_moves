import 'package:alo_moves/core/resources/color_manager.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageShared extends StatelessWidget {
  final double? borderRadius;
  final String imageUrl;
  final double widthImage;
  final double heightImage;
  const ImageShared({
    super.key,
    this.borderRadius = 10,
    required this.imageUrl,
    required this.widthImage,
    required this.heightImage,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius!),
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        width: widthImage,
        height: heightImage,
        fit: BoxFit.cover,
        placeholder: (BuildContext context, _) {
          return Container(
            color: ColorManager.divider.withOpacity(0.1),
            width: widthImage,
            height: heightImage,
          );
        },
      ),
    );
  }
}
