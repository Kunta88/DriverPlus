.class public Lcom/txdriver/socket/SocketEvents$ExceptionEvent;
.super Ljava/lang/Object;
.source "SocketEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/socket/SocketEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExceptionEvent"
.end annotation


# instance fields
.field public throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/txdriver/socket/SocketEvents$ExceptionEvent;->throwable:Ljava/lang/Throwable;

    return-void
.end method
