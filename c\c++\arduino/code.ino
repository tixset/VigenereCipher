String code(String text, String password, bool decode){
  if (password.length() == 0) exit;
  int sign = 1;
  if (decode) sign = -1;
  String result = "";
  for (int i=0; i <= text.length() - 1; i++){
    result.concat(String(char(int(text[i]) + sign * int(password[i % password.length()]))));
  }
  return result;
}
