import 'package:menus_api/menus_api.dart';

/// {@template todos_repository}
/// A repository that handles `todo` related requests.
/// {@endtemplate}
class MenusRepository {
  /// {@macro todos_repository}
  const MenusRepository({
    required MenusApi menusApi,
  }) : _menusApi = menusApi;

  final MenusApi _menusApi;

  /// Provides a [Stream] of all todos.
  Stream<List<Menu>> getMenus() => _menusApi.getMenus();
}