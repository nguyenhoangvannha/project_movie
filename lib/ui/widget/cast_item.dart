import 'package:flutter/material.dart';

import '../../ui/widget/base/custom_container.dart';
import '../../ui/widget/base/custom_text.dart';

class CastItem extends StatelessWidget {
  final String title;
  final String imageUrl;

  CastItem({@required this.title, @required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Card(
      borderOnForeground: true,
      child: GridTile(
        child: Container(
          margin: EdgeInsets.only(bottom: 38),
          child: RoundedCachedNetworkImage(
            imageUrl: imageUrl,
          ),
        ),
        footer: Container(
          margin: EdgeInsets.only(top: 38),
          padding: EdgeInsets.all(4),
          child: TextTitleWhite(
              text: title, maxLines: 2, color: Colors.black, fontSize: 12),
        ),
      ),
    );
  }
}
