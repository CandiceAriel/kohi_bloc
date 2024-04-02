import 'package:menus_api/src/menus_api.dart';
import 'package:menus_api/src/models/models.dart';

/// {@template todos_api}
/// The interface for an API that provides access to a list of todos.
/// {@endtemplate}
abstract class MenusApi {
  /// {@macro todos_api}
  const MenusApi();

  /// Provides a [Stream] of all todos.
  Stream<List<Menu>> getMenus();
}

/// Error thrown when a [Todo] with a given id is not found.
class MenuNotFoundException implements Exception {}