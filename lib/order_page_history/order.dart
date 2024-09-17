import 'package:flutter/material.dart';

import '../constant.dart';

class OrderDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Order ID: 334902445',
                    style: TextStyle(
                        fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 5,),
                  CustomChip(
                    label: 'Payment pending',
                    textColor: Colors.yellow[700]!,
                    backgroundColor: Colors.orange[50]!,
                    borderColor: Colors.white,
                  ),
                  SizedBox(width: 8),
                  CustomChip(
                    label: 'Unfulfilled',
                    textColor: Colors.red[600]!,
                    backgroundColor: Colors.red[50]!,
                    borderColor: Colors.white,
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width *0.40),
                  ElevatedButton.icon(
                    label: Text('Restock', style: buttonswTextStyle),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[100],
                      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {},
                  ),
                  SizedBox(width: 16),
                  ElevatedButton.icon(
                    icon: Icon(Icons.edit, size: 15, color: primaryColor),
                    label: Text('Edit', style: buttonswTextStyle),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[100],
                      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),

                      ),
                    ),
                    onPressed: () {},
                  ),
                  SizedBox(width: 16),
                  DropdownButton<String>(
                    hint: Text('More Actions',style: buttonswTextStyle,),
                    items: <String>['Action 1', 'Action 2', 'Action 3'].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      print('Selected Action: $newValue');
                    },
                  ),
                ],
              ),

              SizedBox(height: 8),
              Text('January 8, 2024 at 9:48 pm from Draft Orders',
                  style: TextStyle(color: Colors.grey[600])),

              SizedBox(height: 16),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        Card(color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text('Order Item',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold)),
                                    Spacer(),
                                    Icon(Icons.keyboard_arrow_down_outlined)
                                  ],
                                ),
                                SizedBox(height: 5),
                                CustomChip(
                                  label: 'Unfulfilled',
                                  textColor: Colors.red[600]!,
                                  backgroundColor: Colors.red[50]!,
                                  borderColor: Colors.white,
                                ),
                                SizedBox(height: 8),
                                Text(
                                    'Use this personalized guide to get your store up and running.'),
                                SizedBox(height: 16),
                                Row(
                                  children: [
                                    Container(
                                      height: 99,
                                      width: 99,
                                      color: Colors.grey[100], // Placeholder image
                                      child: Center(child: Image.asset('assets/a.jpg')),
                                    ),
                                    SizedBox(width: 16),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Laptop',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300)),
                                        Text('Macbook Air',
                                            style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
                                        // SizedBox(height: 8),
                                        // Row(
                                        //   children: [
                                        //
                                        //     Text('3 x \$5000 = \$15000'),
                                        //     SizedBox(width: 8),
                                        //     Icon(Icons.delete,
                                        //         color: Colors.black), // Delete icon
                                        //   ],
                                        // ),
                                        SizedBox(height: 8),
                                        Row(
                                          children: [
                                            Text('Medium'),
                                            SizedBox(width: 16),
                                            Text('Black'),
                                            SizedBox(width: 16),
                                            Icon(Icons.square,
                                                color: Colors.black),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(height: 16),
                                Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Colors.grey[100],
                                    borderRadius: BorderRadius.vertical(
                                      bottom: Radius.circular(8),
                                    ),
                                  ),
                                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Effortlessly manage your orders with our intuitive Order List page.",
                                        style: TextStyle(
                                          color: Colors.grey[500],
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
                                              'Fulfill items',
                                              style: TextStyle(color: Colors.black),
                                            ),
                                          ),
                                          SizedBox(width: 8),
                                          CustomElevatedButton(text: 'Create shipping label', onPressed: () {},)
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 16),
                        Card(
                          color: secondaryColor,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text('Order Summary',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold)),
                                    Spacer(),
                                    Icon(Icons.keyboard_arrow_down)
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
                                SizedBox(height: 16),

                                Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Colors.grey[100],
                                    borderRadius: BorderRadius.vertical(
                                      bottom: Radius.circular(8),
                                    ),
                                  ),
                                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Review your order at a glance on the Order Summary page.',
                                        style: TextStyle(
                                          color: Colors.grey[500],
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
                                          SizedBox(width: 8),
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
                      ],
                    ),
                  ),

                  SizedBox(width: 16),
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Card(color: secondaryColor,
                          child: ListTile(
                            title: Text('Notes'),
                            trailing: Icon(Icons.edit),
                            subtitle: Text('First customer and order!'),
                          ),
                        ),
                        SizedBox(height: 16),

                        // Customers Section
                        // Card(
                        //   child: ExpansionTile(
                        //     title: Row(
                        //       children: [
                        //         Text('Customers'),
                        //       ],
                        //     ),
                        //     children: [
                        //       ListTile(
                        //         leading: Icon(Icons.shopping_bag_outlined),
                        //         title: Text('1 Order'),
                        //       ),
                        //       Text("Customer is tax-exempt")
                        //     ],
                        //   ),
                        // ),
                        Card(color: secondaryColor,
                          child: ListTile(
                            title:Text('Customers',style: buttonTextStyle,),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(height: 5),
                                    Icon(Icons.person_outline_outlined),
                                    Text('Alex Jander'),
                                  ],
                                ),
                                SizedBox(height: 5),
                                Row(
                                  children: [
                                    Icon(Icons.shopping_bag_outlined),
                                    Text('1 order'),
                                  ],
                                ),
                                SizedBox(height: 5),
                                Text('Customer is tax-exempt'),

                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 16),

                        // Contact Information
                        Card(
                          color: secondaryColor,
                          child: ListTile(
                            title:
                                Text('Contact infromation',style: buttonTextStyle,),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 5),
                                Text('alex.jander@gmail.com'),
                              ],
                            ),
                          ),
                        ),

                        SizedBox(height: 16),

                        // Shipping Address
                        Card(
                          color: secondaryColor,
                          child: ListTile(
                            title: Text('Shipping Address',style: buttonTextStyle,),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 8),
                                Text('Alex Jander'),
                                SizedBox(height: 5),
                                Text('1226 University Drive'),
                                SizedBox(height: 5),
                                Text('Menlo Park, CA 94025'),
                                SizedBox(height: 5),
                                Text('United States'),
                                SizedBox(height: 5),
                                Text('+1 628-267-9041'),
                                SizedBox(height: 5),
                                Row(
                                  children: [
                                    Icon(Icons.map,color: Colors.deepPurpleAccent),
                                    Text('View Map',style: TextStyle(color: Colors.deepPurpleAccent,),),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),

                        SizedBox(height: 16),

                        // Billing Address
                        Card(
                          color: secondaryColor,
                          child: ListTile(
                            trailing: Icon(Icons.keyboard_arrow_down),
                            title: Text('Billing Address'),
                            subtitle: Text('Same as shipping address'),
                          ),
                        ),

                        SizedBox(height: 16),

                        // Conversion Summary (empty)
                        Card(
                          color: secondaryColor,
                          child: ListTile(
                            trailing: Icon(Icons.keyboard_arrow_down),
                            title: Text('Conversion Summary'),
                            subtitle: Text(
                                'There aren’t any conversion details available for this order.'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

