.class public Lcom/txdriver/socket/data/OrderTabData;
.super Ljava/lang/Object;
.source "OrderTabData.java"


# annotations
.annotation runtime Lorg/msgpack/annotation/Message;
.end annotation


# instance fields
.field public autoAccept:Z
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x5
    .end annotation
.end field

.field public destinationFilter:Z
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x4
    .end annotation
.end field

.field public id:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x0
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x1
    .end annotation
.end field

.field public priceFilter:Z
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x2
    .end annotation
.end field

.field public radiusFilter:Z
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x3
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
