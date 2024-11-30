import 'package:flutter/material.dart';
import 'package:flutter_tp3/sign_up.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      margin: const EdgeInsets.all(24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _header(),
          _inputField(),
          _forgetPassword(),
          _signUp(context),
        ],
      ),
    ));
  }

  _header() {
    return const Column(
      children: [
        Text(
          "Welcom Back!",
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
        Text(
          "Enter your credential to login!!",
        ),
      ],
    );
  }

  _inputField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextField(
          decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide.none),
              hintText: "UserName",
              fillColor: Colors.purple.withOpacity(0.1),
              filled: true,
              prefixIcon: const Icon(Icons.person)),
        ),
        const SizedBox(
          height: 10,
        ),
        TextField(
          decoration: InputDecoration(
              hintText: "Password",
              prefixIcon: const Icon(Icons.password),
              fillColor: Colors.purple.withOpacity(0.1),
              filled: true,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide.none)),
        ),
        const SizedBox(
          height: 10,
        ),
        ElevatedButton(
          onPressed: () => {},
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purple,
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: const StadiumBorder()),
          child: const Text(
            "Login",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ],
    );
  }

  _forgetPassword() {
    return TextButton(
      onPressed: () => {},
      child: const Text(
        "Forget password",
        style: TextStyle(color: Colors.purple),
      ),
    );
  }

  _signUp(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have an account ?"),
        TextButton(
          onPressed: ()=>{
            Navigator.push(
              context, 
              MaterialPageRoute(builder: (context)=>const SignUpPage())
            )
          },
          child: const Text(
            "Sign up",
            style: TextStyle(color: Colors.purple),
          )
          )
      ],
    );
  }
}
