.class public Lorg/msgpack/util/json/JSONUnpacker;
.super Lorg/msgpack/unpacker/Converter;
.source "JSONUnpacker.java"


# instance fields
.field protected in:Ljava/io/Reader;

.field private parser:Lorg/json/simple/parser/JSONParser;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 39
    new-instance v0, Lorg/msgpack/MessagePack;

    invoke-direct {v0}, Lorg/msgpack/MessagePack;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/msgpack/util/json/JSONUnpacker;-><init>(Lorg/msgpack/MessagePack;Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(Lorg/msgpack/MessagePack;Ljava/io/InputStream;)V
    .locals 1

    .line 43
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, p1, v0}, Lorg/msgpack/util/json/JSONUnpacker;-><init>(Lorg/msgpack/MessagePack;Ljava/io/Reader;)V

    return-void
.end method

.method constructor <init>(Lorg/msgpack/MessagePack;Ljava/io/Reader;)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, v0}, Lorg/msgpack/unpacker/Converter;-><init>(Lorg/msgpack/MessagePack;Lorg/msgpack/type/Value;)V

    .line 48
    iput-object p2, p0, Lorg/msgpack/util/json/JSONUnpacker;->in:Ljava/io/Reader;

    .line 49
    new-instance p1, Lorg/json/simple/parser/JSONParser;

    invoke-direct {p1}, Lorg/json/simple/parser/JSONParser;-><init>()V

    iput-object p1, p0, Lorg/msgpack/util/json/JSONUnpacker;->parser:Lorg/json/simple/parser/JSONParser;

    return-void
.end method

.method private listToValue(Ljava/util/List;)Lorg/msgpack/type/Value;
    .locals 4

    .line 87
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [Lorg/msgpack/type/Value;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 89
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/msgpack/util/json/JSONUnpacker;->objectToValue(Ljava/lang/Object;)Lorg/msgpack/type/Value;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 91
    invoke-static {v1, p1}, Lorg/msgpack/type/ValueFactory;->createArrayValue([Lorg/msgpack/type/Value;Z)Lorg/msgpack/type/ArrayValue;

    move-result-object p1

    return-object p1
.end method

.method private mapToValue(Ljava/util/Map;)Lorg/msgpack/type/Value;
    .locals 5

    .line 96
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v1, v0, [Lorg/msgpack/type/Value;

    .line 97
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 99
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 100
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/msgpack/util/json/JSONUnpacker;->objectToValue(Ljava/lang/Object;)Lorg/msgpack/type/Value;

    move-result-object v4

    aput-object v4, v1, v2

    add-int/lit8 v4, v2, 0x1

    .line 101
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/msgpack/util/json/JSONUnpacker;->objectToValue(Ljava/lang/Object;)Lorg/msgpack/type/Value;

    move-result-object v3

    aput-object v3, v1, v4

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 103
    invoke-static {v1, p1}, Lorg/msgpack/type/ValueFactory;->createMapValue([Lorg/msgpack/type/Value;Z)Lorg/msgpack/type/MapValue;

    move-result-object p1

    return-object p1
.end method

.method private objectToValue(Ljava/lang/Object;)Lorg/msgpack/type/Value;
    .locals 2

    .line 66
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 67
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lorg/msgpack/type/ValueFactory;->createRawValue(Ljava/lang/String;)Lorg/msgpack/type/RawValue;

    move-result-object p1

    return-object p1

    .line 68
    :cond_0
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 69
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lorg/msgpack/type/ValueFactory;->createIntegerValue(I)Lorg/msgpack/type/IntegerValue;

    move-result-object p1

    return-object p1

    .line 70
    :cond_1
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 71
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/msgpack/type/ValueFactory;->createIntegerValue(J)Lorg/msgpack/type/IntegerValue;

    move-result-object p1

    return-object p1

    .line 72
    :cond_2
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 73
    check-cast p1, Ljava/util/Map;

    invoke-direct {p0, p1}, Lorg/msgpack/util/json/JSONUnpacker;->mapToValue(Ljava/util/Map;)Lorg/msgpack/type/Value;

    move-result-object p1

    return-object p1

    .line 74
    :cond_3
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_4

    .line 75
    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lorg/msgpack/util/json/JSONUnpacker;->listToValue(Ljava/util/List;)Lorg/msgpack/type/Value;

    move-result-object p1

    return-object p1

    .line 76
    :cond_4
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    .line 77
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Lorg/msgpack/type/ValueFactory;->createBooleanValue(Z)Lorg/msgpack/type/BooleanValue;

    move-result-object p1

    return-object p1

    .line 78
    :cond_5
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_6

    .line 79
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/msgpack/type/ValueFactory;->createFloatValue(D)Lorg/msgpack/type/FloatValue;

    move-result-object p1

    return-object p1

    .line 81
    :cond_6
    invoke-static {}, Lorg/msgpack/type/ValueFactory;->createNilValue()Lorg/msgpack/type/NilValue;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lorg/msgpack/util/json/JSONUnpacker;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 118
    invoke-super {p0}, Lorg/msgpack/unpacker/Converter;->close()V

    return-void
.end method

.method public getReadByteCount()I
    .locals 2

    .line 108
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected nextValue()Lorg/msgpack/type/Value;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    :try_start_0
    iget-object v0, p0, Lorg/msgpack/util/json/JSONUnpacker;->parser:Lorg/json/simple/parser/JSONParser;

    iget-object v1, p0, Lorg/msgpack/util/json/JSONUnpacker;->in:Ljava/io/Reader;

    invoke-virtual {v0, v1}, Lorg/json/simple/parser/JSONParser;->parse(Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object v0

    .line 56
    invoke-direct {p0, v0}, Lorg/msgpack/util/json/JSONUnpacker;->objectToValue(Ljava/lang/Object;)Lorg/msgpack/type/Value;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/simple/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 60
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 58
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public resetReadByteCount()V
    .locals 2

    .line 113
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
