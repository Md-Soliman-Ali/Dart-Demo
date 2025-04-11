Future<bool> userAbleToVote(int age) async {
  if (age > 18) {
    return true;
  } else {
    return false;
  }
}

Future<bool> login(String phone, String password) async {
  String userPhone = '01706';
  String userPassword = '123';

  if (userPhone == phone && userPassword == password) {
    return true;
  } else {
    return false;
  }
}

Future<void> loading() async {
  await Future.delayed(Duration(seconds: 5), () {
    print('Run After 5 Sec');
  });
  print('Function End');
}

main() async {
  userAbleToVote(15).then((value) {
    if (value) {
      print('able to vote');
    } else {
      print('still kid');
    }
  });

  login('01706', '123').then((value) {
    if (value) {
      print('Facebook Home Page');
    } else {
      print('Error | Login Page');
    }
  });

  /// Since there is no await in front of it, it gets printed right away.
  print('Start Function');

  await loading();
  print('After All Done');
}
