.class public Lcom/txdriver/socket/data/TaximeterStateData;
.super Ljava/lang/Object;
.source "TaximeterStateData.java"


# annotations
.annotation runtime Lorg/msgpack/annotation/Message;
.end annotation


# instance fields
.field public price:D
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x0
    .end annotation
.end field

.field public statements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/txdriver/socket/data/TaximeterStatementData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x2
    .end annotation
.end field

.field public waitingMinutes:D
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x1
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
