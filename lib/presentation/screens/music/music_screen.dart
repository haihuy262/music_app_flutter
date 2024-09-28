import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:music_app/styles/app_colors.dart';

class MusicScreen extends StatelessWidget {
  const MusicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        leading: const BackButton(),
        title: const Text('Ophelia by Steven'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite),
          )
        ],
      ),
      body: Column(
        children: [
          10.verticalSpace,
          Center(
            child: SizedBox(
              width: 304.w,
              height: 319.h,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(36),
                child: Image.asset(
                  "assets/images/image8.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          10.verticalSpace,
          Text(
            "Ophelia",
            style: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
          7.verticalSpace,
          Text(
            "Steven Price",
            style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w400,
                color: AppColors.textColor1),
          ),
          Slider(
            value: 0,
            onChanged: (value) {},
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "1:25",
                  style: TextStyle(fontSize: 14.sp),
                ),
                Text(
                  "3:15",
                  style: TextStyle(fontSize: 14.sp),
                ),
              ],
            ),
          ),
          5.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SvgPicture.asset(
                "assets/svg/shuffle.svg",
                height: 24.h,
              ),
              SvgPicture.asset(
                "assets/svg/skip-back.svg",
                height: 24.h,
              ),
              CircleAvatar(
                radius: 37.r,
                child: SvgPicture.asset(
                  "assets/svg/pause.svg",
                  height: 41.h,
                ),
              ),
              SvgPicture.asset(
                "assets/svg/skip-forward.svg",
                height: 24.h,
              ),
              SvgPicture.asset(
                "assets/svg/repeat.svg",
                height: 24.h,
              )
            ],
          )
        ],
      ),
    );
  }
}
