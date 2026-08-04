.class public Ljavassist/bytecode/stackmap/TypeData$ArrayElement;
.super Ljavassist/bytecode/stackmap/TypeData$TypeName;
.source "TypeData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/stackmap/TypeData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArrayElement"
.end annotation


# instance fields
.field array:Ljavassist/bytecode/stackmap/TypeData;


# direct methods
.method public constructor <init>(Ljavassist/bytecode/stackmap/TypeData;)V
    .locals 0

    .line 395
    invoke-direct {p0}, Ljavassist/bytecode/stackmap/TypeData$TypeName;-><init>()V

    .line 396
    iput-object p1, p0, Ljavassist/bytecode/stackmap/TypeData$ArrayElement;->array:Ljavassist/bytecode/stackmap/TypeData;

    return-void
.end method

.method public static getArrayType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 446
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_0

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 449
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getElementType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    .line 453
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x4c

    if-ne v1, v2, :cond_0

    const/4 v1, 0x2

    .line 455
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2f

    const/16 v1, 0x2e

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v2, 0x5b

    if-ne v1, v2, :cond_1

    .line 457
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private getName2(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 417
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x5b

    if-ne v0, v2, :cond_1

    .line 418
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x4c

    if-ne v0, v3, :cond_0

    const/4 v0, 0x2

    .line 420
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x2f

    const/16 v1, 0x2e

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    if-ne v0, v2, :cond_1

    .line 422
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 425
    :cond_1
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$ArrayElement;->array:Ljavassist/bytecode/stackmap/TypeData;

    invoke-virtual {v0}, Ljavassist/bytecode/stackmap/TypeData;->isNullType()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "java.lang.Object"

    return-object p1

    .line 428
    :cond_2
    new-instance v0, Ljavassist/bytecode/BadBytecode;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad array type for AALOAD: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public copy()Ljavassist/bytecode/stackmap/TypeData;
    .locals 2

    .line 400
    new-instance v0, Ljavassist/bytecode/stackmap/TypeData$ArrayElement;

    iget-object v1, p0, Ljavassist/bytecode/stackmap/TypeData$ArrayElement;->array:Ljavassist/bytecode/stackmap/TypeData;

    invoke-direct {v0, v1}, Ljavassist/bytecode/stackmap/TypeData$ArrayElement;-><init>(Ljavassist/bytecode/stackmap/TypeData;)V

    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0

    .line 392
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

    .line 392
    invoke-super {p0, p1}, Ljavassist/bytecode/stackmap/TypeData$TypeName;->evalExpectedType(Ljavassist/ClassPool;)V

    return-void
.end method

.method public getExpected()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 433
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$ArrayElement;->equivalences:Ljava/util/ArrayList;

    .line 434
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 435
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$ArrayElement;->array:Ljavassist/bytecode/stackmap/TypeData;

    invoke-virtual {v0}, Ljavassist/bytecode/stackmap/TypeData;->getExpected()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavassist/bytecode/stackmap/TypeData$ArrayElement;->getName2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 437
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$ArrayElement;->expectedName:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "java.lang.Object"

    :cond_1
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 413
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$ArrayElement;->array:Ljavassist/bytecode/stackmap/TypeData;

    invoke-virtual {v0}, Ljavassist/bytecode/stackmap/TypeData;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavassist/bytecode/stackmap/TypeData$ArrayElement;->getName2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTypeData(Ljavassist/bytecode/ConstPool;)I
    .locals 0

    .line 392
    invoke-super {p0, p1}, Ljavassist/bytecode/stackmap/TypeData$TypeName;->getTypeData(Ljavassist/bytecode/ConstPool;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getTypeTag()I
    .locals 1

    .line 392
    invoke-super {p0}, Ljavassist/bytecode/stackmap/TypeData$TypeName;->getTypeTag()I

    move-result v0

    return v0
.end method

.method public isNullType()Z
    .locals 1

    .line 404
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$ArrayElement;->array:Ljavassist/bytecode/stackmap/TypeData;

    invoke-virtual {v0}, Ljavassist/bytecode/stackmap/TypeData;->isNullType()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isObjectType()Z
    .locals 1

    .line 392
    invoke-super {p0}, Ljavassist/bytecode/stackmap/TypeData$TypeName;->isObjectType()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic merge(Ljavassist/bytecode/stackmap/TypeData;)V
    .locals 0

    .line 392
    invoke-super {p0, p1}, Ljavassist/bytecode/stackmap/TypeData$TypeName;->merge(Ljavassist/bytecode/stackmap/TypeData;)V

    return-void
.end method

.method protected setType(Ljava/lang/String;Ljavassist/ClassPool;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 408
    invoke-super {p0, p1, p2}, Ljavassist/bytecode/stackmap/TypeData$TypeName;->setType(Ljava/lang/String;Ljavassist/ClassPool;)V

    .line 409
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$ArrayElement;->array:Ljavassist/bytecode/stackmap/TypeData;

    invoke-static {p1}, Ljavassist/bytecode/stackmap/TypeData$ArrayElement;->getArrayType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljavassist/bytecode/stackmap/TypeData;->setType(Ljava/lang/String;Ljavassist/ClassPool;)V

    return-void
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 392
    invoke-super {p0}, Ljavassist/bytecode/stackmap/TypeData$TypeName;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
