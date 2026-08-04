.class public Lcom/txdriver/socket/handler/RatingHandler;
.super Lcom/txdriver/socket/handler/AbstractPacketHandler;
.source "RatingHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/socket/handler/AbstractPacketHandler<",
        "Lcom/txdriver/socket/data/RatingData;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RatingHandler"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/txdriver/App;)V
    .locals 1

    .line 16
    const-class v0, Lcom/txdriver/socket/data/RatingData;

    invoke-direct {p0, p1, v0}, Lcom/txdriver/socket/handler/AbstractPacketHandler;-><init>(Lcom/txdriver/App;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public handle(Lcom/txdriver/socket/data/RatingData;)V
    .locals 1

    .line 21
    new-instance v0, Lcom/txdriver/socket/handler/RatingHandler$1;

    invoke-direct {v0, p0, p1}, Lcom/txdriver/socket/handler/RatingHandler$1;-><init>(Lcom/txdriver/socket/handler/RatingHandler;Lcom/txdriver/socket/data/RatingData;)V

    invoke-virtual {p0, v0}, Lcom/txdriver/socket/handler/RatingHandler;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic handle(Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p1, Lcom/txdriver/socket/data/RatingData;

    invoke-virtual {p0, p1}, Lcom/txdriver/socket/handler/RatingHandler;->handle(Lcom/txdriver/socket/data/RatingData;)V

    return-void
.end method
