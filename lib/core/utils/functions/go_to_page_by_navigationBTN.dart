  import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

import '../app_routes.dart';

void goToPageFromNavigationButton(currntPage,BuildContext context) {
    if (currntPage == 1) {
      GoRouter.of(context).push(AppRoutes.kTasbihView);
    }
  }
