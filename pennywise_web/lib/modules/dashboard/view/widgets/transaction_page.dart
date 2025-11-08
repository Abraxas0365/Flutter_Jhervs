import 'package:flutter/material.dart';

class TransactionsPage extends StatelessWidget {
  const TransactionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Color background = const Color(0xFF191919);
    final Color subBackground = const Color(0xFF1D1D1D);
    final Color highlight = const Color(0xFF630000);

    return Scaffold(
      backgroundColor: background,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title + Button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Transactions",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4, width: double.infinity,),
                      Text(
                        "Track and manage all your transactions",
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: highlight,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Manage Balance",
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16, width: double.infinity,),

            // Search Bar
            TextField(
              style: const TextStyle(color: Colors.white, fontSize: 14),
              decoration: InputDecoration(
                hintText: "Search source type...",
                hintStyle:
                    const TextStyle(color: Colors.white54, fontSize: 13),
                prefixIcon:
                    const Icon(Icons.search, color: Colors.white70, size: 20),
                filled: true,
                fillColor: subBackground,
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 16, width: double.infinity,),

            // Scrollable Table
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: subBackground,
                  borderRadius: BorderRadius.circular(10),                  
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SingleChildScrollView(
                    child: DataTable(
                      columnSpacing: 30,
                      headingRowHeight: 36,                     
                      dataRowMinHeight: 40,
                      headingTextStyle: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                      dataTextStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                      ),
                      columns: const [
                        DataColumn(label: Text("Date")),
                        DataColumn(label: Text("Type")),
                        DataColumn(label: Text("Source")),
                        DataColumn(label: Text("Amount")),
                      ],
                      rows: const [
                        DataRow(cells: [
                          DataCell(Text("11/01")),
                          DataCell(Text("Expense")),
                          DataCell(Text("Food & Drinks")),
                          DataCell(Text(
                            "-₱250",
                            style: TextStyle(color: Colors.redAccent),
                          )),
                        ]),
                        DataRow(cells: [
                          DataCell(Text("11/03")),
                          DataCell(Text("Income")),
                          DataCell(Text("Freelance")),
                          DataCell(Text(
                            "+₱5,000",
                            style: TextStyle(color: Colors.orangeAccent),
                          )),
                        ]),
                        DataRow(cells: [
                          DataCell(Text("11/05")),
                          DataCell(Text("Expense")),
                          DataCell(Text("Transport")),
                          DataCell(Text(
                            "-₱60",
                            style: TextStyle(color: Colors.redAccent),
                          )),
                        ]),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
