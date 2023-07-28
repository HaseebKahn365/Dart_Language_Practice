abstract class Widget {}

class Text extends Widget {
  Text({required this.text});
  final String text;
}

class Button extends Widget {
  Button({required this.child, this.onPressed});
  final Widget child; //using composition here;
  final void Function()? onPressed;
}

void main() {
  final button = Button(
    child: Text(text: 'Hello'), //this is essential use of UI building.
    onPressed: () => print('Button Pressed!'),
  );
  print(button);
}
