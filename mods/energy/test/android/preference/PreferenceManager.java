package android.preference;
import android.content.*;
import java.util.*;
public class PreferenceManager {
 public static final Prefs prefs=new Prefs();
 public static SharedPreferences getDefaultSharedPreferences(Context context) { return prefs; }
 public static class Prefs implements SharedPreferences {
  public final Map<String,Boolean> values=new HashMap<String,Boolean>();
  public OnSharedPreferenceChangeListener listener;
  public boolean getBoolean(String key,boolean value) { return values.containsKey(key)?values.get(key):value; }
  public void registerOnSharedPreferenceChangeListener(OnSharedPreferenceChangeListener value) { listener=value; }
  public void set(String key,boolean value) { values.put(key,value); listener.onSharedPreferenceChanged(this,key); }
 }
}
