.class public Lcom/txdriver/socket/SocketEvents$PendingResponseEvent;
.super Ljava/lang/Object;
.source "SocketEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/socket/SocketEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PendingResponseEvent"
.end annotation


# instance fields
.field public pending:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-boolean p1, p0, Lcom/txdriver/socket/SocketEvents$PendingResponseEvent;->pending:Z

    return-void
.end method
