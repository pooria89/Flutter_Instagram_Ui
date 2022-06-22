extension Validator on String {
  bool isValidUserName() {
    return isNotEmpty && length > 5;
  }
}