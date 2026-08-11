.class public Lcom/txdriver/socket/handler/SosHandler;
.super Lcom/txdriver/socket/handler/AbstractPacketHandler;
.source "SosHandler.java"


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

    .line 13
    const-class v0, Ljava/lang/Byte;

    invoke-direct {p0, p1, v0}, Lcom/txdriver/socket/handler/AbstractPacketHandler;-><init>(Lcom/txdriver/App;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public handle(Ljava/lang/Byte;)V
    .locals 1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 20
    :cond_0
    iget-object p1, p0, Lcom/txdriver/socket/handler/SosHandler;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/txdriver/preferences/Preferences;->setInDanger(Z)V

    goto :goto_0

    .line 23
    :cond_1
    iget-object p1, p0, Lcom/txdriver/socket/handler/SosHandler;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/txdriver/preferences/Preferences;->setInDanger(Z)V

    :goto_0
    return-void
.end method

.method public bridge synthetic handle(Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p0, p1}, Lcom/txdriver/socket/handler/SosHandler;->handle(Ljava/lang/Byte;)V

    return-void
.end method
