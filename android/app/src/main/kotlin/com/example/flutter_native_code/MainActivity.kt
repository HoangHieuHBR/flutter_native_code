package com.example.flutter_native_code

import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugins.GeneratedPluginRegistrant

class MainActivity : FlutterActivity() {

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        GeneratedPluginRegistrant.registerWith(flutterEngine)
        flutterEngine
            .platformViewsController
            .registry
            .registerViewFactory("com.example.plugin/firstWidget", FirstWidgetFactory())
        flutterEngine
            .platformViewsController
            .registry
            .registerViewFactory("com.example.plugin/secondWidget", SecondWidgetFactory())
    }

}