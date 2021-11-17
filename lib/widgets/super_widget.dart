mixin SuperWidget implements ISuperWidget {
  final bool _anonymous = false;

  bool isAnonymous() {
    return _anonymous;
  }
}

abstract class ISuperWidget {}
