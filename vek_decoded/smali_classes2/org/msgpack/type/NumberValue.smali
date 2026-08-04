.class public abstract Lorg/msgpack/type/NumberValue;
.super Ljava/lang/Number;
.source "NumberValue.java"

# interfaces
.implements Lorg/msgpack/type/Value;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    return-void
.end method


# virtual methods
.method public asArrayValue()Lorg/msgpack/type/ArrayValue;
    .locals 1

    .line 82
    new-instance v0, Lorg/msgpack/MessageTypeException;

    invoke-direct {v0}, Lorg/msgpack/MessageTypeException;-><init>()V

    throw v0
.end method

.method public asBooleanValue()Lorg/msgpack/type/BooleanValue;
    .locals 1

    .line 67
    new-instance v0, Lorg/msgpack/MessageTypeException;

    invoke-direct {v0}, Lorg/msgpack/MessageTypeException;-><init>()V

    throw v0
.end method

.method public asFloatValue()Lorg/msgpack/type/FloatValue;
    .locals 1

    .line 77
    new-instance v0, Lorg/msgpack/MessageTypeException;

    invoke-direct {v0}, Lorg/msgpack/MessageTypeException;-><init>()V

    throw v0
.end method

.method public asIntegerValue()Lorg/msgpack/type/IntegerValue;
    .locals 1

    .line 72
    new-instance v0, Lorg/msgpack/MessageTypeException;

    invoke-direct {v0}, Lorg/msgpack/MessageTypeException;-><init>()V

    throw v0
.end method

.method public asMapValue()Lorg/msgpack/type/MapValue;
    .locals 1

    .line 87
    new-instance v0, Lorg/msgpack/MessageTypeException;

    invoke-direct {v0}, Lorg/msgpack/MessageTypeException;-><init>()V

    throw v0
.end method

.method public asNilValue()Lorg/msgpack/type/NilValue;
    .locals 1

    .line 62
    new-instance v0, Lorg/msgpack/MessageTypeException;

    invoke-direct {v0}, Lorg/msgpack/MessageTypeException;-><init>()V

    throw v0
.end method

.method public asRawValue()Lorg/msgpack/type/RawValue;
    .locals 1

    .line 92
    new-instance v0, Lorg/msgpack/MessageTypeException;

    invoke-direct {v0}, Lorg/msgpack/MessageTypeException;-><init>()V

    throw v0
.end method

.method public abstract bigIntegerValue()Ljava/math/BigInteger;
.end method

.method public isArrayValue()Z
    .locals 1

    const/4 v0, 0x0

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
