class ApiEndPoints {
  //static String baseUrl = 'http://192.168.137.1';
  // static String baseUrl = 'http://10.0.2.2:3001';
  //static String baseUrl = 'http://3.7.69.180:3001';
  static String baseUrl = 'http://13.127.28.68:3001';

  static String otpLogin = '/sendOtp';
  static String otpverify = '/verify';
  static String logout = '/logout';
  static String Userprofile = '/profile';
  static String home = '/home';
  static String preference = '/preference';
  static String interest = '/home?interest=true&count=10';
  static String like = '/like';
  static String matches = '/match';
  static String chat = '/chat';
  static String report = '/report';
  static String block = '/block';
  static String newphNo = '/profile/phNo/sendOtp';
  static String verifynewphNo = '/profile/phNo/verify';
  static String subcription = '/subscription';
  static String getUsersOrder = '/subscription/orders';
  static String makeOrder = '/subscription/order';
  static String payment = '/subscription/payment';
  static String verifyPayment = '/subscription/payment-success';
}
