import 'package:edu_manager/features/signup/data/logic/cubit/get_address_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MapWebViewScreen extends StatefulWidget {
  final double lat;
  final double lng;

  const MapWebViewScreen({super.key, required this.lat, required this.lng});

  @override
  State<MapWebViewScreen> createState() => _MapWebViewScreenState();
}

class _MapWebViewScreenState extends State<MapWebViewScreen> {
  @override
  Widget build(BuildContext context) {
    final url =
        'https://www.google.com/maps/search/?api=1&query=${widget.lat},${widget.lng}';
    final controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {},
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onHttpError: (HttpResponseError error) {},
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('https://www.youtube.com/')) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse(url));
    return BlocListener<GetAddressCubit, GetAddressState>(
      listener: (context, state) {
        state.whenOrNull(
          success: (location) => setState(() {}),
        );
      },
      child: AbsorbPointer(child: WebViewWidget(controller: controller)),
    );
  }
}
