.class Lorg/msgpack/type/StringRawValueImpl;
.super Lorg/msgpack/type/AbstractRawValue;
.source "StringRawValueImpl.java"


# instance fields
.field private string:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lorg/msgpack/type/AbstractRawValue;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/msgpack/type/StringRawValueImpl;->string:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 58
    :cond_0
    instance-of v0, p1, Lorg/msgpack/type/Value;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 61
    :cond_1
    check-cast p1, Lorg/msgpack/type/Value;

    .line 62
    invoke-interface {p1}, Lorg/msgpack/type/Value;->isRawValue()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 66
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/msgpack/type/StringRawValueImpl;

    if-ne v0, v1, :cond_3

    .line 67
    iget-object v0, p0, Lorg/msgpack/type/StringRawValueImpl;->string:Ljava/lang/String;

    check-cast p1, Lorg/msgpack/type/StringRawValueImpl;

    iget-object p1, p1, Lorg/msgpack/type/StringRawValueImpl;->string:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 70
    :cond_3
    invoke-virtual {p0}, Lorg/msgpack/type/StringRawValueImpl;->getByteArray()[B

    move-result-object v0

    invoke-interface {p1}, Lorg/msgpack/type/Value;->asRawValue()Lorg/msgpack/type/RawValue;

    move-result-object p1

    invoke-interface {p1}, Lorg/msgpack/type/RawValue;->getByteArray()[B

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public getByteArray()[B
    .locals 2

    .line 37
    :try_start_0
    iget-object v0, p0, Lorg/msgpack/type/StringRawValueImpl;->string:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 39
    new-instance v1, Lorg/msgpack/MessageTypeException;

    invoke-direct {v1, v0}, Lorg/msgpack/MessageTypeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/msgpack/type/StringRawValueImpl;->string:Ljava/lang/String;

    return-object v0
.end method

.method public writeTo(Lorg/msgpack/packer/Packer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lorg/msgpack/type/StringRawValueImpl;->string:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/msgpack/packer/Packer;->write(Ljava/lang/String;)Lorg/msgpack/packer/Packer;

    return-void
.end method
