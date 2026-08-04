.class Lcom/txdriver/ui/activity/InboundMessageActivity$2;
.super Lcom/txdriver/ui/view/ViewOnClickListener;
.source "InboundMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/ui/activity/InboundMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/activity/InboundMessageActivity;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/activity/InboundMessageActivity;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/txdriver/ui/activity/InboundMessageActivity$2;->this$0:Lcom/txdriver/ui/activity/InboundMessageActivity;

    invoke-direct {p0}, Lcom/txdriver/ui/view/ViewOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewClick(Landroid/view/View;)V
    .locals 2

    .line 36
    iget-object p1, p0, Lcom/txdriver/ui/activity/InboundMessageActivity$2;->this$0:Lcom/txdriver/ui/activity/InboundMessageActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/ChatActivity;->start(Landroid/content/Context;)V

    .line 37
    iget-object p1, p0, Lcom/txdriver/ui/activity/InboundMessageActivity$2;->this$0:Lcom/txdriver/ui/activity/InboundMessageActivity;

    invoke-virtual {p1}, Lcom/txdriver/ui/activity/InboundMessageActivity;->finish()V

    .line 38
    iget-object p1, p0, Lcom/txdriver/ui/activity/InboundMessageActivity$2;->this$0:Lcom/txdriver/ui/activity/InboundMessageActivity;

    iget-object p1, p1, Lcom/txdriver/ui/activity/InboundMessageActivity;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object p1

    new-instance v0, Lcom/txdriver/ui/activity/InboundMessageActivity$FinishEvent;

    iget-object v1, p0, Lcom/txdriver/ui/activity/InboundMessageActivity$2;->this$0:Lcom/txdriver/ui/activity/InboundMessageActivity;

    invoke-static {v1}, Lcom/txdriver/ui/activity/InboundMessageActivity;->access$000(Lcom/txdriver/ui/activity/InboundMessageActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/txdriver/ui/activity/InboundMessageActivity$FinishEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
