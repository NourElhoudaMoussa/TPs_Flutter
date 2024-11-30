import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height - 50,
          padding: const EdgeInsets.symmetric(horizontal: 40),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Column(
                children: [
                  SizedBox(
                    height: 60,
                  ),
                  Text(
                    "Sign Up",
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),
                  ),
                  Text("Create en account"),
                ],
              ),
              Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.purple.withOpacity(0.1),
                      filled: true,
                      hintText: "Uers Name",
                      prefixIcon: const Icon(Icons.person),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: BorderSide.none,
                      )
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                   decoration: InputDecoration(
                        fillColor: Colors.purple.withOpacity(0.1),
                        filled: true,
                        hintText: "Email",
                        prefixIcon: const Icon(Icons.email),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18),
                          borderSide: BorderSide.none,
                        )
                      ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        fillColor: Colors.purple.withOpacity(0.1),
                        filled: true,
                        hintText: "Password",
                        prefixIcon: const Icon(Icons.password),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18),
                          borderSide: BorderSide.none,
                        )),
                  ),
                   const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        fillColor: Colors.purple.withOpacity(0.1),
                        filled: true,
                        hintText: "Confirm Password",
                        prefixIcon: const Icon(Icons.password),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18),
                          borderSide: BorderSide.none,
                        )),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () =>{},
                child: Text(
                  "Sign Up",
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: const StadiumBorder()
                ),
              ),
              const Center(child: Text("OR"),),
              Container(
                height: 45,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.purple),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: TextButton(
                  onPressed: ()=>{},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 30.0,
                        width: 30.0,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/google.png'),
                            fit: BoxFit.cover
                          ),
                          shape: BoxShape.circle,
                        ),
                      )
                    ],
                  ) 
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account ?"),
                  TextButton(
                    onPressed: ()=>{
                      Navigator.pop(context)
                    },
                    child: const Text(
                      "Sign In",
                      style: TextStyle(color: Colors.purple),
                    )
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
