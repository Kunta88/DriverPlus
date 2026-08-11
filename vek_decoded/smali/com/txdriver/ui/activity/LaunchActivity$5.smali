.class Lcom/txdriver/ui/activity/LaunchActivity$5;
.super Ljava/lang/Object;
.source "LaunchActivity.java"

# interfaces
.implements Lcom/txdriver/http/request/HttpRequest$OnResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/activity/LaunchActivity;->requestCompanies(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/txdriver/http/request/HttpRequest$OnResponseListener<",
        "Lcom/txdriver/json/CompaniesBatch;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/activity/LaunchActivity;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/activity/LaunchActivity;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/txdriver/ui/activity/LaunchActivity$5;->this$0:Lcom/txdriver/ui/activity/LaunchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/Exception;)V
    .locals 0

    .line 185
    iget-object p1, p0, Lcom/txdriver/ui/activity/LaunchActivity$5;->this$0:Lcom/txdriver/ui/activity/LaunchActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/LaunchActivity;->access$500(Lcom/txdriver/ui/activity/LaunchActivity;)V

    return-void
.end method

.method public onResponse(Lcom/txdriver/json/CompaniesBatch;)V
    .locals 3

    if-nez p1, :cond_0

    .line 172
    iget-object p1, p0, Lcom/txdriver/ui/activity/LaunchActivity$5;->this$0:Lcom/txdriver/ui/activity/LaunchActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/LaunchActivity;->access$500(Lcom/txdriver/ui/activity/LaunchActivity;)V

    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/txdriver/ui/activity/LaunchActivity$5;->this$0:Lcom/txdriver/ui/activity/LaunchActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/txdriver/ui/activity/LaunchActivity;->access$600(Lcom/txdriver/ui/activity/LaunchActivity;Z)V

    .line 176
    iget-object v0, p0, Lcom/txdriver/ui/activity/LaunchActivity$5;->this$0:Lcom/txdriver/ui/activity/LaunchActivity;

    invoke-static {v0}, Lcom/txdriver/ui/activity/LaunchActivity;->access$700(Lcom/txdriver/ui/activity/LaunchActivity;)Lcom/txdriver/ui/adapter/CompanyAdapter;

    move-result-object v0

    iget-object v2, p1, Lcom/txdriver/json/CompaniesBatch;->companies:[Lcom/txdriver/json/Company;

    invoke-virtual {v0, v2}, Lcom/txdriver/ui/adapter/CompanyAdapter;->setData([Lcom/txdriver/json/Company;)V

    .line 177
    iget-object v0, p0, Lcom/txdriver/ui/activity/LaunchActivity$5;->this$0:Lcom/txdriver/ui/activity/LaunchActivity;

    invoke-static {v0}, Lcom/txdriver/ui/activity/LaunchActivity;->access$100(Lcom/txdriver/ui/activity/LaunchActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 178
    iget-object p1, p1, Lcom/txdriver/json/CompaniesBatch;->companies:[Lcom/txdriver/json/Company;

    array-length p1, p1

    if-ne p1, v1, :cond_1

    .line 179
    iget-object p1, p0, Lcom/txdriver/ui/activity/LaunchActivity$5;->this$0:Lcom/txdriver/ui/activity/LaunchActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/LaunchActivity;->access$300(Lcom/txdriver/ui/activity/LaunchActivity;)Landroid/widget/Spinner;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 168
    check-cast p1, Lcom/txdriver/json/CompaniesBatch;

    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/LaunchActivity$5;->onResponse(Lcom/txdriver/json/CompaniesBatch;)V

    return-void
.end method
