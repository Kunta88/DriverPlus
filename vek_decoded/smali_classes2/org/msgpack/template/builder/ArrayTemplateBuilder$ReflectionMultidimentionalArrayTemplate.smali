.class Lorg/msgpack/template/builder/ArrayTemplateBuilder$ReflectionMultidimentionalArrayTemplate;
.super Lorg/msgpack/template/AbstractTemplate;
.source "ArrayTemplateBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/msgpack/template/builder/ArrayTemplateBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReflectionMultidimentionalArrayTemplate"
.end annotation


# instance fields
.field private componentClass:Ljava/lang/Class;

.field private componentTemplate:Lorg/msgpack/template/Template;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lorg/msgpack/template/Template;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lorg/msgpack/template/AbstractTemplate;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/msgpack/template/builder/ArrayTemplateBuilder$ReflectionMultidimentionalArrayTemplate;->componentClass:Ljava/lang/Class;

    .line 57
    iput-object p2, p0, Lorg/msgpack/template/builder/ArrayTemplateBuilder$ReflectionMultidimentionalArrayTemplate;->componentTemplate:Lorg/msgpack/template/Template;

    return-void
.end method


# virtual methods
.method getComponentClass()Ljava/lang/Class;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/msgpack/template/builder/ArrayTemplateBuilder$ReflectionMultidimentionalArrayTemplate;->componentClass:Ljava/lang/Class;

    return-object v0
.end method

.method public read(Lorg/msgpack/unpacker/Unpacker;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p2, 0x0

    if-nez p3, :cond_0

    .line 89
    invoke-interface {p1}, Lorg/msgpack/unpacker/Unpacker;->trySkipNil()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    .line 93
    :cond_0
    invoke-interface {p1}, Lorg/msgpack/unpacker/Unpacker;->readArrayBegin()I

    move-result v0

    .line 94
    iget-object v1, p0, Lorg/msgpack/template/builder/ArrayTemplateBuilder$ReflectionMultidimentionalArrayTemplate;->componentClass:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 96
    iget-object v3, p0, Lorg/msgpack/template/builder/ArrayTemplateBuilder$ReflectionMultidimentionalArrayTemplate;->componentTemplate:Lorg/msgpack/template/Template;

    invoke-interface {v3, p1, p2, p3}, Lorg/msgpack/template/Template;->read(Lorg/msgpack/unpacker/Unpacker;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 98
    :cond_1
    invoke-interface {p1}, Lorg/msgpack/unpacker/Unpacker;->readArrayEnd()V

    return-object v1
.end method

.method public write(Lorg/msgpack/packer/Packer;Ljava/lang/Object;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_1

    if-nez p3, :cond_0

    .line 70
    invoke-interface {p1}, Lorg/msgpack/packer/Packer;->writeNil()Lorg/msgpack/packer/Packer;

    return-void

    .line 68
    :cond_0
    new-instance p1, Lorg/msgpack/MessageTypeException;

    const-string p2, "Attempted to write null"

    invoke-direct {p1, p2}, Lorg/msgpack/MessageTypeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_1
    instance-of v0, p2, [Ljava/lang/Object;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/msgpack/template/builder/ArrayTemplateBuilder$ReflectionMultidimentionalArrayTemplate;->componentClass:Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 78
    check-cast p2, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    .line 79
    array-length v0, p2

    .line 80
    invoke-interface {p1, v0}, Lorg/msgpack/packer/Packer;->writeArrayBegin(I)Lorg/msgpack/packer/Packer;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 82
    iget-object v2, p0, Lorg/msgpack/template/builder/ArrayTemplateBuilder$ReflectionMultidimentionalArrayTemplate;->componentTemplate:Lorg/msgpack/template/Template;

    aget-object v3, p2, v1

    invoke-interface {v2, p1, v3, p3}, Lorg/msgpack/template/Template;->write(Lorg/msgpack/packer/Packer;Ljava/lang/Object;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 84
    :cond_2
    invoke-interface {p1}, Lorg/msgpack/packer/Packer;->writeArrayEnd()Lorg/msgpack/packer/Packer;

    return-void

    .line 75
    :cond_3
    new-instance p1, Lorg/msgpack/MessageTypeException;

    invoke-direct {p1}, Lorg/msgpack/MessageTypeException;-><init>()V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
