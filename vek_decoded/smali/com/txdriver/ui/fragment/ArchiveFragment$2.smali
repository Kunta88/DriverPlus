.class Lcom/txdriver/ui/fragment/ArchiveFragment$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "ArchiveFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/fragment/ArchiveFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/fragment/ArchiveFragment;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/fragment/ArchiveFragment;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/txdriver/ui/fragment/ArchiveFragment$2;->this$0:Lcom/txdriver/ui/fragment/ArchiveFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    if-lez p3, :cond_0

    .line 107
    iget-object p1, p0, Lcom/txdriver/ui/fragment/ArchiveFragment$2;->this$0:Lcom/txdriver/ui/fragment/ArchiveFragment;

    invoke-static {p1}, Lcom/txdriver/ui/fragment/ArchiveFragment;->access$200(Lcom/txdriver/ui/fragment/ArchiveFragment;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p2

    invoke-static {p1, p2}, Lcom/txdriver/ui/fragment/ArchiveFragment;->access$102(Lcom/txdriver/ui/fragment/ArchiveFragment;I)I

    .line 108
    iget-object p1, p0, Lcom/txdriver/ui/fragment/ArchiveFragment$2;->this$0:Lcom/txdriver/ui/fragment/ArchiveFragment;

    invoke-static {p1}, Lcom/txdriver/ui/fragment/ArchiveFragment;->access$300(Lcom/txdriver/ui/fragment/ArchiveFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 109
    iget-object p1, p0, Lcom/txdriver/ui/fragment/ArchiveFragment$2;->this$0:Lcom/txdriver/ui/fragment/ArchiveFragment;

    invoke-static {p1}, Lcom/txdriver/ui/fragment/ArchiveFragment;->access$100(Lcom/txdriver/ui/fragment/ArchiveFragment;)I

    move-result p1

    iget-object p2, p0, Lcom/txdriver/ui/fragment/ArchiveFragment$2;->this$0:Lcom/txdriver/ui/fragment/ArchiveFragment;

    invoke-static {p2}, Lcom/txdriver/ui/fragment/ArchiveFragment;->access$400(Lcom/txdriver/ui/fragment/ArchiveFragment;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x5

    if-lt p1, p2, :cond_0

    iget-object p1, p0, Lcom/txdriver/ui/fragment/ArchiveFragment$2;->this$0:Lcom/txdriver/ui/fragment/ArchiveFragment;

    invoke-static {p1}, Lcom/txdriver/ui/fragment/ArchiveFragment;->access$500(Lcom/txdriver/ui/fragment/ArchiveFragment;)I

    move-result p1

    iget-object p2, p0, Lcom/txdriver/ui/fragment/ArchiveFragment$2;->this$0:Lcom/txdriver/ui/fragment/ArchiveFragment;

    invoke-static {p2}, Lcom/txdriver/ui/fragment/ArchiveFragment;->access$600(Lcom/txdriver/ui/fragment/ArchiveFragment;)I

    move-result p2

    if-gt p1, p2, :cond_0

    .line 110
    iget-object p1, p0, Lcom/txdriver/ui/fragment/ArchiveFragment$2;->this$0:Lcom/txdriver/ui/fragment/ArchiveFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/txdriver/ui/fragment/ArchiveFragment;->access$302(Lcom/txdriver/ui/fragment/ArchiveFragment;Z)Z

    .line 111
    iget-object p1, p0, Lcom/txdriver/ui/fragment/ArchiveFragment$2;->this$0:Lcom/txdriver/ui/fragment/ArchiveFragment;

    invoke-static {p1}, Lcom/txdriver/ui/fragment/ArchiveFragment;->access$700(Lcom/txdriver/ui/fragment/ArchiveFragment;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 112
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance p2, Lcom/txdriver/ui/fragment/ArchiveFragment$2$1;

    invoke-direct {p2, p0}, Lcom/txdriver/ui/fragment/ArchiveFragment$2$1;-><init>(Lcom/txdriver/ui/fragment/ArchiveFragment$2;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
