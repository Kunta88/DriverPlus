.class public Lcom/txdriver/socket/handler/CloseSessionHandler;
.super Lcom/txdriver/socket/handler/AbstractPacketHandler;
.source "CloseSessionHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/socket/handler/AbstractPacketHandler<",
        "Ljava/lang/Byte;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/txdriver/App;)V
    .locals 1

    .line 16
    const-class v0, Ljava/lang/Byte;

    invoke-direct {p0, p1, v0}, Lcom/txdriver/socket/handler/AbstractPacketHandler;-><init>(Lcom/txdriver/App;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public handle(Ljava/lang/Byte;)V
    .locals 1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 32
    iget-object p1, p0, Lcom/txdriver/socket/handler/CloseSessionHandler;->app:Lcom/txdriver/App;

    const v0, 0x7f100264

    invoke-virtual {p0, v0}, Lcom/txdriver/socket/handler/CloseSessionHandler;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/txdriver/utils/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 29
    :cond_0
    iget-object p1, p0, Lcom/txdriver/socket/handler/CloseSessionHandler;->app:Lcom/txdriver/App;

    const v0, 0x7f100029

    invoke-virtual {p0, v0}, Lcom/txdriver/socket/handler/CloseSessionHandler;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/txdriver/utils/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 23
    :cond_1
    iget-object p1, p0, Lcom/txdriver/socket/handler/CloseSessionHandler;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/txdriver/preferences/Preferences;->getLogin()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/txdriver/db/DriverParking;->deleteDriver(I)V

    .line 24
    iget-object p1, p0, Lcom/txdriver/socket/handler/CloseSessionHandler;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/txdriver/preferences/Preferences;->setSessionOpened(Z)V

    .line 25
    invoke-static {}, Lcom/txdriver/db/Order;->deleteBroadcastOrders()V

    .line 26
    iget-object p1, p0, Lcom/txdriver/socket/handler/CloseSessionHandler;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/txdriver/preferences/Preferences;->setTakeBreak(Z)V

    :goto_0
    return-void
.end method

.method public bridge synthetic handle(Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p0, p1}, Lcom/txdriver/socket/handler/CloseSessionHandler;->handle(Ljava/lang/Byte;)V

    return-void
.end method
