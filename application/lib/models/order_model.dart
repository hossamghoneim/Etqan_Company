class OrderModel {
  int id;
  String address;
  String city;
  String area;
  String status;
  int statusID;
  String userPhone;
  String userName;
  String paymentMethod;
  String lat;
  String long;
  var paymentOperationID;
  var paymentOperationStatus;
  int paymentMethodID;
  var price;
  int taxPercent;
  var taxValues;
  var finalPrice;
  String date;
  List<dynamic> orderProducts;
  var bank;

  OrderModel(this.taxPercent);

  OrderModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    city = json['city'];
    address = json['address']['address'];
    area = json['address']['area'];
    lat = json['address']['lat'];
    long = json['address']['long'];
    userPhone = json['user_phone'];
    userName = json['user_name'];
    status = json['status'];
    statusID = json['status_id'];
    paymentMethod = json['payment_method_name'];
    paymentMethodID = json['payment_method_id'];
    paymentOperationID = json['payment_operation_id'];
    paymentOperationStatus = json['payment_operation_status'];
    price = json['price'];
    taxPercent = json['tax_percent'];
    taxValues = json['tax_values'];
    finalPrice = json['final_price'];
    orderProducts = json['order_products'];
    date = json['created_at'];
    bank = json['bank'];
  }
}
