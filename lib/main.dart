import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => const HomeRoute(),
      '/login': (context) =>  LoginRoute(),
      '/transaction': (context) => const TransactionRoute(),
      '/registrar_office': (context) => const RegistrarOfficeRoute(),
      '/accounting_office': (context) => const AccountingOfficeRoute(),
      '/accounting_admin': (context) => const AccountingAdminRoute(),


    },
  ));
}

class HomeRoute extends StatelessWidget {
  const HomeRoute({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.purple,
                Colors.deepPurple,
              ],
            )),
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 180.0,
                backgroundImage: AssetImage('images/philcst.png'),
              ),
              const SizedBox(height:20.0),
              Text(
                'PHILCST QUEING SYSTEM',
                style: TextStyle(
                  fontFamily: 'Hesia',
                  fontSize: 25.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 50.0),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: MaterialButton(
                      minWidth: double.infinity,
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      color: Colors.deepPurpleAccent,
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(120)),
                      child: const Text('GET STARTED'))),
            ],
          ),
        ));
  }
}

class LoginRoute extends StatelessWidget {
  LoginRoute({key}) : super(key: key);

  final GlobalKey<FormState> _formKey =  GlobalKey<FormState>();

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.purple,
              Colors.deepPurple,
            ],
          )),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 180.0,
              backgroundImage: AssetImage('images/philcst.png'),
            ),
            const SizedBox(height: 20.0),
            Text(
              'STUDENT',
              style: TextStyle(
                fontFamily: 'Hesia',
                fontSize: 25.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 80),
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              labelText: 'Email',
                              hintText: 'Enter email',
                              prefixIcon: Icon(Icons.email),
                              border: OutlineInputBorder(),
                            ),
                            onChanged: (String value) {},
                            validator: (value) {
                              if (value == null || value.isEmpty)
                                return 'Email required';
                            },
                          )),
                     const SizedBox(height: 20.0),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 80),
                          child: TextFormField(
                            obscureText: true,
                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                              labelText: 'Password',
                              hintText: 'Enter password',
                              prefixIcon: Icon(Icons.lock),
                              border: OutlineInputBorder(),
                            ),
                            onChanged: (String value) {},
                            validator: (value)  {
                              if(value == null || value.isEmpty)
                                return 'Password is required';
                            },
                          )),
                      SizedBox(height: 10.0),
                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState.validate()) {
                            Navigator.pushNamed(context, '/transaction');
                            return;
                          }
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('Login'), // <-- Text
                            SizedBox(
                              width: 10,
                            ),
                            Icon( // <-- Icon
                              Icons.login,
                              size: 30.0,
                              color: Colors.white70,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

class TransactionRoute extends StatelessWidget {
  const TransactionRoute({key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 180.0,
                backgroundImage: AssetImage('images/philcstlogo.jpg'),
              ),
              const SizedBox(height:20.0),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: MaterialButton(
                      minWidth: double.infinity,
                      onPressed: () {
                        Navigator.pushNamed(context, '/registrar_office');
                      },
                      color: Colors.deepPurple,
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(120)),
                      child: const Text('REGISTRAR OFFICE'))),
              const SizedBox(height:20.0),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: MaterialButton(
                      minWidth: double.infinity,
                      onPressed: () {
                        Navigator.pushNamed(context, '/accounting_office');
                      },
                      color: Colors.deepPurple,
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(120)),
                      child: const Text('ACCOUNTING OFFICE'))),
            ],
          ),
        ));
  }
}

class RegistrarOfficeRoute extends StatelessWidget {
  const RegistrarOfficeRoute({key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 180.0,
                backgroundImage: AssetImage('images/philcstlogo.jpg'),
              ),
              Text(
                'TYPES OF CONCERNS',
                style: TextStyle(
                  fontFamily: 'Hesia',
                  fontSize: 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height:20.0),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: MaterialButton(
                      minWidth: double.infinity,
                      onPressed: () {
                        Navigator.pushNamed(context, '/student');
                      },
                      color: Colors.deepPurple,
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(120)),
                      child: const Text('FORM I37-138'))),
              const SizedBox(height:20.0),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: MaterialButton(
                      minWidth: double.infinity,
                      onPressed: () {
                        Navigator.pushNamed(context, '/student');
                      },
                      color: Colors.deepPurple,
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(120)),
                      child: const Text('GOOD MORAL'))),
              const SizedBox(height:20.0),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: MaterialButton(
                      minWidth: double.infinity,
                      onPressed: () {
                        Navigator.pushNamed(context, '/student');
                      },
                      color: Colors.deepPurple,
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(120)),
                      child: const Text('OTHER CONCERNS'))),
            ],
          ),
        ));
  }
}

class AccountingOfficeRoute extends StatelessWidget {
  const AccountingOfficeRoute({key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 180.0,
                backgroundImage: AssetImage('images/philcst.png'),
              ),
              Text(
                'TYPES OF PAYMENTS',
                style: TextStyle(
                  fontFamily: 'Hesia',
                  fontSize: 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height:20.0),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: MaterialButton(
                      minWidth: double.infinity,
                      onPressed: () {
                        Navigator.pushNamed(context, '/student');
                      },
                      color: Colors.deepPurple,
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(120)),
                      child: const Text('TUITION FEE'))),
              const SizedBox(height:20.0),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: MaterialButton(
                      minWidth: double.infinity,
                      onPressed: () {
                        Navigator.pushNamed(context, '/student');
                      },
                      color: Colors.deepPurple,
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(120)),
                      child: const Text('REGISTRATION FEE'))),
              const SizedBox(height:20.0),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: MaterialButton(
                      minWidth: double.infinity,
                      onPressed: () {
                        Navigator.pushNamed(context, '/student');
                      },
                      color: Colors.deepPurple,
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(120)),
                      child: const Text('OTHER PAYMENTS'))),
            ],
          ),
        ));
  }
}

class AccountingAdminRoute extends StatelessWidget {
  const AccountingAdminRoute({key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 180.0,
                backgroundImage: AssetImage('images/philcstlogo.jpg'),
              ),
              Text(
                'TYPES OF PAYMENTS',
                style: TextStyle(
                  fontFamily: 'Camacho',
                  fontSize: 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height:20.0),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: MaterialButton(
                      minWidth: double.infinity,
                      onPressed: () {
                        Navigator.pushNamed(context, '/student');
                      },
                      color: Colors.deepPurple,
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(120)),
                      child: const Text('TUITION FEE'))),
              const SizedBox(height:20.0),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: MaterialButton(
                      minWidth: double.infinity,
                      onPressed: () {
                        Navigator.pushNamed(context, '/student');
                      },
                      color: Colors.deepPurple,
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(120)),
                      child: const Text('REGISTRATION FEE'))),
              const SizedBox(height:20.0),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: MaterialButton(
                      minWidth: double.infinity,
                      onPressed: () {
                        Navigator.pushNamed(context, '/student');
                      },
                      color: Colors.deepPurple,
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(120)),
                      child: const Text('OTHER PAYMENTS'))),
            ],
          ),
        ));
  }
}