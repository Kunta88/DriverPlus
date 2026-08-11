.class public Ljavassist/bytecode/stackmap/TypeData$UninitThis;
.super Ljavassist/bytecode/stackmap/TypeData$UninitData;
.source "TypeData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/stackmap/TypeData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UninitThis"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    .line 521
    invoke-direct {p0, v0, p1}, Ljavassist/bytecode/stackmap/TypeData$UninitData;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 528
    instance-of p1, p1, Ljavassist/bytecode/stackmap/TypeData$UninitThis;

    return p1
.end method

.method public getTypeData(Ljavassist/bytecode/ConstPool;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getTypeTag()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "uninit:this"

    return-object v0
.end method
