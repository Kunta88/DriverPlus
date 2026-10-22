package android.content;
public interface SharedPreferences {
 boolean contains(String key);
 String getString(String key,String fallback);
 long getLong(String key,long fallback);
 boolean getBoolean(String key,boolean fallback);
 Editor edit();
 interface Editor {
  Editor putString(String k,String v);
  Editor putLong(String k,long v);
  Editor putBoolean(String k,boolean v);
  Editor clear();
  void apply();
 }
}
