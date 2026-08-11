.class Lcom/txdriver/ui/fragment/StoreArchiveFragment$1$1;
.super Ljava/lang/Object;
.source "StoreArchiveFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/fragment/StoreArchiveFragment$1;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/txdriver/ui/fragment/StoreArchiveFragment$1;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/fragment/StoreArchiveFragment$1;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/txdriver/ui/fragment/StoreArchiveFragment$1$1;->this$1:Lcom/txdriver/ui/fragment/StoreArchiveFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/txdriver/ui/fragment/StoreArchiveFragment$1$1;->this$1:Lcom/txdriver/ui/fragment/StoreArchiveFragment$1;

    iget-object v0, v0, Lcom/txdriver/ui/fragment/StoreArchiveFragment$1;->this$0:Lcom/txdriver/ui/fragment/StoreArchiveFragment;

    iget-object v1, p0, Lcom/txdriver/ui/fragment/StoreArchiveFragment$1$1;->this$1:Lcom/txdriver/ui/fragment/StoreArchiveFragment$1;

    iget-object v1, v1, Lcom/txdriver/ui/fragment/StoreArchiveFragment$1;->this$0:Lcom/txdriver/ui/fragment/StoreArchiveFragment;

    invoke-static {v1}, Lcom/txdriver/ui/fragment/StoreArchiveFragment;->access$400(Lcom/txdriver/ui/fragment/StoreArchiveFragment;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/txdriver/ui/fragment/StoreArchiveFragment;->access$700(Lcom/txdriver/ui/fragment/StoreArchiveFragment;I)V

    return-void
.end method
