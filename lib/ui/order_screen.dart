import 'package:flutter/material.dart';

import '../constant.dart';

class OrdersPage extends StatefulWidget {
  @override
  _OrdersPageState createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  final List<Map<String, dynamic>> orders = [
    {
      'id': '#9388',
      'date': '28 Sep, 19:07',
      'customer': 'Margaret Szmidt',
      'avatar': Icons.person,
      'purchase': 'Designing interfaces',
      'price': '\$98.50',
      'status': 'Completed',
      'payment': 'Bank Transfer',
    },
    {
      'id': '#9379',
      'date': '28 Sep, 06:00',
      'customer': 'Susan Wood',
      'avatar': Icons.person,
      'purchase': 'UI kit',
      'price': '\$55.90',
      'status': 'Confirmed',
      'payment': 'Credit Card',
    },
    {
      'id': '#9388',
      'date': '28 Sep, 19:07',
      'customer': 'Margaret',
      'avatar': Icons.person,
      'purchase': 'eBook',
      'price': '\$188.50',
      'status': 'Processing',
      'payment': 'Bank Transfer',
    },
    {
      'id': '#9379',
      'date': '28 Sep, 06:00',
      'customer': 'Susan ',
      'avatar': Icons.person,
      'purchase': 'IOS UI kit',
      'price': '\$5590',
      'status': 'Canceled',
      'payment': 'Credit Card',
    },
    {
      'id': '#9388',
      'date': '28 Sep, 19:07',
      'customer': 'Margaret Szmidt',
      'avatar': Icons.person,
      'purchase': 'Designing interfaces',
      'price': '\$98.50',
      'status': 'Completed',
      'payment': 'Bank Transfer',
    },
    {
      'id': '#9379',
      'date': '28 Sep, 06:00',
      'customer': 'Susan Wood',
      'avatar': Icons.person,
      'purchase': 'UI kit',
      'price': '\$55.90',
      'status': 'Completed',
      'payment': 'Credit Card',
    },
    {
      'id': '#9388',
      'date': '28 Sep, 19:07',
      'customer': 'Margaret',
      'avatar': Icons.person,
      'purchase': 'eBook',
      'price': '\$188.50',
      'status': 'Processing',
      'payment': 'Bank Transfer',
    },
    {
      'id': '#9379',
      'date': '28 Sep, 06:00',
      'customer': 'Susan ',
      'avatar': Icons.person,
      'purchase': 'IOS UI kit',
      'price': '\$5590',
      'status': 'Canceled',
      'payment': 'Credit Card',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor,
      body: Column(
        children: [
          TabBar(
            controller: _tabController,
            isScrollable: true,
            labelColor: Colors.black,
            indicatorColor: Colors.blue,
            tabs: [
              Tab(text: 'All Orders'),
              Tab(text: 'Completed'),
              Tab(text: 'Confirmed'),
              Tab(text: 'Processing'),
              Tab(text: 'Canceled'),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search for order ID, customer...',
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                    ),
                  ),
                ),
                SizedBox(width: 15),
                DropdownButton<String>(
                  hint: Text('Sort by Date'),
                  items: <String>['Newest', 'Oldest'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (_) {},
                ),
                SizedBox(width: 10),
                DropdownButton<String>(
                  hint: Text('Filter'),
                  items: <String>['Latest', 'Oldest'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (_) {},
                ),
              ],
            ),
          ),
          Card(
            elevation: 5,
            margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Expanded(flex: 1, child: Text('No.', style: TextStyle(fontWeight: FontWeight.bold))),
                  Expanded(flex: 2, child: Text('Date', style: TextStyle(fontWeight: FontWeight.bold))),
                  Expanded(flex: 3, child: Text('Customer', style: TextStyle(fontWeight: FontWeight.bold))),
                  Expanded(flex: 3, child: Text('Purchased', style: TextStyle(fontWeight: FontWeight.bold))),
                  Expanded(flex: 2, child: Text('Price', style: TextStyle(fontWeight: FontWeight.bold))),
                  Expanded(flex: 2, child: Text('Status', style: TextStyle(fontWeight: FontWeight.bold))),
                  Expanded(flex: 2, child: Text('Payment', style: TextStyle(fontWeight: FontWeight.bold))),
                  Expanded(flex: 1, child: SizedBox()),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: orders.length,
              itemBuilder: (context, index) {
                final order = orders[index];
                return Card(
                  color: secondaryColor,
                  elevation: 3,
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Text(order['id'], style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        Expanded(
                          flex: 2,
                          child: Text(order['date']),
                        ),
                        Expanded(
                          flex: 3,
                          child: Row(
                            children: [
                              CircleAvatar(
                                child: Icon(order['avatar']),
                              ),
                              SizedBox(width: 10),
                              Text(order['customer']),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Text(order['purchase']),
                        ),
                        Expanded(
                          flex: 2,
                          child: Text(order['price']),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: _getStatusColor(order['status']),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Text(
                              order['status'],
                              style: TextStyle(color:secondaryColor),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          flex: 2,
                          child: Text(order['payment']),
                        ),
                        Expanded(
                          flex: 1,
                          child: IconButton(
                            icon: Icon(Icons.more_vert),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Color _getStatusColor(String status) {
    switch (status) {
      case 'Completed':
        return Colors.green;
      case 'Confirmed':
        return Colors.blue;
      case 'Processing':
        return Colors.orange;
      case 'Canceled':
        return Colors.red;
      default:
        return Colors.grey;
    }
  }
}
