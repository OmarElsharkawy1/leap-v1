class ConstantApi {
  static const String baseUrl =
      'http://88.198.204.250:8081/api/';
  static   getImage(String url)=>'http://88.198.204.250:8081/api/$url';

  static const String login = "${baseUrl}login";
  static const String myData = "${baseUrl}my-data";
  static const String getJobs = "${baseUrl}Jobs/GetJobs";
  static const String getGetInternships = "${baseUrl}Jobs/GetInternships";
  static const String email = "email";
  static const String signUp = "sign-up";

  static const String password = "password";
}
