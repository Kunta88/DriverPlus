.class Lcom/txdriver/ui/activity/BaseActivity$1$1;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/activity/BaseActivity$1;->onViewClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/txdriver/ui/activity/BaseActivity$1;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/activity/BaseActivity$1;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/txdriver/ui/activity/BaseActivity$1$1;->this$1:Lcom/txdriver/ui/activity/BaseActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 73
    iget-object p1, p0, Lcom/txdriver/ui/activity/BaseActivity$1$1;->this$1:Lcom/txdriver/ui/activity/BaseActivity$1;

    iget-object p1, p1, Lcom/txdriver/ui/activity/BaseActivity$1;->this$0:Lcom/txdriver/ui/activity/BaseActivity;

    iget-object p1, p1, Lcom/txdriver/ui/activity/BaseActivity;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getClient()Lcom/txdriver/socket/Client;

    move-result-object p1

    new-instance p2, Lcom/txdriver/socket/packet/SosPacket;

    iget-object v0, p0, Lcom/txdriver/ui/activity/BaseActivity$1$1;->this$1:Lcom/txdriver/ui/activity/BaseActivity$1;

    iget-object v0, v0, Lcom/txdriver/ui/activity/BaseActivity$1;->this$0:Lcom/txdriver/ui/activity/BaseActivity;

    iget-object v0, v0, Lcom/txdriver/ui/activity/BaseActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/preferences/Preferences;->isInDanger()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p2, v0}, Lcom/txdriver/socket/packet/SosPacket;-><init>(Z)V

    invoke-virtual {p1, p2}, Lcom/txdriver/socket/Client;->send(Lcom/txdriver/socket/Packet;)V

    return-void
.end method
