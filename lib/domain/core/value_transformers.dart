///Helfer-methode um Codeduplizierung zu vermeiden.
String emptyIfNull(String input) {
  if (input == null) {
    return '';
  } else {
    return input;
  }
}
