.class public Lcom/otaliastudios/cameraview/video/encoding/InputBuffer;
.super Ljava/lang/Object;
.source "InputBuffer.java"


# instance fields
.field public data:Ljava/nio/ByteBuffer;

.field public index:I

.field public isEndOfStream:Z

.field public length:I

.field public source:Ljava/nio/ByteBuffer;

.field public timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
