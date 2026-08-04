.class Lorg/msgpack/type/SequentialMapValueImpl;
.super Lorg/msgpack/type/AbstractMapValue;
.source "SequentialMapValueImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/msgpack/type/SequentialMapValueImpl$ValueIterator;,
        Lorg/msgpack/type/SequentialMapValueImpl$ValueCollection;,
        Lorg/msgpack/type/SequentialMapValueImpl$KeySet;,
        Lorg/msgpack/type/SequentialMapValueImpl$EntrySetIterator;,
        Lorg/msgpack/type/SequentialMapValueImpl$EntrySet;
    }
.end annotation


# static fields
.field private static emptyInstance:Lorg/msgpack/type/SequentialMapValueImpl;


# instance fields
.field private array:[Lorg/msgpack/type/Value;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 33
    new-instance v0, Lorg/msgpack/type/SequentialMapValueImpl;

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/msgpack/type/Value;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/msgpack/type/SequentialMapValueImpl;-><init>([Lorg/msgpack/type/Value;Z)V

    sput-object v0, Lorg/msgpack/type/SequentialMapValueImpl;->emptyInstance:Lorg/msgpack/type/SequentialMapValueImpl;

    return-void
.end method

.method constructor <init>([Lorg/msgpack/type/Value;Z)V
    .locals 2

    .line 46
    invoke-direct {p0}, Lorg/msgpack/type/AbstractMapValue;-><init>()V

    .line 47
    array-length v0, p1

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 51
    iput-object p1, p0, Lorg/msgpack/type/SequentialMapValueImpl;->array:[Lorg/msgpack/type/Value;

    goto :goto_0

    .line 53
    :cond_0
    array-length p2, p1

    new-array p2, p2, [Lorg/msgpack/type/Value;

    iput-object p2, p0, Lorg/msgpack/type/SequentialMapValueImpl;->array:[Lorg/msgpack/type/Value;

    .line 54
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-void

    .line 48
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public static getEmptyInstance()Lorg/msgpack/type/MapValue;
    .locals 1

    .line 36
    sget-object v0, Lorg/msgpack/type/SequentialMapValueImpl;->emptyInstance:Lorg/msgpack/type/SequentialMapValueImpl;

    return-object v0
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Lorg/msgpack/type/Value;",
            "Lorg/msgpack/type/Value;",
            ">;>;"
        }
    .end annotation

    .line 212
    new-instance v0, Lorg/msgpack/type/SequentialMapValueImpl$EntrySet;

    iget-object v1, p0, Lorg/msgpack/type/SequentialMapValueImpl;->array:[Lorg/msgpack/type/Value;

    invoke-direct {v0, v1}, Lorg/msgpack/type/SequentialMapValueImpl$EntrySet;-><init>([Lorg/msgpack/type/Value;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 239
    :cond_0
    instance-of v1, p1, Lorg/msgpack/type/Value;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 242
    :cond_1
    check-cast p1, Lorg/msgpack/type/Value;

    .line 243
    invoke-interface {p1}, Lorg/msgpack/type/Value;->isMapValue()Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 247
    :cond_2
    invoke-interface {p1}, Lorg/msgpack/type/Value;->asMapValue()Lorg/msgpack/type/MapValue;

    move-result-object p1

    .line 248
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    iget-object v3, p0, Lorg/msgpack/type/SequentialMapValueImpl;->array:[Lorg/msgpack/type/Value;

    array-length v3, v3

    div-int/lit8 v3, v3, 0x2

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    const/4 v1, 0x0

    .line 253
    :goto_0
    :try_start_0
    iget-object v3, p0, Lorg/msgpack/type/SequentialMapValueImpl;->array:[Lorg/msgpack/type/Value;

    array-length v4, v3

    if-ge v1, v4, :cond_5

    .line 254
    aget-object v4, v3, v1

    add-int/lit8 v5, v1, 0x1

    .line 255
    aget-object v3, v3, v5

    .line 256
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_4

    return v2

    :cond_4
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_5
    return v0

    :catch_0
    return v2
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lorg/msgpack/type/SequentialMapValueImpl;->get(Ljava/lang/Object;)Lorg/msgpack/type/Value;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Lorg/msgpack/type/Value;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 63
    :cond_0
    iget-object v1, p0, Lorg/msgpack/type/SequentialMapValueImpl;->array:[Lorg/msgpack/type/Value;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x2

    :goto_0
    if-ltz v1, :cond_2

    .line 64
    iget-object v2, p0, Lorg/msgpack/type/SequentialMapValueImpl;->array:[Lorg/msgpack/type/Value;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 65
    iget-object p1, p0, Lorg/msgpack/type/SequentialMapValueImpl;->array:[Lorg/msgpack/type/Value;

    add-int/lit8 v1, v1, 0x1

    aget-object p1, p1, v1

    return-object p1

    :cond_1
    add-int/lit8 v1, v1, -0x2

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getKeyValueArray()[Lorg/msgpack/type/Value;
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/msgpack/type/SequentialMapValueImpl;->array:[Lorg/msgpack/type/Value;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 308
    :goto_0
    iget-object v2, p0, Lorg/msgpack/type/SequentialMapValueImpl;->array:[Lorg/msgpack/type/Value;

    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 309
    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    iget-object v3, p0, Lorg/msgpack/type/SequentialMapValueImpl;->array:[Lorg/msgpack/type/Value;

    add-int/lit8 v4, v0, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    xor-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/msgpack/type/Value;",
            ">;"
        }
    .end annotation

    .line 217
    new-instance v0, Lorg/msgpack/type/SequentialMapValueImpl$KeySet;

    iget-object v1, p0, Lorg/msgpack/type/SequentialMapValueImpl;->array:[Lorg/msgpack/type/Value;

    invoke-direct {v0, v1}, Lorg/msgpack/type/SequentialMapValueImpl$KeySet;-><init>([Lorg/msgpack/type/Value;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lorg/msgpack/type/SequentialMapValueImpl;->toString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 4

    .line 321
    iget-object v0, p0, Lorg/msgpack/type/SequentialMapValueImpl;->array:[Lorg/msgpack/type/Value;

    array-length v0, v0

    if-nez v0, :cond_0

    const-string v0, "{}"

    .line 322
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "{"

    .line 324
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    iget-object v0, p0, Lorg/msgpack/type/SequentialMapValueImpl;->array:[Lorg/msgpack/type/Value;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    .line 326
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    iget-object v1, p0, Lorg/msgpack/type/SequentialMapValueImpl;->array:[Lorg/msgpack/type/Value;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    .line 328
    :goto_0
    iget-object v2, p0, Lorg/msgpack/type/SequentialMapValueImpl;->array:[Lorg/msgpack/type/Value;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    const-string v2, ","

    .line 329
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    iget-object v2, p0, Lorg/msgpack/type/SequentialMapValueImpl;->array:[Lorg/msgpack/type/Value;

    aget-object v2, v2, v1

    invoke-interface {v2, p1}, Lorg/msgpack/type/Value;->toString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 331
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    iget-object v2, p0, Lorg/msgpack/type/SequentialMapValueImpl;->array:[Lorg/msgpack/type/Value;

    add-int/lit8 v3, v1, 0x1

    aget-object v2, v2, v3

    invoke-interface {v2, p1}, Lorg/msgpack/type/Value;->toString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    const-string v0, "}"

    .line 334
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p1
.end method

.method public values()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/msgpack/type/Value;",
            ">;"
        }
    .end annotation

    .line 222
    new-instance v0, Lorg/msgpack/type/SequentialMapValueImpl$ValueCollection;

    iget-object v1, p0, Lorg/msgpack/type/SequentialMapValueImpl;->array:[Lorg/msgpack/type/Value;

    invoke-direct {v0, v1}, Lorg/msgpack/type/SequentialMapValueImpl$ValueCollection;-><init>([Lorg/msgpack/type/Value;)V

    return-object v0
.end method

.method public writeTo(Lorg/msgpack/packer/Packer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lorg/msgpack/type/SequentialMapValueImpl;->array:[Lorg/msgpack/type/Value;

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    invoke-interface {p1, v0}, Lorg/msgpack/packer/Packer;->writeMapBegin(I)Lorg/msgpack/packer/Packer;

    const/4 v0, 0x0

    .line 228
    :goto_0
    iget-object v1, p0, Lorg/msgpack/type/SequentialMapValueImpl;->array:[Lorg/msgpack/type/Value;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 229
    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lorg/msgpack/type/Value;->writeTo(Lorg/msgpack/packer/Packer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 231
    :cond_0
    invoke-interface {p1}, Lorg/msgpack/packer/Packer;->writeMapEnd()Lorg/msgpack/packer/Packer;

    return-void
.end method
