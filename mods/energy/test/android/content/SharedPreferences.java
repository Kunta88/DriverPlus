package android.content;
public interface SharedPreferences {
 boolean getBoolean(String key,boolean value);
 void registerOnSharedPreferenceChangeListener(OnSharedPreferenceChangeListener listener);
 interface OnSharedPreferenceChangeListener { void onSharedPreferenceChanged(SharedPreferences prefs,String key); }
}
