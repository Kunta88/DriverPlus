.class public Lorg/msgpack/template/builder/ReflectionTemplateBuilder$ReflectionClassTemplate;
.super Lorg/msgpack/template/AbstractTemplate;
.source "ReflectionTemplateBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/msgpack/template/builder/ReflectionTemplateBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ReflectionClassTemplate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/msgpack/template/AbstractTemplate<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected targetClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected templates:[Lorg/msgpack/template/builder/ReflectionTemplateBuilder$ReflectionFieldTemplate;


# direct methods
.method protected constructor <init>(Ljava/lang/Class;[Lorg/msgpack/template/builder/ReflectionTemplateBuilder$ReflectionFieldTemplate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Lorg/msgpack/template/builder/ReflectionTemplateBuilder$ReflectionFieldTemplate;",
            ")V"
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Lorg/msgpack/template/AbstractTemplate;-><init>()V

    .line 84
    iput-object p1, p0, Lorg/msgpack/template/builder/ReflectionTemplateBuilder$ReflectionClassTemplate;->targetClass:Ljava/lang/Class;

    .line 85
    iput-object p2, p0, Lorg/msgpack/template/builder/ReflectionTemplateBuilder$ReflectionClassTemplate;->templates:[Lorg/msgpack/template/builder/ReflectionTemplateBuilder$ReflectionFieldTemplate;

    return-void
.end method


# virtual methods
.method public read(Lorg/msgpack/unpacker/Unpacker;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/msgpack/unpacker/Unpacker;",
            "TT;Z)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    .line 127
    invoke-interface {p1}, Lorg/msgpack/unpacker/Unpacker;->trySkipNil()Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-nez p2, :cond_1

    .line 132
    :try_start_0
    iget-object p2, p0, Lorg/msgpack/template/builder/ReflectionTemplateBuilder$ReflectionClassTemplate;->targetClass:Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p2

    .line 135
    :cond_1
    invoke-interface {p1}, Lorg/msgpack/unpacker/Unpacker;->readArrayBegin()I

    const/4 p3, 0x0

    const/4 v0, 0x0

    .line 136
    :goto_0
    iget-object v1, p0, Lorg/msgpack/template/builder/ReflectionTemplateBuilder$ReflectionClassTemplate;->templates:[Lorg/msgpack/template/builder/ReflectionTemplateBuilder$ReflectionFieldTemplate;

    array-length v2, v1

    if-ge v0, v2, :cond_4

    .line 137
    aget-object v1, v1, v0

    .line 138
    iget-object v2, v1, Lorg/msgpack/template/builder/ReflectionTemplateBuilder$ReflectionFieldTemplate;->entry:Lorg/msgpack/template/builder/FieldEntry;

    invoke-virtual {v2}, Lorg/msgpack/template/builder/FieldEntry;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_2

    .line 139
    invoke-interface {p1}, Lorg/msgpack/unpacker/Unpacker;->skip()V

    goto :goto_1

    .line 140
    :cond_2
    iget-object v2, v1, Lorg/msgpack/template/builder/ReflectionTemplateBuilder$ReflectionFieldTemplate;->entry:Lorg/msgpack/template/builder/FieldEntry;

    invoke-virtual {v2}, Lorg/msgpack/template/builder/FieldEntry;->isOptional()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Lorg/msgpack/unpacker/Unpacker;->trySkipNil()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 143
    :cond_3
    invoke-virtual {v1, p1, p2, p3}, Lorg/msgpack/template/builder/ReflectionTemplateBuilder$ReflectionFieldTemplate;->read(Lorg/msgpack/unpacker/Unpacker;Ljava/lang/Object;Z)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    :cond_4
    invoke-interface {p1}, Lorg/msgpack/unpacker/Unpacker;->readArrayEnd()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 152
    new-instance p2, Lorg/msgpack/MessageTypeException;

    invoke-direct {p2, p1}, Lorg/msgpack/MessageTypeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 150
    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public write(Lorg/msgpack/packer/Packer;Ljava/lang/Object;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/msgpack/packer/Packer;",
            "TT;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_1

    if-nez p3, :cond_0

    .line 95
    invoke-interface {p1}, Lorg/msgpack/packer/Packer;->writeNil()Lorg/msgpack/packer/Packer;

    return-void

    .line 93
    :cond_0
    new-instance p1, Lorg/msgpack/MessageTypeException;

    const-string p2, "attempted to write null"

    invoke-direct {p1, p2}, Lorg/msgpack/MessageTypeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 99
    :cond_1
    :try_start_0
    iget-object p3, p0, Lorg/msgpack/template/builder/ReflectionTemplateBuilder$ReflectionClassTemplate;->templates:[Lorg/msgpack/template/builder/ReflectionTemplateBuilder$ReflectionFieldTemplate;

    array-length p3, p3

    invoke-interface {p1, p3}, Lorg/msgpack/packer/Packer;->writeArrayBegin(I)Lorg/msgpack/packer/Packer;

    .line 100
    iget-object p3, p0, Lorg/msgpack/template/builder/ReflectionTemplateBuilder$ReflectionClassTemplate;->templates:[Lorg/msgpack/template/builder/ReflectionTemplateBuilder$ReflectionFieldTemplate;

    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    aget-object v2, p3, v1

    .line 101
    iget-object v3, v2, Lorg/msgpack/template/builder/ReflectionTemplateBuilder$ReflectionFieldTemplate;->entry:Lorg/msgpack/template/builder/FieldEntry;

    invoke-virtual {v3}, Lorg/msgpack/template/builder/FieldEntry;->isAvailable()Z

    move-result v3

    if-nez v3, :cond_2

    .line 102
    invoke-interface {p1}, Lorg/msgpack/packer/Packer;->writeNil()Lorg/msgpack/packer/Packer;

    goto :goto_1

    .line 105
    :cond_2
    iget-object v3, v2, Lorg/msgpack/template/builder/ReflectionTemplateBuilder$ReflectionFieldTemplate;->entry:Lorg/msgpack/template/builder/FieldEntry;

    invoke-virtual {v3, p2}, Lorg/msgpack/template/builder/FieldEntry;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    .line 107
    iget-object v3, v2, Lorg/msgpack/template/builder/ReflectionTemplateBuilder$ReflectionFieldTemplate;->entry:Lorg/msgpack/template/builder/FieldEntry;

    invoke-virtual {v3}, Lorg/msgpack/template/builder/FieldEntry;->isNotNullable()Z

    move-result v3

    if-nez v3, :cond_3

    .line 111
    invoke-interface {p1}, Lorg/msgpack/packer/Packer;->writeNil()Lorg/msgpack/packer/Packer;

    goto :goto_1

    .line 108
    :cond_3
    new-instance p1, Lorg/msgpack/MessageTypeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, v2, Lorg/msgpack/template/builder/ReflectionTemplateBuilder$ReflectionFieldTemplate;->entry:Lorg/msgpack/template/builder/FieldEntry;

    invoke-virtual {p3}, Lorg/msgpack/template/builder/FieldEntry;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " cannot be null by @NotNullable"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/msgpack/MessageTypeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const/4 v4, 0x1

    .line 113
    invoke-virtual {v2, p1, v3, v4}, Lorg/msgpack/template/builder/ReflectionTemplateBuilder$ReflectionFieldTemplate;->write(Lorg/msgpack/packer/Packer;Ljava/lang/Object;Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    :cond_5
    invoke-interface {p1}, Lorg/msgpack/packer/Packer;->writeArrayEnd()Lorg/msgpack/packer/Packer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 120
    new-instance p2, Lorg/msgpack/MessageTypeException;

    invoke-direct {p2, p1}, Lorg/msgpack/MessageTypeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 118
    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method
