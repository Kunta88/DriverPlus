.class Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity$1;
.super Ljava/lang/Object;
.source "RegistrationAddRefererActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity$1;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    const/16 p3, 0x42

    if-ne p2, p3, :cond_0

    .line 45
    invoke-static {}, Lcom/activeandroid/Cache;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "input_method"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    .line 46
    iget-object p3, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity$1;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;

    invoke-static {p3}, Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;->access$000(Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;)Lbr/com/sapereaude/maskedEditText/MaskedEditText;

    move-result-object p3

    invoke-virtual {p3}, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    const/4 p1, 0x1

    :cond_0
    return p1
.end method
