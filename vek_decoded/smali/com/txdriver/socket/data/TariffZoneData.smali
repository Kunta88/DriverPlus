.class public Lcom/txdriver/socket/data/TariffZoneData;
.super Ljava/lang/Object;
.source "TariffZoneData.java"


# annotations
.annotation runtime Lorg/msgpack/annotation/Message;
.end annotation


# instance fields
.field public charge:F
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x5
    .end annotation
.end field

.field public endCharge:F
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x4
    .end annotation
.end field

.field public pricePerKm:F
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x1
    .end annotation
.end field

.field public pricePerMinute:F
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x2
    .end annotation
.end field

.field public startCharge:F
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x3
    .end annotation
.end field

.field public zoneId:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x0
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
