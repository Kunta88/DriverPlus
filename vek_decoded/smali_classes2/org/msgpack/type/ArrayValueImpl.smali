.class Lorg/msgpack/type/ArrayValueImpl;
.super Lorg/msgpack/type/AbstractArrayValue;
.source "ArrayValueImpl.java"


# static fields
.field private static emptyInstance:Lorg/msgpack/type/ArrayValueImpl;


# instance fields
.field private array:[Lorg/msgpack/type/Value;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 25
    new-instance v0, Lorg/msgpack/type/ArrayValueImpl;

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/msgpack/type/Value;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/msgpack/type/ArrayValueImpl;-><init>([Lorg/msgpack/type/Value;Z)V

    sput-object v0, Lorg/msgpack/type/ArrayValueImpl;->emptyInstance:Lorg/msgpack/type/ArrayValueImpl;

    return-void
.end method

.method constructor <init>([Lorg/msgpack/type/Value;Z)V
    .locals 2

    .line 38
    invoke-direct {p0}, Lorg/msgpack/type/AbstractArrayValue;-><init>()V

    if-eqz p2, :cond_0

    .line 40
    iput-object p1, p0, Lorg/msgpack/type/ArrayValueImpl;->array:[Lorg/msgpack/type/Value;

    goto :goto_0

    .line 42
    :cond_0
    array-length p2, p1

    new-array p2, p2, [Lorg/msgpack/type/Value;

    iput-object p2, p0, Lorg/msgpack/type/ArrayValueImpl;->array:[Lorg/msgpack/type/Value;

    .line 43
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-void
.end method

.method private equals(Lorg/msgpack/type/ArrayValueImpl;)Z
    .locals 4

    .line 128
    iget-object v0, p0, Lorg/msgpack/type/ArrayValueImpl;->array:[Lorg/msgpack/type/Value;

    array-length v0, v0

    iget-object v1, p1, Lorg/msgpack/type/ArrayValueImpl;->array:[Lorg/msgpack/type/Value;

    array-length v1, v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    .line 131
    :goto_0
    iget-object v1, p0, Lorg/msgpack/type/ArrayValueImpl;->array:[Lorg/msgpack/type/Value;

    array-length v3, v1

    if-ge v0, v3, :cond_2

    .line 132
    aget-object v1, v1, v0

    iget-object v3, p1, Lorg/msgpack/type/ArrayValueImpl;->array:[Lorg/msgpack/type/Value;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public static getEmptyInstance()Lorg/msgpack/type/ArrayValue;
    .locals 1

    .line 28
    sget-object v0, Lorg/msgpack/type/ArrayValueImpl;->emptyInstance:Lorg/msgpack/type/ArrayValueImpl;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 105
    :cond_0
    instance-of v1, p1, Lorg/msgpack/type/Value;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 108
    :cond_1
    check-cast p1, Lorg/msgpack/type/Value;

    .line 109
    invoke-interface {p1}, Lorg/msgpack/type/Value;->isArrayValue()Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 113
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v3, Lorg/msgpack/type/ArrayValueImpl;

    if-ne v1, v3, :cond_3

    .line 114
    check-cast p1, Lorg/msgpack/type/ArrayValueImpl;

    invoke-direct {p0, p1}, Lorg/msgpack/type/ArrayValueImpl;->equals(Lorg/msgpack/type/ArrayValueImpl;)Z

    move-result p1

    return p1

    .line 117
    :cond_3
    invoke-interface {p1}, Lorg/msgpack/type/Value;->asArrayValue()Lorg/msgpack/type/ArrayValue;

    move-result-object p1

    invoke-interface {p1}, Lorg/msgpack/type/ArrayValue;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    .line 119
    :cond_4
    iget-object v1, p0, Lorg/msgpack/type/ArrayValueImpl;->array:[Lorg/msgpack/type/Value;

    array-length v1, v1

    if-lez v1, :cond_6

    .line 120
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/msgpack/type/ArrayValueImpl;->array:[Lorg/msgpack/type/Value;

    aget-object v1, v1, v2

    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_5
    return v2

    .line 124
    :cond_6
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result p1

    xor-int/2addr p1, v0

    return p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lorg/msgpack/type/ArrayValueImpl;->get(I)Lorg/msgpack/type/Value;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lorg/msgpack/type/Value;
    .locals 2

    if-ltz p1, :cond_0

    .line 59
    iget-object v0, p0, Lorg/msgpack/type/ArrayValueImpl;->array:[Lorg/msgpack/type/Value;

    array-length v1, v0

    if-le v1, p1, :cond_0

    .line 62
    aget-object p1, v0, p1

    return-object p1

    .line 60
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public getElementArray()[Lorg/msgpack/type/Value;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/msgpack/type/ArrayValueImpl;->array:[Lorg/msgpack/type/Value;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 144
    :goto_0
    iget-object v2, p0, Lorg/msgpack/type/ArrayValueImpl;->array:[Lorg/msgpack/type/Value;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 145
    aget-object v2, v2, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 146
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 4

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 70
    :goto_0
    iget-object v2, p0, Lorg/msgpack/type/ArrayValueImpl;->array:[Lorg/msgpack/type/Value;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 71
    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/msgpack/type/ArrayValueImpl;->array:[Lorg/msgpack/type/Value;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 3

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 83
    :cond_0
    iget-object v1, p0, Lorg/msgpack/type/ArrayValueImpl;->array:[Lorg/msgpack/type/Value;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 84
    iget-object v2, p0, Lorg/msgpack/type/ArrayValueImpl;->array:[Lorg/msgpack/type/Value;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public size()I
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/msgpack/type/ArrayValueImpl;->array:[Lorg/msgpack/type/Value;

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lorg/msgpack/type/ArrayValueImpl;->toString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 2

    .line 158
    iget-object v0, p0, Lorg/msgpack/type/ArrayValueImpl;->array:[Lorg/msgpack/type/Value;

    array-length v0, v0

    if-nez v0, :cond_0

    const-string v0, "[]"

    .line 159
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "["

    .line 161
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    iget-object v0, p0, Lorg/msgpack/type/ArrayValueImpl;->array:[Lorg/msgpack/type/Value;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    .line 163
    :goto_0
    iget-object v1, p0, Lorg/msgpack/type/ArrayValueImpl;->array:[Lorg/msgpack/type/Value;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    const-string v1, ","

    .line 164
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    iget-object v1, p0, Lorg/msgpack/type/ArrayValueImpl;->array:[Lorg/msgpack/type/Value;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lorg/msgpack/type/Value;->toString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "]"

    .line 167
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p1
.end method

.method public writeTo(Lorg/msgpack/packer/Packer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lorg/msgpack/type/ArrayValueImpl;->array:[Lorg/msgpack/type/Value;

    array-length v0, v0

    invoke-interface {p1, v0}, Lorg/msgpack/packer/Packer;->writeArrayBegin(I)Lorg/msgpack/packer/Packer;

    const/4 v0, 0x0

    .line 94
    :goto_0
    iget-object v1, p0, Lorg/msgpack/type/ArrayValueImpl;->array:[Lorg/msgpack/type/Value;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 95
    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lorg/msgpack/type/Value;->writeTo(Lorg/msgpack/packer/Packer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :cond_0
    invoke-interface {p1}, Lorg/msgpack/packer/Packer;->writeArrayEnd()Lorg/msgpack/packer/Packer;

    return-void
.end method
