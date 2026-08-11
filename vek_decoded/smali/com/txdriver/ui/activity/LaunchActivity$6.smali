.class Lcom/txdriver/ui/activity/LaunchActivity$6;
.super Ljava/lang/Object;
.source "LaunchActivity.java"

# interfaces
.implements Lcom/txdriver/http/request/HttpRequest$OnResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/activity/LaunchActivity;->requestCities()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/txdriver/http/request/HttpRequest$OnResponseListener<",
        "[",
        "Lcom/txdriver/json/City;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/activity/LaunchActivity;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/activity/LaunchActivity;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/txdriver/ui/activity/LaunchActivity$6;->this$0:Lcom/txdriver/ui/activity/LaunchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/Exception;)V
    .locals 0

    .line 232
    iget-object p1, p0, Lcom/txdriver/ui/activity/LaunchActivity$6;->this$0:Lcom/txdriver/ui/activity/LaunchActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/LaunchActivity;->access$500(Lcom/txdriver/ui/activity/LaunchActivity;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 214
    check-cast p1, [Lcom/txdriver/json/City;

    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/LaunchActivity$6;->onResponse([Lcom/txdriver/json/City;)V

    return-void
.end method

.method public onResponse([Lcom/txdriver/json/City;)V
    .locals 1

    if-nez p1, :cond_0

    .line 218
    iget-object p1, p0, Lcom/txdriver/ui/activity/LaunchActivity$6;->this$0:Lcom/txdriver/ui/activity/LaunchActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/LaunchActivity;->access$500(Lcom/txdriver/ui/activity/LaunchActivity;)V

    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/txdriver/ui/activity/LaunchActivity$6;->this$0:Lcom/txdriver/ui/activity/LaunchActivity;

    invoke-static {v0}, Lcom/txdriver/ui/activity/LaunchActivity;->access$800(Lcom/txdriver/ui/activity/LaunchActivity;)Lcom/txdriver/ui/adapter/CityAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/txdriver/ui/adapter/CityAdapter;->setData([Lcom/txdriver/json/City;)V

    .line 222
    array-length p1, p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 223
    iget-object p1, p0, Lcom/txdriver/ui/activity/LaunchActivity$6;->this$0:Lcom/txdriver/ui/activity/LaunchActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/LaunchActivity;->access$200(Lcom/txdriver/ui/activity/LaunchActivity;)Landroid/widget/Spinner;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 225
    :cond_1
    iget-object p1, p0, Lcom/txdriver/ui/activity/LaunchActivity$6;->this$0:Lcom/txdriver/ui/activity/LaunchActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/LaunchActivity;->access$900(Lcom/txdriver/ui/activity/LaunchActivity;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 226
    iget-object p1, p0, Lcom/txdriver/ui/activity/LaunchActivity$6;->this$0:Lcom/txdriver/ui/activity/LaunchActivity;

    invoke-static {p1, v0}, Lcom/txdriver/ui/activity/LaunchActivity;->access$600(Lcom/txdriver/ui/activity/LaunchActivity;Z)V

    :cond_2
    return-void
.end method
