import 'package:flutter/material.dart';

class Latihan9 extends StatelessWidget {
  const Latihan9({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        title: const Text(
          'Penuhi Lindungi',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              height: 100,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15)),
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(300, 40, 0, 0),
                    child: SizedBox(
                      height: 100,
                      width: 100,
                      child: Image.asset('assets/images/bg.png'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 22, 20, 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Entering a public space?',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 18),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Stay alert 10 stay safe',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Colors.white.withOpacity(0.9),
                              fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(330, 10, 10, 0),
                    child: Container(
                      height: 20,
                      width: 20,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: const Center(
                        child: Text('i'),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 90,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                border: Border(
                  left: BorderSide(
                    width: 1,
                    color: Colors.grey,
                  ),
                  right: BorderSide(
                    width: 1,
                    color: Colors.grey,
                  ),
                  bottom: BorderSide(
                    width: 1,
                    color: Colors.grey,
                  ),
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.arrow_drop_down,
                        size: 40,
                      ),
                      const Text(
                        'Check-in preference',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 14),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 50,
                        width: 135,
                        decoration: BoxDecoration(
                          color: Colors.blue.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.qr_code_scanner),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Check-in',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Item(
                  color: Colors.yellow,
                  icon: Icons.vaccines,
                  title: 'Vaccines',
                ),
                Item(
                  color: Colors.red,
                  icon: Icons.hail_sharp,
                  title: 'Test Result',
                ),
                Item(
                  color: Colors.green,
                  icon: Icons.vaccines,
                  title: 'EHC',
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Item(
                  color: Colors.green,
                  icon: Icons.accessible_forward_sharp,
                  title: 'Pertolongan',
                ),
                Item(
                  color: Colors.yellow,
                  icon: Icons.vaccines,
                  title: 'Covid-19',
                ),
                Item(
                  color: Colors.green,
                  icon: Icons.admin_panel_settings,
                  title: 'Perlindungan',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Item extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String title;

  const Item(
      {super.key,
      required this.color,
      required this.icon,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 90,
          width: 90,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(15)),
          child: Center(
            child: Icon(
              icon,
              color: Colors.white,
              size: 35,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          title,
          style: const TextStyle(
            fontSize: 14,
          ),
        )
      ],
    );
  }
}
