.class Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity$4$1;
.super Landroid/os/CountDownTimer;
.source "RegistrationReceiveCodeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity$4;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity$4;JJ)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity$4$1;->this$1:Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity$4;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity$4$1;->this$1:Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity$4;

    iget-object v0, v0, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity$4;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;

    invoke-static {v0}, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;->access$400(Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity$4$1;->this$1:Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity$4;

    iget-object v0, v0, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity$4;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;

    invoke-static {v0}, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;->access$500(Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 151
    iget-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity$4$1;->this$1:Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity$4;

    iget-object v0, v0, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity$4;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;

    invoke-static {v0}, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;->access$500(Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public onTick(J)V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity$4$1;->this$1:Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity$4;

    iget-object v0, v0, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity$4;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;

    invoke-static {v0, p1, p2}, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;->access$600(Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;J)V

    return-void
.end method
