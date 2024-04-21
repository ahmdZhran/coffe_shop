import 'package:coffe_shop_app/core/utils/app_strings.dart';
import 'package:flutter/material.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 60),
      child: Row(
        children: [
          CircleAvatar(
            radius: 35,
            backgroundImage: AssetImage('assets/images/Image-60.png'),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Shahzaib',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    fontFamily: AppStrings.poppinsFamily),
              ),
              Text(
                'Good Morning!',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: AppStrings.poppinsFamily),
              ),
            ],
          )
        ],
      ),
    );
  }
}
