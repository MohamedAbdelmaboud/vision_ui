import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/app_images.dart';
import '../../data/models/dashboard_item_model.dart';
import '../../ui/views/dashboard_view.dart';

part 'dash_state.dart';

class DashCubit extends Cubit<DashState> {
  static DashCubit get(context) => BlocProvider.of(context);
  String title = 'Dashboard';

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
        //TODO: TableView
        page: const Placeholder(),
      ),
      DrawerItemModel(
        icon: Assets.assetsImagesBilling,
        title: 'Billing',
        page: const Placeholder(),
      ),
      DrawerItemModel(
        icon: Assets.assetsImagesProfile,
        title: 'Profile',
        page: const Placeholder(),
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
