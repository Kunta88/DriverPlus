.class Lcom/txdriver/ui/activity/AuthActivity$3;
.super Lcom/txdriver/ui/view/ViewOnClickListener;
.source "AuthActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/ui/activity/AuthActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/activity/AuthActivity;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/activity/AuthActivity;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/txdriver/ui/activity/AuthActivity$3;->this$0:Lcom/txdriver/ui/activity/AuthActivity;

    invoke-direct {p0}, Lcom/txdriver/ui/view/ViewOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewClick(Landroid/view/View;)V
    .locals 0

    .line 98
    iget-object p1, p0, Lcom/txdriver/ui/activity/AuthActivity$3;->this$0:Lcom/txdriver/ui/activity/AuthActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/AuthActivity;->access$500(Lcom/txdriver/ui/activity/AuthActivity;)V

    return-void
.end method
