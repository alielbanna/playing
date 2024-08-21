import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  // To fix texts being hidden bug in flutter_screenutil in release mode.
  await ScreenUtil.ensureScreenSize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenUtilInit(
      designSize:  Size(375, 812),
      minTextAdapt: true,
      child:  MaterialApp(
        title: 'Flutter Demo',
        home: MyHomePage(title: 'Flutter Demo Home Page'),
      ),
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
    return Scaffold(
      backgroundColor: const Color(0xffF8F8F8),
      body: Stack(
        children: [
          Positioned(
            top: 105.h,
            left: 67.w,
            child: Container(
              height: 496.7.h,
                width: 241.25.w,
                child: Image.asset("assets/images/phone.png")
            ),
          ),
          Positioned(
            bottom: 0.0,
            child: ClipPath(
              clipper: CustomClipPath(),
              child: Container(
                color: Colors.white,
                height: 373.h,
                width: MediaQuery.of(context).size.width,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;

    final path = Path();

    // Start from top-left
    path.lineTo(0, 0);

    // Create a curve from top to bottom
    path.quadraticBezierTo(
      w * 0.5,
      75, // Adjust the curve's height to the opposite direction
      w,
      0,
    );

    // Complete the path by drawing a line to the bottom-right and bottom-left
    path.lineTo(w, h);
    path.lineTo(0, h);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
