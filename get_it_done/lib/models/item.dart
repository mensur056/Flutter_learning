class Item {
  final String title;
  bool isDone;

  Item({  this.title, this.isDone = false});

  void trueFalse() {
    isDone=!isDone;
  }
}
