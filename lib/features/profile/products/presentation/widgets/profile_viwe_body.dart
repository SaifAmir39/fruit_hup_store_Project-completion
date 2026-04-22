import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hup_store/features/auth/prsentaion/Viwes/loin_viwe.dart';
import 'package:fruit_hup_store/features/auth/prsentaion/cubits/logout_cubit.dart';
import 'package:fruit_hup_store/features/profile/data/profileItemModle.dart';
import 'package:fruit_hup_store/features/profile/products/presentation/views/Orders.dart';
import 'package:fruit_hup_store/features/profile/products/presentation/views/email_veiw.dart';
import 'package:fruit_hup_store/features/profile/products/presentation/views/favorite_viwe.dart';
import 'package:fruit_hup_store/features/profile/products/presentation/views/whoe_us.dart';
import 'package:fruit_hup_store/features/profile/products/presentation/widgets/custom_dailog.dart';
import 'package:fruit_hup_store/features/profile/products/presentation/widgets/logput_item.dart';

import 'package:fruit_hup_store/features/profile/products/presentation/widgets/profile_info.dart';
import 'package:fruit_hup_store/features/profile/products/presentation/widgets/profile_item.dart';

class ProfileViweBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<ProfileItemModle> profileItemModles = [
      ProfileItemModle(
        image: "assets/images/user.svg",
        title: "الملف الشخصي",
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => EmailVeiw()),
          );
        },
      ),
      ProfileItemModle(
        image: 'assets/images/box.svg',
        title: 'طلباتي',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => OrdersView()),
          );
        },
      ),
      ProfileItemModle(
        image: 'assets/images/empty-wallet.svg',
        title: 'المدفوعات',
        onTap: () {},
      ),
      ProfileItemModle(
        image: 'assets/images/heart.svg',
        title: 'المفضلة',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FavoriteViwe()),
          );
        },
      ),
    ];

    return BlocListener<LogoutCubit, LogoutState>(
      listener: (context, state) {
        if (state is LogoutSuccess) {
          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => LoinViwe()), (route) => false);
        }
        else if (state is LogoutError) {
      ScaffoldMessenger.of(context).showSnackBar(
  SnackBar(
    content: Text("${state.message}"),
  ),
);
        }
      },
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ProfileInfo(),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 16)),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'عام',
                style: TextStyle(
                  color: const Color(0xFF0C0D0D) /* Grayscale-950 */,
                  fontSize: 13,
                  fontFamily: 'Cairo',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 16)),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            sliver: SliverList.builder(
              itemCount: profileItemModles.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: ProfileItem(
                    profileItemModle: profileItemModles[index],
                  ),
                );
              },
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 24)),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'المساعده',
                style: TextStyle(
                  color: const Color(0xFF0C0D0D) /* Grayscale-950 */,
                  fontSize: 14,
                  fontFamily: 'Cairo',
                  fontWeight: FontWeight.w600,
                  height: 1.70,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ProfileItem(
                profileItemModle: ProfileItemModle(
                  image: "assets/images/info-circle.svg",
                  title: "من نحن",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => WhoeUs()),
                    );
                  },
                ),
              ),
            ),
          ),

          SliverToBoxAdapter(child: SizedBox(height: 64)),
          SliverToBoxAdapter(
            child: LogoutItem(
              onTap: () {
                showcustomDailog(
                  context: context,
                  onprassAcppet: () {
                    BlocProvider.of<LogoutCubit>(context).logout();
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
