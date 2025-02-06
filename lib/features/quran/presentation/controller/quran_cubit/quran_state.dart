part of 'quran_cubit.dart';

@immutable
sealed class QuranState {}

final class QuranInitial extends QuranState {}


final class GetQuranLoading extends QuranState {}
final class GetQuranSuccess extends QuranState {}
final class GetQuranFailure extends QuranState {}
