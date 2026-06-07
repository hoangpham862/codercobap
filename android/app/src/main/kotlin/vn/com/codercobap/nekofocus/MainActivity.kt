package vn.com.codercobap.nekofocus

import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import vn.com.codercobap.nekofocus.installedapp.InstalledApplicationFeature
import vn.com.codercobap.nekofocus.pigeon.AppInstalledPigeonSchema

class MainActivity: FlutterActivity() {
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        val feature = InstalledApplicationFeature(this)
        AppInstalledPigeonSchema.setUp(flutterEngine.dartExecutor.binaryMessenger, feature)
    }
}


