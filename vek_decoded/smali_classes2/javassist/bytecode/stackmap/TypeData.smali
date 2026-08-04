.class public abstract Ljavassist/bytecode/stackmap/TypeData;
.super Ljava/lang/Object;
.source "TypeData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/bytecode/stackmap/TypeData$UninitThis;,
        Ljavassist/bytecode/stackmap/TypeData$UninitData;,
        Ljavassist/bytecode/stackmap/TypeData$ArrayElement;,
        Ljavassist/bytecode/stackmap/TypeData$NullType;,
        Ljavassist/bytecode/stackmap/TypeData$ClassName;,
        Ljavassist/bytecode/stackmap/TypeData$TypeName;,
        Ljavassist/bytecode/stackmap/TypeData$BasicType;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static setType(Ljavassist/bytecode/stackmap/TypeData;Ljava/lang/String;Ljavassist/ClassPool;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 44
    sget-object v0, Ljavassist/bytecode/stackmap/TypeTag;->TOP:Ljavassist/bytecode/stackmap/TypeData;

    if-eq p0, v0, :cond_0

    .line 47
    invoke-virtual {p0, p1, p2}, Ljavassist/bytecode/stackmap/TypeData;->setType(Ljava/lang/String;Ljavassist/ClassPool;)V

    return-void

    .line 45
    :cond_0
    new-instance p0, Ljavassist/bytecode/BadBytecode;

    const-string p1, "unset variable"

    invoke-direct {p0, p1}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract copy()Ljavassist/bytecode/stackmap/TypeData;
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract evalExpectedType(Ljavassist/ClassPool;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation
.end method

.method public abstract getExpected()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation
.end method

.method public getSelf()Ljavassist/bytecode/stackmap/TypeData;
    .locals 0

    return-object p0
.end method

.method public abstract getTypeData(Ljavassist/bytecode/ConstPool;)I
.end method

.method public abstract getTypeTag()I
.end method

.method public is2WordType()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isNullType()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract isObjectType()Z
.end method

.method public abstract merge(Ljavassist/bytecode/stackmap/TypeData;)V
.end method

.method protected abstract setType(Ljava/lang/String;Ljavassist/ClassPool;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation
.end method
