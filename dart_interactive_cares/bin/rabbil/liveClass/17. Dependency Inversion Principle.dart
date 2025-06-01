abstract class NotificationService {
  void send(String message);
}

class EmailService implements NotificationService {
  @override
  void send(String message) {
    print("Email Send $message");
  }
}

class SMSService implements NotificationService {
  @override
  void send(String message) {
    print("SMS Send $message");
  }
}

class PushService implements NotificationService {
  @override
  void send(String message) {
    print("Push Send $message");
  }
}
