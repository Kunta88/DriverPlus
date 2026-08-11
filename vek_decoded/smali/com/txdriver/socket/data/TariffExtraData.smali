.class public Lcom/txdriver/socket/data/TariffExtraData;
.super Ljava/lang/Object;
.source "TariffExtraData.java"


# annotations
.annotation runtime Lorg/msgpack/annotation/Message;
.end annotation


# instance fields
.field public extraId:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x0
    .end annotation
.end field

.field public percent:F
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x2
    .end annotation
.end field

.field public price:F
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x1
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
