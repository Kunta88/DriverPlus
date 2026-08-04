.class public Lorg/msgpack/template/builder/DefaultFieldEntry;
.super Lorg/msgpack/template/builder/FieldEntry;
.source "DefaultFieldEntry.java"


# instance fields
.field protected field:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 30
    sget-object v0, Lorg/msgpack/template/FieldOption;->IGNORE:Lorg/msgpack/template/FieldOption;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lorg/msgpack/template/builder/DefaultFieldEntry;-><init>(Ljava/lang/reflect/Field;Lorg/msgpack/template/FieldOption;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Field;Lorg/msgpack/template/FieldOption;)V
    .locals 0

    .line 38
    invoke-direct {p0, p2}, Lorg/msgpack/template/builder/FieldEntry;-><init>(Lorg/msgpack/template/FieldOption;)V

    .line 39
    iput-object p1, p0, Lorg/msgpack/template/builder/DefaultFieldEntry;->field:Ljava/lang/reflect/Field;

    return-void
.end method

.method public constructor <init>(Lorg/msgpack/template/builder/DefaultFieldEntry;)V
    .locals 1

    .line 34
    iget-object v0, p1, Lorg/msgpack/template/builder/DefaultFieldEntry;->field:Ljava/lang/reflect/Field;

    iget-object p1, p1, Lorg/msgpack/template/builder/DefaultFieldEntry;->option:Lorg/msgpack/template/FieldOption;

    invoke-direct {p0, v0, p1}, Lorg/msgpack/template/builder/DefaultFieldEntry;-><init>(Ljava/lang/reflect/Field;Lorg/msgpack/template/FieldOption;)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 68
    :try_start_0
    invoke-virtual {p0}, Lorg/msgpack/template/builder/DefaultFieldEntry;->getField()Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 72
    new-instance v0, Lorg/msgpack/MessageTypeException;

    invoke-direct {v0, p1}, Lorg/msgpack/MessageTypeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 70
    new-instance v0, Lorg/msgpack/MessageTypeException;

    invoke-direct {v0, p1}, Lorg/msgpack/MessageTypeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getField()Ljava/lang/reflect/Field;
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/msgpack/template/builder/DefaultFieldEntry;->field:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public getGenericType()Ljava/lang/reflect/Type;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/msgpack/template/builder/DefaultFieldEntry;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/msgpack/template/builder/DefaultFieldEntry;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lorg/msgpack/template/builder/DefaultFieldEntry;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 79
    :try_start_0
    iget-object v0, p0, Lorg/msgpack/template/builder/DefaultFieldEntry;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 83
    new-instance p2, Lorg/msgpack/MessageTypeException;

    invoke-direct {p2, p1}, Lorg/msgpack/MessageTypeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 81
    new-instance p2, Lorg/msgpack/MessageTypeException;

    invoke-direct {p2, p1}, Lorg/msgpack/MessageTypeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public setField(Ljava/lang/reflect/Field;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lorg/msgpack/template/builder/DefaultFieldEntry;->field:Ljava/lang/reflect/Field;

    return-void
.end method
