package com.txdriver.compat;
import android.content.*;
import android.net.Uri;
import android.os.*;
import android.widget.Toast;
import java.io.*;

/** Only prepare an APK; Android's normal installer/verification still asks the user. */
public final class Installer {
 public static void install(final Context context,final String address) {
  final Context app=context.getApplicationContext();
  if(com.txdriver.db.Order.getCurrentOrder()!=null || ((com.txdriver.App)app).getTaximeter().getStatus()!=0) {
   Toast.makeText(context,"Сначала завершите заказ и остановите таксометр",Toast.LENGTH_LONG).show();return;
  }
  if(Build.VERSION.SDK_INT>=26 && !app.getPackageManager().canRequestPackageInstalls()) {
   Toast.makeText(context,"Разрешите установку обновлений для приложения",Toast.LENGTH_LONG).show();
   Intent settings=new Intent(android.provider.Settings.ACTION_MANAGE_UNKNOWN_APP_SOURCES,Uri.parse("package:"+app.getPackageName()));
   settings.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);context.startActivity(settings);return;
  }
  new Thread(new Runnable(){public void run(){try{
   Uri source=Uri.parse(address);InputStream input;
   if("content".equals(source.getScheme())) input=app.getContentResolver().openInputStream(source);
   else if("file".equals(source.getScheme())) input=new FileInputStream(new File(source.getPath()));
   else throw new IOException("Unsupported APK URI");
   if(input==null)throw new IOException("APK unavailable");
   File directory=new File(app.getCacheDir(),"updates");if(!directory.exists() && !directory.mkdirs())throw new IOException("Cache unavailable");
   File apk=new File(directory,"driverplus-update.apk");
   try {FileOutputStream out=new FileOutputStream(apk);try{
    byte[] buffer=new byte[16384];int n;long total=0;
    while((n=input.read(buffer))!=-1){total+=n;if(total>200L*1024*1024)throw new IOException("APK too large");out.write(buffer,0,n);}
   }finally{out.close();}}finally{input.close();}
   android.content.pm.PackageManager pm=app.getPackageManager();
   android.content.pm.PackageInfo downloaded=pm.getPackageArchiveInfo(apk.getAbsolutePath(),android.content.pm.PackageManager.GET_SIGNATURES);
   android.content.pm.PackageInfo installed=pm.getPackageInfo(app.getPackageName(),android.content.pm.PackageManager.GET_SIGNATURES);
   if(downloaded==null || !app.getPackageName().equals(downloaded.packageName)
     || downloaded.signatures==null || !java.util.Arrays.equals(downloaded.signatures,installed.signatures)
     || downloaded.versionCode<=installed.versionCode)throw new IOException("APK package, version or signature mismatch");
   final Uri content=androidx.core.content.FileProvider.getUriForFile(app,app.getPackageName()+".updates",apk);
   new Handler(Looper.getMainLooper()).post(new Runnable(){public void run(){try{
    if(com.txdriver.db.Order.getCurrentOrder()!=null || ((com.txdriver.App)app).getTaximeter().getStatus()!=0)return;
    Intent intent=new Intent(Intent.ACTION_VIEW).setDataAndType(content,"application/vnd.android.package-archive");
    intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK|Intent.FLAG_GRANT_READ_URI_PERMISSION);app.startActivity(intent);
   }catch(RuntimeException error){Toast.makeText(app,"Откройте приложение для установки обновления",Toast.LENGTH_LONG).show();}}});
  }catch(Exception error){new Handler(Looper.getMainLooper()).post(new Runnable(){public void run(){Toast.makeText(app,"Не удалось проверить обновление: проверьте файл и подпись",Toast.LENGTH_LONG).show();}});}
  }},"DriverPlus-APK").start();
 }
}
