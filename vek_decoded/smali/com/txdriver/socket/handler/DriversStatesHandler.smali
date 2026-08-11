.class public Lcom/txdriver/socket/handler/DriversStatesHandler;
.super Lcom/txdriver/socket/handler/AbstractPacketHandler;
.source "DriversStatesHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/socket/handler/AbstractPacketHandler<",
        "Ljava/util/List<",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/txdriver/App;)V
    .locals 1

    .line 18
    sget-object v0, Lorg/msgpack/template/Templates;->TInteger:Lorg/msgpack/template/Template;

    invoke-static {v0}, Lorg/msgpack/template/Templates;->tList(Lorg/msgpack/template/Template;)Lorg/msgpack/template/Template;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/txdriver/socket/handler/AbstractPacketHandler;-><init>(Lcom/txdriver/App;Lorg/msgpack/template/Template;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic handle(Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/txdriver/socket/handler/DriversStatesHandler;->handle(Ljava/util/List;)V

    return-void
.end method

.method public handle(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 24
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-static {v1, v0}, Lcom/txdriver/db/Driver;->updateStatus(IZ)V

    goto :goto_0

    .line 26
    :cond_1
    invoke-static {}, Lcom/txdriver/db/DriverParking;->notifyChanged()V

    return-void
.end method
