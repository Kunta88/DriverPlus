.class abstract Lorg/msgpack/type/AbstractBooleanValue;
.super Lorg/msgpack/type/AbstractValue;
.source "AbstractBooleanValue.java"

# interfaces
.implements Lorg/msgpack/type/BooleanValue;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lorg/msgpack/type/AbstractValue;-><init>()V

    return-void
.end method


# virtual methods
.method public asBooleanValue()Lorg/msgpack/type/BooleanValue;
    .locals 0

    return-object p0
.end method

.method public getType()Lorg/msgpack/type/ValueType;
    .locals 1

    .line 23
    sget-object v0, Lorg/msgpack/type/ValueType;->BOOLEAN:Lorg/msgpack/type/ValueType;

    return-object v0
.end method

.method public isBooleanValue()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isFalse()Z
    .locals 1

    .line 36
    invoke-virtual {p0}, Lorg/msgpack/type/AbstractBooleanValue;->getBoolean()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isTrue()Z
    .locals 1

    .line 32
    invoke-virtual {p0}, Lorg/msgpack/type/AbstractBooleanValue;->getBoolean()Z

    move-result v0

    return v0
.end method
