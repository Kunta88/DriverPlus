.class public Lcom/txdriver/socket/handler/OrderHandler$OrderRejectTickEvent;
.super Ljava/lang/Object;
.source "OrderHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/socket/handler/OrderHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OrderRejectTickEvent"
.end annotation


# instance fields
.field private counter:I

.field private orderId:J


# direct methods
.method public constructor <init>(JI)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-wide p1, p0, Lcom/txdriver/socket/handler/OrderHandler$OrderRejectTickEvent;->orderId:J

    .line 56
    iput p3, p0, Lcom/txdriver/socket/handler/OrderHandler$OrderRejectTickEvent;->counter:I

    return-void
.end method


# virtual methods
.method public getCounter()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/txdriver/socket/handler/OrderHandler$OrderRejectTickEvent;->counter:I

    return v0
.end method

.method public getOrderId()J
    .locals 2

    .line 60
    iget-wide v0, p0, Lcom/txdriver/socket/handler/OrderHandler$OrderRejectTickEvent;->orderId:J

    return-wide v0
.end method
