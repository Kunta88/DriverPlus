.class public Ljavassist/bytecode/stackmap/TypedBlock;
.super Ljavassist/bytecode/stackmap/BasicBlock;
.source "TypedBlock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/bytecode/stackmap/TypedBlock$Maker;
    }
.end annotation


# instance fields
.field public inputs:[Z

.field public localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

.field public localsUsage:[B

.field public numLocals:I

.field public stackTop:I

.field public stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

.field public status:I

.field public updating:Z


# direct methods
.method protected constructor <init>(I)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Ljavassist/bytecode/stackmap/BasicBlock;-><init>(I)V

    const/4 p1, 0x0

    .line 62
    iput-object p1, p0, Ljavassist/bytecode/stackmap/TypedBlock;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    .line 63
    iput-object p1, p0, Ljavassist/bytecode/stackmap/TypedBlock;->inputs:[Z

    const/4 p1, 0x0

    .line 64
    iput-boolean p1, p0, Ljavassist/bytecode/stackmap/TypedBlock;->updating:Z

    return-void
.end method

.method private static descToTag(Ljava/lang/String;II[Ljavassist/bytecode/stackmap/TypeData;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 185
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x29

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    move v2, p1

    :goto_0
    const/16 v3, 0x5b

    if-ne v0, v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    .line 191
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    :cond_1
    const/16 v3, 0x4c

    if-ne v0, v3, :cond_3

    const/16 v0, 0x3b

    add-int/lit8 v2, v2, 0x1

    .line 195
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-lez v1, :cond_2

    .line 197
    new-instance v1, Ljavassist/bytecode/stackmap/TypeData$ClassName;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljavassist/bytecode/stackmap/TypeData$ClassName;-><init>(Ljava/lang/String;)V

    aput-object v1, p3, p2

    goto :goto_1

    .line 199
    :cond_2
    new-instance v1, Ljavassist/bytecode/stackmap/TypeData$ClassName;

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x2f

    const/16 v2, 0x2e

    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljavassist/bytecode/stackmap/TypeData$ClassName;-><init>(Ljava/lang/String;)V

    aput-object v1, p3, p2

    :goto_1
    return v0

    :cond_3
    if-lez v1, :cond_4

    .line 204
    new-instance v0, Ljavassist/bytecode/stackmap/TypeData$ClassName;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljavassist/bytecode/stackmap/TypeData$ClassName;-><init>(Ljava/lang/String;)V

    aput-object v0, p3, p2

    return v2

    .line 208
    :cond_4
    invoke-static {v0}, Ljavassist/bytecode/stackmap/TypedBlock;->toPrimitiveTag(C)Ljavassist/bytecode/stackmap/TypeData;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 212
    aput-object p1, p3, p2

    add-int/lit8 v2, v2, 0x1

    return v2

    .line 210
    :cond_5
    new-instance p1, Ljavassist/bytecode/BadBytecode;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "bad method descriptor: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public static getRetType(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/16 v0, 0x29

    .line 238
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const-string v1, "java.lang.Object"

    if-gez v0, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v2, v0, 0x1

    .line 242
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5b

    if-ne v3, v4, :cond_1

    .line 244
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 v2, 0x4c

    if-ne v3, v2, :cond_2

    add-int/lit8 v0, v0, 0x2

    .line 246
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2f

    const/16 v1, 0x2e

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v1
.end method

.method public static makeBlocks(Ljavassist/bytecode/MethodInfo;Ljavassist/bytecode/CodeAttribute;Z)[Ljavassist/bytecode/stackmap/TypedBlock;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 45
    new-instance v0, Ljavassist/bytecode/stackmap/TypedBlock$Maker;

    invoke-direct {v0}, Ljavassist/bytecode/stackmap/TypedBlock$Maker;-><init>()V

    invoke-virtual {v0, p0}, Ljavassist/bytecode/stackmap/TypedBlock$Maker;->make(Ljavassist/bytecode/MethodInfo;)[Ljavassist/bytecode/stackmap/BasicBlock;

    move-result-object v0

    check-cast v0, [Ljavassist/bytecode/stackmap/TypedBlock;

    check-cast v0, [Ljavassist/bytecode/stackmap/TypedBlock;

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 46
    array-length p2, v0

    const/4 v2, 0x2

    if-ge p2, v2, :cond_1

    .line 47
    array-length p2, v0

    if-eqz p2, :cond_0

    aget-object p2, v0, v1

    iget p2, p2, Ljavassist/bytecode/stackmap/TypedBlock;->incoming:I

    if-nez p2, :cond_1

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 50
    :cond_1
    invoke-virtual {p0}, Ljavassist/bytecode/MethodInfo;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object p2

    .line 51
    invoke-virtual {p0}, Ljavassist/bytecode/MethodInfo;->getAccessFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    const/4 v8, 0x1

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    .line 52
    :goto_0
    aget-object v3, v0, v1

    invoke-virtual {p1}, Ljavassist/bytecode/CodeAttribute;->getMaxStack()I

    move-result v4

    invoke-virtual {p1}, Ljavassist/bytecode/CodeAttribute;->getMaxLocals()I

    move-result v5

    invoke-virtual {p2}, Ljavassist/bytecode/ConstPool;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Ljavassist/bytecode/MethodInfo;->isConstructor()Z

    move-result v9

    invoke-virtual/range {v3 .. v9}, Ljavassist/bytecode/stackmap/TypedBlock;->initFirstBlock(IILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 55
    new-instance p0, Ljavassist/bytecode/stackmap/Liveness;

    invoke-direct {p0}, Ljavassist/bytecode/stackmap/Liveness;-><init>()V

    invoke-virtual {p1}, Ljavassist/bytecode/CodeAttribute;->iterator()Ljavassist/bytecode/CodeIterator;

    move-result-object p2

    invoke-virtual {p1}, Ljavassist/bytecode/CodeAttribute;->getMaxLocals()I

    move-result p1

    aget-object v1, v0, v1

    iget-object v1, v1, Ljavassist/bytecode/stackmap/TypedBlock;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    invoke-virtual {p0, p2, v0, p1, v1}, Ljavassist/bytecode/stackmap/Liveness;->compute(Ljavassist/bytecode/CodeIterator;[Ljavassist/bytecode/stackmap/TypedBlock;I[Ljavassist/bytecode/stackmap/TypeData;)V

    return-object v0
.end method

.method private printTypes(Ljava/lang/StringBuffer;I[Ljavassist/bytecode/stackmap/TypeData;)V
    .locals 2

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_3

    if-lez v0, :cond_1

    const-string v1, ", "

    .line 88
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    :cond_1
    aget-object v1, p3, v0

    if-nez v1, :cond_2

    const-string v1, "<>"

    goto :goto_1

    .line 91
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static toPrimitiveTag(C)Ljavassist/bytecode/stackmap/TypeData;
    .locals 1

    const/16 v0, 0x46

    if-eq p0, v0, :cond_2

    const/16 v0, 0x53

    if-eq p0, v0, :cond_1

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x49

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4a

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 230
    :pswitch_0
    sget-object p0, Ljavassist/bytecode/stackmap/TypeTag;->DOUBLE:Ljavassist/bytecode/stackmap/TypeData;

    return-object p0

    .line 226
    :cond_0
    sget-object p0, Ljavassist/bytecode/stackmap/TypeTag;->LONG:Ljavassist/bytecode/stackmap/TypeData;

    return-object p0

    .line 224
    :cond_1
    :pswitch_1
    sget-object p0, Ljavassist/bytecode/stackmap/TypeTag;->INTEGER:Ljavassist/bytecode/stackmap/TypeData;

    return-object p0

    .line 228
    :cond_2
    sget-object p0, Ljavassist/bytecode/stackmap/TypeTag;->FLOAT:Ljavassist/bytecode/stackmap/TypeData;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public alreadySet()Z
    .locals 1

    .line 96
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypedBlock;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method initFirstBlock(IILjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    const/4 v0, 0x0

    .line 152
    invoke-virtual {p4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x28

    if-ne v1, v2, :cond_5

    .line 155
    iput v0, p0, Ljavassist/bytecode/stackmap/TypedBlock;->stackTop:I

    .line 156
    new-array p1, p1, [Ljavassist/bytecode/stackmap/TypeData;

    iput-object p1, p0, Ljavassist/bytecode/stackmap/TypedBlock;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    .line 157
    new-array p1, p2, [Ljavassist/bytecode/stackmap/TypeData;

    if-eqz p6, :cond_0

    .line 159
    new-instance p2, Ljavassist/bytecode/stackmap/TypeData$UninitThis;

    invoke-direct {p2, p3}, Ljavassist/bytecode/stackmap/TypeData$UninitThis;-><init>(Ljava/lang/String;)V

    aput-object p2, p1, v0

    goto :goto_0

    :cond_0
    if-nez p5, :cond_1

    .line 161
    new-instance p2, Ljavassist/bytecode/stackmap/TypeData$ClassName;

    invoke-direct {p2, p3}, Ljavassist/bytecode/stackmap/TypeData$ClassName;-><init>(Ljava/lang/String;)V

    aput-object p2, p1, v0

    :cond_1
    :goto_0
    if-eqz p5, :cond_2

    const/4 v0, -0x1

    :cond_2
    const/4 p2, 0x1

    const/4 p3, 0x1

    :cond_3
    :goto_1
    add-int/2addr v0, p2

    .line 166
    :try_start_0
    invoke-static {p4, p3, v0, p1}, Ljavassist/bytecode/stackmap/TypedBlock;->descToTag(Ljava/lang/String;II[Ljavassist/bytecode/stackmap/TypeData;)I

    move-result p3

    if-lez p3, :cond_4

    .line 167
    aget-object p5, p1, v0

    invoke-virtual {p5}, Ljavassist/bytecode/stackmap/TypeData;->is2WordType()Z

    move-result p5

    if-eqz p5, :cond_3

    add-int/lit8 v0, v0, 0x1

    .line 168
    sget-object p5, Ljavassist/bytecode/stackmap/TypeTag;->TOP:Ljavassist/bytecode/stackmap/TypeData;

    aput-object p5, p1, v0
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 175
    :cond_4
    iput v0, p0, Ljavassist/bytecode/stackmap/TypedBlock;->numLocals:I

    .line 176
    iput-object p1, p0, Ljavassist/bytecode/stackmap/TypedBlock;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    return-void

    .line 171
    :catch_0
    new-instance p1, Ljavassist/bytecode/BadBytecode;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "bad method descriptor: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    throw p1

    .line 153
    :cond_5
    new-instance p1, Ljavassist/bytecode/BadBytecode;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "no method descriptor: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public resetNumLocals()V
    .locals 3

    .line 112
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypedBlock;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    if-eqz v0, :cond_2

    .line 113
    array-length v0, v0

    :goto_0
    if-lez v0, :cond_1

    .line 114
    iget-object v1, p0, Ljavassist/bytecode/stackmap/TypedBlock;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    add-int/lit8 v2, v0, -0x1

    aget-object v1, v1, v2

    sget-object v2, Ljavassist/bytecode/stackmap/TypeTag;->TOP:Ljavassist/bytecode/stackmap/TypeData;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 116
    iget-object v1, p0, Ljavassist/bytecode/stackmap/TypedBlock;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    add-int/lit8 v2, v0, -0x2

    aget-object v1, v1, v2

    .line 117
    sget-object v2, Ljavassist/bytecode/stackmap/TypeTag;->LONG:Ljavassist/bytecode/stackmap/TypeData;

    if-eq v1, v2, :cond_1

    sget-object v2, Ljavassist/bytecode/stackmap/TypeTag;->DOUBLE:Ljavassist/bytecode/stackmap/TypeData;

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 124
    :cond_1
    :goto_1
    iput v0, p0, Ljavassist/bytecode/stackmap/TypedBlock;->numLocals:I

    :cond_2
    return-void
.end method

.method public setStackMap(I[Ljavassist/bytecode/stackmap/TypeData;I[Ljavassist/bytecode/stackmap/TypeData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 102
    iput p1, p0, Ljavassist/bytecode/stackmap/TypedBlock;->stackTop:I

    .line 103
    iput-object p2, p0, Ljavassist/bytecode/stackmap/TypedBlock;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    .line 104
    iput p3, p0, Ljavassist/bytecode/stackmap/TypedBlock;->numLocals:I

    .line 105
    iput-object p4, p0, Ljavassist/bytecode/stackmap/TypedBlock;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    return-void
.end method

.method protected toString2(Ljava/lang/StringBuffer;)V
    .locals 3

    .line 68
    invoke-super {p0, p1}, Ljavassist/bytecode/stackmap/BasicBlock;->toString2(Ljava/lang/StringBuffer;)V

    const-string v0, ",\n stack={"

    .line 69
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    iget v0, p0, Ljavassist/bytecode/stackmap/TypedBlock;->stackTop:I

    iget-object v1, p0, Ljavassist/bytecode/stackmap/TypedBlock;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    invoke-direct {p0, p1, v0, v1}, Ljavassist/bytecode/stackmap/TypedBlock;->printTypes(Ljava/lang/StringBuffer;I[Ljavassist/bytecode/stackmap/TypeData;)V

    const-string v0, "}, locals={"

    .line 71
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    iget v0, p0, Ljavassist/bytecode/stackmap/TypedBlock;->numLocals:I

    iget-object v1, p0, Ljavassist/bytecode/stackmap/TypedBlock;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    invoke-direct {p0, p1, v0, v1}, Ljavassist/bytecode/stackmap/TypedBlock;->printTypes(Ljava/lang/StringBuffer;I[Ljavassist/bytecode/stackmap/TypeData;)V

    const-string v0, "}, inputs={"

    .line 73
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypedBlock;->inputs:[Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 75
    :goto_0
    iget-object v1, p0, Ljavassist/bytecode/stackmap/TypedBlock;->inputs:[Z

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 76
    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    const-string v1, "1, "

    goto :goto_1

    :cond_0
    const-string v1, "0, "

    :goto_1
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x7d

    .line 78
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method
