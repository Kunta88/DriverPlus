.class Lcom/txdriver/ui/fragment/RatingFragment$3;
.super Ljava/lang/Object;
.source "RatingFragment.java"

# interfaces
.implements Lcom/txdriver/http/request/HttpRequest$OnResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/fragment/RatingFragment;->requestMoreData(I)V
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
        "Lcom/txdriver/json/Rating;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/fragment/RatingFragment;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/fragment/RatingFragment;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/txdriver/ui/fragment/RatingFragment$3;->this$0:Lcom/txdriver/ui/fragment/RatingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/Exception;)V
    .locals 2

    .line 141
    iget-object p1, p0, Lcom/txdriver/ui/fragment/RatingFragment$3;->this$0:Lcom/txdriver/ui/fragment/RatingFragment;

    iget-object p1, p1, Lcom/txdriver/ui/fragment/RatingFragment;->app:Lcom/txdriver/App;

    iget-object v0, p0, Lcom/txdriver/ui/fragment/RatingFragment$3;->this$0:Lcom/txdriver/ui/fragment/RatingFragment;

    const v1, 0x7f100264

    invoke-virtual {v0, v1}, Lcom/txdriver/ui/fragment/RatingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/txdriver/utils/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Lcom/txdriver/json/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/txdriver/json/Response<",
            "Lcom/txdriver/json/Rating;",
            ">;)V"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/txdriver/ui/fragment/RatingFragment$3;->this$0:Lcom/txdriver/ui/fragment/RatingFragment;

    invoke-static {v0}, Lcom/txdriver/ui/fragment/RatingFragment;->access$600(Lcom/txdriver/ui/fragment/RatingFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    if-eqz p1, :cond_0

    .line 135
    iget-object v0, p0, Lcom/txdriver/ui/fragment/RatingFragment$3;->this$0:Lcom/txdriver/ui/fragment/RatingFragment;

    invoke-static {v0, p1}, Lcom/txdriver/ui/fragment/RatingFragment;->access$800(Lcom/txdriver/ui/fragment/RatingFragment;Lcom/txdriver/json/Response;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 130
    check-cast p1, Lcom/txdriver/json/Response;

    invoke-virtual {p0, p1}, Lcom/txdriver/ui/fragment/RatingFragment$3;->onResponse(Lcom/txdriver/json/Response;)V

    return-void
.end method
