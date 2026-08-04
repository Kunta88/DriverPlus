.class Lcom/txdriver/ui/fragment/FinOperationsFragment$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "FinOperationsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/fragment/FinOperationsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/fragment/FinOperationsFragment;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/fragment/FinOperationsFragment;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/txdriver/ui/fragment/FinOperationsFragment$1;->this$0:Lcom/txdriver/ui/fragment/FinOperationsFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    if-lez p3, :cond_0

    .line 71
    iget-object p1, p0, Lcom/txdriver/ui/fragment/FinOperationsFragment$1;->this$0:Lcom/txdriver/ui/fragment/FinOperationsFragment;

    invoke-static {p1}, Lcom/txdriver/ui/fragment/FinOperationsFragment;->access$100(Lcom/txdriver/ui/fragment/FinOperationsFragment;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p2

    invoke-static {p1, p2}, Lcom/txdriver/ui/fragment/FinOperationsFragment;->access$002(Lcom/txdriver/ui/fragment/FinOperationsFragment;I)I

    .line 72
    iget-object p1, p0, Lcom/txdriver/ui/fragment/FinOperationsFragment$1;->this$0:Lcom/txdriver/ui/fragment/FinOperationsFragment;

    invoke-static {p1}, Lcom/txdriver/ui/fragment/FinOperationsFragment;->access$200(Lcom/txdriver/ui/fragment/FinOperationsFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 73
    iget-object p1, p0, Lcom/txdriver/ui/fragment/FinOperationsFragment$1;->this$0:Lcom/txdriver/ui/fragment/FinOperationsFragment;

    invoke-static {p1}, Lcom/txdriver/ui/fragment/FinOperationsFragment;->access$000(Lcom/txdriver/ui/fragment/FinOperationsFragment;)I

    move-result p1

    iget-object p2, p0, Lcom/txdriver/ui/fragment/FinOperationsFragment$1;->this$0:Lcom/txdriver/ui/fragment/FinOperationsFragment;

    invoke-static {p2}, Lcom/txdriver/ui/fragment/FinOperationsFragment;->access$300(Lcom/txdriver/ui/fragment/FinOperationsFragment;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x5

    if-lt p1, p2, :cond_0

    iget-object p1, p0, Lcom/txdriver/ui/fragment/FinOperationsFragment$1;->this$0:Lcom/txdriver/ui/fragment/FinOperationsFragment;

    invoke-static {p1}, Lcom/txdriver/ui/fragment/FinOperationsFragment;->access$400(Lcom/txdriver/ui/fragment/FinOperationsFragment;)I

    move-result p1

    iget-object p2, p0, Lcom/txdriver/ui/fragment/FinOperationsFragment$1;->this$0:Lcom/txdriver/ui/fragment/FinOperationsFragment;

    invoke-static {p2}, Lcom/txdriver/ui/fragment/FinOperationsFragment;->access$500(Lcom/txdriver/ui/fragment/FinOperationsFragment;)I

    move-result p2

    if-gt p1, p2, :cond_0

    .line 74
    iget-object p1, p0, Lcom/txdriver/ui/fragment/FinOperationsFragment$1;->this$0:Lcom/txdriver/ui/fragment/FinOperationsFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/txdriver/ui/fragment/FinOperationsFragment;->access$202(Lcom/txdriver/ui/fragment/FinOperationsFragment;Z)Z

    .line 75
    iget-object p1, p0, Lcom/txdriver/ui/fragment/FinOperationsFragment$1;->this$0:Lcom/txdriver/ui/fragment/FinOperationsFragment;

    invoke-static {p1}, Lcom/txdriver/ui/fragment/FinOperationsFragment;->access$600(Lcom/txdriver/ui/fragment/FinOperationsFragment;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 76
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance p2, Lcom/txdriver/ui/fragment/FinOperationsFragment$1$1;

    invoke-direct {p2, p0}, Lcom/txdriver/ui/fragment/FinOperationsFragment$1$1;-><init>(Lcom/txdriver/ui/fragment/FinOperationsFragment$1;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
