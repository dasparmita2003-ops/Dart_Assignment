// Base class
class Notification {
	String displayNotification() {
		return "This is a notification.";
	}
}

// Child class: EmailNotification
class EmailNotification extends Notification {
	@override
	String displayNotification() {
		return "Email Notification: You have received a new email.";
	}
}

// Child class: SMSNotification
class SMSNotification extends Notification {
	@override
	String displayNotification() {
		return "SMS Notification: You have received a new message.";
	}
}

void main() {
	Notification email = EmailNotification();
	Notification sms = SMSNotification();

	print(email.displayNotification());
	print(sms.displayNotification());
}
