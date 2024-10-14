import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/utils/app_images.dart';
import '../../../../../tablet_layout/features/billing/ui/views/tablet_billing_view.dart';
import '../../../../../tablet_layout/features/dashborad/ui/views/tablet_dashborad_view.dart';
import '../../../../../tablet_layout/features/profile/ui/views/tablet_profile_view.dart';
import '../../../auth/ui/views/sign_in_view.dart';
import '../../../auth/ui/views/sign_up_view.dart';
import '../../../billing/ui/views/billing_view.dart';
import '../../../profile/ui/views/profile_view.dart';
import '../../../tables/ui/views/tables_view.dart';
import '../../data/models/dashboard_item_model.dart';
import '../../ui/views/dashboard_view.dart';

part 'dash_state.dart';

class DashCubit extends Cubit<DashState> {
  static DashCubit get(context) => BlocProvider.of(context);
  String title = 'Dashboard';
  var scaffoldKey = GlobalKey<ScaffoldState>();
  int currentIndex = 0;
  List<DrawerItemModel> get items {
    return [
      DrawerItemModel(
        icon: Assets.assetsImagesHome,
        title: 'Dashboard',
        page: const DashboardView(),
      ),
      DrawerItemModel(
        icon: Assets.assetsImagesTables,
        title: 'Tables',
        page: const TablesView(),
      ),
      DrawerItemModel(
        icon: Assets.assetsImagesBilling,
        title: 'Billing',
        page: const BillingView(),
      ),
      DrawerItemModel(
        icon: Assets.assetsImagesProfile,
        title: 'Profile',
        page: const ProfileView(),
      ),
      DrawerItemModel(
        icon: Assets.assetsImagesProfile,
        title: 'Sign In',
        page: const SignInView(),
      ),
      DrawerItemModel(
        icon: Assets.assetsImagesProfile,
        title: 'Sign UP',
        page: const SignUpView(),
      ),
    ];
  }

  List<DrawerItemModel> get tabletItems {
    return [
      DrawerItemModel(
        icon: Assets.assetsImagesHome,
        title: 'Dashboard',
        page: const TabletDashboardView(),
      ),
      DrawerItemModel(
        icon: Assets.assetsImagesTables,
        title: 'Tables',
        page: const TablesView(),
      ),
      DrawerItemModel(
        icon: Assets.assetsImagesBilling,
        title: 'Billing',
        page: const TabletBillingView(),
      ),
      DrawerItemModel(
        icon: Assets.assetsImagesProfile,
        title: 'Profile',
        page: const TabletProfileView(),
      ),
      DrawerItemModel(
        icon: Assets.assetsImagesProfile,
        title: 'Sign In',
        page: const SignInView(),
      ),
      DrawerItemModel(
        icon: Assets.assetsImagesProfile,
        title: 'Sign UP',
        page: const SignUpView(),
      ),
    ];
  }

  DashCubit() : super(DashInitial());
  void changeIndex(int index) {
    currentIndex = index;
    title = items[index].title;
    emit(DashIndexChange());
  }

  Widget currentDesktopView() => items[currentIndex].page;
  Widget currentTabletView() => tabletItems[currentIndex].page;
}
