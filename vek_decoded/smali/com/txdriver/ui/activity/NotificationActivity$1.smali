.class Lcom/txdriver/ui/activity/NotificationActivity$1;
.super Lcom/txdriver/ui/view/ViewOnClickListener;
.source "NotificationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/ui/activity/NotificationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/activity/NotificationActivity;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/activity/NotificationActivity;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/txdriver/ui/activity/NotificationActivity$1;->this$0:Lcom/txdriver/ui/activity/NotificationActivity;

    invoke-direct {p0}, Lcom/txdriver/ui/view/ViewOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewClick(Landroid/view/View;)V
    .locals 0

    .line 31
    iget-object p1, p0, Lcom/txdriver/ui/activity/NotificationActivity$1;->this$0:Lcom/txdriver/ui/activity/NotificationActivity;

    invoke-virtual {p1}, Lcom/txdriver/ui/activity/NotificationActivity;->finish()V

    return-void
.end method
