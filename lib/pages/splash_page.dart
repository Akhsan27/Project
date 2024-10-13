import 'package:flutter/material.dart';
import 'package:up_barang/pages/home_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFECF7FF),
      body: SafeArea(
        child: Center(
          child: Stack(
            children: [
              Positioned(
                  top: 40,
                  left: 0,
                  right: 0,
                  child: Image.asset('assets/l-splash.png')),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    padding: const EdgeInsets.all(15),
                    height: MediaQuery.of(context).size.height * 0.4,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(height: 100),
                        Image.asset('assets/acx.png'),
                        const SizedBox(height: 15),
                        Text(
                          'Management Expens',
                          style: Theme.of(context)
                              .textTheme
                              .headlineLarge
                              ?.copyWith(
                                fontWeight: FontWeight.w500,
                              ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          'Selamat Datang di aplikasi pengolahan anggaran',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomePages()),
                            );
                          },
                          child: Container(
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: const Color(0xff34b6ff),
                              gradient: const LinearGradient(
                                colors: [
                                  Color(0xff34b6ff),
                                  Color(0xff38c5ff),
                                ],
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                const Text(
                                  'Use my Wallet',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Image.asset('assets/Wallet.png'),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
              Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  bottom: 100,
                  child: Image.asset(
                    'assets/bg-splash.png',
                    fit: BoxFit.contain,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
