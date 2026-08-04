.class Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity$4;
.super Ljava/lang/Object;
.source "RegistrationAddCarActivity.java"

# interfaces
.implements Lcom/txdriver/http/request/HttpRequest$OnResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;->requestCompanyCarInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/txdriver/http/request/HttpRequest$OnResponseListener<",
        "Lcom/txdriver/json/CarInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity$4;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/Exception;)V
    .locals 2

    .line 154
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity$4;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;

    iget-object p1, p1, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;->app:Lcom/txdriver/App;

    const v0, 0x7f1001ff

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onResponse(Lcom/txdriver/json/CarInfo;)V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity$4;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;

    iget-object v1, p1, Lcom/txdriver/json/CarInfo;->carTypes:[Lcom/txdriver/json/CarType;

    invoke-static {v0, v1}, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;->access$502(Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;[Lcom/txdriver/json/CarType;)[Lcom/txdriver/json/CarType;

    .line 141
    iget-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity$4;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;

    iget-object v1, p1, Lcom/txdriver/json/CarInfo;->carModels:[Lcom/txdriver/json/CarModel;

    invoke-static {v0, v1}, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;->access$302(Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;[Lcom/txdriver/json/CarModel;)[Lcom/txdriver/json/CarModel;

    .line 142
    iget-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity$4;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;

    iget-object v1, p1, Lcom/txdriver/json/CarInfo;->carColors:[Lcom/txdriver/json/CarColor;

    invoke-static {v0, v1}, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;->access$102(Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;[Lcom/txdriver/json/CarColor;)[Lcom/txdriver/json/CarColor;

    if-nez p1, :cond_0

    .line 144
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity$4;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;

    iget-object p1, p1, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;->app:Lcom/txdriver/App;

    const v0, 0x7f100074

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 146
    :cond_0
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity$4;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;->access$600(Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;)Lcom/txdriver/ui/adapter/CarColorAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity$4;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;

    invoke-static {v0}, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;->access$100(Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;)[Lcom/txdriver/json/CarColor;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/txdriver/ui/adapter/CarColorAdapter;->setData([Lcom/txdriver/json/CarColor;)V

    .line 147
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity$4;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;->access$700(Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;)Lcom/txdriver/ui/adapter/CarModelAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity$4;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;

    invoke-static {v0}, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;->access$300(Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;)[Lcom/txdriver/json/CarModel;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/txdriver/ui/adapter/CarModelAdapter;->setData([Lcom/txdriver/json/CarModel;)V

    .line 148
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity$4;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;->access$800(Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;)Lcom/txdriver/ui/adapter/CarTypeAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity$4;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;

    invoke-static {v0}, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;->access$500(Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;)[Lcom/txdriver/json/CarType;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/txdriver/ui/adapter/CarTypeAdapter;->setData([Lcom/txdriver/json/CarType;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 137
    check-cast p1, Lcom/txdriver/json/CarInfo;

    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity$4;->onResponse(Lcom/txdriver/json/CarInfo;)V

    return-void
.end method
