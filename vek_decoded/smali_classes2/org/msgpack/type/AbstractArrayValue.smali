.class abstract Lorg/msgpack/type/AbstractArrayValue;
.super Ljava/util/AbstractList;
.source "AbstractArrayValue.java"

# interfaces
.implements Lorg/msgpack/type/ArrayValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Lorg/msgpack/type/Value;",
        ">;",
        "Lorg/msgpack/type/ArrayValue;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method


# virtual methods
.method public asArrayValue()Lorg/msgpack/type/ArrayValue;
    .locals 0

    return-object p0
.end method

.method public asBooleanValue()Lorg/msgpack/type/BooleanValue;
    .locals 1

    .line 76
    new-instance v0, Lorg/msgpack/MessageTypeException;

    invoke-direct {v0}, Lorg/msgpack/MessageTypeException;-><init>()V

    throw v0
.end method

.method public asFloatValue()Lorg/msgpack/type/FloatValue;
    .locals 1

    .line 86
    new-instance v0, Lorg/msgpack/MessageTypeException;

    invoke-direct {v0}, Lorg/msgpack/MessageTypeException;-><init>()V

    throw v0
.end method

.method public asIntegerValue()Lorg/msgpack/type/IntegerValue;
    .locals 1

    .line 81
    new-instance v0, Lorg/msgpack/MessageTypeException;

    invoke-direct {v0}, Lorg/msgpack/MessageTypeException;-><init>()V

    throw v0
.end method

.method public asMapValue()Lorg/msgpack/type/MapValue;
    .locals 1

    .line 91
    new-instance v0, Lorg/msgpack/MessageTypeException;

    invoke-direct {v0}, Lorg/msgpack/MessageTypeException;-><init>()V

    throw v0
.end method

.method public asNilValue()Lorg/msgpack/type/NilValue;
    .locals 1

    .line 71
    new-instance v0, Lorg/msgpack/MessageTypeException;

    invoke-direct {v0}, Lorg/msgpack/MessageTypeException;-><init>()V

    throw v0
.end method

.method public asRawValue()Lorg/msgpack/type/RawValue;
    .locals 1

    .line 96
    new-instance v0, Lorg/msgpack/MessageTypeException;

    invoke-direct {v0}, Lorg/msgpack/MessageTypeException;-><init>()V

    throw v0
.end method

.method public getType()Lorg/msgpack/type/ValueType;
    .locals 1

    .line 26
    sget-object v0, Lorg/msgpack/type/ValueType;->ARRAY:Lorg/msgpack/type/ValueType;

    return-object v0
.end method

.method public isArrayValue()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isBooleanValue()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isFloatValue()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isIntegerValue()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMapValue()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isNilValue()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isRawValue()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
