.class public final Ljavassist/convert/TransformAccessArrayField;
.super Ljavassist/convert/Transformer;
.source "TransformAccessArrayField.java"


# instance fields
.field private frames:[Ljavassist/bytecode/analysis/Frame;

.field private final methodClassname:Ljava/lang/String;

.field private final names:Ljavassist/CodeConverter$ArrayAccessReplacementMethodNames;

.field private offset:I


# direct methods
.method public constructor <init>(Ljavassist/convert/Transformer;Ljava/lang/String;Ljavassist/CodeConverter$ArrayAccessReplacementMethodNames;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1}, Ljavassist/convert/Transformer;-><init>(Ljavassist/convert/Transformer;)V

    .line 47
    iput-object p2, p0, Ljavassist/convert/TransformAccessArrayField;->methodClassname:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Ljavassist/convert/TransformAccessArrayField;->names:Ljavassist/CodeConverter$ArrayAccessReplacementMethodNames;

    return-void
.end method

.method private getFrame(I)Ljavassist/bytecode/analysis/Frame;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Ljavassist/convert/TransformAccessArrayField;->frames:[Ljavassist/bytecode/analysis/Frame;

    iget v1, p0, Ljavassist/convert/TransformAccessArrayField;->offset:I

    sub-int/2addr p1, v1

    aget-object p1, v0, p1

    return-object p1
.end method

.method private getLoadReplacementSignature(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    .line 245
    new-instance v0, Ljavassist/bytecode/BadBytecode;

    invoke-direct {v0, p1}, Ljavassist/bytecode/BadBytecode;-><init>(I)V

    throw v0

    :pswitch_0
    const-string p1, "(Ljava/lang/Object;I)S"

    return-object p1

    :pswitch_1
    const-string p1, "(Ljava/lang/Object;I)C"

    return-object p1

    :pswitch_2
    const-string p1, "(Ljava/lang/Object;I)B"

    return-object p1

    :pswitch_3
    const-string p1, "(Ljava/lang/Object;I)Ljava/lang/Object;"

    return-object p1

    :pswitch_4
    const-string p1, "(Ljava/lang/Object;I)D"

    return-object p1

    :pswitch_5
    const-string p1, "(Ljava/lang/Object;I)F"

    return-object p1

    :pswitch_6
    const-string p1, "(Ljava/lang/Object;I)J"

    return-object p1

    :pswitch_7
    const-string p1, "(Ljava/lang/Object;I)I"

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x2e
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getMethodName(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    move-object p1, v0

    goto/16 :goto_0

    .line 212
    :pswitch_0
    iget-object p1, p0, Ljavassist/convert/TransformAccessArrayField;->names:Ljavassist/CodeConverter$ArrayAccessReplacementMethodNames;

    invoke-interface {p1}, Ljavassist/CodeConverter$ArrayAccessReplacementMethodNames;->shortWrite()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 200
    :pswitch_1
    iget-object p1, p0, Ljavassist/convert/TransformAccessArrayField;->names:Ljavassist/CodeConverter$ArrayAccessReplacementMethodNames;

    invoke-interface {p1}, Ljavassist/CodeConverter$ArrayAccessReplacementMethodNames;->charWrite()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 197
    :pswitch_2
    iget-object p1, p0, Ljavassist/convert/TransformAccessArrayField;->names:Ljavassist/CodeConverter$ArrayAccessReplacementMethodNames;

    invoke-interface {p1}, Ljavassist/CodeConverter$ArrayAccessReplacementMethodNames;->byteOrBooleanWrite()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 194
    :pswitch_3
    iget-object p1, p0, Ljavassist/convert/TransformAccessArrayField;->names:Ljavassist/CodeConverter$ArrayAccessReplacementMethodNames;

    invoke-interface {p1}, Ljavassist/CodeConverter$ArrayAccessReplacementMethodNames;->objectWrite()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 203
    :pswitch_4
    iget-object p1, p0, Ljavassist/convert/TransformAccessArrayField;->names:Ljavassist/CodeConverter$ArrayAccessReplacementMethodNames;

    invoke-interface {p1}, Ljavassist/CodeConverter$ArrayAccessReplacementMethodNames;->doubleWrite()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 206
    :pswitch_5
    iget-object p1, p0, Ljavassist/convert/TransformAccessArrayField;->names:Ljavassist/CodeConverter$ArrayAccessReplacementMethodNames;

    invoke-interface {p1}, Ljavassist/CodeConverter$ArrayAccessReplacementMethodNames;->floatWrite()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 215
    :pswitch_6
    iget-object p1, p0, Ljavassist/convert/TransformAccessArrayField;->names:Ljavassist/CodeConverter$ArrayAccessReplacementMethodNames;

    invoke-interface {p1}, Ljavassist/CodeConverter$ArrayAccessReplacementMethodNames;->longWrite()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 209
    :pswitch_7
    iget-object p1, p0, Ljavassist/convert/TransformAccessArrayField;->names:Ljavassist/CodeConverter$ArrayAccessReplacementMethodNames;

    invoke-interface {p1}, Ljavassist/CodeConverter$ArrayAccessReplacementMethodNames;->intWrite()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 188
    :pswitch_8
    iget-object p1, p0, Ljavassist/convert/TransformAccessArrayField;->names:Ljavassist/CodeConverter$ArrayAccessReplacementMethodNames;

    invoke-interface {p1}, Ljavassist/CodeConverter$ArrayAccessReplacementMethodNames;->shortRead()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 176
    :pswitch_9
    iget-object p1, p0, Ljavassist/convert/TransformAccessArrayField;->names:Ljavassist/CodeConverter$ArrayAccessReplacementMethodNames;

    invoke-interface {p1}, Ljavassist/CodeConverter$ArrayAccessReplacementMethodNames;->charRead()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 173
    :pswitch_a
    iget-object p1, p0, Ljavassist/convert/TransformAccessArrayField;->names:Ljavassist/CodeConverter$ArrayAccessReplacementMethodNames;

    invoke-interface {p1}, Ljavassist/CodeConverter$ArrayAccessReplacementMethodNames;->byteOrBooleanRead()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 170
    :pswitch_b
    iget-object p1, p0, Ljavassist/convert/TransformAccessArrayField;->names:Ljavassist/CodeConverter$ArrayAccessReplacementMethodNames;

    invoke-interface {p1}, Ljavassist/CodeConverter$ArrayAccessReplacementMethodNames;->objectRead()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 179
    :pswitch_c
    iget-object p1, p0, Ljavassist/convert/TransformAccessArrayField;->names:Ljavassist/CodeConverter$ArrayAccessReplacementMethodNames;

    invoke-interface {p1}, Ljavassist/CodeConverter$ArrayAccessReplacementMethodNames;->doubleRead()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 182
    :pswitch_d
    iget-object p1, p0, Ljavassist/convert/TransformAccessArrayField;->names:Ljavassist/CodeConverter$ArrayAccessReplacementMethodNames;

    invoke-interface {p1}, Ljavassist/CodeConverter$ArrayAccessReplacementMethodNames;->floatRead()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 191
    :pswitch_e
    iget-object p1, p0, Ljavassist/convert/TransformAccessArrayField;->names:Ljavassist/CodeConverter$ArrayAccessReplacementMethodNames;

    invoke-interface {p1}, Ljavassist/CodeConverter$ArrayAccessReplacementMethodNames;->longRead()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 185
    :pswitch_f
    iget-object p1, p0, Ljavassist/convert/TransformAccessArrayField;->names:Ljavassist/CodeConverter$ArrayAccessReplacementMethodNames;

    invoke-interface {p1}, Ljavassist/CodeConverter$ArrayAccessReplacementMethodNames;->intRead()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v1, ""

    .line 219
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    move-object v0, p1

    :goto_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2e
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4f
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getStoreReplacementSignature(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    .line 268
    new-instance v0, Ljavassist/bytecode/BadBytecode;

    invoke-direct {v0, p1}, Ljavassist/bytecode/BadBytecode;-><init>(I)V

    throw v0

    :pswitch_0
    const-string p1, "(Ljava/lang/Object;IS)V"

    return-object p1

    :pswitch_1
    const-string p1, "(Ljava/lang/Object;IC)V"

    return-object p1

    :pswitch_2
    const-string p1, "(Ljava/lang/Object;IB)V"

    return-object p1

    :pswitch_3
    const-string p1, "(Ljava/lang/Object;ILjava/lang/Object;)V"

    return-object p1

    :pswitch_4
    const-string p1, "(Ljava/lang/Object;ID)V"

    return-object p1

    :pswitch_5
    const-string p1, "(Ljava/lang/Object;IF)V"

    return-object p1

    :pswitch_6
    const-string p1, "(Ljava/lang/Object;IJ)V"

    return-object p1

    :pswitch_7
    const-string p1, "(Ljava/lang/Object;II)V"

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x4f
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getTopType(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 118
    invoke-direct {p0, p1}, Ljavassist/convert/TransformAccessArrayField;->getFrame(I)Ljavassist/bytecode/analysis/Frame;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 122
    :cond_0
    invoke-virtual {p1}, Ljavassist/bytecode/analysis/Frame;->peek()Ljavassist/bytecode/analysis/Type;

    move-result-object p1

    invoke-virtual {p1}, Ljavassist/bytecode/analysis/Type;->getCtClass()Ljavassist/CtClass;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 123
    invoke-static {p1}, Ljavassist/bytecode/Descriptor;->toJvmName(Ljavassist/CtClass;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private initFrames(Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Ljavassist/convert/TransformAccessArrayField;->frames:[Ljavassist/bytecode/analysis/Frame;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Ljavassist/bytecode/analysis/Analyzer;

    invoke-direct {v0}, Ljavassist/bytecode/analysis/Analyzer;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljavassist/bytecode/analysis/Analyzer;->analyze(Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)[Ljavassist/bytecode/analysis/Frame;

    move-result-object p1

    iput-object p1, p0, Ljavassist/convert/TransformAccessArrayField;->frames:[Ljavassist/bytecode/analysis/Frame;

    const/4 p1, 0x0

    .line 106
    iput p1, p0, Ljavassist/convert/TransformAccessArrayField;->offset:I

    :cond_0
    return-void
.end method

.method private replace(Ljavassist/bytecode/ConstPool;Ljavassist/bytecode/CodeIterator;IILjava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 129
    invoke-direct {p0, p4}, Ljavassist/convert/TransformAccessArrayField;->getMethodName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const/16 v1, 0x32

    const/4 v2, 0x0

    if-ne p4, v1, :cond_2

    .line 133
    invoke-virtual {p2}, Ljavassist/bytecode/CodeIterator;->lookAhead()I

    move-result p4

    invoke-direct {p0, p4}, Ljavassist/convert/TransformAccessArrayField;->getTopType(I)Ljava/lang/String;

    move-result-object p4

    if-nez p4, :cond_0

    return p3

    :cond_0
    const-string v1, "java/lang/Object"

    .line 139
    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, p4

    :cond_2
    :goto_0
    const/4 p4, 0x0

    .line 145
    invoke-virtual {p2, p4, p3}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    if-eqz v2, :cond_3

    const/4 v1, 0x5

    goto :goto_1

    :cond_3
    const/4 v1, 0x2

    .line 146
    :goto_1
    invoke-virtual {p2, p3, v1, p4}, Ljavassist/bytecode/CodeIterator;->insertGapAt(IIZ)Ljavassist/bytecode/CodeIterator$Gap;

    move-result-object p3

    .line 148
    iget p4, p3, Ljavassist/bytecode/CodeIterator$Gap;->position:I

    .line 149
    iget-object v1, p0, Ljavassist/convert/TransformAccessArrayField;->methodClassname:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result v1

    .line 150
    invoke-virtual {p1, v1, v0, p5}, Ljavassist/bytecode/ConstPool;->addMethodrefInfo(ILjava/lang/String;Ljava/lang/String;)I

    move-result p5

    const/16 v0, 0xb8

    .line 151
    invoke-virtual {p2, v0, p4}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    add-int/lit8 v0, p4, 0x1

    .line 152
    invoke-virtual {p2, p5, v0}, Ljavassist/bytecode/CodeIterator;->write16bit(II)V

    if-eqz v2, :cond_4

    .line 155
    invoke-virtual {p1, v2}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result p1

    const/16 p5, 0xc0

    add-int/lit8 v0, p4, 0x3

    .line 156
    invoke-virtual {p2, p5, v0}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    add-int/lit8 p5, p4, 0x4

    .line 157
    invoke-virtual {p2, p1, p5}, Ljavassist/bytecode/CodeIterator;->write16bit(II)V

    .line 160
    :cond_4
    iget p1, p3, Ljavassist/bytecode/CodeIterator$Gap;->length:I

    invoke-direct {p0, p4, p1}, Ljavassist/convert/TransformAccessArrayField;->updatePos(II)I

    move-result p3

    :cond_5
    return p3
.end method

.method private updatePos(II)I
    .locals 2

    .line 111
    iget v0, p0, Ljavassist/convert/TransformAccessArrayField;->offset:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    add-int/2addr v0, p2

    .line 112
    iput v0, p0, Ljavassist/convert/TransformAccessArrayField;->offset:I

    :cond_0
    add-int/2addr p1, p2

    return p1
.end method


# virtual methods
.method public clean()V
    .locals 1

    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Ljavassist/convert/TransformAccessArrayField;->frames:[Ljavassist/bytecode/analysis/Frame;

    const/4 v0, -0x1

    .line 90
    iput v0, p0, Ljavassist/convert/TransformAccessArrayField;->offset:I

    return-void
.end method

.method public initialize(Ljavassist/bytecode/ConstPool;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 63
    invoke-virtual {p3}, Ljavassist/bytecode/MethodInfo;->getCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/bytecode/CodeAttribute;->iterator()Ljavassist/bytecode/CodeIterator;

    move-result-object v0

    .line 64
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljavassist/bytecode/CodeIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 66
    :try_start_0
    invoke-virtual {v0}, Ljavassist/bytecode/CodeIterator;->next()I

    move-result v4

    .line 67
    invoke-virtual {v0, v4}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v5

    const/16 v1, 0x32

    if-ne v5, v1, :cond_1

    .line 70
    invoke-direct {p0, p2, p3}, Ljavassist/convert/TransformAccessArrayField;->initFrames(Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)V

    :cond_1
    if-eq v5, v1, :cond_4

    const/16 v1, 0x33

    if-eq v5, v1, :cond_4

    const/16 v1, 0x34

    if-eq v5, v1, :cond_4

    const/16 v1, 0x31

    if-eq v5, v1, :cond_4

    const/16 v1, 0x30

    if-eq v5, v1, :cond_4

    const/16 v1, 0x2e

    if-eq v5, v1, :cond_4

    const/16 v1, 0x2f

    if-eq v5, v1, :cond_4

    const/16 v1, 0x35

    if-ne v5, v1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0x53

    if-eq v5, v1, :cond_3

    const/16 v1, 0x54

    if-eq v5, v1, :cond_3

    const/16 v1, 0x55

    if-eq v5, v1, :cond_3

    const/16 v1, 0x52

    if-eq v5, v1, :cond_3

    const/16 v1, 0x51

    if-eq v5, v1, :cond_3

    const/16 v1, 0x4f

    if-eq v5, v1, :cond_3

    const/16 v1, 0x50

    if-eq v5, v1, :cond_3

    const/16 v1, 0x56

    if-ne v5, v1, :cond_0

    .line 79
    :cond_3
    invoke-direct {p0, v5}, Ljavassist/convert/TransformAccessArrayField;->getStoreReplacementSignature(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Ljavassist/convert/TransformAccessArrayField;->replace(Ljavassist/bytecode/ConstPool;Ljavassist/bytecode/CodeIterator;IILjava/lang/String;)I

    goto :goto_0

    .line 75
    :cond_4
    :goto_1
    invoke-direct {p0, v5}, Ljavassist/convert/TransformAccessArrayField;->getLoadReplacementSignature(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Ljavassist/convert/TransformAccessArrayField;->replace(Ljavassist/bytecode/ConstPool;Ljavassist/bytecode/CodeIterator;IILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 83
    new-instance p2, Ljavassist/CannotCompileException;

    invoke-direct {p2, p1}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_5
    return-void
.end method

.method public transform(Ljavassist/CtClass;ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/ConstPool;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    return p2
.end method
