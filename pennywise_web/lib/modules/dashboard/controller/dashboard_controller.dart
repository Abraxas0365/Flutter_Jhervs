import 'package:flutter/material.dart';
import '../model/dashboard_model.dart';

class DashboardController {
  final DashboardModel _model = DashboardModel();

  void setPage(int index) {
    _model.currentIndex = index;
  }

  Widget getCurrentPage() {
    return _model.pages[_model.currentIndex];
  }
}
