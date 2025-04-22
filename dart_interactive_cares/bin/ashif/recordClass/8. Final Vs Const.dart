void main() {
  /// mutable: changeable

  int myNumber = 2;
  myNumber = 4;

  /// @immutable: not changeable
  /// Final: run time (when the screen comes up)
  /// Const: compile time (the screen shows after compiling the entire code. const cannot assign after screen comes up)

  final int myFinal; // can set only one time (inline or can assign later)
  const int myConst = 5; // set only one time (inline)

  myFinal = 4;
}
