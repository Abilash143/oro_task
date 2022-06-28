List<ValueModel> rampValues = [
  ValueModel(
      name: '6 Months', price: '1,444', emi: '₹ 240 MONTHLY', amnt: 1444),
  ValueModel(
      name: '12 Months', price: '12,444', emi: '₹ 1037 MONTHLY', amnt: 12444),
  ValueModel(
      name: '24 Months', price: '52,444', emi: '₹ 2185 MONTHLY', amnt: 52444),
  ValueModel(
      name: '36 Months',
      price: '1,02,444',
      emi: '₹ 2845 MONTHLY',
      amnt: 102444),
];

var rampResult =
    ValueModel(name: '6 Months', price: '1,444', emi: '₹ 240 MONTHLY');

class ValueModel {
  final String? name;
  final String? price;
  final String? emi;
  final int? amnt;

  ValueModel({
    this.name,
    this.price,
    this.emi,
    this.amnt,
  });
}
