part of 'coffee_bloc.dart';

@immutable
sealed class CoffeeEvent {}

final class ChangeAmountEvent extends CoffeeEvent{}

final class ShowPasswordEvent extends CoffeeEvent{}
final class AddCoffeeLoadEvent extends CoffeeEvent {}

final class LoadDataEvent extends CoffeeEvent{}

final class NavBarEvent extends CoffeeEvent{
  final int index;
  NavBarEvent({required this.index});
}

