.class Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity$3;
.super Ljava/lang/Object;
.source "RegistrationAddRefererActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;
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

    .line 120
    iput-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity$3;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 123
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity$3;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;->access$200(Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 124
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity$3;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;->access$100(Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;)Landroid/widget/Button;

    move-result-object p1

    const v0, 0x7f1001e1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 125
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity$3;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;->access$300(Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;)V

    :cond_0
    return-void
.end method
