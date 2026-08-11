.class public Ljavassist/bytecode/stackmap/TypeData$ClassName;
.super Ljavassist/bytecode/stackmap/TypeData$TypeName;
.source "TypeData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/stackmap/TypeData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClassName"
.end annotation


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 326
    invoke-direct {p0}, Ljavassist/bytecode/stackmap/TypeData$TypeName;-><init>()V

    .line 327
    iput-object p1, p0, Ljavassist/bytecode/stackmap/TypeData$ClassName;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public copy()Ljavassist/bytecode/stackmap/TypeData;
    .locals 2

    .line 331
    new-instance v0, Ljavassist/bytecode/stackmap/TypeData$ClassName;

    iget-object v1, p0, Ljavassist/bytecode/stackmap/TypeData$ClassName;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljavassist/bytecode/stackmap/TypeData$ClassName;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0

    .line 323
    invoke-super {p0, p1}, Ljavassist/bytecode/stackmap/TypeData$TypeName;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic evalExpectedType(Ljavassist/ClassPool;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 323
    invoke-super {p0, p1}, Ljavassist/bytecode/stackmap/TypeData$TypeName;->evalExpectedType(Ljavassist/ClassPool;)V

    return-void
.end method

.method public bridge synthetic getExpected()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 323
    invoke-super {p0}, Ljavassist/bytecode/stackmap/TypeData$TypeName;->getExpected()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 335
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$ClassName;->name:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getTypeData(Ljavassist/bytecode/ConstPool;)I
    .locals 0

    .line 323
    invoke-super {p0, p1}, Ljavassist/bytecode/stackmap/TypeData$TypeName;->getTypeData(Ljavassist/bytecode/ConstPool;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getTypeTag()I
    .locals 1

    .line 323
    invoke-super {p0}, Ljavassist/bytecode/stackmap/TypeData$TypeName;->getTypeTag()I

    move-result v0

    return v0
.end method

.method public bridge synthetic isObjectType()Z
    .locals 1

    .line 323
    invoke-super {p0}, Ljavassist/bytecode/stackmap/TypeData$TypeName;->isObjectType()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic merge(Ljavassist/bytecode/stackmap/TypeData;)V
    .locals 0

    .line 323
    invoke-super {p0, p1}, Ljavassist/bytecode/stackmap/TypeData$TypeName;->merge(Ljavassist/bytecode/stackmap/TypeData;)V

    return-void
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 323
    invoke-super {p0}, Ljavassist/bytecode/stackmap/TypeData$TypeName;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
