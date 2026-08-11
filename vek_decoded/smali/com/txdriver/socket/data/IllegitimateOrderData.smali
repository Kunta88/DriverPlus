.class public Lcom/txdriver/socket/data/IllegitimateOrderData;
.super Ljava/lang/Object;
.source "IllegitimateOrderData.java"


# annotations
.annotation runtime Lorg/msgpack/annotation/Message;
.end annotation


# instance fields
.field public orderData:Lcom/txdriver/socket/data/CurrentOrderData;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x1
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Optional;
    .end annotation
.end field

.field public result:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x0
    .end annotation
.end field

.field public zoneId:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x2
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Optional;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
