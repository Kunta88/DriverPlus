.class public Ljavassist/bytecode/stackmap/TypeData$NullType;
.super Ljavassist/bytecode/stackmap/TypeData$ClassName;
.source "TypeData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/stackmap/TypeData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NullType"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "null"

    .line 346
    invoke-direct {p0, v0}, Ljavassist/bytecode/stackmap/TypeData$ClassName;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public copy()Ljavassist/bytecode/stackmap/TypeData;
    .locals 1

    .line 350
    new-instance v0, Ljavassist/bytecode/stackmap/TypeData$NullType;

    invoke-direct {v0}, Ljavassist/bytecode/stackmap/TypeData$NullType;-><init>()V

    return-object v0
.end method

.method public getExpected()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 375
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$NullType;->expectedName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "java.lang.Object"

    :cond_0
    return-object v0
.end method

.method protected getTypeData2(Ljavassist/bytecode/ConstPool;Ljava/lang/String;)I
    .locals 1

    const-string v0, "null"

    .line 368
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 371
    :cond_0
    invoke-super {p0, p1, p2}, Ljavassist/bytecode/stackmap/TypeData$ClassName;->getTypeData2(Ljavassist/bytecode/ConstPool;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getTypeTag()I
    .locals 3

    :try_start_0
    const-string v0, "null"

    .line 357
    invoke-virtual {p0}, Ljavassist/bytecode/stackmap/TypeData$NullType;->getExpected()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    return v0

    .line 360
    :cond_0
    invoke-super {p0}, Ljavassist/bytecode/stackmap/TypeData$ClassName;->getTypeTag()I

    move-result v0
    :try_end_0
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 363
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "fatal error: "

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isNullType()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
