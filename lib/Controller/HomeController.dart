import 'package:flutter_mvc/flutter_mvc.dart';
import 'package:voyage_mada_app/Model/HomeModel.dart';
import 'package:voyage_mada_app/View/HomeView.dart';

class HomeController extends MvcController<HomeModel> {
  @override
  MvcView<MvcController> view() => HomeView();
  
}

