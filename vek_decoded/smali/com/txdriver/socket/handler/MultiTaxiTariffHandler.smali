.class public Lcom/txdriver/socket/handler/MultiTaxiTariffHandler;
.super Lcom/txdriver/socket/handler/ExternalTariffHandler;
.source "MultiTaxiTariffHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/socket/handler/ExternalTariffHandler<",
        "Lcom/txdriver/socket/data/MultiTaxiTariffData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/txdriver/App;)V
    .locals 1

    .line 13
    const-class v0, Lcom/txdriver/socket/data/MultiTaxiTariffData;

    invoke-direct {p0, p1, v0}, Lcom/txdriver/socket/handler/ExternalTariffHandler;-><init>(Lcom/txdriver/App;Ljava/lang/Class;)V

    return-void
.end method
