.class Lcom/txdriver/ui/fragment/StoreItemsFragment$2;
.super Ljava/lang/Object;
.source "StoreItemsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/fragment/StoreItemsFragment;->buyItem(Lcom/txdriver/json/StoreItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/fragment/StoreItemsFragment;

.field final synthetic val$item:Lcom/txdriver/json/StoreItem;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/fragment/StoreItemsFragment;Lcom/txdriver/json/StoreItem;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/txdriver/ui/fragment/StoreItemsFragment$2;->this$0:Lcom/txdriver/ui/fragment/StoreItemsFragment;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/StoreItemsFragment$2;->val$item:Lcom/txdriver/json/StoreItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 126
    new-instance p1, Lcom/txdriver/http/request/StoreItemBuyRequest;

    iget-object p2, p0, Lcom/txdriver/ui/fragment/StoreItemsFragment$2;->this$0:Lcom/txdriver/ui/fragment/StoreItemsFragment;

    iget-object p2, p2, Lcom/txdriver/ui/fragment/StoreItemsFragment;->app:Lcom/txdriver/App;

    iget-object v0, p0, Lcom/txdriver/ui/fragment/StoreItemsFragment$2;->val$item:Lcom/txdriver/json/StoreItem;

    iget v0, v0, Lcom/txdriver/json/StoreItem;->itemId:I

    invoke-direct {p1, p2, v0}, Lcom/txdriver/http/request/StoreItemBuyRequest;-><init>(Lcom/txdriver/App;I)V

    .line 127
    iget-object p2, p0, Lcom/txdriver/ui/fragment/StoreItemsFragment$2;->this$0:Lcom/txdriver/ui/fragment/StoreItemsFragment;

    iget-object p2, p2, Lcom/txdriver/ui/fragment/StoreItemsFragment;->app:Lcom/txdriver/App;

    invoke-virtual {p2}, Lcom/txdriver/App;->getRequestManager()Lcom/txdriver/http/RequestManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/txdriver/http/RequestManager;->execute(Lcom/txdriver/http/request/HttpRequest;)V

    .line 128
    iget-object p1, p0, Lcom/txdriver/ui/fragment/StoreItemsFragment$2;->this$0:Lcom/txdriver/ui/fragment/StoreItemsFragment;

    invoke-virtual {p1}, Lcom/txdriver/ui/fragment/StoreItemsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    return-void
.end method
