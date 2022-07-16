import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflz_appproject/domin/hotandnew/hotand_new/hotand_new.dart';

import 'package:netflz_appproject/domin/core/failier/mainFailier.dart';

import 'package:dartz/dartz.dart';

import '../../domin/api_end_point.dart';
import '../../domin/hotandnew/model/hotandnewservises.dart';

@LazySingleton(as:HotAndNewServises)
class HotandNewImplemetation implements HotAndNewServises{
  @override
  Future<Either<MainFailier, HotandNew>> getHotandNewMovieData() async{
 try {
      final response = await Dio(BaseOptions())
          .get(ApiEndPoints.hotandnewmovie,);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = HotandNew.fromJson(response.data);
        return Right(result);
      } else {
        return const Left(MainFailier.serverFailure());
      }
    } catch (e) {
      log(e.toString());
      return const Left(MainFailier.clientFailure());
    }
  }

  @override
  Future<Either<MainFailier, HotandNew>> getHotandNewTvData() async{
    try {
      final response = await Dio(BaseOptions())
          .get(ApiEndPoints.hotandnewTvs,);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = HotandNew.fromJson(response.data);
        return Right(result);
      } else {
        return const Left(MainFailier.serverFailure());
      }
    } catch (e) {
      log(e.toString());
      return const Left(MainFailier.clientFailure());
    }
  }
  
}