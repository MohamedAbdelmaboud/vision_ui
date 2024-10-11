import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/app_images.dart';
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
    ];
  }

  DashCubit() : super(DashInitial());
  void changeIndex(int index) {
    currentIndex = index;
    title = items[index].title;
    emit(DashIndexChange());
  }

  Widget currentDesktopView() => items[currentIndex].page;
}
