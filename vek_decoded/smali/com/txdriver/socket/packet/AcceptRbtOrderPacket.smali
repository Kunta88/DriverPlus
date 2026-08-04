.class public Lcom/txdriver/socket/packet/AcceptRbtOrderPacket;
.super Lcom/txdriver/socket/packet/AbstractAcceptOrderPacket;
.source "AcceptRbtOrderPacket.java"


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/txdriver/socket/packet/AbstractAcceptOrderPacket;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public getCode()B
    .locals 1

    const/16 v0, 0x39

    return v0
.end method
