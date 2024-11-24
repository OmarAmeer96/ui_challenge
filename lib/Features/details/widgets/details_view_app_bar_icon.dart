import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailViewAppBarIcon extends StatelessWidget {
  const DetailViewAppBarIcon({
    super.key,
    required this.icon,
  });

  final String icon;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.grey.withOpacity(0.4),
      child: SvgPicture.asset(
        icon,
        colorFilter: const ColorFilter.mode(
          Colors.black,
          BlendMode.srcIn,
        ),
        width: 20,
      ),
    );
  }
}
