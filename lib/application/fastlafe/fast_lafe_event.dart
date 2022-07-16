part of 'fast_lafe_bloc.dart';

@freezed
class FastLafeEvent with _$FastLafeEvent {
  const factory FastLafeEvent.initialize() = Initialize;
  const factory FastLafeEvent.likevideo({required int id}) = Likevideo;
  const factory FastLafeEvent.unlikevideo({required int id}) = Unlikevideo;
}
