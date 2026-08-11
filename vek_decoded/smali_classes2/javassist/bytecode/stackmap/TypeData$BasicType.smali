.class public Ljavassist/bytecode/stackmap/TypeData$BasicType;
.super Ljavassist/bytecode/stackmap/TypeData;
.source "TypeData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/stackmap/TypeData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "BasicType"
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private typeTag:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljavassist/bytecode/stackmap/TypeData;-><init>()V

    .line 82
    iput-object p1, p0, Ljavassist/bytecode/stackmap/TypeData$BasicType;->name:Ljava/lang/String;

    .line 83
    iput p2, p0, Ljavassist/bytecode/stackmap/TypeData$BasicType;->typeTag:I

    return-void
.end method


# virtual methods
.method public copy()Ljavassist/bytecode/stackmap/TypeData;
    .locals 0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 109
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$BasicType;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$BasicType;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeData(Ljavassist/bytecode/ConstPool;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getTypeTag()I
    .locals 1

    .line 92
    iget v0, p0, Ljavassist/bytecode/stackmap/TypeData$BasicType;->typeTag:I

    return v0
.end method

.method public is2WordType()Z
    .locals 2

    .line 98
    iget v0, p0, Ljavassist/bytecode/stackmap/TypeData$BasicType;->typeTag:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isObjectType()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public merge(Ljavassist/bytecode/stackmap/TypeData;)V
    .locals 0

    return-void
.end method

.method protected setType(Ljava/lang/String;Ljavassist/ClassPool;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 117
    new-instance p2, Ljavassist/bytecode/BadBytecode;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "conflict: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljavassist/bytecode/stackmap/TypeData$BasicType;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$BasicType;->name:Ljava/lang/String;

    return-object v0
.end method
