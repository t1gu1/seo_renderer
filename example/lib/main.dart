import 'package:flutter/material.dart';
import 'package:seo_renderer/seo_renderer.dart';
import 'package:seo_renderer_example/examples/image_renderer_example.dart';
import 'package:seo_renderer_example/examples/link_singletext_example.dart';
import 'package:seo_renderer_example/examples/scrollable_content.dart';
import 'package:seo_renderer_example/examples/single_text_item.dart';

void main() {
  runApp(MaterialApp(
    navigatorObservers: [routeObserver],
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => SingleTextItem()));
                },
                child: TextRenderer(text: Text('Single Text Item'))),
            OutlinedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => ScrollableContent()));
                },
                child: TextRenderer(text: Text('Scrollable Text Content'))),
            OutlinedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => SingleTextLinkExample()));
                },
                child: TextRenderer(text: Text('Single Link Text Item'))),
            OutlinedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => ImageRendererExample()));
                },
                child: TextRenderer(text: Text('Image renderer'))),
          ],
        ),
      ),
    );
  }
}
