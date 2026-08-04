.class public Lcom/txdriver/socket/packet/CloseSessionPacket;
.super Lcom/txdriver/socket/packet/ClientPacket;
.source "CloseSessionPacket.java"


# static fields
.field public static final RESULT_NOT_ALLOWED:I = 0x3

.field public static final RESULT_OK:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/txdriver/socket/packet/ClientPacket;-><init>()V

    return-void
.end method


# virtual methods
.method public getBody()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public getCode()B
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public getData()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isResponseRequired()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
