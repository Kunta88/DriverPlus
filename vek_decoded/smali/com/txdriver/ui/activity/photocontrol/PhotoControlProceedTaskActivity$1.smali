.class Lcom/txdriver/ui/activity/photocontrol/PhotoControlProceedTaskActivity$1;
.super Ljava/lang/Object;
.source "PhotoControlProceedTaskActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/activity/photocontrol/PhotoControlProceedTaskActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/activity/photocontrol/PhotoControlProceedTaskActivity;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/activity/photocontrol/PhotoControlProceedTaskActivity;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/txdriver/ui/activity/photocontrol/PhotoControlProceedTaskActivity$1;->this$0:Lcom/txdriver/ui/activity/photocontrol/PhotoControlProceedTaskActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 49
    iget-object p1, p0, Lcom/txdriver/ui/activity/photocontrol/PhotoControlProceedTaskActivity$1;->this$0:Lcom/txdriver/ui/activity/photocontrol/PhotoControlProceedTaskActivity;

    invoke-virtual {p1}, Lcom/txdriver/ui/activity/photocontrol/PhotoControlProceedTaskActivity;->onBackPressed()V

    return-void
.end method
