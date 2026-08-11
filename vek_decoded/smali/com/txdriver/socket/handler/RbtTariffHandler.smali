.class public Lcom/txdriver/socket/handler/RbtTariffHandler;
.super Lcom/txdriver/socket/handler/ExternalTariffHandler;
.source "RbtTariffHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/socket/handler/ExternalTariffHandler<",
        "Lcom/txdriver/socket/data/RbtTariffData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/txdriver/App;)V
    .locals 1

    .line 11
    const-class v0, Lcom/txdriver/socket/data/RbtTariffData;

    invoke-direct {p0, p1, v0}, Lcom/txdriver/socket/handler/ExternalTariffHandler;-><init>(Lcom/txdriver/App;Ljava/lang/Class;)V

    return-void
.end method
