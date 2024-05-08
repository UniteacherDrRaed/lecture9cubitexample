import 'package:flutter_bloc/flutter_bloc.dart';
class CubitForSE3 extends Cubit<bool>{
  CubitForSE3():super(true);
  void like()=>emit(true);
  void unlike()=> emit(false);
}