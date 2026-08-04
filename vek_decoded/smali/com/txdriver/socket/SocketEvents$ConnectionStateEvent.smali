.class public Lcom/txdriver/socket/SocketEvents$ConnectionStateEvent;
.super Ljava/lang/Object;
.source "SocketEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/socket/SocketEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectionStateEvent"
.end annotation


# instance fields
.field public state:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput p1, p0, Lcom/txdriver/socket/SocketEvents$ConnectionStateEvent;->state:I

    return-void
.end method
