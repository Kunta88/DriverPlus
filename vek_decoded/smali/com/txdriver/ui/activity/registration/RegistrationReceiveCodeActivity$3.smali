.class Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity$3;
.super Lcom/txdriver/ui/view/ViewOnClickListener;
.source "RegistrationReceiveCodeActivity.java"


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

    .line 127
    iput-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity$3;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;

    invoke-direct {p0}, Lcom/txdriver/ui/view/ViewOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewClick(Landroid/view/View;)V
    .locals 1

    .line 130
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity$3;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;->access$200(Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 131
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity$3;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;->access$100(Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;)Landroid/widget/Button;

    move-result-object p1

    const v0, 0x7f1001e1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 132
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity$3;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;->access$300(Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;)V

    :cond_0
    return-void
.end method
