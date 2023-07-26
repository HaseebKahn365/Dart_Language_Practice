bool button1 = false;
bool button2 = false;

void main() {
  setButton1();
  setButton2();
}

void setButton1() {
  button1 = true;
  button2 = false;
  print('Button 1 was tapped');
  print('Buttons\' Status: \nButton1 = $button1\nButton2 = $button2');
}

void setButton2() {
  button2 = true;
  button1 = false;
  print('Button 2 was tapped');
  print('Buttons\' Status: \nButton1 = $button1\nButton2 = $button2');
}
