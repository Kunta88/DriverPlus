.class Lcom/txdriver/ui/fragment/ArchiveFragment$3;
.super Ljava/lang/Object;
.source "ArchiveFragment.java"

# interfaces
.implements Lcom/txdriver/http/request/HttpRequest$OnResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/fragment/ArchiveFragment;->requestMoreData(I)V
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
        "Lcom/txdriver/json/ArchiveOrder;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/fragment/ArchiveFragment;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/fragment/ArchiveFragment;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/txdriver/ui/fragment/ArchiveFragment$3;->this$0:Lcom/txdriver/ui/fragment/ArchiveFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/Exception;)V
    .locals 2

    .line 148
    iget-object p1, p0, Lcom/txdriver/ui/fragment/ArchiveFragment$3;->this$0:Lcom/txdriver/ui/fragment/ArchiveFragment;

    iget-object p1, p1, Lcom/txdriver/ui/fragment/ArchiveFragment;->app:Lcom/txdriver/App;

    iget-object v0, p0, Lcom/txdriver/ui/fragment/ArchiveFragment$3;->this$0:Lcom/txdriver/ui/fragment/ArchiveFragment;

    const v1, 0x7f100264

    invoke-virtual {v0, v1}, Lcom/txdriver/ui/fragment/ArchiveFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/txdriver/utils/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 149
    iget-object p1, p0, Lcom/txdriver/ui/fragment/ArchiveFragment$3;->this$0:Lcom/txdriver/ui/fragment/ArchiveFragment;

    invoke-static {p1}, Lcom/txdriver/ui/fragment/ArchiveFragment;->access$700(Lcom/txdriver/ui/fragment/ArchiveFragment;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 150
    iget-object p1, p0, Lcom/txdriver/ui/fragment/ArchiveFragment$3;->this$0:Lcom/txdriver/ui/fragment/ArchiveFragment;

    invoke-static {p1}, Lcom/txdriver/ui/fragment/ArchiveFragment;->access$1000(Lcom/txdriver/ui/fragment/ArchiveFragment;)Landroid/widget/TextView;

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
            "Lcom/txdriver/json/ArchiveOrder;",
            ">;)V"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/txdriver/ui/fragment/ArchiveFragment$3;->this$0:Lcom/txdriver/ui/fragment/ArchiveFragment;

    invoke-static {v0}, Lcom/txdriver/ui/fragment/ArchiveFragment;->access$700(Lcom/txdriver/ui/fragment/ArchiveFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    if-eqz p1, :cond_0

    .line 142
    iget-object v0, p0, Lcom/txdriver/ui/fragment/ArchiveFragment$3;->this$0:Lcom/txdriver/ui/fragment/ArchiveFragment;

    invoke-static {v0, p1}, Lcom/txdriver/ui/fragment/ArchiveFragment;->access$900(Lcom/txdriver/ui/fragment/ArchiveFragment;Lcom/txdriver/json/Response;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 137
    check-cast p1, Lcom/txdriver/json/Response;

    invoke-virtual {p0, p1}, Lcom/txdriver/ui/fragment/ArchiveFragment$3;->onResponse(Lcom/txdriver/json/Response;)V

    return-void
.end method
