class Book extends StatelessWidget {
  final String title;
  final String image;
  final Widget? child;

  const Book({Key? key, required this.title, required this.image, this.child})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Image.network(image), Text(title), if (child != null) child!],
    );
  }
}

class PremiumBook extends StatelessWidget {
  final String title;
  final String image;
  final VoidCallback onClick;

  const PremiumBook({
    Key? key,
    required this.title,
    required this.image,
    required this.onClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Book(
      title: title,
      image: image,
      child: ElevatedButton(
        onPressed: onClick,
        child: const Text('Add to cart +'),
      ),
    );
  }
}

class FreeBook extends StatelessWidget {
  final String title;
  final String image;
  final VoidCallback onClick;

  const FreeBook({
    Key? key,
    required this.title,
    required this.image,
    required this.onClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Book(
      title: title,
      image: image,
      child: ElevatedButton(onPressed: onClick, child: const Text('Read')),
    );
  }
}
