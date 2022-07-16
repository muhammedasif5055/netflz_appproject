import 'package:dartz/dartz.dart';
import 'package:netflz_appproject/domin/core/failier/mainFailier.dart';
import 'package:netflz_appproject/domin/hotandnew/hotand_new/hotand_new.dart';

abstract class HotAndNewServises{
  Future<Either<MainFailier,HotandNew>>getHotandNewMovieData();
  Future<Either<MainFailier,HotandNew>>getHotandNewTvData();

}