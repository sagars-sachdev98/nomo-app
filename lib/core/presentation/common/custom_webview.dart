
// import 'package:flutter/material.dart';
// import 'package:flutter_inappwebview/flutter_inappwebview.dart';

// class CustomWebview extends StatefulWidget {
//   final String url;
//   final bool isWeb;
//   final String title;

//   const CustomWebview(
//       {super.key, required this.url, required this.isWeb, required this.title});

//   @override
//   State<StatefulWidget> createState() => _CustomWebviewState();
// }

// class _CustomWebviewState extends State<CustomWebview> {
//   bool isLoading = true;

//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0.0,
//         backgroundColor: Theme.of(context).colorScheme.onPrimary,
//         title: Text(widget.title),
//         leading: IconButton(
//           icon: Icon(
//             Icons.arrow_back,
//             color: Theme.of(context).colorScheme.onSecondary,
//           ),
//           onPressed: () => Navigator.pop(context),
//         ),
//       ),
//       body: Stack(children: [
//               InAppWebView(
//                   initialUrlRequest: URLRequest(url: WebUri.uri(Uri.parse(widget.url))),
//                   onReceivedServerTrustAuthRequest:
//                       (controller, challenge) async {
//                     return ServerTrustAuthResponse(
//                         action: ServerTrustAuthResponseAction.PROCEED);
//                   },
//                   onLoadStop: (controller, url) {
//                     setState(() {
//                       isLoading = false;
//                     });
//                   }),
//               isLoading
//                   ? const Center(
//                       child: CircularProgressIndicator(),
//                     )
//                   : const SizedBox()
//             ]),
//     );
//   }
// }
