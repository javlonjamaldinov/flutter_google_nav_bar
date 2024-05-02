import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_google_nav_bar/cubit/navbar_cubit.dart';

import 'package:flutter_svg/flutter_svg.dart';

class NavbarPage extends StatelessWidget {
  const NavbarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => NavbarCubit(),
      child: const _NavbarPageContent(),
    );
  }
}

class _NavbarPageContent extends StatelessWidget {
  const _NavbarPageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BlocBuilder<NavbarCubit, int>(
          builder: (context, state) {
            return BottomNavigationBar(
              backgroundColor: Colors.white,
              type: BottomNavigationBarType.fixed,
              selectedItemColor: const Color(0xff0099FF),
              unselectedItemColor: const Color(0xff8789A3),
              selectedLabelStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
              currentIndex: state,
              onTap: (index) {
                context.read<NavbarCubit>().updateIndex(index);
              },
              items: [
                BottomNavigationBarItem(
                  label: '',
                  icon: SvgPicture.asset(
                    'assets/images/home.svg',
                    color: state == 0
                        ? const Color(0xff0099FF)
                        : const Color(0xff8789A3),
                  ),
                ),
                BottomNavigationBarItem(
                  label: '',
                  icon: SvgPicture.asset(
                    'assets/images/icon.svg',
                    color: state == 1
                        ? const Color(0xff0099FF)
                        : const Color(0xff8789A3),
                  ),
                ),
                BottomNavigationBarItem(
                  label: '',
                  icon: SvgPicture.asset(
                    'assets/images/icons.svg',
                    color: state == 2
                        ? const Color(0xff0099FF)
                        : const Color(0xff8789A3),
                  ),
                ),
                BottomNavigationBarItem(
                  label: '',
                  icon: SvgPicture.asset(
                    'assets/images/vector.svg',
                    color: state == 3
                        ? const Color(0xff0099FF)
                        : const Color(0xff8789A3),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
