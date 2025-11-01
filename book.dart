class Book extends StatelessWidget {
  final String title;
  final String image;
  final String type;
  final VoidCallback onClickFree;
  final VoidCallback onClickPremium;

  const Book({
    Key? key,
    required this.title,
    required this.image,
    required this.type,
    required this.onClickFree,
    required this.onClickPremium,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.network(image, height: 120, width: 100, fit: BoxFit.cover),
        const SizedBox(height: 8),
        Text(
          title,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 8),
        if (type == "Premium")
          ElevatedButton(
            onPressed: onClickPremium,
            child: const Text("Add to cart +"),
          ),
        if (type == "Free")
          ElevatedButton(onPressed: onClickFree, child: const Text("Read")),
      ],
    );
  }
}
