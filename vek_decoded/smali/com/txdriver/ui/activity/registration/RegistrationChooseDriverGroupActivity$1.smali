.class Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity$1;
.super Ljava/lang/Object;
.source "RegistrationChooseDriverGroupActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity$1;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 66
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity$1;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;->access$100(Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;)[Lcom/txdriver/json/DriverGroup;

    move-result-object p2

    aget-object p2, p2, p3

    invoke-virtual {p2}, Lcom/txdriver/json/DriverGroup;->getDriverGroupId()I

    move-result p2

    invoke-static {p1, p2}, Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;->access$002(Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;I)I

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
