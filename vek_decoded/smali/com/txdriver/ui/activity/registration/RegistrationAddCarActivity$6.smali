.class Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity$6;
.super Ljava/lang/Object;
.source "RegistrationAddCarActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity$6;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 187
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity$6;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;->access$1000(Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 188
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity$6;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;->access$900(Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;)Landroid/widget/Button;

    move-result-object p1

    const v0, 0x7f1001e1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 189
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity$6;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;->access$1100(Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;)V

    :cond_0
    return-void
.end method
