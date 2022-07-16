import 'package:freezed_annotation/freezed_annotation.dart';
part 'mainFailier.freezed.dart';

@freezed
class MainFailier with _$MainFailier {
  const factory MainFailier.clientFailure() = _clientFailure;
  const factory MainFailier.serverFailure() = _serverFailure;
}
