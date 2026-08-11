.class Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity$4;
.super Ljava/lang/Object;
.source "RegistrationChooseDriverGroupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity$4;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 129
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity$4;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;->access$000(Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;)I

    move-result p1

    if-lez p1, :cond_0

    .line 130
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity$4;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;->access$400(Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;)Landroid/widget/Button;

    move-result-object p1

    const v0, 0x7f1001e1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 131
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity$4;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;->access$500(Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;)V

    goto :goto_0

    .line 133
    :cond_0
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity$4;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;

    iget-object p1, p1, Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;->app:Lcom/txdriver/App;

    const v0, 0x7f1001f8

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
