.class Lcom/txdriver/ui/fragment/NewslettersFragment$3;
.super Ljava/lang/Object;
.source "NewslettersFragment.java"

# interfaces
.implements Lcom/txdriver/http/request/HttpRequest$OnResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/fragment/NewslettersFragment;->requestMoreData(I)V
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
        "Lcom/txdriver/json/Newsletter;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/fragment/NewslettersFragment;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/fragment/NewslettersFragment;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/txdriver/ui/fragment/NewslettersFragment$3;->this$0:Lcom/txdriver/ui/fragment/NewslettersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/Exception;)V
    .locals 2

    .line 168
    iget-object p1, p0, Lcom/txdriver/ui/fragment/NewslettersFragment$3;->this$0:Lcom/txdriver/ui/fragment/NewslettersFragment;

    iget-object p1, p1, Lcom/txdriver/ui/fragment/NewslettersFragment;->app:Lcom/txdriver/App;

    iget-object v0, p0, Lcom/txdriver/ui/fragment/NewslettersFragment$3;->this$0:Lcom/txdriver/ui/fragment/NewslettersFragment;

    const v1, 0x7f100264

    invoke-virtual {v0, v1}, Lcom/txdriver/ui/fragment/NewslettersFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/txdriver/utils/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 169
    iget-object p1, p0, Lcom/txdriver/ui/fragment/NewslettersFragment$3;->this$0:Lcom/txdriver/ui/fragment/NewslettersFragment;

    invoke-virtual {p1}, Lcom/txdriver/ui/fragment/NewslettersFragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 170
    iget-object p1, p0, Lcom/txdriver/ui/fragment/NewslettersFragment$3;->this$0:Lcom/txdriver/ui/fragment/NewslettersFragment;

    invoke-virtual {p1}, Lcom/txdriver/ui/fragment/NewslettersFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onResponse(Lcom/txdriver/json/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/txdriver/json/Response<",
            "Lcom/txdriver/json/Newsletter;",
            ">;)V"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/txdriver/ui/fragment/NewslettersFragment$3;->this$0:Lcom/txdriver/ui/fragment/NewslettersFragment;

    invoke-static {v0}, Lcom/txdriver/ui/fragment/NewslettersFragment;->access$600(Lcom/txdriver/ui/fragment/NewslettersFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    if-eqz p1, :cond_0

    .line 161
    iget-object v0, p1, Lcom/txdriver/json/Response;->objects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/txdriver/ui/fragment/NewslettersFragment$3;->this$0:Lcom/txdriver/ui/fragment/NewslettersFragment;

    invoke-static {v0, p1}, Lcom/txdriver/ui/fragment/NewslettersFragment;->access$800(Lcom/txdriver/ui/fragment/NewslettersFragment;Lcom/txdriver/json/Response;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 157
    check-cast p1, Lcom/txdriver/json/Response;

    invoke-virtual {p0, p1}, Lcom/txdriver/ui/fragment/NewslettersFragment$3;->onResponse(Lcom/txdriver/json/Response;)V

    return-void
.end method
