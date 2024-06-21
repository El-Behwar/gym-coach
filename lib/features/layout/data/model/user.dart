class User {
  final int id;
  final String name;
  final DateTime dateFrom;
  final DateTime dateTo;
  final String gender;
  final double price;
  final double remainingPrice;
  final String phone;
  final String note;


  User({
    required this.id,
    required this.name,
    required this.dateFrom,
    required this.dateTo,
    required this.phone,
    required this.note,
    required this.gender,
    required this.price,
    required this.remainingPrice,
  });
}
