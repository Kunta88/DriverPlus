.class Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity$4;
.super Ljava/lang/Object;
.source "RegistrationReceiveCodeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity$4;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 139
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity$4;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;

    invoke-virtual {p1}, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;->requestCodeRepeat()V

    .line 140
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity$4;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;->access$400(Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 141
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity$4;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;->access$500(Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 142
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity$4;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;->access$500(Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;)Landroid/widget/Button;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 143
    new-instance p1, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity$4$1;

    const-wide/16 v3, 0x7530

    const-wide/16 v5, 0x3e8

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity$4$1;-><init>(Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity$4;JJ)V

    .line 153
    invoke-virtual {p1}, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity$4$1;->start()Landroid/os/CountDownTimer;

    return-void
.end method
