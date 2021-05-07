import 'package:flutter/material.dart';

import '../core/app_colors.dart';

class DrawerHeaderWidget extends StatelessWidget {
  const DrawerHeaderWidget({
    Key key,
    @required this.userName,
    @required this.mobile,
    @required this.imageUrl,
  }) : super(key: key);

  final String userName;
  final String mobile;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: DrawerHeader(
        decoration: BoxDecoration(
          color: AppColors.secondaryColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 35.0,
                  foregroundImage: NetworkImage(
                    imageUrl,
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.nights_stay,
                    color: AppColors.white,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userName,
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 18.0,
                      ),
                    ),
                    const SizedBox(height: 5.0),
                    Text(
                      mobile,
                      style: TextStyle(
                        color: AppColors.white.withOpacity(0.5),
                      ),
                    ),
                  ],
                ),
                IconButton(
                  icon: Icon(Icons.keyboard_arrow_down),
                  color: AppColors.white,
                  iconSize: 32.0,
                  onPressed: () {},
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
