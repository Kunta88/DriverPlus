.class public Lcom/txdriver/socket/handler/MultiTaxiOrderAcceptedHandler;
.super Lcom/txdriver/socket/handler/AbstractExternalOrderAcceptedHandler;
.source "MultiTaxiOrderAcceptedHandler.java"


# direct methods
.method public constructor <init>(Lcom/txdriver/App;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/txdriver/socket/handler/AbstractExternalOrderAcceptedHandler;-><init>(Lcom/txdriver/App;)V

    return-void
.end method


# virtual methods
.method public getOrderSource()Lcom/txdriver/db/Order$Source;
    .locals 1

    .line 17
    sget-object v0, Lcom/txdriver/db/Order$Source;->MULTI_TAXI:Lcom/txdriver/db/Order$Source;

    return-object v0
.end method
