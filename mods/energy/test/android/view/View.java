package android.view;
import android.content.Context;
public class View {
 public static final int VISIBLE=0;
 public boolean shown=true,intersects=true;
 public int visibility=0;
 private final Context context;
 public View(Context context){this.context=context;}
 public Context getContext(){return context;}
 public int getWindowVisibility(){return visibility;}
 public boolean isShown(){return shown;}
 public boolean getGlobalVisibleRect(android.graphics.Rect rect){return intersects;}
}
