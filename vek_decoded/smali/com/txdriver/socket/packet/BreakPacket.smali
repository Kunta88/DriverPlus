.class public Lcom/txdriver/socket/packet/BreakPacket;
.super Lcom/txdriver/socket/packet/ClientPacket;
.source "BreakPacket.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/socket/packet/ClientPacket<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final FALSE:B = 0x0t

.field public static final TRUE:B = 0x1t


# instance fields
.field private mBreak:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/txdriver/socket/packet/ClientPacket;-><init>()V

    .line 14
    iput-boolean p1, p0, Lcom/txdriver/socket/packet/BreakPacket;->mBreak:Z

    return-void
.end method


# virtual methods
.method public getCode()B
    .locals 1

    const/16 v0, 0x1c

    return v0
.end method

.method public getData()Ljava/lang/Boolean;
    .locals 1

    .line 25
    iget-boolean v0, p0, Lcom/txdriver/socket/packet/BreakPacket;->mBreak:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getData()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/txdriver/socket/packet/BreakPacket;->getData()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isResponseRequired()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
