import 'package:equatable/equatable.dart';

class CounterState extends Equatable {
  final int count;
  final DateTime lastUpdated;

  const CounterState(this.count, this.lastUpdated);

  @override
  List<Object?> get props => [count, lastUpdated];
}
