.class public final Lorg/msgpack/packer/PackerStack;
.super Ljava/lang/Object;
.source "PackerStack.java"


# static fields
.field public static final MAX_STACK_SIZE:I = 0x80

.field private static final TYPE_ARRAY:B = 0x1t

.field private static final TYPE_INVALID:B = 0x0t

.field private static final TYPE_MAP:B = 0x2t


# instance fields
.field private counts:[I

.field private top:I

.field private types:[B


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lorg/msgpack/packer/PackerStack;->top:I

    const/16 v1, 0x80

    new-array v2, v1, [B

    .line 35
    iput-object v2, p0, Lorg/msgpack/packer/PackerStack;->types:[B

    new-array v1, v1, [I

    .line 36
    iput-object v1, p0, Lorg/msgpack/packer/PackerStack;->counts:[I

    aput-byte v0, v2, v0

    return-void
.end method


# virtual methods
.method public checkCount()V
    .locals 4

    .line 53
    iget-object v0, p0, Lorg/msgpack/packer/PackerStack;->counts:[I

    iget v1, p0, Lorg/msgpack/packer/PackerStack;->top:I

    aget v0, v0, v1

    if-lez v0, :cond_0

    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lorg/msgpack/packer/PackerStack;->types:[B

    aget-byte v2, v0, v1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    .line 61
    aget-byte v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    return-void

    .line 62
    :cond_1
    new-instance v0, Lorg/msgpack/MessageTypeException;

    const-string v1, "Map is end but writeMapEnd() is not called"

    invoke-direct {v0, v1}, Lorg/msgpack/MessageTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_2
    new-instance v0, Lorg/msgpack/MessageTypeException;

    const-string v1, "Array is end but writeArrayEnd() is not called"

    invoke-direct {v0, v1}, Lorg/msgpack/MessageTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 96
    iput v0, p0, Lorg/msgpack/packer/PackerStack;->top:I

    return-void
.end method

.method public getDepth()I
    .locals 1

    .line 80
    iget v0, p0, Lorg/msgpack/packer/PackerStack;->top:I

    return v0
.end method

.method public getTopCount()I
    .locals 2

    .line 84
    iget-object v0, p0, Lorg/msgpack/packer/PackerStack;->counts:[I

    iget v1, p0, Lorg/msgpack/packer/PackerStack;->top:I

    aget v0, v0, v1

    return v0
.end method

.method public pop()V
    .locals 1

    .line 76
    iget v0, p0, Lorg/msgpack/packer/PackerStack;->top:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/msgpack/packer/PackerStack;->top:I

    return-void
.end method

.method public pushArray(I)V
    .locals 3

    .line 41
    iget v0, p0, Lorg/msgpack/packer/PackerStack;->top:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/msgpack/packer/PackerStack;->top:I

    .line 42
    iget-object v2, p0, Lorg/msgpack/packer/PackerStack;->types:[B

    aput-byte v1, v2, v0

    .line 43
    iget-object v1, p0, Lorg/msgpack/packer/PackerStack;->counts:[I

    aput p1, v1, v0

    return-void
.end method

.method public pushMap(I)V
    .locals 3

    .line 47
    iget v0, p0, Lorg/msgpack/packer/PackerStack;->top:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/msgpack/packer/PackerStack;->top:I

    .line 48
    iget-object v1, p0, Lorg/msgpack/packer/PackerStack;->types:[B

    const/4 v2, 0x2

    aput-byte v2, v1, v0

    .line 49
    iget-object v1, p0, Lorg/msgpack/packer/PackerStack;->counts:[I

    mul-int/lit8 p1, p1, 0x2

    aput p1, v1, v0

    return-void
.end method

.method public reduceCount()V
    .locals 3

    .line 72
    iget-object v0, p0, Lorg/msgpack/packer/PackerStack;->counts:[I

    iget v1, p0, Lorg/msgpack/packer/PackerStack;->top:I

    aget v2, v0, v1

    add-int/lit8 v2, v2, -0x1

    aput v2, v0, v1

    return-void
.end method

.method public topIsArray()Z
    .locals 2

    .line 88
    iget-object v0, p0, Lorg/msgpack/packer/PackerStack;->types:[B

    iget v1, p0, Lorg/msgpack/packer/PackerStack;->top:I

    aget-byte v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public topIsMap()Z
    .locals 2

    .line 92
    iget-object v0, p0, Lorg/msgpack/packer/PackerStack;->types:[B

    iget v1, p0, Lorg/msgpack/packer/PackerStack;->top:I

    aget-byte v0, v0, v1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
