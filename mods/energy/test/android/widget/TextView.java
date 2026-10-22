package android.widget;
public class TextView extends android.view.View {
 public int writes;
 private CharSequence text="";
 public TextView(android.content.Context context){super(context);}
 public CharSequence getText(){return text;}
 public void setText(CharSequence value){writes++;text=value;}
}
