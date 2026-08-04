.class public Lcom/txdriver/socket/handler/MessageHandler;
.super Lcom/txdriver/socket/handler/AbstractPacketHandler;
.source "MessageHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/socket/handler/AbstractPacketHandler<",
        "Lcom/txdriver/socket/data/MessageData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/txdriver/App;)V
    .locals 1

    .line 18
    const-class v0, Lcom/txdriver/socket/data/MessageData;

    invoke-direct {p0, p1, v0}, Lcom/txdriver/socket/handler/AbstractPacketHandler;-><init>(Lcom/txdriver/App;Ljava/lang/Class;)V

    return-void
.end method

.method private isShowDialog()Z
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/txdriver/socket/handler/MessageHandler;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getActivityLifecycleObserver()Lcom/txdriver/ActivityLifecycleObserver;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/txdriver/ActivityLifecycleObserver;->getActivity()Lcom/txdriver/ui/activity/BaseActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/txdriver/ui/activity/ChatActivity;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/txdriver/ActivityLifecycleObserver;->isActivityInForeground()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private notifyDriver(Ljava/lang/String;)V
    .locals 2

    .line 43
    new-instance v0, Lcom/txdriver/ui/activity/InboundMessageActivity$MessageActivityRunner;

    iget-object v1, p0, Lcom/txdriver/socket/handler/MessageHandler;->app:Lcom/txdriver/App;

    invoke-direct {v0, v1, p1}, Lcom/txdriver/ui/activity/InboundMessageActivity$MessageActivityRunner;-><init>(Lcom/txdriver/App;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/txdriver/socket/handler/MessageHandler;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public handle(Lcom/txdriver/socket/data/MessageData;)V
    .locals 1

    .line 23
    iget v0, p1, Lcom/txdriver/socket/data/MessageData;->messageId:I

    .line 24
    invoke-static {v0}, Lcom/txdriver/db/DispatcherMessage;->getById(I)Lcom/txdriver/db/DispatcherMessage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 25
    iget-object p1, v0, Lcom/txdriver/db/DispatcherMessage;->text:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/txdriver/socket/data/MessageData;->text:Ljava/lang/String;

    .line 26
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 29
    :cond_1
    sget-object v0, Lcom/txdriver/db/ChatMessage$Type;->INBOUND:Lcom/txdriver/db/ChatMessage$Type;

    invoke-static {p1, v0}, Lcom/txdriver/db/ChatMessage;->create(Ljava/lang/String;Lcom/txdriver/db/ChatMessage$Type;)Lcom/txdriver/db/ChatMessage;

    .line 30
    invoke-direct {p0}, Lcom/txdriver/socket/handler/MessageHandler;->isShowDialog()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 31
    invoke-direct {p0, p1}, Lcom/txdriver/socket/handler/MessageHandler;->notifyDriver(Ljava/lang/String;)V

    goto :goto_1

    .line 33
    :cond_2
    iget-object p1, p0, Lcom/txdriver/socket/handler/MessageHandler;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getSoundManager()Lcom/txdriver/notification/SoundManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/txdriver/notification/SoundManager;->playIcqSound()V

    :goto_1
    return-void
.end method

.method public bridge synthetic handle(Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p1, Lcom/txdriver/socket/data/MessageData;

    invoke-virtual {p0, p1}, Lcom/txdriver/socket/handler/MessageHandler;->handle(Lcom/txdriver/socket/data/MessageData;)V

    return-void
.end method
