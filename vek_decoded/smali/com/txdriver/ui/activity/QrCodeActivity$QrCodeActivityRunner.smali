.class public Lcom/txdriver/ui/activity/QrCodeActivity$QrCodeActivityRunner;
.super Ljava/lang/Object;
.source "QrCodeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/ui/activity/QrCodeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QrCodeActivityRunner"
.end annotation


# instance fields
.field private app:Lcom/txdriver/App;

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/txdriver/socket/data/QrCodeData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/txdriver/App;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/txdriver/App;",
            "Ljava/util/List<",
            "Lcom/txdriver/socket/data/QrCodeData;",
            ">;)V"
        }
    .end annotation

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lcom/txdriver/ui/activity/QrCodeActivity$QrCodeActivityRunner;->app:Lcom/txdriver/App;

    .line 110
    iput-object p2, p0, Lcom/txdriver/ui/activity/QrCodeActivity$QrCodeActivityRunner;->data:Ljava/util/List;

    .line 111
    invoke-virtual {p1}, Lcom/txdriver/App;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method private stop()V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/txdriver/ui/activity/QrCodeActivity$QrCodeActivityRunner;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/txdriver/ui/activity/InboundMessageActivity$FinishEvent;)V
    .locals 0

    .line 130
    invoke-direct {p0}, Lcom/txdriver/ui/activity/QrCodeActivity$QrCodeActivityRunner;->stop()V

    return-void
.end method

.method public run()V
    .locals 0

    .line 116
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/QrCodeActivity$QrCodeActivityRunner;->startActivity()V

    return-void
.end method

.method public startActivity()V
    .locals 4

    .line 120
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 121
    iget-object v1, p0, Lcom/txdriver/ui/activity/QrCodeActivity$QrCodeActivityRunner;->data:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 123
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/txdriver/ui/activity/QrCodeActivity$QrCodeActivityRunner;->app:Lcom/txdriver/App;

    const-class v3, Lcom/txdriver/ui/activity/QrCodeActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "qr_code_extra"

    .line 124
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 125
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 126
    iget-object v0, p0, Lcom/txdriver/ui/activity/QrCodeActivity$QrCodeActivityRunner;->app:Lcom/txdriver/App;

    invoke-virtual {v0, v1}, Lcom/txdriver/App;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
