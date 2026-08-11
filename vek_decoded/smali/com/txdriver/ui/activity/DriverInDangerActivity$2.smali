.class Lcom/txdriver/ui/activity/DriverInDangerActivity$2;
.super Lcom/txdriver/ui/view/ViewOnClickListener;
.source "DriverInDangerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/ui/activity/DriverInDangerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/activity/DriverInDangerActivity;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/activity/DriverInDangerActivity;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/txdriver/ui/activity/DriverInDangerActivity$2;->this$0:Lcom/txdriver/ui/activity/DriverInDangerActivity;

    invoke-direct {p0}, Lcom/txdriver/ui/view/ViewOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewClick(Landroid/view/View;)V
    .locals 0

    .line 42
    iget-object p1, p0, Lcom/txdriver/ui/activity/DriverInDangerActivity$2;->this$0:Lcom/txdriver/ui/activity/DriverInDangerActivity;

    invoke-virtual {p1}, Lcom/txdriver/ui/activity/DriverInDangerActivity;->finish()V

    return-void
.end method
