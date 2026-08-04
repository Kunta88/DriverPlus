.class Lcom/txdriver/ui/fragment/ArchiveFragment$1;
.super Ljava/lang/Object;
.source "ArchiveFragment.java"

# interfaces
.implements Lcom/txdriver/ui/adapter/ArchiveAdapter$OnArchiveOrderClickListener;


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

    .line 96
    iput-object p1, p0, Lcom/txdriver/ui/fragment/ArchiveFragment$1;->this$0:Lcom/txdriver/ui/fragment/ArchiveFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onArchiveOrderClick(Lcom/txdriver/json/ArchiveOrder;)V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/txdriver/ui/fragment/ArchiveFragment$1;->this$0:Lcom/txdriver/ui/fragment/ArchiveFragment;

    invoke-static {v0, p1}, Lcom/txdriver/ui/fragment/ArchiveFragment;->access$000(Lcom/txdriver/ui/fragment/ArchiveFragment;Lcom/txdriver/json/ArchiveOrder;)V

    return-void
.end method
