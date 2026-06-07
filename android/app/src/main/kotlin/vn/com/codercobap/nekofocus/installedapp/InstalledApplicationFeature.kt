package vn.com.codercobap.nekofocus.installedapp

import android.content.Context
import android.content.Intent
import android.content.pm.ApplicationInfo
import android.graphics.Bitmap
import android.graphics.Canvas
import android.graphics.drawable.BitmapDrawable
import androidx.core.graphics.createBitmap
import java.io.ByteArrayOutputStream
import vn.com.codercobap.nekofocus.pigeon.AppInstalledPigeonSchema
import vn.com.codercobap.nekofocus.pigeon.PigInstalledApplicationInfo

class InstalledApplicationFeature(private val context: Context) : AppInstalledPigeonSchema {
    private val packageManager = context.packageManager

    override fun getListApplication(callback: (Result<List<PigInstalledApplicationInfo>>) -> Unit) {
        Thread {
            try {
                val intent = Intent(Intent.ACTION_MAIN, null).apply {
                    addCategory(Intent.CATEGORY_LAUNCHER)
                }
                
                val resolveInfos = packageManager.queryIntentActivities(intent, 0)
                val appsList = ArrayList<PigInstalledApplicationInfo>()
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

                    val app = PigInstalledApplicationInfo(
                        appName = appName,
                        packageName = packageName,
                        isSystemApp = isSystemApp.toString()
                    )
                    appsList.add(app)
                }
                callback(Result.success(appsList))
            } catch (e: Exception) {
                callback(Result.failure(e))
            }
        }.start()
    }

    override fun getAppIcon(packageName: String, callback: (Result<ByteArray?>) -> Unit) {
        Thread {
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
                callback(Result.success(outputStream.toByteArray()))
            } catch (e: Exception) {
                callback(Result.success(null))
            }
        }.start()
    }
}