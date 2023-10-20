import 'package:bookapp/moduels/homescreen/data/repo/HomeRepoImpl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import '../ApiServicies.dart';


final getIt=GetIt.instance;

void setupServiceLocator(){
  getIt.registerSingleton<ApiServecies>(ApiServecies(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(getIt.get<ApiServecies>(),));
}