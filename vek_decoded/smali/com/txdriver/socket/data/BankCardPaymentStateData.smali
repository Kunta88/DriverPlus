.class public Lcom/txdriver/socket/data/BankCardPaymentStateData;
.super Ljava/lang/Object;
.source "BankCardPaymentStateData.java"


# annotations
.annotation runtime Lorg/msgpack/annotation/Message;
.end annotation


# static fields
.field public static final FAILED:B = 0x3t

.field public static final NEW:B = 0x0t

.field public static final PROCESSED:B = 0x2t

.field public static final PROCESSING:B = 0x1t


# instance fields
.field public orderId:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x0
    .end annotation
.end field

.field public state:B
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x1
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
