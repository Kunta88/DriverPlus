.class public Lcom/txdriver/socket/data/TaximeterConfigData;
.super Ljava/lang/Object;
.source "TaximeterConfigData.java"


# annotations
.annotation runtime Lorg/msgpack/annotation/Message;
.end annotation


# instance fields
.field public tariffs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/txdriver/socket/data/CommonTariffData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x1
    .end annotation
.end field

.field public zones:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/txdriver/socket/data/ZoneData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x0
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
