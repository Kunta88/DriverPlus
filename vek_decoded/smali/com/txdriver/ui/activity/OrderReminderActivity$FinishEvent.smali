.class public Lcom/txdriver/ui/activity/OrderReminderActivity$FinishEvent;
.super Ljava/lang/Object;
.source "OrderReminderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/ui/activity/OrderReminderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FinishEvent"
.end annotation


# instance fields
.field private orderId:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-wide p1, p0, Lcom/txdriver/ui/activity/OrderReminderActivity$FinishEvent;->orderId:J

    return-void
.end method


# virtual methods
.method public getOrderId()J
    .locals 2

    .line 135
    iget-wide v0, p0, Lcom/txdriver/ui/activity/OrderReminderActivity$FinishEvent;->orderId:J

    return-wide v0
.end method
