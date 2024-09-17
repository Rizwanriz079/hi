import 'package:flutter/material.dart';
import 'package:settings_ui/constant.dart';

class OrderSummaryWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200], // Light background color
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Card(color: Colors.white,
            elevation: 3, // Add shadow to make the card stand out
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Order Summary',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(),
                          Icon(Icons.keyboard_arrow_down),
                        ],
                      ),
                      SizedBox(height: 8),
                      CustomChip(
                        label: 'Payment pending',
                        textColor: Colors.yellow[700]!,
                        backgroundColor: Colors.orange[50]!,
                        borderColor: Colors.white,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Use this personalized guide to get your store up and running.',
                        style: TextStyle(
                          color: Colors.grey[600],
                        ),
                      ),
                      SizedBox(height: 16),
                      Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  'Subtotal',
                                  style: TextStyle(color: Colors.grey[600]),
                                ),
                              ),
                              Text(
                                'One item',
                                style: TextStyle(color: Colors.grey[600]),
                              ),
                              Spacer(),
                              Text(
                                '\$1500',
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  'Discount',
                                  style: TextStyle(color: Colors.grey[600]),
                                ),
                              ),
                              Text(
                                'Customer',
                                style: TextStyle(color: Colors.grey[600]),
                              ),
                              Spacer(),
                              Text(
                                '-\$100',
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  'Shipping',
                                  style: TextStyle(color: Colors.grey[600]),
                                ),
                              ),
                              Text(
                                ' Free Shipping',
                                style: TextStyle(color: Colors.grey[600]),
                              ),
                              Spacer(),
                              Text(
                                '\$0.00',
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  'Total',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Spacer(),
                              Text(
                                '\$1499',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Paid by customer'),
                          Text('\$0.00', style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                      SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Payment due when invoice is sent'),
                          TextButton(
                            onPressed: () {},
                            child: Text('Edit'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey[100], // Light grey background
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(8), // Rounded bottom corners for the card
                    ),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Review your order at a glance on the Order Summary page.',
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 14,
                        ),
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.black,
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                                side: BorderSide(color: Colors.black, width: 0.5),
                              )
                            ),
                            child: Text(
                              'Send Invoice',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          SizedBox(width: 8), // Space between buttons
                          CustomElevatedButton(text: 'Confirm payment', onPressed: () {},)
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


