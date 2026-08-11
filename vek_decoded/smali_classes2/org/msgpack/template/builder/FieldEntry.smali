.class public abstract Lorg/msgpack/template/builder/FieldEntry;
.super Ljava/lang/Object;
.source "FieldEntry.java"


# instance fields
.field protected option:Lorg/msgpack/template/FieldOption;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    sget-object v0, Lorg/msgpack/template/FieldOption;->IGNORE:Lorg/msgpack/template/FieldOption;

    invoke-direct {p0, v0}, Lorg/msgpack/template/builder/FieldEntry;-><init>(Lorg/msgpack/template/FieldOption;)V

    return-void
.end method

.method public constructor <init>(Lorg/msgpack/template/FieldOption;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/msgpack/template/builder/FieldEntry;->option:Lorg/msgpack/template/FieldOption;

    return-void
.end method


# virtual methods
.method public arrayTypeToString(Ljava/lang/Class;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 77
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    const/4 v0, 0x1

    .line 78
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    :goto_1
    if-ge p1, v0, :cond_1

    const-string v2, "[]"

    .line 85
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 87
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract get(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract getGenericType()Ljava/lang/reflect/Type;
.end method

.method public getJavaTypeName()Ljava/lang/String;
    .locals 2

    .line 67
    invoke-virtual {p0}, Lorg/msgpack/template/builder/FieldEntry;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    invoke-virtual {p0, v0}, Lorg/msgpack/template/builder/FieldEntry;->arrayTypeToString(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 71
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public getOption()Lorg/msgpack/template/FieldOption;
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/msgpack/template/builder/FieldEntry;->option:Lorg/msgpack/template/FieldOption;

    return-object v0
.end method

.method public abstract getType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public isAvailable()Z
    .locals 2

    .line 45
    iget-object v0, p0, Lorg/msgpack/template/builder/FieldEntry;->option:Lorg/msgpack/template/FieldOption;

    sget-object v1, Lorg/msgpack/template/FieldOption;->IGNORE:Lorg/msgpack/template/FieldOption;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNotNullable()Z
    .locals 2

    .line 53
    iget-object v0, p0, Lorg/msgpack/template/builder/FieldEntry;->option:Lorg/msgpack/template/FieldOption;

    sget-object v1, Lorg/msgpack/template/FieldOption;->NOTNULLABLE:Lorg/msgpack/template/FieldOption;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOptional()Z
    .locals 2

    .line 49
    iget-object v0, p0, Lorg/msgpack/template/builder/FieldEntry;->option:Lorg/msgpack/template/FieldOption;

    sget-object v1, Lorg/msgpack/template/FieldOption;->OPTIONAL:Lorg/msgpack/template/FieldOption;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract set(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public setOption(Lorg/msgpack/template/FieldOption;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lorg/msgpack/template/builder/FieldEntry;->option:Lorg/msgpack/template/FieldOption;

    return-void
.end method
