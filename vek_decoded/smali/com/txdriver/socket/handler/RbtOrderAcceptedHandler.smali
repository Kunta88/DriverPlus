.class public Lcom/txdriver/socket/handler/RbtOrderAcceptedHandler;
.super Lcom/txdriver/socket/handler/AbstractExternalOrderAcceptedHandler;
.source "RbtOrderAcceptedHandler.java"


# direct methods
.method public constructor <init>(Lcom/txdriver/App;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/txdriver/socket/handler/AbstractExternalOrderAcceptedHandler;-><init>(Lcom/txdriver/App;)V

    return-void
.end method


# virtual methods
.method public getOrderSource()Lcom/txdriver/db/Order$Source;
    .locals 1

    .line 16
    sget-object v0, Lcom/txdriver/db/Order$Source;->RBT:Lcom/txdriver/db/Order$Source;

    return-object v0
.end method
