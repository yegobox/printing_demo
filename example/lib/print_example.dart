import 'package:flutter/material.dart';
// import 'package:receipt/order_/item.dart';
import 'package:receipt/print.dart';
import 'package:flipper_models/isar_models.dart';

class PrintExample extends StatefulWidget {
  const PrintExample({Key? key}) : super(key: key);

  @override
  State<PrintExample> createState() => _PrintExampleState();
}

class _PrintExampleState extends State<PrintExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          Center(
            child: TextButton(
              onPressed: () async {
                Print print = Print();
                print.feed(
                  [
                    OrderItem()
                      ..name = 'Beans'
                      ..price = 100
                      ..qty = 1
                      ..count = 3
                      ..discount = 10
                      ..remainingStock = 10
                      ..createdAt = '2020-01-01'
                      ..updatedAt = '2020-01-01'
                      ..reported = false
                      ..orderId = 1
                      ..variantId = 1,
                    OrderItem()
                      ..name = 'Mango'
                      ..price = 100
                      ..qty = 1
                      ..count = 2
                      ..discount = 10
                      ..remainingStock = 10
                      ..createdAt = '2020-01-01'
                      ..updatedAt = '2020-01-01'
                      ..reported = false
                      ..orderId = 1
                      ..variantId = 1,
                  ],
                );
                print.print(
                  grandTotal: 500,
                  currencySymbol: "RW",
                  totalAEx:0,
                  totalB18: 800,
                  totalB: 122.03,
                  totalTax: 122.03,
                  cash: 1000,
                  received: 500,
                  payMode: "Mobile Mopney",
                  bank: "MTN I&M",
                  mrc: "SIMBASM0050",
                  internalData: "YRFH-C5J5-EQ67-7238-8383-8282-D8W0",
                  receiptQrCode: "https://media.istockphoto.com/vectors/code-abstract-vector-modern-bar-code-sample-for-smartphone-scanning-vector-id1095468748?k=20&m=1095468748&s=612x612&w=0&h=QkNgbB839T27QTYllcNKGtTDQj8pgEQ5rjKs62HFXs4=",
                  receiptSignature: "YU73-28JM-KDL2-DN22",
                  cashierName: "ABC",
                  sdcId: "SDC003001109",
                  sdcReceiptNum: "8383/9280 NS",
                  invoiceNum: 1884,
                  brandName:"Simba Supermarket",
                  brandAddress:"SIMBA CITY CENTER, Kigali Rwanda",
                  brandTel:"27131153",
                  brandTIN:"101587390",
                  brandDescription:"Simba Supermaket Stands for Quality Service",
                  brandFooter:"SIMBA Supermaket and Coffee Shop",
                  info: "Richie",
                  taxId: "342",
                  receiverName: "Richie",
                  receiverMail: "info@yegobox.com",
                  receiverPhone: "+250783054874",
                  email: "info@yegobox.com",
                );
              },
              child: const Text('Print Now'),
            ),
      ),
    );
  }
}
