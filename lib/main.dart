import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final headlineLarge = textTheme.headlineLarge;

    final mediaQuery = MediaQuery.of(context);
    final bottomViewInset = mediaQuery.viewInsets.bottom;
    final isKeyboardOpen = bottomViewInset > 0.0;
    final verticalMargin = isKeyboardOpen ? 0.0 : 60.0;

    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 40,
          vertical: verticalMargin,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Lines',
              style: headlineLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome back',
                  style: textTheme.headlineMedium,
                ),
                Text(
                  'Sign in to continue to Lines',
                  style: textTheme.headlineMedium?.copyWith(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    label: Text('Email'),
                    hintText: 'Ex.: joao@gmail.com',
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    label: Text('Password'),
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {},
              child: Text(
                'Login',
                style: textTheme.headlineSmall?.copyWith(
                  color: Colors.deepPurple,
                ),
              ),
            ),
            Row(
              children: [
                const Text('Don\'t have an account?'),
                TextButton(
                  child: const Text('Signup'),
                  onPressed: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
