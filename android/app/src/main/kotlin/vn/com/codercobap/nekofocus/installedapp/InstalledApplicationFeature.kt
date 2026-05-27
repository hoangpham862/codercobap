package vn.com.codercobap.nekofocus.installedapp

import android.content.Context
import android.content.Intent
import android.content.pm.ApplicationInfo
import android.graphics.Bitmap
import android.graphics.Canvas
import android.graphics.drawable.BitmapDrawable
import android.util.Base64
import java.io.ByteArrayOutputStream
import androidx.core.graphics.createBitmap

class InstalledApplicationFeature(private val context: Context) {
    private val packageManager = context.packageManager

    fun getInstalledApps(): List<Map<String, Any>> {
        val intent = Intent(Intent.ACTION_MAIN, null).apply {
            addCategory(Intent.CATEGORY_LAUNCHER)
        }
        
        val resolveInfos = packageManager.queryIntentActivities(intent, 0)
        val appsList = ArrayList<Map<String, Any>>()
        val seenPackages = HashSet<String>()

        for (resolveInfo in resolveInfos) {
            val packageName = resolveInfo.activityInfo.packageName
            if (seenPackages.contains(packageName)) continue
            seenPackages.add(packageName)

            // Exclude our own app
            if (packageName == context.packageName) continue

            val appName = resolveInfo.loadLabel(packageManager).toString()
            val appInfo = resolveInfo.activityInfo.applicationInfo
            val isSystemApp = (appInfo.flags and ApplicationInfo.FLAG_SYSTEM) != 0

            val appMap = HashMap<String, Any>()
            appMap["appName"] = appName
            appMap["packageName"] = packageName
            appMap["isSystemApp"] = isSystemApp
            appsList.add(appMap)
        }
        return appsList
    }

    fun getAppIcon(packageName: String): ByteArray? {
        try {
            val icon = packageManager.getApplicationIcon(packageName)
            val bitmap = if (icon is BitmapDrawable) {
                icon.bitmap
            } else {
                val width = icon.intrinsicWidth.coerceAtLeast(1)
                val height = icon.intrinsicHeight.coerceAtLeast(1)
                val bitmap = createBitmap(width, height)
                val canvas = Canvas(bitmap)
                icon.setBounds(0, 0, canvas.width, canvas.height)
                icon.draw(canvas)
                bitmap
            }
            val outputStream = ByteArrayOutputStream()
            bitmap.compress(Bitmap.CompressFormat.PNG, 100, outputStream)
            return  outputStream.toByteArray()
        } catch (e: Exception) {
            return null
        }
    }
}