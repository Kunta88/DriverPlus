package android.content;
public final class MemoryPreferences implements SharedPreferences {
 private final java.util.Map<String,Object> data = new java.util.HashMap<String,Object>();
 public boolean contains(String key) { return data.containsKey(key); }
 public String getString(String key,String fallback) { Object v=data.get(key); return v==null?fallback:(String)v; }
 public long getLong(String key,long fallback) { Object v=data.get(key); return v==null?fallback:(Long)v; }
 public boolean getBoolean(String key,boolean fallback) { Object v=data.get(key); return v==null?fallback:(Boolean)v; }
 public SharedPreferences.Editor edit() { return new MemoryEditor(); }
 private class MemoryEditor implements SharedPreferences.Editor {
  public SharedPreferences.Editor putString(String k,String v) { data.put(k,v); return this; }
  public SharedPreferences.Editor putLong(String k,long v) { data.put(k,v); return this; }
  public SharedPreferences.Editor putBoolean(String k,boolean v) { data.put(k,v); return this; }
  public SharedPreferences.Editor clear() { data.clear(); return this; }
  public void apply() {}
 }
}
