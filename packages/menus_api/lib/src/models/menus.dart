import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'menus.g.dart';

@immutable
@JsonSerializable()
final class Menu extends Equatable {
  const Menu({
    required this.id, 
    required this.title, 
    required this.description, 
    required this.price
  });

  final int id;
  final String title;
  final String description;
  final String price;

  Menu copyWith({
    int? id,
    String? title,
    String? description,
    String? price
  }) {
    return Menu(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      price: price ?? this.price,
    );
  }

  factory Menu.fromJson(Map<String, dynamic> json) => _$MenuFromJson(json);
  Map<String, dynamic> toJson() => _$MenuToJson(this);

  @override
  List<Object> get props => [id, title, description, price];
}