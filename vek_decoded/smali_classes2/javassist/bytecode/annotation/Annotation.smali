.class public Ljavassist/bytecode/annotation/Annotation;
.super Ljava/lang/Object;
.source "Annotation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/bytecode/annotation/Annotation$Pair;
    }
.end annotation


# instance fields
.field members:Ljava/util/LinkedHashMap;

.field pool:Ljavassist/bytecode/ConstPool;

.field typeIndex:I


# direct methods
.method public constructor <init>(ILjavassist/bytecode/ConstPool;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p2, p0, Ljavassist/bytecode/annotation/Annotation;->pool:Ljavassist/bytecode/ConstPool;

    .line 73
    iput p1, p0, Ljavassist/bytecode/annotation/Annotation;->typeIndex:I

    const/4 p1, 0x0

    .line 74
    iput-object p1, p0, Ljavassist/bytecode/annotation/Annotation;->members:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavassist/bytecode/ConstPool;)V
    .locals 0

    .line 87
    invoke-static {p1}, Ljavassist/bytecode/Descriptor;->of(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1, p2}, Ljavassist/bytecode/annotation/Annotation;-><init>(ILjavassist/bytecode/ConstPool;)V

    return-void
.end method

.method public constructor <init>(Ljavassist/bytecode/ConstPool;Ljavassist/CtClass;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 103
    invoke-virtual {p2}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavassist/bytecode/Descriptor;->of(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0, p1}, Ljavassist/bytecode/annotation/Annotation;-><init>(ILjavassist/bytecode/ConstPool;)V

    .line 105
    invoke-virtual {p2}, Ljavassist/CtClass;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    invoke-virtual {p2}, Ljavassist/CtClass;->getDeclaredMethods()[Ljavassist/CtMethod;

    move-result-object p2

    .line 110
    array-length v0, p2

    if-lez v0, :cond_0

    .line 111
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Ljavassist/bytecode/annotation/Annotation;->members:Ljava/util/LinkedHashMap;

    :cond_0
    const/4 v0, 0x0

    .line 114
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 115
    aget-object v1, p2, v0

    invoke-virtual {v1}, Ljavassist/CtMethod;->getReturnType()Ljavassist/CtClass;

    move-result-object v1

    .line 116
    aget-object v2, p2, v0

    invoke-virtual {v2}, Ljavassist/CtMethod;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1}, Ljavassist/bytecode/annotation/Annotation;->createMemberValue(Ljavassist/bytecode/ConstPool;Ljavassist/CtClass;)Ljavassist/bytecode/annotation/MemberValue;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Ljavassist/bytecode/annotation/Annotation;->addMemberValue(Ljava/lang/String;Ljavassist/bytecode/annotation/MemberValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 106
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Only interfaces are allowed for Annotation creation."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private addMemberValue(Ljavassist/bytecode/annotation/Annotation$Pair;)V
    .locals 2

    .line 205
    iget-object v0, p0, Ljavassist/bytecode/annotation/Annotation;->pool:Ljavassist/bytecode/ConstPool;

    iget v1, p1, Ljavassist/bytecode/annotation/Annotation$Pair;->name:I

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v0

    .line 206
    iget-object v1, p0, Ljavassist/bytecode/annotation/Annotation;->members:Ljava/util/LinkedHashMap;

    if-nez v1, :cond_0

    .line 207
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Ljavassist/bytecode/annotation/Annotation;->members:Ljava/util/LinkedHashMap;

    .line 209
    :cond_0
    iget-object v1, p0, Ljavassist/bytecode/annotation/Annotation;->members:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static createMemberValue(Ljavassist/bytecode/ConstPool;Ljavassist/CtClass;)Ljavassist/bytecode/annotation/MemberValue;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 133
    sget-object v0, Ljavassist/CtClass;->booleanType:Ljavassist/CtClass;

    if-ne p1, v0, :cond_0

    .line 134
    new-instance p1, Ljavassist/bytecode/annotation/BooleanMemberValue;

    invoke-direct {p1, p0}, Ljavassist/bytecode/annotation/BooleanMemberValue;-><init>(Ljavassist/bytecode/ConstPool;)V

    return-object p1

    .line 135
    :cond_0
    sget-object v0, Ljavassist/CtClass;->byteType:Ljavassist/CtClass;

    if-ne p1, v0, :cond_1

    .line 136
    new-instance p1, Ljavassist/bytecode/annotation/ByteMemberValue;

    invoke-direct {p1, p0}, Ljavassist/bytecode/annotation/ByteMemberValue;-><init>(Ljavassist/bytecode/ConstPool;)V

    return-object p1

    .line 137
    :cond_1
    sget-object v0, Ljavassist/CtClass;->charType:Ljavassist/CtClass;

    if-ne p1, v0, :cond_2

    .line 138
    new-instance p1, Ljavassist/bytecode/annotation/CharMemberValue;

    invoke-direct {p1, p0}, Ljavassist/bytecode/annotation/CharMemberValue;-><init>(Ljavassist/bytecode/ConstPool;)V

    return-object p1

    .line 139
    :cond_2
    sget-object v0, Ljavassist/CtClass;->shortType:Ljavassist/CtClass;

    if-ne p1, v0, :cond_3

    .line 140
    new-instance p1, Ljavassist/bytecode/annotation/ShortMemberValue;

    invoke-direct {p1, p0}, Ljavassist/bytecode/annotation/ShortMemberValue;-><init>(Ljavassist/bytecode/ConstPool;)V

    return-object p1

    .line 141
    :cond_3
    sget-object v0, Ljavassist/CtClass;->intType:Ljavassist/CtClass;

    if-ne p1, v0, :cond_4

    .line 142
    new-instance p1, Ljavassist/bytecode/annotation/IntegerMemberValue;

    invoke-direct {p1, p0}, Ljavassist/bytecode/annotation/IntegerMemberValue;-><init>(Ljavassist/bytecode/ConstPool;)V

    return-object p1

    .line 143
    :cond_4
    sget-object v0, Ljavassist/CtClass;->longType:Ljavassist/CtClass;

    if-ne p1, v0, :cond_5

    .line 144
    new-instance p1, Ljavassist/bytecode/annotation/LongMemberValue;

    invoke-direct {p1, p0}, Ljavassist/bytecode/annotation/LongMemberValue;-><init>(Ljavassist/bytecode/ConstPool;)V

    return-object p1

    .line 145
    :cond_5
    sget-object v0, Ljavassist/CtClass;->floatType:Ljavassist/CtClass;

    if-ne p1, v0, :cond_6

    .line 146
    new-instance p1, Ljavassist/bytecode/annotation/FloatMemberValue;

    invoke-direct {p1, p0}, Ljavassist/bytecode/annotation/FloatMemberValue;-><init>(Ljavassist/bytecode/ConstPool;)V

    return-object p1

    .line 147
    :cond_6
    sget-object v0, Ljavassist/CtClass;->doubleType:Ljavassist/CtClass;

    if-ne p1, v0, :cond_7

    .line 148
    new-instance p1, Ljavassist/bytecode/annotation/DoubleMemberValue;

    invoke-direct {p1, p0}, Ljavassist/bytecode/annotation/DoubleMemberValue;-><init>(Ljavassist/bytecode/ConstPool;)V

    return-object p1

    .line 149
    :cond_7
    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.Class"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 150
    new-instance p1, Ljavassist/bytecode/annotation/ClassMemberValue;

    invoke-direct {p1, p0}, Ljavassist/bytecode/annotation/ClassMemberValue;-><init>(Ljavassist/bytecode/ConstPool;)V

    return-object p1

    .line 151
    :cond_8
    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.String"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 152
    new-instance p1, Ljavassist/bytecode/annotation/StringMemberValue;

    invoke-direct {p1, p0}, Ljavassist/bytecode/annotation/StringMemberValue;-><init>(Ljavassist/bytecode/ConstPool;)V

    return-object p1

    .line 153
    :cond_9
    invoke-virtual {p1}, Ljavassist/CtClass;->isArray()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 154
    invoke-virtual {p1}, Ljavassist/CtClass;->getComponentType()Ljavassist/CtClass;

    move-result-object p1

    .line 155
    invoke-static {p0, p1}, Ljavassist/bytecode/annotation/Annotation;->createMemberValue(Ljavassist/bytecode/ConstPool;Ljavassist/CtClass;)Ljavassist/bytecode/annotation/MemberValue;

    move-result-object p1

    .line 156
    new-instance v0, Ljavassist/bytecode/annotation/ArrayMemberValue;

    invoke-direct {v0, p1, p0}, Ljavassist/bytecode/annotation/ArrayMemberValue;-><init>(Ljavassist/bytecode/annotation/MemberValue;Ljavassist/bytecode/ConstPool;)V

    return-object v0

    .line 158
    :cond_a
    invoke-virtual {p1}, Ljavassist/CtClass;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 159
    new-instance v0, Ljavassist/bytecode/annotation/Annotation;

    invoke-direct {v0, p0, p1}, Ljavassist/bytecode/annotation/Annotation;-><init>(Ljavassist/bytecode/ConstPool;Ljavassist/CtClass;)V

    .line 160
    new-instance p1, Ljavassist/bytecode/annotation/AnnotationMemberValue;

    invoke-direct {p1, v0, p0}, Ljavassist/bytecode/annotation/AnnotationMemberValue;-><init>(Ljavassist/bytecode/annotation/Annotation;Ljavassist/bytecode/ConstPool;)V

    return-object p1

    .line 166
    :cond_b
    new-instance v0, Ljavassist/bytecode/annotation/EnumMemberValue;

    invoke-direct {v0, p0}, Ljavassist/bytecode/annotation/EnumMemberValue;-><init>(Ljavassist/bytecode/ConstPool;)V

    .line 167
    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljavassist/bytecode/annotation/EnumMemberValue;->setType(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public addMemberValue(ILjavassist/bytecode/annotation/MemberValue;)V
    .locals 1

    .line 182
    new-instance v0, Ljavassist/bytecode/annotation/Annotation$Pair;

    invoke-direct {v0}, Ljavassist/bytecode/annotation/Annotation$Pair;-><init>()V

    .line 183
    iput p1, v0, Ljavassist/bytecode/annotation/Annotation$Pair;->name:I

    .line 184
    iput-object p2, v0, Ljavassist/bytecode/annotation/Annotation$Pair;->value:Ljavassist/bytecode/annotation/MemberValue;

    .line 185
    invoke-direct {p0, v0}, Ljavassist/bytecode/annotation/Annotation;->addMemberValue(Ljavassist/bytecode/annotation/Annotation$Pair;)V

    return-void
.end method

.method public addMemberValue(Ljava/lang/String;Ljavassist/bytecode/annotation/MemberValue;)V
    .locals 2

    .line 195
    new-instance v0, Ljavassist/bytecode/annotation/Annotation$Pair;

    invoke-direct {v0}, Ljavassist/bytecode/annotation/Annotation$Pair;-><init>()V

    .line 196
    iget-object v1, p0, Ljavassist/bytecode/annotation/Annotation;->pool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v1, p1}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Ljavassist/bytecode/annotation/Annotation$Pair;->name:I

    .line 197
    iput-object p2, v0, Ljavassist/bytecode/annotation/Annotation$Pair;->value:Ljavassist/bytecode/annotation/MemberValue;

    .line 198
    iget-object p2, p0, Ljavassist/bytecode/annotation/Annotation;->members:Ljava/util/LinkedHashMap;

    if-nez p2, :cond_0

    .line 199
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Ljavassist/bytecode/annotation/Annotation;->members:Ljava/util/LinkedHashMap;

    .line 201
    :cond_0
    iget-object p2, p0, Ljavassist/bytecode/annotation/Annotation;->members:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_7

    .line 329
    instance-of v2, p1, Ljavassist/bytecode/annotation/Annotation;

    if-nez v2, :cond_1

    goto :goto_1

    .line 332
    :cond_1
    check-cast p1, Ljavassist/bytecode/annotation/Annotation;

    .line 334
    invoke-virtual {p0}, Ljavassist/bytecode/annotation/Annotation;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljavassist/bytecode/annotation/Annotation;->getTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 337
    :cond_2
    iget-object p1, p1, Ljavassist/bytecode/annotation/Annotation;->members:Ljava/util/LinkedHashMap;

    .line 338
    iget-object v2, p0, Ljavassist/bytecode/annotation/Annotation;->members:Ljava/util/LinkedHashMap;

    if-ne v2, p1, :cond_3

    return v0

    :cond_3
    if-nez v2, :cond_5

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_5
    if-nez p1, :cond_6

    return v1

    .line 346
    :cond_6
    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_7
    :goto_1
    return v1
.end method

.method public getMemberNames()Ljava/util/Set;
    .locals 1

    .line 248
    iget-object v0, p0, Ljavassist/bytecode/annotation/Annotation;->members:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 251
    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getMemberValue(Ljava/lang/String;)Ljavassist/bytecode/annotation/MemberValue;
    .locals 2

    .line 270
    iget-object v0, p0, Ljavassist/bytecode/annotation/Annotation;->members:Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 273
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavassist/bytecode/annotation/Annotation$Pair;

    if-nez p1, :cond_1

    return-object v1

    .line 277
    :cond_1
    iget-object p1, p1, Ljavassist/bytecode/annotation/Annotation$Pair;->value:Ljavassist/bytecode/annotation/MemberValue;

    return-object p1
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 2

    .line 239
    iget-object v0, p0, Ljavassist/bytecode/annotation/Annotation;->pool:Ljavassist/bytecode/ConstPool;

    iget v1, p0, Ljavassist/bytecode/annotation/Annotation;->typeIndex:I

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavassist/bytecode/Descriptor;->toClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toAnnotationType(Ljava/lang/ClassLoader;Ljavassist/ClassPool;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljavassist/bytecode/annotation/NoSuchClassError;
        }
    .end annotation

    .line 295
    invoke-virtual {p0}, Ljavassist/bytecode/annotation/Annotation;->getTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljavassist/bytecode/annotation/MemberValue;->loadClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1, v0, p2, p0}, Ljavassist/bytecode/annotation/AnnotationImpl;->make(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljavassist/ClassPool;Ljavassist/bytecode/annotation/Annotation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 216
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0}, Ljavassist/bytecode/annotation/Annotation;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 218
    iget-object v1, p0, Ljavassist/bytecode/annotation/Annotation;->members:Ljava/util/LinkedHashMap;

    if-eqz v1, :cond_2

    const-string v1, "("

    .line 219
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 220
    iget-object v1, p0, Ljavassist/bytecode/annotation/Annotation;->members:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 221
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 222
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 223
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0, v2}, Ljavassist/bytecode/annotation/Annotation;->getMemberValue(Ljava/lang/String;)Ljavassist/bytecode/annotation/MemberValue;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 224
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ", "

    .line 225
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    const-string v1, ")"

    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 230
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljavassist/bytecode/annotation/AnnotationsWriter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 307
    iget-object v0, p0, Ljavassist/bytecode/annotation/Annotation;->pool:Ljavassist/bytecode/ConstPool;

    iget v1, p0, Ljavassist/bytecode/annotation/Annotation;->typeIndex:I

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v0

    .line 308
    iget-object v1, p0, Ljavassist/bytecode/annotation/Annotation;->members:Ljava/util/LinkedHashMap;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 309
    invoke-virtual {p1, v0, v1}, Ljavassist/bytecode/annotation/AnnotationsWriter;->annotation(Ljava/lang/String;I)V

    return-void

    .line 313
    :cond_0
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljavassist/bytecode/annotation/AnnotationsWriter;->annotation(Ljava/lang/String;I)V

    .line 314
    iget-object v0, p0, Ljavassist/bytecode/annotation/Annotation;->members:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 315
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 316
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/annotation/Annotation$Pair;

    .line 317
    iget v2, v1, Ljavassist/bytecode/annotation/Annotation$Pair;->name:I

    invoke-virtual {p1, v2}, Ljavassist/bytecode/annotation/AnnotationsWriter;->memberValuePair(I)V

    .line 318
    iget-object v1, v1, Ljavassist/bytecode/annotation/Annotation$Pair;->value:Ljavassist/bytecode/annotation/MemberValue;

    invoke-virtual {v1, p1}, Ljavassist/bytecode/annotation/MemberValue;->write(Ljavassist/bytecode/annotation/AnnotationsWriter;)V

    goto :goto_0

    :cond_1
    return-void
.end method
