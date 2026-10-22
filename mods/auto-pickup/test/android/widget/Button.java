package android.widget;
public class Button extends android.view.View {
 public String text;
 public void setText(CharSequence value) { text=value.toString(); }
 public void setText(int resource) { text="На месте"; }
}
