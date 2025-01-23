abstract class Playable {
  void play();
}

class Guitar implements Playable {
  @override
  void play() {
    print("Strumming the guitar strings! ");
  }
}

void main() {
  Guitar guitar = Guitar();
  guitar.play();
}
