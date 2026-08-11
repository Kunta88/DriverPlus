.class public Lcom/txdriver/socket/packet/AcceptOrderPacket;
.super Lcom/txdriver/socket/packet/AbstractAcceptOrderPacket;
.source "AcceptOrderPacket.java"


# static fields
.field public static final RESULT_NOT_ALLOWED:B = 0x2t

.field public static final RESULT_OK:B = 0x1t


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/txdriver/socket/packet/AbstractAcceptOrderPacket;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public getCode()B
    .locals 1

    const/16 v0, 0xb

    return v0
.end method

.method public isResponseRequired()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
