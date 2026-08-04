.class public Lcom/txdriver/socket/handler/CallToDispatcherHandler;
.super Lcom/txdriver/socket/handler/AbstractPacketHandler;
.source "CallToDispatcherHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/socket/handler/AbstractPacketHandler<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/txdriver/App;)V
    .locals 1

    .line 12
    const-class v0, Ljava/lang/Boolean;

    invoke-direct {p0, p1, v0}, Lcom/txdriver/socket/handler/AbstractPacketHandler;-><init>(Lcom/txdriver/App;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public handle(Ljava/lang/Boolean;)V
    .locals 1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 18
    iget-object p1, p0, Lcom/txdriver/socket/handler/CallToDispatcherHandler;->app:Lcom/txdriver/App;

    const v0, 0x7f100274

    invoke-virtual {p1, v0}, Lcom/txdriver/App;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 19
    iget-object v0, p0, Lcom/txdriver/socket/handler/CallToDispatcherHandler;->app:Lcom/txdriver/App;

    invoke-static {v0, p1}, Lcom/txdriver/utils/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 21
    :cond_0
    iget-object p1, p0, Lcom/txdriver/socket/handler/CallToDispatcherHandler;->app:Lcom/txdriver/App;

    const v0, 0x7f100029

    invoke-virtual {p1, v0}, Lcom/txdriver/App;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 22
    iget-object v0, p0, Lcom/txdriver/socket/handler/CallToDispatcherHandler;->app:Lcom/txdriver/App;

    invoke-static {v0, p1}, Lcom/txdriver/utils/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic handle(Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/txdriver/socket/handler/CallToDispatcherHandler;->handle(Ljava/lang/Boolean;)V

    return-void
.end method
