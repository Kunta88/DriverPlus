.class Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment$1;
.super Ljava/lang/Object;
.source "PhotoControlTaskListFragment.java"

# interfaces
.implements Lcom/txdriver/http/request/HttpRequest$OnResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment;->requestPhotoControlTasks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/txdriver/http/request/HttpRequest$OnResponseListener<",
        "Ljava/util/ArrayList<",
        "Lcom/txdriver/json/PhotoControlTask;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment$1;->this$0:Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/Exception;)V
    .locals 3

    .line 66
    iget-object p1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment$1;->this$0:Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment;

    iget-object p1, p1, Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment;->app:Lcom/txdriver/App;

    const v0, 0x7f1001ff

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 67
    iget-object p1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment$1;->this$0:Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment$1;->this$0:Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment;

    invoke-virtual {v1}, Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/txdriver/ui/activity/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 52
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment$1;->onResponse(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onResponse(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/txdriver/json/PhotoControlTask;",
            ">;)V"
        }
    .end annotation

    .line 55
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment$1;->this$0:Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment;

    invoke-static {v0, p1}, Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment;->access$002(Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment;Ljava/util/List;)Ljava/util/List;

    .line 57
    iget-object p1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment$1;->this$0:Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment;

    invoke-static {p1}, Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment;->access$000(Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment;->access$100(Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment;Ljava/util/List;)V

    goto :goto_0

    .line 59
    :cond_0
    iget-object p1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment$1;->this$0:Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment;

    invoke-static {p1}, Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment;->access$200(Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 60
    iget-object p1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment$1;->this$0:Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment;

    invoke-static {p1}, Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment;->access$300(Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method
