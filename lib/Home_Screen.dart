import 'package:flutter/material.dart';
import 'cust_icon.dart';
import 'create_acc.dart';
import 'login.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildLogo(),
          const SizedBox(height: 16),
          _buildWelcomeText(),
          const SizedBox(height: 16),
          _buildDescription(),
          const SizedBox(height: 65),
          _buildCreateAccountButton(context),
          const SizedBox(height: 16),
          _buildLoginButton(context),
          const SizedBox(height: 45),
          _buildFooterText(),
        ],
      ),
    );
  }

  Widget _buildLogo() {
    return Center(
      child: Image.asset('assets/images/Illustration Picture.png'),
    );
  }

  Widget _buildWelcomeText() {
    return const Text(
      'Welcome',
      style: TextStyle(
        color: Colors.red,
        fontWeight: FontWeight.normal,
        fontSize: 27,
      ),
    );
  }

  Widget _buildDescription() {
    return Column(
      children: const [
        Text(
          'Lorem ipsum dolor sit amet,',
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
        Text(
          'consectetur adipiscing elit, sed',
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
        Text(
          'do eiusmod',
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
      ],
    );
  }

  Widget _buildCreateAccountButton(BuildContext context) {
    return SizedBox(
      width: 300,
      child: CustomIconButton(
        color: const Color.fromARGB(255, 226, 215, 112),
        text: 'Create Account',
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            backgroundColor: Colors.yellow.shade100,
            context: context,
            builder: (context) => CreateAccount(),
          );
        },
      ),
    );
  }

  Widget _buildLoginButton(BuildContext context) {
    return SizedBox(
      width: 300,
      child: CustomIconButton(
        color: Colors.black,
        text: 'Login',
        colorText: const Color.fromARGB(255, 226, 215, 112),
        border: Border.all(
          color: const Color.fromARGB(255, 226, 215, 112),
          width: 2,
        ),
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            backgroundColor: Colors.yellow.shade100,
            context: context,
            builder: (context) => LoginBottomSheet(),
          );
        },
      ),
    );
  }

  Widget _buildFooterText() {
    return const Text(
      'All Rights Reserved @2021',
      style: TextStyle(
        color: Color.fromARGB(255, 226, 215, 112),
        fontSize: 11,
      ),
    );
  }
}
