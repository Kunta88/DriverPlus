.class Lcom/txdriver/ui/adapter/ArchiveAdapter$ArchiveOrderViewHolder$1;
.super Ljava/lang/Object;
.source "ArchiveAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/adapter/ArchiveAdapter$ArchiveOrderViewHolder;-><init>(Lcom/txdriver/ui/adapter/ArchiveAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/txdriver/ui/adapter/ArchiveAdapter$ArchiveOrderViewHolder;

.field final synthetic val$this$0:Lcom/txdriver/ui/adapter/ArchiveAdapter;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/adapter/ArchiveAdapter$ArchiveOrderViewHolder;Lcom/txdriver/ui/adapter/ArchiveAdapter;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/txdriver/ui/adapter/ArchiveAdapter$ArchiveOrderViewHolder$1;->this$1:Lcom/txdriver/ui/adapter/ArchiveAdapter$ArchiveOrderViewHolder;

    iput-object p2, p0, Lcom/txdriver/ui/adapter/ArchiveAdapter$ArchiveOrderViewHolder$1;->val$this$0:Lcom/txdriver/ui/adapter/ArchiveAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 99
    iget-object p1, p0, Lcom/txdriver/ui/adapter/ArchiveAdapter$ArchiveOrderViewHolder$1;->this$1:Lcom/txdriver/ui/adapter/ArchiveAdapter$ArchiveOrderViewHolder;

    iget-object p1, p1, Lcom/txdriver/ui/adapter/ArchiveAdapter$ArchiveOrderViewHolder;->this$0:Lcom/txdriver/ui/adapter/ArchiveAdapter;

    invoke-static {p1}, Lcom/txdriver/ui/adapter/ArchiveAdapter;->access$000(Lcom/txdriver/ui/adapter/ArchiveAdapter;)Lcom/txdriver/ui/adapter/ArchiveAdapter$OnArchiveOrderClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 100
    iget-object p1, p0, Lcom/txdriver/ui/adapter/ArchiveAdapter$ArchiveOrderViewHolder$1;->this$1:Lcom/txdriver/ui/adapter/ArchiveAdapter$ArchiveOrderViewHolder;

    iget-object p1, p1, Lcom/txdriver/ui/adapter/ArchiveAdapter$ArchiveOrderViewHolder;->this$0:Lcom/txdriver/ui/adapter/ArchiveAdapter;

    invoke-static {p1}, Lcom/txdriver/ui/adapter/ArchiveAdapter;->access$000(Lcom/txdriver/ui/adapter/ArchiveAdapter;)Lcom/txdriver/ui/adapter/ArchiveAdapter$OnArchiveOrderClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/txdriver/ui/adapter/ArchiveAdapter$ArchiveOrderViewHolder$1;->this$1:Lcom/txdriver/ui/adapter/ArchiveAdapter$ArchiveOrderViewHolder;

    iget-object v0, v0, Lcom/txdriver/ui/adapter/ArchiveAdapter$ArchiveOrderViewHolder;->this$0:Lcom/txdriver/ui/adapter/ArchiveAdapter;

    invoke-static {v0}, Lcom/txdriver/ui/adapter/ArchiveAdapter;->access$100(Lcom/txdriver/ui/adapter/ArchiveAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/txdriver/ui/adapter/ArchiveAdapter$ArchiveOrderViewHolder$1;->this$1:Lcom/txdriver/ui/adapter/ArchiveAdapter$ArchiveOrderViewHolder;

    invoke-virtual {v1}, Lcom/txdriver/ui/adapter/ArchiveAdapter$ArchiveOrderViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/txdriver/json/ArchiveOrder;

    invoke-interface {p1, v0}, Lcom/txdriver/ui/adapter/ArchiveAdapter$OnArchiveOrderClickListener;->onArchiveOrderClick(Lcom/txdriver/json/ArchiveOrder;)V

    :cond_0
    return-void
.end method
