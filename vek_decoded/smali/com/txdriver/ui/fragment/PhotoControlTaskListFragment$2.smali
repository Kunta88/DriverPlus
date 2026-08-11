.class Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment$2;
.super Ljava/lang/Object;
.source "PhotoControlTaskListFragment.java"

# interfaces
.implements Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter$TasksButtonOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment;->initViews(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment;

.field final synthetic val$tasks:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment;Ljava/util/List;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment$2;->this$0:Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment$2;->val$tasks:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onButtonClick(ILandroid/view/View;)V
    .locals 2

    .line 78
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    const v0, 0x7f09007b

    if-eq p2, v0, :cond_1

    const v0, 0x7f09007f

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    iget-object p2, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment$2;->this$0:Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment;

    invoke-virtual {p2, p1}, Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment;->replaceFragment(I)V

    goto :goto_0

    .line 83
    :cond_1
    iget-object p2, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment$2;->val$tasks:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/txdriver/json/PhotoControlTask;

    .line 84
    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment$2;->this$0:Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment;

    invoke-virtual {v0}, Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/txdriver/ui/activity/photocontrol/PhotoControlProceedTaskActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 85
    iget-object v0, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment$2;->this$0:Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment;

    const v1, 0x7f100254

    invoke-virtual {v0, v1}, Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 86
    iget-object p1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment$2;->this$0:Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment;

    invoke-virtual {p1, p2}, Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
