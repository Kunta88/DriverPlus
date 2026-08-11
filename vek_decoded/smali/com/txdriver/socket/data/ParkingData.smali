.class public Lcom/txdriver/socket/data/ParkingData;
.super Ljava/lang/Object;
.source "ParkingData.java"


# annotations
.annotation runtime Lorg/msgpack/annotation/Message;
.end annotation


# instance fields
.field public name:Ljava/lang/String;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x1
    .end annotation
.end field

.field public parkingId:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x0
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
