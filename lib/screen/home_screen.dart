import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    // Ensure the status bar and other system UI elements are visible
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // Transparent status bar to allow showing system UI
      statusBarIconBrightness: Brightness.dark, // Dark icons in status bar
    ));
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.blue,
        child: ListView(

          padding: EdgeInsets.only(top: 50),
          children: [

           // DrawerHeader(
             // decoration: BoxDecoration(
               // color: Colors.blue,
             // ),
             // child: const Text(
              //  'Menu',
             //   style: TextStyle(color: Colors.white, fontSize: 24),
            //  ),
           // ),
            ListTile(
              leading: const Icon(Icons.home, color: Colors.white,size: 30,),
              title: const Text('Home' ,style: TextStyle(color: Colors.white, fontSize: 20),),
              onTap: () {
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              leading: const Icon(Icons.history,  color: Colors.white, size: 30,),
              title: const Text('History',style: TextStyle(color: Colors.white,fontSize: 20),),
              onTap: () {
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              leading: const Icon(Icons.calendar_month,color: Colors.white , size: 30,),
              title: const Text('Schedule',style: TextStyle(color: Colors.white,fontSize: 20),),
              onTap: () {
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings,color: Colors.white,size: 30,),
              title: const Text('Settings',style: TextStyle(color: Colors.white,fontSize: 20),),
              onTap: () {
                Navigator.pop(context); // Close the drawer
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.blue), // Menu icon color
        title: TextField(
          decoration: InputDecoration(
            hintText: 'Search advisors',
            prefixIcon: const Icon(Icons.search, color: Colors.blue),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.blue),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications, color: Colors.blue),
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 16.0, left: 10, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Filters
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Expertise Dropdown
                SizedBox(
                  height: 35,
                  child: DropdownButton<String>(
                    value: 'Expertise',
                    items: const [
                      DropdownMenuItem(value: 'Expertise', child: Text('Expertise')),
                      DropdownMenuItem(value: 'Investment', child: Text('Investment')),
                      DropdownMenuItem(value: 'Legal', child: Text('Legal')),
                    ],
                    onChanged: (value) {},
                    underline: Container(),
                    style: const TextStyle(color: Colors.black, fontSize: 14),
                  ),
                ),
                // Filter Button with icon and matched style
                TextButton.icon(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.black, // Black color for the entire button
                  ),
                  icon: const Icon(Icons.filter_list, color: Colors.black), // Black icon color
                  label: const Text(
                    'Filter',
                    style: TextStyle(
                      fontSize: 14, // Match font size with Expertise dropdown
                      color: Colors.black, // Match color with Expertise dropdown
                    ),
                  ),
                ),
                // Rate Dropdown
                SizedBox(
                  height: 35,
                  child: DropdownButton<String>(
                    value: 'Rate',
                    items: const [
                      DropdownMenuItem(value: 'Rate', child: Text('Rate')),
                      DropdownMenuItem(value: 'High to Low', child: Text('High to Low')),
                      DropdownMenuItem(value: 'Low to High', child: Text('Low to High')),
                    ],
                    onChanged: (value) {},
                    underline: Container(),
                    style: const TextStyle(color: Colors.black, fontSize: 14),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            // Advisors List
            Expanded(
              child: ListView(
                children: [
                  AdvisorCard(
                    name: 'Sarah Johnson',
                    title: 'Financial Advisor',
                    status: 'Online',
                    rating: 4.9,
                    specializations: ['Investment', 'Retirement', 'Tax Planning'],
                    rate: 75,
                  ),
                  AdvisorCard(
                    name: 'Michael Chen',
                    title: 'Legal Consultant',
                    status: 'Away',
                    rating: 4.2,
                    specializations: ['Business Contracts', 'Intellectual Property'],
                    rate: 100,
                  ),
                  AdvisorCard(
                    name: 'Emma Davis',
                    title: 'Health Advisor',
                    status: 'Online',
                    rating: 4.7,
                    specializations: ['Nutrition', 'Fitness', 'Mental Health'],
                    rate: 60,
                  ),
                  AdvisorCard(
                    name: 'James Smith',
                    title: 'Investment Advisor',
                    status: 'Offline',
                    rating: 4.3,
                    specializations: ['Stock Market', 'Bonds', 'Cryptocurrency'],
                    rate: 80,
                  ),
                  AdvisorCard(
                    name: 'Olivia Brown',
                    title: 'Business Consultant',
                    status: 'Away',
                    rating: 4.5,
                    specializations: ['Startup Growth', 'Business Strategy'],
                    rate: 90,
                  ),
                  AdvisorCard(
                    name: 'David Wilson',
                    title: 'Tax Consultant',
                    status: 'Online',
                    rating: 4.8,
                    specializations: ['Tax Filing', 'Tax Savings', 'Legal Tax'],
                    rate: 85,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet), label: 'Wallet'),
        ],
      ),
    );
  }
}

class AdvisorCard extends StatelessWidget {
  final String name;
  final String title;
  final String status;
  final double rating;
  final List<String> specializations;
  final int rate;

  const AdvisorCard({
    super.key,
    required this.name,
    required this.title,
    required this.status,
    required this.rating,
    required this.specializations,
    required this.rate,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header: Name, Title, Status
            Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.grey[300],
                  child: Icon(Icons.person, size: 30, color: Colors.grey[700]),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(name, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                      Text(title, style: const TextStyle(color: Colors.grey)),
                    ],
                  ),
                ),
                Text(
                  status,
                  style: TextStyle(
                    color: status == 'Online' ? Colors.green : Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            // Rating and Specializations
            Row(
              children: [
                Icon(Icons.star, color: Colors.amber[700], size: 18),
                const SizedBox(width: 4),
                Text('$rating', style: const TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(width: 8),
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: specializations
                          .map((spec) => Container(
                        margin: const EdgeInsets.only(right: 8),
                        child: Chip(
                          label: Text(spec),
                          backgroundColor: Colors.grey[200],
                        ),
                      ))
                          .toList(),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            // Rate and Actions
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('\$$rate/min', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                      child: const Text('Chat', style: TextStyle(color: Colors.white)),
                    ),
                    const SizedBox(width: 8),
                    OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: Colors.blue),
                      ),
                      child: const Text('Call', style: TextStyle(color: Colors.blue)),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}