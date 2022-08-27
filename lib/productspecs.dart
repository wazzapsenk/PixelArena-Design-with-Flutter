class ProductSpecs
{
  String name;
  String author;
  String resolution;
  double price;
  int downloaded;
  bool downloadable;

  ProductSpecs(
      {
        required this.name,
        required this.author,
        required this.resolution,
        required this.price,
        required this.downloaded,
        required this.downloadable});
}