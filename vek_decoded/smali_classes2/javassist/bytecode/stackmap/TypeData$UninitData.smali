.class public Ljavassist/bytecode/stackmap/TypeData$UninitData;
.super Ljavassist/bytecode/stackmap/TypeData;
.source "TypeData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/stackmap/TypeData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UninitData"
.end annotation


# instance fields
.field className:Ljava/lang/String;

.field initialized:Z

.field offset:I


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 471
    invoke-direct {p0}, Ljavassist/bytecode/stackmap/TypeData;-><init>()V

    .line 472
    iput-object p2, p0, Ljavassist/bytecode/stackmap/TypeData$UninitData;->className:Ljava/lang/String;

    .line 473
    iput p1, p0, Ljavassist/bytecode/stackmap/TypeData$UninitData;->offset:I

    const/4 p1, 0x0

    .line 474
    iput-boolean p1, p0, Ljavassist/bytecode/stackmap/TypeData$UninitData;->initialized:Z

    return-void
.end method


# virtual methods
.method public copy()Ljavassist/bytecode/stackmap/TypeData;
    .locals 2

    .line 499
    new-instance v0, Ljavassist/bytecode/stackmap/TypeData$ClassName;

    iget-object v1, p0, Ljavassist/bytecode/stackmap/TypeData$UninitData;->className:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljavassist/bytecode/stackmap/TypeData$ClassName;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 483
    instance-of v0, p1, Ljavassist/bytecode/stackmap/TypeData$UninitData;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 484
    check-cast p1, Ljavassist/bytecode/stackmap/TypeData$UninitData;

    .line 485
    iget v0, p0, Ljavassist/bytecode/stackmap/TypeData$UninitData;->offset:I

    iget v2, p1, Ljavassist/bytecode/stackmap/TypeData$UninitData;->offset:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$UninitData;->className:Ljava/lang/String;

    iget-object p1, p1, Ljavassist/bytecode/stackmap/TypeData$UninitData;->className:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public evalExpectedType(Ljavassist/ClassPool;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    return-void
.end method

.method public getExpected()Ljava/lang/String;
    .locals 1

    .line 514
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$UninitData;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 511
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$UninitData;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getSelf()Ljavassist/bytecode/stackmap/TypeData;
    .locals 1

    .line 492
    iget-boolean v0, p0, Ljavassist/bytecode/stackmap/TypeData$UninitData;->initialized:Z

    if-eqz v0, :cond_0

    .line 493
    invoke-virtual {p0}, Ljavassist/bytecode/stackmap/TypeData$UninitData;->copy()Ljavassist/bytecode/stackmap/TypeData;

    move-result-object v0

    return-object v0

    :cond_0
    return-object p0
.end method

.method public getTypeData(Ljavassist/bytecode/ConstPool;)I
    .locals 0

    .line 480
    iget p1, p0, Ljavassist/bytecode/stackmap/TypeData$UninitData;->offset:I

    return p1
.end method

.method public getTypeTag()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public isObjectType()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public merge(Ljavassist/bytecode/stackmap/TypeData;)V
    .locals 0

    return-void
.end method

.method protected setType(Ljava/lang/String;Ljavassist/ClassPool;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    const/4 p1, 0x1

    .line 505
    iput-boolean p1, p0, Ljavassist/bytecode/stackmap/TypeData$UninitData;->initialized:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uninit:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljavassist/bytecode/stackmap/TypeData$UninitData;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljavassist/bytecode/stackmap/TypeData$UninitData;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
