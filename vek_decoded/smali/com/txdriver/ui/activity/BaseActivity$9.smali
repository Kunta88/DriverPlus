.class Lcom/txdriver/ui/activity/BaseActivity$9;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/activity/BaseActivity;->showProgressLayout(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/activity/BaseActivity;

.field final synthetic val$progressLayout:Landroid/view/View;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/txdriver/ui/activity/BaseActivity;Landroid/view/View;Z)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/txdriver/ui/activity/BaseActivity$9;->this$0:Lcom/txdriver/ui/activity/BaseActivity;

    iput-object p2, p0, Lcom/txdriver/ui/activity/BaseActivity$9;->val$progressLayout:Landroid/view/View;

    iput-boolean p3, p0, Lcom/txdriver/ui/activity/BaseActivity$9;->val$show:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 320
    iget-object v0, p0, Lcom/txdriver/ui/activity/BaseActivity$9;->val$progressLayout:Landroid/view/View;

    iget-boolean v1, p0, Lcom/txdriver/ui/activity/BaseActivity$9;->val$show:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
