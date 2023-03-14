package com.example.app_integrations

import android.annotation.SuppressLint
import android.widget.TextView
import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity: FlutterActivity() {
    private val androidViewId = "TEST_INTEGRATION_ANDROID"
    private val methodChannel = "TEST_INTEGRATION_CHANNEL_METHOD"
    private val intentMessageId = "TEST_INTEGRATION_METHOD_CALL"

    private var text: String? = ""

    @SuppressLint("ResourceType")
    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        flutterEngine
            .platformViewsController
            .registry
            .registerViewFactory(
                androidViewId,
                AndroidTextViewFactory(flutterEngine.dartExecutor.binaryMessenger, text)
            )

        MethodChannel(
            flutterEngine.dartExecutor.binaryMessenger,
            methodChannel
        ).setMethodCallHandler { call, result ->
            if (call.method == intentMessageId) {
                var args = call.arguments as List<*>

                val text = args.first().toString()
                val textView = findViewById<TextView>(666)

                textView.text = text
                textView.refreshDrawableState()

                result.success(args.first().toString())
            } else {
                result.notImplemented()
            }
        }
    }
}
