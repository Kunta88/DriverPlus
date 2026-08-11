.class public Lcom/txdriver/socket/SocketEvents$GetExtrasEvent;
.super Ljava/lang/Object;
.source "SocketEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/socket/SocketEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetExtrasEvent"
.end annotation


# instance fields
.field public list:Lcom/txdriver/socket/data/ExtrasList;


# direct methods
.method public constructor <init>(Lcom/txdriver/socket/data/ExtrasList;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/txdriver/socket/SocketEvents$GetExtrasEvent;->list:Lcom/txdriver/socket/data/ExtrasList;

    return-void
.end method
