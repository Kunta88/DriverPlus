.class Lcom/txdriver/ui/fragment/StoreItemsFragment$1;
.super Ljava/lang/Object;
.source "StoreItemsFragment.java"

# interfaces
.implements Lcom/txdriver/ui/adapter/StoreItemsAdapter$OnStoreItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/fragment/StoreItemsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/fragment/StoreItemsFragment;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/fragment/StoreItemsFragment;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/txdriver/ui/fragment/StoreItemsFragment$1;->this$0:Lcom/txdriver/ui/fragment/StoreItemsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStoreItemClick(Lcom/txdriver/json/StoreItem;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/txdriver/ui/fragment/StoreItemsFragment$1;->this$0:Lcom/txdriver/ui/fragment/StoreItemsFragment;

    invoke-static {v0, p1}, Lcom/txdriver/ui/fragment/StoreItemsFragment;->access$000(Lcom/txdriver/ui/fragment/StoreItemsFragment;Lcom/txdriver/json/StoreItem;)V

    return-void
.end method
