.class final Lorg/msgpack/io/LinkedBufferOutput$Link;
.super Ljava/lang/Object;
.source "LinkedBufferOutput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/msgpack/io/LinkedBufferOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Link"
.end annotation


# instance fields
.field final buffer:[B

.field final offset:I

.field final size:I


# direct methods
.method constructor <init>([BII)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/msgpack/io/LinkedBufferOutput$Link;->buffer:[B

    .line 30
    iput p2, p0, Lorg/msgpack/io/LinkedBufferOutput$Link;->offset:I

    .line 31
    iput p3, p0, Lorg/msgpack/io/LinkedBufferOutput$Link;->size:I

    return-void
.end method
