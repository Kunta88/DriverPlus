.class Lorg/msgpack/type/FalseValueImpl;
.super Lorg/msgpack/type/AbstractBooleanValue;
.source "FalseValueImpl.java"


# static fields
.field private static instance:Lorg/msgpack/type/FalseValueImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lorg/msgpack/type/FalseValueImpl;

    invoke-direct {v0}, Lorg/msgpack/type/FalseValueImpl;-><init>()V

    sput-object v0, Lorg/msgpack/type/FalseValueImpl;->instance:Lorg/msgpack/type/FalseValueImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lorg/msgpack/type/AbstractBooleanValue;-><init>()V

    return-void
.end method

.method static getInstance()Lorg/msgpack/type/FalseValueImpl;
    .locals 1

    .line 30
    sget-object v0, Lorg/msgpack/type/FalseValueImpl;->instance:Lorg/msgpack/type/FalseValueImpl;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 48
    :cond_0
    instance-of v1, p1, Lorg/msgpack/type/Value;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 51
    :cond_1
    check-cast p1, Lorg/msgpack/type/Value;

    .line 52
    invoke-interface {p1}, Lorg/msgpack/type/Value;->isBooleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 56
    :cond_2
    invoke-interface {p1}, Lorg/msgpack/type/Value;->asBooleanValue()Lorg/msgpack/type/BooleanValue;

    move-result-object p1

    invoke-interface {p1}, Lorg/msgpack/type/BooleanValue;->getBoolean()Z

    move-result p1

    xor-int/2addr p1, v0

    return p1
.end method

.method public getBoolean()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    const/16 v0, 0x4d5

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "false"

    return-object v0
.end method

.method public toString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 1

    const-string v0, "false"

    .line 71
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public writeTo(Lorg/msgpack/packer/Packer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 40
    invoke-interface {p1, v0}, Lorg/msgpack/packer/Packer;->write(Z)Lorg/msgpack/packer/Packer;

    return-void
.end method
