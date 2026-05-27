package vn.com.codercobap.nekofocus

import android.content.Intent
import android.content.pm.ApplicationInfo
import android.content.pm.PackageManager
import android.graphics.Bitmap
import android.graphics.Canvas
import android.graphics.drawable.BitmapDrawable
import android.util.Base64
import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import java.io.ByteArrayOutputStream
import vn.com.codercobap.nekofocus.installedapp.InstalledApplicationFeature

class MainActivity: FlutterActivity() {
    private val CHANNEL = "vn.com.codercobap.nekofocus/app_helper"
    override fun configureFlutterEngine( flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        val feature = InstalledApplicationFeature(this)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler { call, result ->
            when (call.method) {
                "getInstalledApps" -> {
                    Thread {
                        val apps = feature.getInstalledApps()
                        runOnUiThread {
                            result.success(apps)
                        }
                    }.start()
                }
                "getAppIcon" -> {
                    val packageName = call.argument<String>("packageName")
                    if (packageName != null) {
                        Thread {
                            val iconBase64 = feature.getAppIcon(packageName)
                            runOnUiThread {
                                result.success(iconBase64)
                            }
                        }.start()
                    } else {
                        result.error("INVALID_ARGUMENT", "Package name is null", null)
                    }
                }
                else -> {
                    result.notImplemented()
                }
            }
        }
    }
}

