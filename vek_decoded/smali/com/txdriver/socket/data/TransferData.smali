.class public Lcom/txdriver/socket/data/TransferData;
.super Ljava/lang/Object;
.source "TransferData.java"


# annotations
.annotation runtime Lorg/msgpack/annotation/Message;
.end annotation


# instance fields
.field public distance:F
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x4
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Optional;
    .end annotation
.end field

.field public orderId:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x0
    .end annotation
.end field

.field public price:F
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x3
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Optional;
    .end annotation
.end field

.field public time:F
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x5
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Optional;
    .end annotation
.end field

.field public transferId:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x1
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Optional;
    .end annotation
.end field

.field public transferName:Ljava/lang/String;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x2
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Optional;
    .end annotation
.end field

.field public waitTime:F
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x6
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
