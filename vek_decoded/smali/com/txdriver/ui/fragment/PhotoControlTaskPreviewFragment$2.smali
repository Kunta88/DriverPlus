.class Lcom/txdriver/ui/fragment/PhotoControlTaskPreviewFragment$2;
.super Ljava/lang/Object;
.source "PhotoControlTaskPreviewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/fragment/PhotoControlTaskPreviewFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/fragment/PhotoControlTaskPreviewFragment;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/fragment/PhotoControlTaskPreviewFragment;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskPreviewFragment$2;->this$0:Lcom/txdriver/ui/fragment/PhotoControlTaskPreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 53
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskPreviewFragment$2;->this$0:Lcom/txdriver/ui/fragment/PhotoControlTaskPreviewFragment;

    invoke-virtual {v0}, Lcom/txdriver/ui/fragment/PhotoControlTaskPreviewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/txdriver/ui/activity/photocontrol/PhotoControlProceedTaskActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    iget-object v0, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskPreviewFragment$2;->this$0:Lcom/txdriver/ui/fragment/PhotoControlTaskPreviewFragment;

    const v1, 0x7f100254

    invoke-virtual {v0, v1}, Lcom/txdriver/ui/fragment/PhotoControlTaskPreviewFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskPreviewFragment$2;->this$0:Lcom/txdriver/ui/fragment/PhotoControlTaskPreviewFragment;

    invoke-static {v1}, Lcom/txdriver/ui/fragment/PhotoControlTaskPreviewFragment;->access$000(Lcom/txdriver/ui/fragment/PhotoControlTaskPreviewFragment;)Lcom/txdriver/json/PhotoControlTask;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 55
    iget-object v0, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskPreviewFragment$2;->this$0:Lcom/txdriver/ui/fragment/PhotoControlTaskPreviewFragment;

    invoke-virtual {v0, p1}, Lcom/txdriver/ui/fragment/PhotoControlTaskPreviewFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
