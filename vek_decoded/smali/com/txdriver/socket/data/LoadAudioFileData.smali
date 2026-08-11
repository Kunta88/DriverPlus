.class public Lcom/txdriver/socket/data/LoadAudioFileData;
.super Ljava/lang/Object;
.source "LoadAudioFileData.java"


# annotations
.annotation runtime Lorg/msgpack/annotation/Message;
.end annotation


# instance fields
.field public fileHash:Ljava/lang/String;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x2
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Optional;
    .end annotation
.end field

.field public id:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x0
    .end annotation
.end field

.field public source:Ljava/lang/String;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x1
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
