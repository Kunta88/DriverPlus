.class final Lorg/msgpack/template/builder/ReflectionTemplateBuilder$FieldTemplateImpl;
.super Lorg/msgpack/template/builder/ReflectionTemplateBuilder$ReflectionFieldTemplate;
.source "ReflectionTemplateBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/msgpack/template/builder/ReflectionTemplateBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FieldTemplateImpl"
.end annotation


# instance fields
.field private template:Lorg/msgpack/template/Template;


# direct methods
.method public constructor <init>(Lorg/msgpack/template/builder/FieldEntry;Lorg/msgpack/template/Template;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lorg/msgpack/template/builder/ReflectionTemplateBuilder$ReflectionFieldTemplate;-><init>(Lorg/msgpack/template/builder/FieldEntry;)V

    .line 56
    iput-object p2, p0, Lorg/msgpack/template/builder/ReflectionTemplateBuilder$FieldTemplateImpl;->template:Lorg/msgpack/template/Template;

    return-void
.end method


# virtual methods
.method public read(Lorg/msgpack/unpacker/Unpacker;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lorg/msgpack/template/builder/ReflectionTemplateBuilder$FieldTemplateImpl;->entry:Lorg/msgpack/template/builder/FieldEntry;

    invoke-virtual {v0, p2}, Lorg/msgpack/template/builder/FieldEntry;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lorg/msgpack/template/builder/ReflectionTemplateBuilder$FieldTemplateImpl;->template:Lorg/msgpack/template/Template;

    invoke-interface {v1, p1, v0, p3}, Lorg/msgpack/template/Template;->read(Lorg/msgpack/unpacker/Unpacker;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, v0, :cond_0

    .line 72
    iget-object p3, p0, Lorg/msgpack/template/builder/ReflectionTemplateBuilder$FieldTemplateImpl;->entry:Lorg/msgpack/template/builder/FieldEntry;

    invoke-virtual {p3, p2, p1}, Lorg/msgpack/template/builder/FieldEntry;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-object p1
.end method

.method public write(Lorg/msgpack/packer/Packer;Ljava/lang/Object;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lorg/msgpack/template/builder/ReflectionTemplateBuilder$FieldTemplateImpl;->template:Lorg/msgpack/template/Template;

    invoke-interface {v0, p1, p2, p3}, Lorg/msgpack/template/Template;->write(Lorg/msgpack/packer/Packer;Ljava/lang/Object;Z)V

    return-void
.end method
