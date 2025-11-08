import 'package:flutter/material.dart';
import '../model/dashboard_model.dart';

class DashboardController {
  final DashboardModel _model = DashboardModel();

  int get currentIndex => _model.currentIndex; // Fix: return the actual index

  void setPage(int index) {
    _model.currentIndex = index;
  }

  Widget getCurrentPage() {
    return _model.pages[_model.currentIndex];
  }
}
