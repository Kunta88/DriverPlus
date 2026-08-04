.class public Lcom/txdriver/socket/handler/SessionOpenedHandler;
.super Lcom/txdriver/socket/handler/AbstractPacketHandler;
.source "SessionOpenedHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txdriver/socket/handler/SessionOpenedHandler$Data;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/socket/handler/AbstractPacketHandler<",
        "Lcom/txdriver/socket/handler/SessionOpenedHandler$Data;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SessionOpenedHandler"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/txdriver/App;)V
    .locals 1

    .line 18
    const-class v0, Lcom/txdriver/socket/handler/SessionOpenedHandler$Data;

    invoke-direct {p0, p1, v0}, Lcom/txdriver/socket/handler/AbstractPacketHandler;-><init>(Lcom/txdriver/App;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public handle(Lcom/txdriver/socket/handler/SessionOpenedHandler$Data;)V
    .locals 3

    .line 23
    iget p1, p1, Lcom/txdriver/socket/handler/SessionOpenedHandler$Data;->autoType:I

    invoke-static {p1}, Lcom/txdriver/db/CarType;->getById(I)Lcom/txdriver/db/CarType;

    move-result-object p1

    .line 24
    iget-object v0, p0, Lcom/txdriver/socket/handler/SessionOpenedHandler;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/txdriver/db/CarType;->getId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, -0x1

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/txdriver/preferences/Preferences;->setCarType(J)V

    .line 25
    iget-object p1, p0, Lcom/txdriver/socket/handler/SessionOpenedHandler;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/txdriver/preferences/Preferences;->setSessionOpened(Z)V

    return-void
.end method

.method public bridge synthetic handle(Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p1, Lcom/txdriver/socket/handler/SessionOpenedHandler$Data;

    invoke-virtual {p0, p1}, Lcom/txdriver/socket/handler/SessionOpenedHandler;->handle(Lcom/txdriver/socket/handler/SessionOpenedHandler$Data;)V

    return-void
.end method
