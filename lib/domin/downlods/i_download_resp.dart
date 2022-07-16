import 'package:dartz/dartz.dart';
import 'package:netflz_appproject/domin/core/failier/mainFailier.dart';
import 'package:netflz_appproject/domin/downlods/modeal/downlods.dart';

abstract class IDownloadsRepo {
  Future<Either<MainFailier, List<Downloads>>> getDownloadimage();
}
