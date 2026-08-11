.class Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity$3;
.super Lcom/txdriver/ui/view/ViewOnClickListener;
.source "RegistrationAddPhoneNumberActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity$3;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity;

    invoke-direct {p0}, Lcom/txdriver/ui/view/ViewOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewClick(Landroid/view/View;)V
    .locals 1

    .line 128
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity$3;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity;->access$200(Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 129
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity$3;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity;

    iget-object p1, p1, Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity;->rVerificationButton:Landroid/widget/Button;

    const v0, 0x7f1001e1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 130
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity$3;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity;

    invoke-virtual {p1}, Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity;->requestCode()V

    :cond_0
    return-void
.end method
