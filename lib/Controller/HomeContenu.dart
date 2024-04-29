import 'package:flutter_mvc/flutter_mvc.dart';
import 'package:voyage_mada_app/Model/contenuModel.dart';
import 'package:voyage_mada_app/View/HomeView.dart';

class HomeContenu extends MvcController<ContenuModel> {
  @override
  MvcView<MvcController> view() => HomeView();
  
}
