.class public Ljavassist/bytecode/analysis/MultiArrayType;
.super Ljavassist/bytecode/analysis/Type;
.source "MultiArrayType.java"


# instance fields
.field private component:Ljavassist/bytecode/analysis/MultiType;

.field private dims:I


# direct methods
.method public constructor <init>(Ljavassist/bytecode/analysis/MultiType;I)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, v0}, Ljavassist/bytecode/analysis/Type;-><init>(Ljavassist/CtClass;)V

    .line 33
    iput-object p1, p0, Ljavassist/bytecode/analysis/MultiArrayType;->component:Ljavassist/bytecode/analysis/MultiType;

    .line 34
    iput p2, p0, Ljavassist/bytecode/analysis/MultiArrayType;->dims:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 119
    instance-of v0, p1, Ljavassist/bytecode/analysis/MultiArrayType;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 121
    :cond_0
    check-cast p1, Ljavassist/bytecode/analysis/MultiArrayType;

    .line 123
    iget-object v0, p0, Ljavassist/bytecode/analysis/MultiArrayType;->component:Ljavassist/bytecode/analysis/MultiType;

    iget-object v2, p1, Ljavassist/bytecode/analysis/MultiArrayType;->component:Ljavassist/bytecode/analysis/MultiType;

    invoke-virtual {v0, v2}, Ljavassist/bytecode/analysis/MultiType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Ljavassist/bytecode/analysis/MultiArrayType;->dims:I

    iget p1, p1, Ljavassist/bytecode/analysis/MultiArrayType;->dims:I

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getComponent()Ljavassist/bytecode/analysis/Type;
    .locals 4

    .line 64
    iget v0, p0, Ljavassist/bytecode/analysis/MultiArrayType;->dims:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ljavassist/bytecode/analysis/MultiArrayType;->component:Ljavassist/bytecode/analysis/MultiType;

    goto :goto_0

    :cond_0
    new-instance v0, Ljavassist/bytecode/analysis/MultiArrayType;

    iget-object v2, p0, Ljavassist/bytecode/analysis/MultiArrayType;->component:Ljavassist/bytecode/analysis/MultiType;

    iget v3, p0, Ljavassist/bytecode/analysis/MultiArrayType;->dims:I

    sub-int/2addr v3, v1

    invoke-direct {v0, v2, v3}, Ljavassist/bytecode/analysis/MultiArrayType;-><init>(Ljavassist/bytecode/analysis/MultiType;I)V

    :goto_0
    return-object v0
.end method

