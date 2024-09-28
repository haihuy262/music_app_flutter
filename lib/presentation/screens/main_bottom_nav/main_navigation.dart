import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:music_app/presentation/screens/favorite/favorite_screen.dart';
import 'package:music_app/presentation/screens/home/home_screen.dart';
import 'package:music_app/presentation/screens/main_bottom_nav/bloc/bottom_nav_bloc.dart';
import 'package:music_app/presentation/screens/music/music_screen.dart';
import 'package:music_app/styles/app_colors.dart';

final List<BottomNavigationBarItem> _bottomNavItems = <BottomNavigationBarItem>[
  BottomNavigationBarItem(
    label: "Home",
    icon: SvgPicture.asset("assets/svg/home.svg"),
    activeIcon: SvgPicture.asset(
      "assets/svg/home.svg",
      colorFilter: const ColorFilter.mode(Colors.deepPurple, BlendMode.srcIn),
    ),
  ),
  BottomNavigationBarItem(
    label: "Music",
    icon: SvgPicture.asset("assets/svg/music.svg"),
    activeIcon: SvgPicture.asset(
      "assets/svg/music.svg",
      colorFilter: const ColorFilter.mode(Colors.deepPurple, BlendMode.srcIn),
    ),
  ),
  BottomNavigationBarItem(
    label: "Favorite",
    icon: SvgPicture.asset("assets/svg/heart.svg"),
    activeIcon: SvgPicture.asset(
      "assets/svg/heart.svg",
      colorFilter: const ColorFilter.mode(Colors.deepPurple, BlendMode.srcIn),
    ),
  )
];

final List<Widget> _bottomNavScreen = <Widget>[
  const HomeScreen(),
  const MusicScreen(),
  const FavoriteScreen(),
];

class MainNavigation extends StatelessWidget {
  const MainNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavBloc, BottomNavState>(
      builder: (context, state) {
        return Scaffold(
          body: _bottomNavScreen.elementAt(state.indexState),
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20).w,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.1),
                    blurRadius: 15.0,
                    spreadRadius: 1.0,
                    offset: const Offset(0, -4),
                  ),
                ],
              ),
              height: 65.h,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                child: BottomNavigationBar(
                  items: _bottomNavItems,
                  showUnselectedLabels: false,
                  showSelectedLabels: false,
                  backgroundColor: AppColors.bgBottomNav,
                  onTap: (index) {
                    context.read<BottomNavBloc>().add(TabChange(index: index));
                  },
                  currentIndex: state.indexState,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
