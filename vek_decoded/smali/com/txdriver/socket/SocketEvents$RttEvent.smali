.class public Lcom/txdriver/socket/SocketEvents$RttEvent;
.super Ljava/lang/Object;
.source "SocketEvents.java"

# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/socket/SocketEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RttEvent"
.end annotation

# instance fields
.field public rttMs:J

# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/txdriver/socket/SocketEvents$RttEvent;->rttMs:J

    return-void
.end method