.method public getCtClass()Ljavassist/CtClass;
    .locals 3

    .line 38
    iget-object v0, p0, Ljavassist/bytecode/analysis/MultiArrayType;->component:Ljavassist/bytecode/analysis/MultiType;

    invoke-virtual {v0}, Ljavassist/bytecode/analysis/MultiType;->getCtClass()Ljavassist/CtClass;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 42
    :cond_0
    invoke-virtual {v0}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v1

    if-nez v1, :cond_1

    .line 44
    invoke-static {}, Ljavassist/ClassPool;->getDefault()Ljavassist/ClassPool;

    move-result-object v1

    .line 46
    :cond_1
    invoke-virtual {v0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Ljavassist/bytecode/analysis/MultiArrayType;->dims:I

    invoke-virtual {p0, v0, v2}, Ljavassist/bytecode/analysis/MultiArrayType;->arrayName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 49
    :try_start_0
    invoke-virtual {v1, v0}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v0
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 51
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getDimensions()I
    .locals 1

    .line 60
    iget v0, p0, Ljavassist/bytecode/analysis/MultiArrayType;->dims:I

    return v0
.end method

.method public getSize()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isArray()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isAssignableFrom(Ljavassist/bytecode/analysis/Type;)Z
    .locals 1

    .line 76
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not implemented"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isAssignableTo(Ljavassist/bytecode/analysis/Type;)Z
    .locals 4

    .line 84
    invoke-virtual {p1}, Ljavassist/bytecode/analysis/Type;->getCtClass()Ljavassist/CtClass;

    move-result-object v0

    sget-object v1, Ljavassist/bytecode/analysis/Type;->OBJECT:Ljavassist/bytecode/analysis/Type;

    invoke-virtual {v1}, Ljavassist/bytecode/analysis/Type;->getCtClass()Ljavassist/CtClass;

    move-result-object v1

    invoke-static {v0, v1}, Ljavassist/bytecode/analysis/MultiArrayType;->eq(Ljavassist/CtClass;Ljavassist/CtClass;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 87
    :cond_0
    invoke-virtual {p1}, Ljavassist/bytecode/analysis/Type;->getCtClass()Ljavassist/CtClass;

    move-result-object v0

    sget-object v2, Ljavassist/bytecode/analysis/Type;->CLONEABLE:Ljavassist/bytecode/analysis/Type;

    invoke-virtual {v2}, Ljavassist/bytecode/analysis/Type;->getCtClass()Ljavassist/CtClass;

    move-result-object v2

    invoke-static {v0, v2}, Ljavassist/bytecode/analysis/MultiArrayType;->eq(Ljavassist/CtClass;Ljavassist/CtClass;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 90
    :cond_1
    invoke-virtual {p1}, Ljavassist/bytecode/analysis/Type;->getCtClass()Ljavassist/CtClass;

    move-result-object v0

    sget-object v2, Ljavassist/bytecode/analysis/Type;->SERIALIZABLE:Ljavassist/bytecode/analysis/Type;

    invoke-virtual {v2}, Ljavassist/bytecode/analysis/Type;->getCtClass()Ljavassist/CtClass;

    move-result-object v2

    invoke-static {v0, v2}, Ljavassist/bytecode/analysis/MultiArrayType;->eq(Ljavassist/CtClass;Ljavassist/CtClass;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 93
    :cond_2
    invoke-virtual {p1}, Ljavassist/bytecode/analysis/Type;->isArray()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    return v2

    .line 96
    :cond_3
    invoke-virtual {p0, p1}, Ljavassist/bytecode/analysis/MultiArrayType;->getRootComponent(Ljavassist/bytecode/analysis/Type;)Ljavassist/bytecode/analysis/Type;

    move-result-object v0

    .line 97
    invoke-virtual {p1}, Ljavassist/bytecode/analysis/Type;->getDimensions()I

    move-result p1

    .line 99
    iget v3, p0, Ljavassist/bytecode/analysis/MultiArrayType;->dims:I

    if-le p1, v3, :cond_4

    return v2

    :cond_4
    if-ge p1, v3, :cond_8

    .line 103
    invoke-virtual {v0}, Ljavassist/bytecode/analysis/Type;->getCtClass()Ljavassist/CtClass;

    move-result-object p1

    sget-object v3, Ljavassist/bytecode/analysis/Type;->OBJECT:Ljavassist/bytecode/analysis/Type;

    invoke-virtual {v3}, Ljavassist/bytecode/analysis/Type;->getCtClass()Ljavassist/CtClass;

    move-result-object v3

    invoke-static {p1, v3}, Ljavassist/bytecode/analysis/MultiArrayType;->eq(Ljavassist/CtClass;Ljavassist/CtClass;)Z

    move-result p1

    if-eqz p1, :cond_5

    return v1

    .line 106
    :cond_5
    invoke-virtual {v0}, Ljavassist/bytecode/analysis/Type;->getCtClass()Ljavassist/CtClass;

    move-result-object p1

    sget-object v3, Ljavassist/bytecode/analysis/Type;->CLONEABLE:Ljavassist/bytecode/analysis/Type;

    invoke-virtual {v3}, Ljavassist/bytecode/analysis/Type;->getCtClass()Ljavassist/CtClass;

    move-result-object v3

    invoke-static {p1, v3}, Ljavassist/bytecode/analysis/MultiArrayType;->eq(Ljavassist/CtClass;Ljavassist/CtClass;)Z

    move-result p1

    if-eqz p1, :cond_6

    return v1

    .line 109
    :cond_6
    invoke-virtual {v0}, Ljavassist/bytecode/analysis/Type;->getCtClass()Ljavassist/CtClass;

    move-result-object p1

    sget-object v0, Ljavassist/bytecode/analysis/Type;->SERIALIZABLE:Ljavassist/bytecode/analysis/Type;

    invoke-virtual {v0}, Ljavassist/bytecode/analysis/Type;->getCtClass()Ljavassist/CtClass;

    move-result-object v0

    invoke-static {p1, v0}, Ljavassist/bytecode/analysis/MultiArrayType;->eq(Ljavassist/CtClass;Ljavassist/CtClass;)Z

    move-result p1

    if-eqz p1, :cond_7

    return v1

    :cond_7
    return v2

    .line 115
    :cond_8
    iget-object p1, p0, Ljavassist/bytecode/analysis/MultiArrayType;->component:Ljavassist/bytecode/analysis/MultiType;

    invoke-virtual {p1, v0}, Ljavassist/bytecode/analysis/MultiType;->isAssignableTo(Ljavassist/bytecode/analysis/Type;)Z

    move-result p1

    return p1
.end method

.method public isReference()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method popChanged()Z
    .locals 1

    .line 56
    iget-object v0, p0, Ljavassist/bytecode/analysis/MultiArrayType;->component:Ljavassist/bytecode/analysis/MultiType;

    invoke-virtual {v0}, Ljavassist/bytecode/analysis/MultiType;->popChanged()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 128
    iget-object v0, p0, Ljavassist/bytecode/analysis/MultiArrayType;->component:Ljavassist/bytecode/analysis/MultiType;

    invoke-virtual {v0}, Ljavassist/bytecode/analysis/MultiType;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Ljavassist/bytecode/analysis/MultiArrayType;->dims:I

    invoke-virtual {p0, v0, v1}, Ljavassist/bytecode/analysis/MultiArrayType;->arrayName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
