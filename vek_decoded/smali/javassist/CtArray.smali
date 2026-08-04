.class final Ljavassist/CtArray;
.super Ljavassist/CtClass;
.source "CtArray.java"


# instance fields
.field private interfaces:[Ljavassist/CtClass;

.field protected pool:Ljavassist/ClassPool;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljavassist/ClassPool;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Ljavassist/CtClass;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 39
    iput-object p1, p0, Ljavassist/CtArray;->interfaces:[Ljavassist/CtClass;

    .line 28
    iput-object p2, p0, Ljavassist/CtArray;->pool:Ljavassist/ClassPool;

    return-void
.end method


# virtual methods
.method public getClassPool()Ljavassist/ClassPool;
    .locals 1

    .line 32
    iget-object v0, p0, Ljavassist/CtArray;->pool:Ljavassist/ClassPool;

    return-object v0
.end method

.method public getComponentType()Ljavassist/CtClass;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 82
    invoke-virtual {p0}, Ljavassist/CtArray;->getName()Ljava/lang/String;

    move-result-object v0

    .line 83
    iget-object v1, p0, Ljavassist/CtArray;->pool:Ljavassist/ClassPool;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v0

    return-object v0
.end method

.method public getConstructors()[Ljavassist/CtConstructor;
    .locals 1

    .line 107
    :try_start_0
    invoke-virtual {p0}, Ljavassist/CtArray;->getSuperclass()Ljavassist/CtClass;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/CtClass;->getConstructors()[Ljavassist/CtConstructor;

    move-result-object v0
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 110
    :catch_0
    invoke-super {p0}, Ljavassist/CtClass;->getConstructors()[Ljavassist/CtConstructor;

    move-result-object v0

    return-object v0
.end method

.method public getInterfaces()[Ljavassist/CtClass;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Ljavassist/CtArray;->interfaces:[Ljavassist/CtClass;

    if-nez v0, :cond_0

    .line 53
    const-class v0, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    .line 56
    array-length v1, v0

    new-array v1, v1, [Ljavassist/CtClass;

    iput-object v1, p0, Ljavassist/CtArray;->interfaces:[Ljavassist/CtClass;

    const/4 v1, 0x0

    .line 57
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 58
    iget-object v2, p0, Ljavassist/CtArray;->interfaces:[Ljavassist/CtClass;

    iget-object v3, p0, Ljavassist/CtArray;->pool:Ljavassist/ClassPool;

    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    :cond_0
    iget-object v0, p0, Ljavassist/CtArray;->interfaces:[Ljavassist/CtClass;

    return-object v0
.end method

.method public getMethod(Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtMethod;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 102
    invoke-virtual {p0}, Ljavassist/CtArray;->getSuperclass()Ljavassist/CtClass;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljavassist/CtClass;->getMethod(Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtMethod;

    move-result-object p1

    return-object p1
.end method

.method public getMethods()[Ljavassist/CtMethod;
    .locals 1

    .line 92
    :try_start_0
    invoke-virtual {p0}, Ljavassist/CtArray;->getSuperclass()Ljavassist/CtClass;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/CtClass;->getMethods()[Ljavassist/CtMethod;

    move-result-object v0
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 95
    :catch_0
    invoke-super {p0}, Ljavassist/CtClass;->getMethods()[Ljavassist/CtMethod;

    move-result-object v0

    return-object v0
.end method

.method public getModifiers()I
    .locals 2

    const/16 v0, 0x10

    .line 44
    :try_start_0
    invoke-virtual {p0}, Ljavassist/CtArray;->getComponentType()Ljavassist/CtClass;

    move-result-object v1

    invoke-virtual {v1}, Ljavassist/CtClass;->getModifiers()I

    move-result v1
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    :catch_0
    return v0
.end method

.method public getSuperclass()Ljavassist/CtClass;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Ljavassist/CtArray;->pool:Ljavassist/ClassPool;

    const-string v1, "java.lang.Object"

    invoke-virtual {v0, v1}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v0

    return-object v0
.end method

.method public isArray()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public subtypeOf(Ljavassist/CtClass;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 65
    invoke-super {p0, p1}, Ljavassist/CtClass;->subtypeOf(Ljavassist/CtClass;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 68
    :cond_0
    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "java.lang.Object"

    .line 69
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 72
    :cond_1
    invoke-virtual {p0}, Ljavassist/CtArray;->getInterfaces()[Ljavassist/CtClass;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 73
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_3

    .line 74
    aget-object v4, v0, v3

    invoke-virtual {v4, p1}, Ljavassist/CtClass;->subtypeOf(Ljavassist/CtClass;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 77
    :cond_3
    invoke-virtual {p1}, Ljavassist/CtClass;->isArray()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Ljavassist/CtArray;->getComponentType()Ljavassist/CtClass;

    move-result-object v0

    invoke-virtual {p1}, Ljavassist/CtClass;->getComponentType()Ljavassist/CtClass;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljavassist/CtClass;->subtypeOf(Ljavassist/CtClass;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    return v1
.end method
