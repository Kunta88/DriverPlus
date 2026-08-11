.class Lcom/txdriver/ui/fragment/StoreArchiveFragment$2;
.super Ljava/lang/Object;
.source "StoreArchiveFragment.java"

# interfaces
.implements Lcom/txdriver/http/request/HttpRequest$OnResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/fragment/StoreArchiveFragment;->requestMoreData(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/txdriver/http/request/HttpRequest$OnResponseListener<",
        "Lcom/txdriver/json/Response<",
        "Lcom/txdriver/json/StoreItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/fragment/StoreArchiveFragment;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/fragment/StoreArchiveFragment;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/txdriver/ui/fragment/StoreArchiveFragment$2;->this$0:Lcom/txdriver/ui/fragment/StoreArchiveFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/Exception;)V
    .locals 2

    .line 138
    iget-object p1, p0, Lcom/txdriver/ui/fragment/StoreArchiveFragment$2;->this$0:Lcom/txdriver/ui/fragment/StoreArchiveFragment;

    iget-object p1, p1, Lcom/txdriver/ui/fragment/StoreArchiveFragment;->app:Lcom/txdriver/App;

    iget-object v0, p0, Lcom/txdriver/ui/fragment/StoreArchiveFragment$2;->this$0:Lcom/txdriver/ui/fragment/StoreArchiveFragment;

    const v1, 0x7f100264

    invoke-virtual {v0, v1}, Lcom/txdriver/ui/fragment/StoreArchiveFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/txdriver/utils/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 139
    iget-object p1, p0, Lcom/txdriver/ui/fragment/StoreArchiveFragment$2;->this$0:Lcom/txdriver/ui/fragment/StoreArchiveFragment;

    invoke-static {p1}, Lcom/txdriver/ui/fragment/StoreArchiveFragment;->access$600(Lcom/txdriver/ui/fragment/StoreArchiveFragment;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 140
    iget-object p1, p0, Lcom/txdriver/ui/fragment/StoreArchiveFragment$2;->this$0:Lcom/txdriver/ui/fragment/StoreArchiveFragment;

    invoke-static {p1}, Lcom/txdriver/ui/fragment/StoreArchiveFragment;->access$900(Lcom/txdriver/ui/fragment/StoreArchiveFragment;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public onResponse(Lcom/txdriver/json/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/txdriver/json/Response<",
            "Lcom/txdriver/json/StoreItem;",
            ">;)V"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/txdriver/ui/fragment/StoreArchiveFragment$2;->this$0:Lcom/txdriver/ui/fragment/StoreArchiveFragment;

    invoke-static {v0}, Lcom/txdriver/ui/fragment/StoreArchiveFragment;->access$600(Lcom/txdriver/ui/fragment/StoreArchiveFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    if-eqz p1, :cond_0

    .line 132
    iget-object v0, p0, Lcom/txdriver/ui/fragment/StoreArchiveFragment$2;->this$0:Lcom/txdriver/ui/fragment/StoreArchiveFragment;

    invoke-static {v0, p1}, Lcom/txdriver/ui/fragment/StoreArchiveFragment;->access$800(Lcom/txdriver/ui/fragment/StoreArchiveFragment;Lcom/txdriver/json/Response;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 127
    check-cast p1, Lcom/txdriver/json/Response;

    invoke-virtual {p0, p1}, Lcom/txdriver/ui/fragment/StoreArchiveFragment$2;->onResponse(Lcom/txdriver/json/Response;)V

    return-void
.end method
