.class Lcom/txdriver/ui/activity/LaunchActivity$7;
.super Ljava/lang/Object;
.source "LaunchActivity.java"

# interfaces
.implements Lcom/txdriver/http/request/HttpRequest$OnResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/activity/LaunchActivity;->requestCompanies(Landroid/location/Location;)V
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

    .line 274
    iput-object p1, p0, Lcom/txdriver/ui/activity/LaunchActivity$7;->this$0:Lcom/txdriver/ui/activity/LaunchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/Exception;)V
    .locals 1

    .line 297
    iget-object p1, p0, Lcom/txdriver/ui/activity/LaunchActivity$7;->this$0:Lcom/txdriver/ui/activity/LaunchActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/txdriver/ui/activity/LaunchActivity;->access$600(Lcom/txdriver/ui/activity/LaunchActivity;Z)V

    return-void
.end method

.method public onResponse(Lcom/txdriver/json/CompaniesBatch;)V
    .locals 4

    .line 277
    iget-object v0, p0, Lcom/txdriver/ui/activity/LaunchActivity$7;->this$0:Lcom/txdriver/ui/activity/LaunchActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/txdriver/ui/activity/LaunchActivity;->access$600(Lcom/txdriver/ui/activity/LaunchActivity;Z)V

    if-eqz p1, :cond_3

    .line 278
    iget-object v0, p1, Lcom/txdriver/json/CompaniesBatch;->companies:[Lcom/txdriver/json/Company;

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/txdriver/ui/activity/LaunchActivity$7;->this$0:Lcom/txdriver/ui/activity/LaunchActivity;

    invoke-static {v0}, Lcom/txdriver/ui/activity/LaunchActivity;->access$700(Lcom/txdriver/ui/activity/LaunchActivity;)Lcom/txdriver/ui/adapter/CompanyAdapter;

    move-result-object v0

    iget-object v2, p1, Lcom/txdriver/json/CompaniesBatch;->companies:[Lcom/txdriver/json/Company;

    invoke-virtual {v0, v2}, Lcom/txdriver/ui/adapter/CompanyAdapter;->setData([Lcom/txdriver/json/Company;)V

    .line 282
    iget-object v0, p1, Lcom/txdriver/json/CompaniesBatch;->companies:[Lcom/txdriver/json/Company;

    array-length v0, v0

    if-ne v0, v1, :cond_1

    .line 283
    iget-object v0, p0, Lcom/txdriver/ui/activity/LaunchActivity$7;->this$0:Lcom/txdriver/ui/activity/LaunchActivity;

    invoke-static {v0}, Lcom/txdriver/ui/activity/LaunchActivity;->access$300(Lcom/txdriver/ui/activity/LaunchActivity;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/txdriver/ui/activity/LaunchActivity$7;->this$0:Lcom/txdriver/ui/activity/LaunchActivity;

    invoke-static {v0}, Lcom/txdriver/ui/activity/LaunchActivity;->access$800(Lcom/txdriver/ui/activity/LaunchActivity;)Lcom/txdriver/ui/adapter/CityAdapter;

    move-result-object v0

    iget-object v2, p1, Lcom/txdriver/json/CompaniesBatch;->city:Lcom/txdriver/json/City;

    invoke-virtual {v0, v2}, Lcom/txdriver/ui/adapter/CityAdapter;->getPosition(Lcom/txdriver/json/City;)I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_2

    .line 287
    iget-object v0, p0, Lcom/txdriver/ui/activity/LaunchActivity$7;->this$0:Lcom/txdriver/ui/activity/LaunchActivity;

    invoke-static {v0}, Lcom/txdriver/ui/activity/LaunchActivity;->access$800(Lcom/txdriver/ui/activity/LaunchActivity;)Lcom/txdriver/ui/adapter/CityAdapter;

    move-result-object v0

    new-array v2, v1, [Lcom/txdriver/json/City;

    iget-object p1, p1, Lcom/txdriver/json/CompaniesBatch;->city:Lcom/txdriver/json/City;

    aput-object p1, v2, v3

    invoke-virtual {v0, v2}, Lcom/txdriver/ui/adapter/CityAdapter;->setData([Lcom/txdriver/json/City;)V

    .line 288
    iget-object p1, p0, Lcom/txdriver/ui/activity/LaunchActivity$7;->this$0:Lcom/txdriver/ui/activity/LaunchActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/LaunchActivity;->access$200(Lcom/txdriver/ui/activity/LaunchActivity;)Landroid/widget/Spinner;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 290
    :cond_2
    iget-object p1, p0, Lcom/txdriver/ui/activity/LaunchActivity$7;->this$0:Lcom/txdriver/ui/activity/LaunchActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/LaunchActivity;->access$200(Lcom/txdriver/ui/activity/LaunchActivity;)Landroid/widget/Spinner;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 292
    :goto_0
    iget-object p1, p0, Lcom/txdriver/ui/activity/LaunchActivity$7;->this$0:Lcom/txdriver/ui/activity/LaunchActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/LaunchActivity;->access$100(Lcom/txdriver/ui/activity/LaunchActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 274
    check-cast p1, Lcom/txdriver/json/CompaniesBatch;

    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/LaunchActivity$7;->onResponse(Lcom/txdriver/json/CompaniesBatch;)V

    return-void
.end method
