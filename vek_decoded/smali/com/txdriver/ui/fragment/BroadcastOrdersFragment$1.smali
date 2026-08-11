.class Lcom/txdriver/ui/fragment/BroadcastOrdersFragment$1;
.super Lcom/txdriver/ui/view/ViewOnClickListener;
.source "BroadcastOrdersFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment$1;->this$0:Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;

    invoke-direct {p0}, Lcom/txdriver/ui/view/ViewOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewClick(Landroid/view/View;)V
    .locals 2

    .line 59
    iget-object p1, p0, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment$1;->this$0:Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;

    invoke-virtual {p1}, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 60
    iget-object p1, p0, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment$1;->this$0:Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;

    invoke-virtual {p1}, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "tab_name_arg"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 61
    iget-object v0, p0, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment$1;->this$0:Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;

    invoke-virtual {v0}, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment$1;->this$0:Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;

    invoke-static {v1}, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;->access$000(Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;)I

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/txdriver/ui/activity/BroadcastFilterSettingsActivity;->start(Landroid/content/Context;ILjava/lang/String;)V

    :cond_0
    return-void
.end method
