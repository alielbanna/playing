import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/countries.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:testing/settings.dart';

void main() async {
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
      designSize: Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        home: _LineChart(),
      ),
    );
  }
}

//chart
class _LineChart extends StatelessWidget {
  const _LineChart();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 200.h,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: IntlPhoneField(
                showDropdownIcon: false,

                decoration: const InputDecoration(
                  hintText: "phoneNumberHint",
                  counterStyle: TextStyle(
                    height: double.minPositive,
                  ),
                  counterText: '',
                ),
                initialCountryCode: 'SA',
                // countries: const [
                //   Country(
                //     name: "Saudi Arabia",
                //     nameTranslations: {
                //       "sk": "Saudská Arábia",
                //       "se": "Saudi-Arábia",
                //       "pl": "Arabia Saudyjska",
                //       "no": "Saudi-Arabia",
                //       "ja": "サウジアラビア",
                //       "it": "Arabia Saudita",
                //       "zh": "沙特阿拉伯",
                //       "nl": "Saoedi-Arabië",
                //       "de": "Saudi-Arabien",
                //       "fr": "Arabie saoudite",
                //       "es": "Arabia Saudí",
                //       "en": "Saudi Arabia",
                //       "pt_BR": "Arábia Saudita",
                //       "sr-Cyrl": "Саудијска Арабија",
                //       "sr-Latn": "Saudijska Arabija",
                //       "zh_TW": "沙烏地阿拉",
                //       "tr": "Suudi Arabistan",
                //       "ro": "Arabia Saudită",
                //       "ar": "السعودية",
                //       "fa": "عربستان سعودی",
                //       "yue": "沙地阿拉伯"
                //     },
                //     flag: "🇸🇦",
                //     code: "SA",
                //     dialCode: "966",
                //     minLength: 9,
                //     maxLength: 9,
                //   ),
                //   Country(
                //     name: "Egypt",
                //     nameTranslations: {
                //       "sk": "Egypt",
                //       "se": "Egypt",
                //       "pl": "Egipt",
                //       "no": "Egypt",
                //       "ja": "エジプト",
                //       "it": "Egitto",
                //       "zh": "埃及",
                //       "nl": "Egypt",
                //       "de": "Ägypt",
                //       "fr": "Égypte",
                //       "es": "Egipt",
                //       "en": "Egypt",
                //       "pt_BR": "Egito",
                //       "sr-Cyrl": "Египат",
                //       "sr-Latn": "Egipat",
                //       "zh_TW": "埃及",
                //       "tr": "Mısır",
                //       "ro": "Egipt",
                //       "ar": "مصر",
                //       "fa": "مصر",
                //       "yue": "埃及"
                //     },
                //     flag: "🇪🇬",
                //     code: "EG",
                //     dialCode: "20",
                //     minLength: 10,
                //     maxLength: 10,
                //   ),
                //
                // ],
                // languageCode: 'ar',
                onChanged: (phone) {
                  // WidgetsBinding.instance.addPostFrameCallback((_) =>
                  //     _loginViewModel.setPhoneCode(phone.countryCode));
                  //
                  // WidgetsBinding.instance.addPostFrameCallback(
                  //         (_) => _loginViewModel.setPhone(phone.number));
                },
              ),
            ),
            SizedBox(
              height: 200.h,
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 14.w),
              child: Container(
                height: 129.h,
                child: LineChart(
                  sampleData2,
                  duration: const Duration(milliseconds: 250),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }



  LineChartData get sampleData2 => LineChartData(
        lineTouchData: lineTouchData2,
        gridData: gridData,
        titlesData: titlesData2,
        borderData: borderData,
        lineBarsData: lineBarsData2,
        minX: 1,
        // maxX: 14,
        // maxY: 6,
        minY: 1,
      );

  LineTouchData get lineTouchData1 => LineTouchData(
        handleBuiltInTouches: true,
        touchTooltipData: LineTouchTooltipData(
          getTooltipColor: (touchedSpot) => Colors.blueGrey.withOpacity(0.8),
        ),
      );

  FlTitlesData get titlesData1 => FlTitlesData(
        bottomTitles: const AxisTitles(
            // sideTitles: bottomTitles,
            ),
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        leftTitles: AxisTitles(
          sideTitles: leftTitles(),
        ),
      );



  LineTouchData get lineTouchData2 => const LineTouchData(
        enabled: false,
      );

  FlTitlesData get titlesData2 => FlTitlesData(
        bottomTitles: const AxisTitles(

            // sideTitles: bottomTitles,
            ),
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        leftTitles: AxisTitles(
          sideTitles: leftTitles(),
        ),
      );

  List<LineChartBarData> get lineBarsData2 => [
        lineChartBarData2_1,
        lineChartBarData2_2,
   ];

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 14,
    );
    String text;
    switch (value.toInt()) {
      case 1:
        text = '1m';
        break;
      case 2:
        text = '2m';
        break;
      case 3:
        text = '3m';
        break;
      case 4:
        text = '5m';
        break;
      case 5:
        text = '6m';
        break;
      default:
        return Container();
    }

    return Text(text, style: style, textAlign: TextAlign.center);
  }

  SideTitles leftTitles() => SideTitles(
        getTitlesWidget: leftTitleWidgets,
        showTitles: true,
        interval: 1,
        reservedSize: 40,
      );

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 16,
    );
    Widget text;
    switch (value.toInt()) {
      case 2:
        text = const Text('SEPT', style: style);
        break;
      case 7:
        text = const Text('OCT', style: style);
        break;
      case 12:
        text = const Text('DEC', style: style);
        break;
      default:
        text = const Text('');
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 10,
      child: text,
    );
  }

  SideTitles get bottomTitles => SideTitles(
        showTitles: true,
        reservedSize: 32,
        interval: 1,
        getTitlesWidget: bottomTitleWidgets,
      );

  FlGridData get gridData => FlGridData(
        show: true,
    drawVerticalLine: false,
getDrawingHorizontalLine: (value)=> const FlLine(
  color: Color(0xffB7B8C1),
  strokeWidth: 0.5,


)

      );

  FlBorderData get borderData => FlBorderData(
        show: true,
        border: const Border(
          // bottom:
          // BorderSide(color: Colors.red, width: 1),
          left: BorderSide(color: Colors.transparent),
          right: BorderSide(color: Colors.transparent),
          top: BorderSide(color: Colors.transparent),
        ),
      );

  LineChartBarData get lineChartBarData1_1 => LineChartBarData(
        isCurved: true,
        color: Colors.green,
        barWidth: 8,
        isStrokeCapRound: true,
        dotData: const FlDotData(show: false),
        belowBarData: BarAreaData(show: false),
        spots: const [
          FlSpot(1, 1),
          FlSpot(3, 1.5),
          FlSpot(5, 1.4),
          FlSpot(7, 3.4),
          FlSpot(10, 2),
          FlSpot(12, 2.2),
          FlSpot(13, 1.8),
        ],
      );



  LineChartBarData get lineChartBarData2_1 => LineChartBarData(
        isCurved: true,
        color: const Color(0xffE09336),
        barWidth: 1.3.w,
        isStrokeCapRound: true,
        dotData: const FlDotData(show: false),
        belowBarData: BarAreaData(show: false),
        spots: const [
          FlSpot(1, 1),
          FlSpot(3, 4),
          FlSpot(5, 1.8),
          FlSpot(7, 5),
          FlSpot(10, 2),
          FlSpot(12, 2.2),
          FlSpot(13, 1.8),
        ],
      );

  LineChartBarData get lineChartBarData2_2 => LineChartBarData(
        isCurved: true,
        color: const Color(0xff482F72),
        barWidth: 2.w,
        isStrokeCapRound: true,
        dotData: const FlDotData(show: false),
        belowBarData: BarAreaData(
          show: true,
          gradient: LinearGradient(
            begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            const Color(0xff482F72).withOpacity(0.3),
                const Color(0xff482F72).withOpacity(0.01),

              ],)
        ),
        spots: const [
          FlSpot(1, 1),
          FlSpot(3, 2.8),
          FlSpot(7, 1.2),
          FlSpot(10, 2.8),
          FlSpot(12, 2.6),
          FlSpot(13, 3.9),
        ],
      );

  LineChartBarData get lineChartBarData2_3 => LineChartBarData(
        isCurved: true,
        curveSmoothness: 0,
        color: Colors.cyan.shade200,
        barWidth: 2,
        isStrokeCapRound: true,
        dotData: const FlDotData(show: true),
        belowBarData: BarAreaData(show: false),
        spots: const [
          FlSpot(1, 3.8),
          FlSpot(3, 1.9),
          FlSpot(6, 5),
          FlSpot(10, 3.3),
          FlSpot(13, 4.5),
        ],
      );
}

