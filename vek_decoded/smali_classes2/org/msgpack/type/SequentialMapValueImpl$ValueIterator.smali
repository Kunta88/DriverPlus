.class Lorg/msgpack/type/SequentialMapValueImpl$ValueIterator;
.super Ljava/lang/Object;
.source "SequentialMapValueImpl.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/msgpack/type/SequentialMapValueImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ValueIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/msgpack/type/Value;",
        ">;"
    }
.end annotation


# instance fields
.field private array:[Lorg/msgpack/type/Value;

.field private pos:I


# direct methods
.method constructor <init>([Lorg/msgpack/type/Value;I)V
    .locals 0

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput-object p1, p0, Lorg/msgpack/type/SequentialMapValueImpl$ValueIterator;->array:[Lorg/msgpack/type/Value;

    .line 186
    iput p2, p0, Lorg/msgpack/type/SequentialMapValueImpl$ValueIterator;->pos:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 191
    iget v0, p0, Lorg/msgpack/type/SequentialMapValueImpl$ValueIterator;->pos:I

    iget-object v1, p0, Lorg/msgpack/type/SequentialMapValueImpl$ValueIterator;->array:[Lorg/msgpack/type/Value;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 180
    invoke-virtual {p0}, Lorg/msgpack/type/SequentialMapValueImpl$ValueIterator;->next()Lorg/msgpack/type/Value;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/msgpack/type/Value;
    .locals 3

    .line 196
    iget v0, p0, Lorg/msgpack/type/SequentialMapValueImpl$ValueIterator;->pos:I

    iget-object v1, p0, Lorg/msgpack/type/SequentialMapValueImpl$ValueIterator;->array:[Lorg/msgpack/type/Value;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 199
    aget-object v1, v1, v0

    add-int/lit8 v0, v0, 0x2

    .line 200
    iput v0, p0, Lorg/msgpack/type/SequentialMapValueImpl$ValueIterator;->pos:I

    return-object v1

    .line 197
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1

    .line 206
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
