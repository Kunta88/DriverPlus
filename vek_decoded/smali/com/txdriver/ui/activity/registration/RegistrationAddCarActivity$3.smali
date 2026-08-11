.class Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity$3;
.super Ljava/lang/Object;
.source "RegistrationAddCarActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity$3;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;

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

    .line 106
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity$3;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;->access$500(Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;)[Lcom/txdriver/json/CarType;

    move-result-object p2

    aget-object p2, p2, p3

    invoke-virtual {p2}, Lcom/txdriver/json/CarType;->getId()I

    move-result p2

    invoke-static {p1, p2}, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;->access$402(Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;I)I

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
