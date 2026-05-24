package android.app.src.main.kotlin.vn.com.codercobap.nekofocus.installedapp

import android.content.Intent
import android.content.pm.PackageManager



class InstalledApplicationFeature {
    private fun getInstalledApps() {
        val intent = Intent(Intent.ACTION_MAIN, null).apply {
            addCategory(Intent.CATEGORY_LAUNCHER)
        }

        return ;
    }
}