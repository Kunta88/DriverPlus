.class Lcom/txdriver/ui/fragment/NewslettersFragment$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "NewslettersFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/fragment/NewslettersFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/fragment/NewslettersFragment;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/fragment/NewslettersFragment;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/txdriver/ui/fragment/NewslettersFragment$2;->this$0:Lcom/txdriver/ui/fragment/NewslettersFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    if-lez p3, :cond_0

    .line 102
    iget-object p1, p0, Lcom/txdriver/ui/fragment/NewslettersFragment$2;->this$0:Lcom/txdriver/ui/fragment/NewslettersFragment;

    invoke-static {p1}, Lcom/txdriver/ui/fragment/NewslettersFragment;->access$100(Lcom/txdriver/ui/fragment/NewslettersFragment;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p2

    invoke-static {p1, p2}, Lcom/txdriver/ui/fragment/NewslettersFragment;->access$002(Lcom/txdriver/ui/fragment/NewslettersFragment;I)I

    .line 103
    iget-object p1, p0, Lcom/txdriver/ui/fragment/NewslettersFragment$2;->this$0:Lcom/txdriver/ui/fragment/NewslettersFragment;

    invoke-static {p1}, Lcom/txdriver/ui/fragment/NewslettersFragment;->access$200(Lcom/txdriver/ui/fragment/NewslettersFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 104
    iget-object p1, p0, Lcom/txdriver/ui/fragment/NewslettersFragment$2;->this$0:Lcom/txdriver/ui/fragment/NewslettersFragment;

    invoke-static {p1}, Lcom/txdriver/ui/fragment/NewslettersFragment;->access$000(Lcom/txdriver/ui/fragment/NewslettersFragment;)I

    move-result p1

    iget-object p2, p0, Lcom/txdriver/ui/fragment/NewslettersFragment$2;->this$0:Lcom/txdriver/ui/fragment/NewslettersFragment;

    invoke-static {p2}, Lcom/txdriver/ui/fragment/NewslettersFragment;->access$300(Lcom/txdriver/ui/fragment/NewslettersFragment;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x5

    if-lt p1, p2, :cond_0

    iget-object p1, p0, Lcom/txdriver/ui/fragment/NewslettersFragment$2;->this$0:Lcom/txdriver/ui/fragment/NewslettersFragment;

    invoke-static {p1}, Lcom/txdriver/ui/fragment/NewslettersFragment;->access$400(Lcom/txdriver/ui/fragment/NewslettersFragment;)I

    move-result p1

    iget-object p2, p0, Lcom/txdriver/ui/fragment/NewslettersFragment$2;->this$0:Lcom/txdriver/ui/fragment/NewslettersFragment;

    invoke-static {p2}, Lcom/txdriver/ui/fragment/NewslettersFragment;->access$500(Lcom/txdriver/ui/fragment/NewslettersFragment;)I

    move-result p2

    if-gt p1, p2, :cond_0

    .line 105
    iget-object p1, p0, Lcom/txdriver/ui/fragment/NewslettersFragment$2;->this$0:Lcom/txdriver/ui/fragment/NewslettersFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/txdriver/ui/fragment/NewslettersFragment;->access$202(Lcom/txdriver/ui/fragment/NewslettersFragment;Z)Z

    .line 106
    iget-object p1, p0, Lcom/txdriver/ui/fragment/NewslettersFragment$2;->this$0:Lcom/txdriver/ui/fragment/NewslettersFragment;

    invoke-static {p1}, Lcom/txdriver/ui/fragment/NewslettersFragment;->access$600(Lcom/txdriver/ui/fragment/NewslettersFragment;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 107
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance p2, Lcom/txdriver/ui/fragment/NewslettersFragment$2$1;

    invoke-direct {p2, p0}, Lcom/txdriver/ui/fragment/NewslettersFragment$2$1;-><init>(Lcom/txdriver/ui/fragment/NewslettersFragment$2;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
