.class Lcom/txdriver/ui/activity/registration/RegistrationAddDriverLicenceActivity$2;
.super Ljava/lang/Object;
.source "RegistrationAddDriverLicenceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/ui/activity/registration/RegistrationAddDriverLicenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddDriverLicenceActivity;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/activity/registration/RegistrationAddDriverLicenceActivity;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddDriverLicenceActivity$2;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddDriverLicenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 79
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddDriverLicenceActivity$2;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddDriverLicenceActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/registration/RegistrationAddDriverLicenceActivity;->access$100(Lcom/txdriver/ui/activity/registration/RegistrationAddDriverLicenceActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 80
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddDriverLicenceActivity$2;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddDriverLicenceActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/registration/RegistrationAddDriverLicenceActivity;->access$000(Lcom/txdriver/ui/activity/registration/RegistrationAddDriverLicenceActivity;)Landroid/widget/Button;

    move-result-object p1

    const v0, 0x7f1001e1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 81
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddDriverLicenceActivity$2;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddDriverLicenceActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/registration/RegistrationAddDriverLicenceActivity;->access$200(Lcom/txdriver/ui/activity/registration/RegistrationAddDriverLicenceActivity;)V

    :cond_0
    return-void
.end method
