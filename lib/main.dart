import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized;
  SystemChrome.setPreferredOrientations(
          [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight])
      .whenComplete(() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.bottom]);
  });
  runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
            backgroundColor: Color.fromARGB(255, 29, 54, 54),
            body: Center(child: MyApp())),
      )));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MyText(
            'data',
          ),
          MyText('data'),
          MyText('data')
        ],
      ),
    )
        // notAllCompllet()
        ;
  }

  Animate notAllCompllet() {
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromARGB(0, 150, 0, 155),
          boxShadow: const [
            BoxShadow(
                color: Color.fromARGB(255, 255, 255, 255),
                blurRadius: 10,
                blurStyle: BlurStyle.outer)
          ],
          borderRadius: BorderRadius.circular(10)),
      padding: const EdgeInsets.all(16),
      child: Text(
        'SIGN IN',
        style: GoogleFonts.blackOpsOne(
            fontSize: 30, color: const Color.fromARGB(167, 255, 255, 255)),
      ),
    )
        .animate()
        .shimmer(delay: 400.ms, duration: 1800.ms)
        .shake(hz: 4, curve: Curves.easeInOutCubic)
        .scaleXY(end: 1.1, duration: 600.ms)
        .then(delay: 600.ms)
        .scaleXY(end: 1 / 1.1);
  }
}

class MyText extends StatelessWidget {
  final String text;
  const MyText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      '$text',
      style: GoogleFonts.blackOpsOne(color: Colors.white, fontSize: 20),
    );
  }
}
