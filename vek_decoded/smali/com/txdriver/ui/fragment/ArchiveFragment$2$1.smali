.class Lcom/txdriver/ui/fragment/ArchiveFragment$2$1;
.super Ljava/lang/Object;
.source "ArchiveFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/fragment/ArchiveFragment$2;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/txdriver/ui/fragment/ArchiveFragment$2;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/fragment/ArchiveFragment$2;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/txdriver/ui/fragment/ArchiveFragment$2$1;->this$1:Lcom/txdriver/ui/fragment/ArchiveFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/txdriver/ui/fragment/ArchiveFragment$2$1;->this$1:Lcom/txdriver/ui/fragment/ArchiveFragment$2;

    iget-object v0, v0, Lcom/txdriver/ui/fragment/ArchiveFragment$2;->this$0:Lcom/txdriver/ui/fragment/ArchiveFragment;

    iget-object v1, p0, Lcom/txdriver/ui/fragment/ArchiveFragment$2$1;->this$1:Lcom/txdriver/ui/fragment/ArchiveFragment$2;

    iget-object v1, v1, Lcom/txdriver/ui/fragment/ArchiveFragment$2;->this$0:Lcom/txdriver/ui/fragment/ArchiveFragment;

    invoke-static {v1}, Lcom/txdriver/ui/fragment/ArchiveFragment;->access$500(Lcom/txdriver/ui/fragment/ArchiveFragment;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/txdriver/ui/fragment/ArchiveFragment;->access$800(Lcom/txdriver/ui/fragment/ArchiveFragment;I)V

    return-void
.end method
