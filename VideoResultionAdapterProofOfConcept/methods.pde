String convertIntTo4DigitString(int i){
  String s = Integer.toString(i);
  while(s.length() < 4){
    s = "0" + s;
  }
  return s;
}
