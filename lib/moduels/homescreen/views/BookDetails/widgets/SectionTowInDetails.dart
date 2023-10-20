import 'package:flutter/material.dart';

import '../../../../../shared/styles.dart';
import 'ListViewOfBookDetails.dart';

class SectionTowInDetails extends StatelessWidget {
  const SectionTowInDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like',
          style: Styles.textStyle14.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const ListViewOfBookDetails(),

      ],
    );
  }
}
