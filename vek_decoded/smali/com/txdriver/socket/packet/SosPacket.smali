.class public Lcom/txdriver/socket/packet/SosPacket;
.super Lcom/txdriver/socket/packet/ClientPacket;
.source "SosPacket.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/socket/packet/ClientPacket<",
        "Ljava/lang/Byte;",
        ">;"
    }
.end annotation


# static fields
.field public static final NO:B = 0x0t

.field public static final YES:B = 0x1t


# instance fields
.field private isInDanger:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/txdriver/socket/packet/ClientPacket;-><init>()V

    .line 15
    iput-boolean p1, p0, Lcom/txdriver/socket/packet/SosPacket;->isInDanger:Z

    return-void
.end method


# virtual methods
.method public getCode()B
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public getData()Ljava/lang/Byte;
    .locals 1

    .line 25
    iget-boolean v0, p0, Lcom/txdriver/socket/packet/SosPacket;->isInDanger:Z

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getData()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/txdriver/socket/packet/SosPacket;->getData()Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method
