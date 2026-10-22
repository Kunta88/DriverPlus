package android.view;
public class View {
 public static final int VISIBLE=0,GONE=8;
 public int visibility; public boolean enabled=true;
 public void setVisibility(int value) { visibility=value; }
 public void setEnabled(boolean value) { enabled=value; }
}
