.class Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity$2;
.super Ljava/lang/Object;
.source "RegistrationChooseDriverGroupActivity.java"

# interfaces
.implements Lcom/txdriver/http/request/HttpRequest$OnResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;->requestDriverGroupsAndRate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/txdriver/http/request/HttpRequest$OnResponseListener<",
        "Lcom/txdriver/json/DriverGroupResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity$2;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public onResponse(Lcom/txdriver/json/DriverGroupResponse;)V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity$2;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;

    iget-object v1, p1, Lcom/txdriver/json/DriverGroupResponse;->driverGroups:[Lcom/txdriver/json/DriverGroup;

    invoke-static {v0, v1}, Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;->access$102(Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;[Lcom/txdriver/json/DriverGroup;)[Lcom/txdriver/json/DriverGroup;

    .line 82
    iget-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity$2;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;

    iget-object v1, p1, Lcom/txdriver/json/DriverGroupResponse;->driverRate:Lcom/txdriver/json/DriverRate;

    invoke-virtual {v1}, Lcom/txdriver/json/DriverRate;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;->access$202(Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;I)I

    if-nez p1, :cond_0

    .line 84
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity$2;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;

    iget-object p1, p1, Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;->app:Lcom/txdriver/App;

    const v0, 0x7f100074

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 86
    :cond_0
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity$2;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;->access$300(Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;)Lcom/txdriver/ui/adapter/DriverGroupAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity$2;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;

    invoke-static {v0}, Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;->access$100(Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;)[Lcom/txdriver/json/DriverGroup;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/txdriver/ui/adapter/DriverGroupAdapter;->setData([Lcom/txdriver/json/DriverGroup;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 78
    check-cast p1, Lcom/txdriver/json/DriverGroupResponse;

    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity$2;->onResponse(Lcom/txdriver/json/DriverGroupResponse;)V

    return-void
.end method