// class LineChartSample1 extends StatefulWidget {
//   const LineChartSample1({super.key});
//
//   @override
//   State<StatefulWidget> createState() => LineChartSample1State();
// }
//
// class LineChartSample1State extends State<LineChartSample1> {
//   late bool isShowingMainData;
//
//   @override
//   void initState() {
//     super.initState();
//     isShowingMainData = true;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return AspectRatio(
//       aspectRatio: 1.23,
//       child: Stack(
//         children: <Widget>[
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: <Widget>[
//               const SizedBox(
//                 height: 37,
//               ),
//               const Text(
//                 'Monthly Sales',
//                 style: TextStyle(
//                   color: Colors.red,
//                   fontSize: 32,
//                   fontWeight: FontWeight.bold,
//                   letterSpacing: 2,
//                 ),
//                 textAlign: TextAlign.center,
//               ),
//               const SizedBox(
//                 height: 37,
//               ),
//               Expanded(
//                 child: Padding(
//                   padding: const EdgeInsets.only(right: 16, left: 6),
//                   child: _LineChart(),
//                 ),
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//             ],
//           ),
//           IconButton(
//             icon: Icon(
//               Icons.refresh,
//               size: 100,
//               color: Colors.black.withOpacity(isShowingMainData ? 1.0 : 0.5),
//             ),
//             onPressed: () {
//               setState(() {
//                 isShowingMainData = !isShowingMainData;
//               });
//             },
//           )
//         ],
//       ),
//     );
//   }
// }

//login
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Positioned(
//             top: 0,
//             right: 0,
//             left: 0,
//             child: Image.asset(
//               'assets/images/background.png',
//               height: MediaQuery.of(context).size.height/2,
//               width: MediaQuery.of(context).size.width,
//               fit: BoxFit.cover,
//             ),
//           ),
//           Positioned(
//             bottom: 0.0,
//             left: 0,
//             right: 0,
//             child: Opacity(
//               opacity: 0.3,
//               child: Padding(
//                 padding:  EdgeInsets.symmetric(horizontal: 29.w),
//                 child: Container(
//                   height: 574.h,
//                   width: MediaQuery.of(context).size.width,
//
//                   decoration: const BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.only(
//                         topLeft: Radius.circular(35),
//                         topRight: Radius.circular(35),
//                       )),
//                 ),
//               ),
//             ),
//           ),
//           Positioned(
//             bottom: 0.0,
//             left: 0,
//             right: 0,
//             child: Opacity(
//               opacity: 0.5,
//               child: Padding(
//                 padding:  EdgeInsets.symmetric(horizontal: 22.w),
//                 child: Container(
//                   height: 567.h,
//                   width: MediaQuery.of(context).size.width,
//
//                   decoration: const BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.only(
//                         topLeft: Radius.circular(20),
//                         topRight: Radius.circular(20),
//                       )),
//                 ),
//               ),
//             ),
//           ),
//           Positioned(
//             bottom: 0.0,
//             left: 0,
//             right: 0,
//             child: Container(
//               height: 559.h,
//               width: MediaQuery.of(context).size.width,
//
//               decoration: const BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(35),
//                     topRight: Radius.circular(35),
//                   )),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

//onboarding
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({
//     super.key,
//   });
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xffF8F8F8),
//       body: Stack(
//         children: [
//           Positioned(
//             top: 105.h,
//             left: 0,
//             right: 0,
//             child: Center(
//               child: Image.asset(
//                 "assets/images/img.png",
//                 // height: 499.7.h,
//                 width: 344.75.w,
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//           Positioned(
//             bottom: 0.0,
//             child: ClipPath(
//               clipper: CustomClipPath(),
//               child: Container(
//                 color: Colors.white,
//                 height: 373.h,
//                 width: MediaQuery.of(context).size.width,
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
//
// class CustomClipPath extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     double w = size.width;
//     double h = size.height;
//
//     final path = Path();
//
//     // Start from top-left
//     path.lineTo(0, 0);
//
//     // Create a curve from top to bottom
//     path.quadraticBezierTo(
//       w * 0.5,
//       80.h, // Adjust the curve's height to the opposite direction
//       w,
//       0,
//     );
//
//     // Complete the path by drawing a line to the bottom-right and bottom-left
//     path.lineTo(w, h);
//     path.lineTo(0, h);
//     path.close();
//
//     return path;
//   }
//
//   @override
//   bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
//     return false;
//   }
// }
