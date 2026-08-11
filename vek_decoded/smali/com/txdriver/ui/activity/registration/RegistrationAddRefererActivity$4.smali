.class Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity$4;
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

    .line 129
    iput-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity$4;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 132
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity$4;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;

    const-class v1, Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 133
    iget-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity$4;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;

    invoke-virtual {v0, p1}, Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
