import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Center(child: Text('Hello')),
                const Center(
                  child: Text(
                    'Hashim Ali',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(height: size.height * 0.04),
                Container(
                  width: double.infinity,
                  height: size.height * 0.17,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('Total Energy Balance'),
                                Text(
                                  '99999 kWH',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 25),
                                ),
                                Text('Added 100 kWH on 20/11/2022'),
                              ],
                            ),
                            const Spacer(),
                            SizedBox(
                              height: 70,
                              width: 80,
                              child: Stack(
                                children: [
                                  Center(
                                    child: Container(
                                      height: 60,
                                      width: 60,
                                      decoration: const BoxDecoration(
                                        color: Color(0xff007AFF),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(15),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 20,
                                    left: 5,
                                    child: Container(
                                      height: 10,
                                      width: 70,
                                      color: const Color(0xff2538DB),
                                      child: const Center(
                                        child: Text(
                                          'Badge Name',
                                          style: TextStyle(
                                              color: Colors.white, fontSize: 7),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 20),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 30,
                              width: 150,
                              child: ElevatedButton.icon(
                                onPressed: () {},
                                icon: const Icon(Icons.add, size: 15),
                                label: const Text('Add Energy'),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xff4DAD2A),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                              width: 150,
                              child: OutlinedButton.icon(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.electric_bolt_rounded,
                                  size: 15,
                                  color: Color(0xffE6740C),
                                ),
                                label: const Text(
                                  '55 Points',
                                  style: TextStyle(color: Colors.black),
                                ),
                                style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  side: const BorderSide(
                                    color: Colors.black,
                                    width: 1.0,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  height: size.height * 0.33,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            backgroundColor: const Color(0xffEBEBEB),
                            child: Image.asset('assets/Group 33828.png'),
                          ),
                          title: const Text('My Payments'),
                          trailing:
                              const Icon(Icons.arrow_forward_ios, size: 20),
                        ),
                        const Divider(thickness: 1, color: Colors.grey),
                        ListTile(
                          leading: Image.asset('assets/Group 33777.png'),
                          title: const Text('My Electric Vehicles'),
                          trailing:
                              const Icon(Icons.arrow_forward_ios, size: 20),
                        ),
                        const Divider(thickness: 1, color: Colors.grey),
                        ListTile(
                          leading: Image.asset('assets/Group 33779.png'),
                          title: const Text('My Favourite Stations'),
                          trailing:
                              const Icon(Icons.arrow_forward_ios, size: 20),
                        ),
                        const Divider(thickness: 1, color: Colors.grey),
                        ListTile(
                          leading: Image.asset('assets/Group 33858.png'),
                          title: const Text('Alpha Membership'),
                          trailing:
                              const Icon(Icons.arrow_forward_ios, size: 20),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffE6740C),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text('Buy Machines Froom ChargeMOD'),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  height: size.height * 0.18,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Image.asset('assets/Group 33792.png'),
                          title: const Text('My Devices'),
                          trailing:
                              const Icon(Icons.arrow_forward_ios, size: 20),
                        ),
                        const Divider(thickness: 1, color: Colors.grey),
                        ListTile(
                          leading: CircleAvatar(
                              backgroundColor: const Color(0xffEBEBEB),
                              child: Image.asset('assets/Group 33826.png')),
                          title: const Text('My Orders'),
                          trailing:
                              const Icon(Icons.arrow_forward_ios, size: 20),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  height: size.height * 0.33,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Image.asset('assets/Group 33785.png'),
                          title: const Text('Help'),
                          trailing:
                              const Icon(Icons.arrow_forward_ios, size: 20),
                        ),
                        const Divider(thickness: 1, color: Colors.grey),
                        ListTile(
                          leading: Image.asset('assets/Group 33787.png'),
                          title: const Text('Raise Complaint'),
                          trailing:
                              const Icon(Icons.arrow_forward_ios, size: 20),
                        ),
                        const Divider(thickness: 1, color: Colors.grey),
                        ListTile(
                          leading: CircleAvatar(
                            backgroundColor: const Color(0xffEBEBEB),
                            child: Image.asset('assets/Group 33786.png'),
                          ),
                          title: const Text('About Us'),
                          trailing:
                              const Icon(Icons.arrow_forward_ios, size: 20),
                        ),
                        const Divider(thickness: 1, color: Colors.grey),
                        ListTile(
                          leading: CircleAvatar(
                            backgroundColor: const Color(0xffEBEBEB),
                            child: Image.asset('assets/Group 33658.png'),
                          ),
                          title: const Text('Privacy Policy'),
                          trailing:
                              const Icon(Icons.arrow_forward_ios, size: 20),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffE6740C),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/Group 33788 (1).png',
                          color: Colors.white,
                        ),
                        const SizedBox(width: 5),
                        const Text('Logout'),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.05),
                SvgPicture.asset(
                  'assets/Group 33721.svg',
                  fit: BoxFit.cover,
                  width: 30,
                  height: 30,
                ),
                const SizedBox(height: 20),
                const Text("V 1.0.0 (001)"),
                const SizedBox(height: 20),
                const Text("Copyright @ 2022 BPM Power Pvt Ltd."),
                const SizedBox(height: 5),
                const Text("All rights reserved."),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
