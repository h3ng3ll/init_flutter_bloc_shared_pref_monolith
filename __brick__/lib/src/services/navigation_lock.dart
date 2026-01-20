

class NavigationLock {
  static bool _locked = false;

  static bool tryLock() {
    if (_locked) return false;
    _locked = true;
    return true;
  }

  static void unlock() {
    _locked = false;
  }
}
