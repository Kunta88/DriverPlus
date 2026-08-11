.class public Ljavassist/bytecode/MethodInfo;
.super Ljava/lang/Object;
.source "MethodInfo.java"


# static fields
.field public static doPreverify:Z = false

.field public static final nameClinit:Ljava/lang/String; = "<clinit>"

.field public static final nameInit:Ljava/lang/String; = "<init>"


# instance fields
.field accessFlags:I

.field attribute:Ljava/util/ArrayList;

.field cachedName:Ljava/lang/String;

.field constPool:Ljavassist/bytecode/ConstPool;

.field descriptor:I

.field name:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Ljavassist/bytecode/ConstPool;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Ljavassist/bytecode/MethodInfo;->constPool:Ljavassist/bytecode/ConstPool;

    const/4 p1, 0x0

    .line 62
    iput-object p1, p0, Ljavassist/bytecode/MethodInfo;->attribute:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>(Ljavassist/bytecode/ConstPool;Ljava/io/DataInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    invoke-direct {p0, p1}, Ljavassist/bytecode/MethodInfo;-><init>(Ljavassist/bytecode/ConstPool;)V

    .line 87
    invoke-direct {p0, p2}, Ljavassist/bytecode/MethodInfo;->read(Ljava/io/DataInputStream;)V

    return-void
.end method

.method public constructor <init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 78
    invoke-direct {p0, p1}, Ljavassist/bytecode/MethodInfo;-><init>(Ljavassist/bytecode/ConstPool;)V

    const/4 v0, 0x0

    .line 79
    iput v0, p0, Ljavassist/bytecode/MethodInfo;->accessFlags:I

    .line 80
    invoke-virtual {p1, p2}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ljavassist/bytecode/MethodInfo;->name:I

    .line 81
    iput-object p2, p0, Ljavassist/bytecode/MethodInfo;->cachedName:Ljava/lang/String;

    .line 82
    iget-object p1, p0, Ljavassist/bytecode/MethodInfo;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {p1, p3}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ljavassist/bytecode/MethodInfo;->descriptor:I

    return-void
.end method

.method public constructor <init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;Ljavassist/bytecode/MethodInfo;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 111
    invoke-direct {p0, p1}, Ljavassist/bytecode/MethodInfo;-><init>(Ljavassist/bytecode/ConstPool;)V

    .line 112
    invoke-direct {p0, p3, p2, p4}, Ljavassist/bytecode/MethodInfo;->read(Ljavassist/bytecode/MethodInfo;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private read(Ljava/io/DataInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 522
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/MethodInfo;->accessFlags:I

    .line 523
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/MethodInfo;->name:I

    .line 524
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/MethodInfo;->descriptor:I

    .line 525
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 526
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ljavassist/bytecode/MethodInfo;->attribute:Ljava/util/ArrayList;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 528
    iget-object v2, p0, Ljavassist/bytecode/MethodInfo;->attribute:Ljava/util/ArrayList;

    iget-object v3, p0, Ljavassist/bytecode/MethodInfo;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-static {v3, p1}, Ljavassist/bytecode/AttributeInfo;->read(Ljavassist/bytecode/ConstPool;Ljava/io/DataInputStream;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private read(Ljavassist/bytecode/MethodInfo;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 502
    iget-object v0, p0, Ljavassist/bytecode/MethodInfo;->constPool:Ljavassist/bytecode/ConstPool;

    .line 503
    iget v1, p1, Ljavassist/bytecode/MethodInfo;->accessFlags:I

    iput v1, p0, Ljavassist/bytecode/MethodInfo;->accessFlags:I

    .line 504
    invoke-virtual {v0, p2}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Ljavassist/bytecode/MethodInfo;->name:I

    .line 505
    iput-object p2, p0, Ljavassist/bytecode/MethodInfo;->cachedName:Ljava/lang/String;

    .line 506
    iget-object p2, p1, Ljavassist/bytecode/MethodInfo;->constPool:Ljavassist/bytecode/ConstPool;

    .line 507
    iget v1, p1, Ljavassist/bytecode/MethodInfo;->descriptor:I

    invoke-virtual {p2, v1}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object p2

    .line 508
    invoke-static {p2, p3}, Ljavassist/bytecode/Descriptor;->rename(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    .line 509
    invoke-virtual {v0, p2}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Ljavassist/bytecode/MethodInfo;->descriptor:I

    .line 511
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Ljavassist/bytecode/MethodInfo;->attribute:Ljava/util/ArrayList;

    .line 512
    invoke-virtual {p1}, Ljavassist/bytecode/MethodInfo;->getExceptionsAttribute()Ljavassist/bytecode/ExceptionsAttribute;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 514
    iget-object v1, p0, Ljavassist/bytecode/MethodInfo;->attribute:Ljava/util/ArrayList;

    invoke-virtual {p2, v0, p3}, Ljavassist/bytecode/ExceptionsAttribute;->copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/AttributeInfo;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    :cond_0
    invoke-virtual {p1}, Ljavassist/bytecode/MethodInfo;->getCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 518
    iget-object p2, p0, Ljavassist/bytecode/MethodInfo;->attribute:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p3}, Ljavassist/bytecode/CodeAttribute;->copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/AttributeInfo;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public addAttribute(Ljavassist/bytecode/AttributeInfo;)V
    .locals 2

    .line 311
    iget-object v0, p0, Ljavassist/bytecode/MethodInfo;->attribute:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 312
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljavassist/bytecode/MethodInfo;->attribute:Ljava/util/ArrayList;

    .line 314
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/MethodInfo;->attribute:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljavassist/bytecode/AttributeInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljavassist/bytecode/AttributeInfo;->remove(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Ljavassist/bytecode/MethodInfo;->attribute:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method compact(Ljavassist/bytecode/ConstPool;)V
    .locals 1

    .line 131
    invoke-virtual {p0}, Ljavassist/bytecode/MethodInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/MethodInfo;->name:I

    .line 132
    invoke-virtual {p0}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/MethodInfo;->descriptor:I

    .line 133
    iget-object v0, p0, Ljavassist/bytecode/MethodInfo;->attribute:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljavassist/bytecode/AttributeInfo;->copyAll(Ljava/util/ArrayList;Ljavassist/bytecode/ConstPool;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Ljavassist/bytecode/MethodInfo;->attribute:Ljava/util/ArrayList;

    .line 134
    iput-object p1, p0, Ljavassist/bytecode/MethodInfo;->constPool:Ljavassist/bytecode/ConstPool;

    return-void
.end method

.method public getAccessFlags()I
    .locals 1

    .line 244
    iget v0, p0, Ljavassist/bytecode/MethodInfo;->accessFlags:I

    return v0
.end method

.method public getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;
    .locals 1

    .line 301
    iget-object v0, p0, Ljavassist/bytecode/MethodInfo;->attribute:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljavassist/bytecode/AttributeInfo;->lookup(Ljava/util/ArrayList;Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object p1

    return-object p1
.end method

.method public getAttributes()Ljava/util/List;
    .locals 1

    .line 286
    iget-object v0, p0, Ljavassist/bytecode/MethodInfo;->attribute:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 287
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljavassist/bytecode/MethodInfo;->attribute:Ljava/util/ArrayList;

    .line 289
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/MethodInfo;->attribute:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCodeAttribute()Ljavassist/bytecode/CodeAttribute;
    .locals 2

    .line 335
    iget-object v0, p0, Ljavassist/bytecode/MethodInfo;->attribute:Ljava/util/ArrayList;

    const-string v1, "Code"

    invoke-static {v0, v1}, Ljavassist/bytecode/AttributeInfo;->lookup(Ljava/util/ArrayList;Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v0

    .line 336
    check-cast v0, Ljavassist/bytecode/CodeAttribute;

    return-object v0
.end method

.method public getConstPool()Ljavassist/bytecode/ConstPool;
    .locals 1

    .line 221
    iget-object v0, p0, Ljavassist/bytecode/MethodInfo;->constPool:Ljavassist/bytecode/ConstPool;

    return-object v0
.end method

.method public getDescriptor()Ljava/lang/String;
    .locals 2

    .line 262
    iget-object v0, p0, Ljavassist/bytecode/MethodInfo;->constPool:Ljavassist/bytecode/ConstPool;

    iget v1, p0, Ljavassist/bytecode/MethodInfo;->descriptor:I

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExceptionsAttribute()Ljavassist/bytecode/ExceptionsAttribute;
    .locals 2

    .line 324
    iget-object v0, p0, Ljavassist/bytecode/MethodInfo;->attribute:Ljava/util/ArrayList;

    const-string v1, "Exceptions"

    invoke-static {v0, v1}, Ljavassist/bytecode/AttributeInfo;->lookup(Ljava/util/ArrayList;Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v0

    .line 326
    check-cast v0, Ljavassist/bytecode/ExceptionsAttribute;

    return-object v0
.end method

.method public getLineNumber(I)I
    .locals 3

    .line 449
    invoke-virtual {p0}, Ljavassist/bytecode/MethodInfo;->getCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "LineNumberTable"

    .line 453
    invoke-virtual {v0, v2}, Ljavassist/bytecode/CodeAttribute;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/LineNumberAttribute;

    if-nez v0, :cond_1

    return v1

    .line 458
    :cond_1
    invoke-virtual {v0, p1}, Ljavassist/bytecode/LineNumberAttribute;->toLineNumber(I)I

    move-result p1

    return p1
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 194
    iget-object v0, p0, Ljavassist/bytecode/MethodInfo;->cachedName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Ljavassist/bytecode/MethodInfo;->constPool:Ljavassist/bytecode/ConstPool;

    iget v1, p0, Ljavassist/bytecode/MethodInfo;->name:I

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavassist/bytecode/MethodInfo;->cachedName:Ljava/lang/String;

    .line 197
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/MethodInfo;->cachedName:Ljava/lang/String;

    return-object v0
.end method

.method public isConstructor()Z
    .locals 2

    .line 228
    invoke-virtual {p0}, Ljavassist/bytecode/MethodInfo;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "<init>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isMethod()Z
    .locals 2

    .line 213
    invoke-virtual {p0}, Ljavassist/bytecode/MethodInfo;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "<init>"

    .line 214
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "<clinit>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStaticInitializer()Z
    .locals 2

    .line 235
    invoke-virtual {p0}, Ljavassist/bytecode/MethodInfo;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "<clinit>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method prune(Ljavassist/bytecode/ConstPool;)V
    .locals 3

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "RuntimeInvisibleAnnotations"

    .line 140
    invoke-virtual {p0, v1}, Ljavassist/bytecode/MethodInfo;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 143
    invoke-virtual {v1, p1, v2}, Ljavassist/bytecode/AttributeInfo;->copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v1

    .line 144
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v1, "RuntimeVisibleAnnotations"

    .line 147
    invoke-virtual {p0, v1}, Ljavassist/bytecode/MethodInfo;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 150
    invoke-virtual {v1, p1, v2}, Ljavassist/bytecode/AttributeInfo;->copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v1

    .line 151
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v1, "RuntimeInvisibleParameterAnnotations"

    .line 154
    invoke-virtual {p0, v1}, Ljavassist/bytecode/MethodInfo;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 157
    invoke-virtual {v1, p1, v2}, Ljavassist/bytecode/AttributeInfo;->copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v1

    .line 158
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string v1, "RuntimeVisibleParameterAnnotations"

    .line 161
    invoke-virtual {p0, v1}, Ljavassist/bytecode/MethodInfo;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 164
    invoke-virtual {v1, p1, v2}, Ljavassist/bytecode/AttributeInfo;->copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v1

    .line 165
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string v1, "AnnotationDefault"

    .line 168
    invoke-virtual {p0, v1}, Ljavassist/bytecode/MethodInfo;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/AnnotationDefaultAttribute;

    if-eqz v1, :cond_4

    .line 171
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_4
    invoke-virtual {p0}, Ljavassist/bytecode/MethodInfo;->getExceptionsAttribute()Ljavassist/bytecode/ExceptionsAttribute;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 175
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    const-string v1, "Signature"

    .line 177
    invoke-virtual {p0, v1}, Ljavassist/bytecode/MethodInfo;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 180
    invoke-virtual {v1, p1, v2}, Ljavassist/bytecode/AttributeInfo;->copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v1

    .line 181
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_6
    iput-object v0, p0, Ljavassist/bytecode/MethodInfo;->attribute:Ljava/util/ArrayList;

    .line 185
    invoke-virtual {p0}, Ljavassist/bytecode/MethodInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/MethodInfo;->name:I

    .line 186
    invoke-virtual {p0}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/MethodInfo;->descriptor:I

    .line 187
    iput-object p1, p0, Ljavassist/bytecode/MethodInfo;->constPool:Ljavassist/bytecode/ConstPool;

    return-void
.end method

.method public rebuildStackMap(Ljavassist/ClassPool;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 415
    invoke-virtual {p0}, Ljavassist/bytecode/MethodInfo;->getCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 417
    invoke-static {p1, p0}, Ljavassist/bytecode/stackmap/MapMaker;->make(Ljavassist/ClassPool;Ljavassist/bytecode/MethodInfo;)Ljavassist/bytecode/StackMapTable;

    move-result-object p1

    .line 418
    invoke-virtual {v0, p1}, Ljavassist/bytecode/CodeAttribute;->setAttribute(Ljavassist/bytecode/StackMapTable;)V

    :cond_0
    return-void
.end method

.method public rebuildStackMapForME(Ljavassist/ClassPool;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 432
    invoke-virtual {p0}, Ljavassist/bytecode/MethodInfo;->getCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 434
    invoke-static {p1, p0}, Ljavassist/bytecode/stackmap/MapMaker;->make2(Ljavassist/ClassPool;Ljavassist/bytecode/MethodInfo;)Ljavassist/bytecode/StackMap;

    move-result-object p1

    .line 435
    invoke-virtual {v0, p1}, Ljavassist/bytecode/CodeAttribute;->setAttribute(Ljavassist/bytecode/StackMap;)V

    :cond_0
    return-void
.end method

.method public rebuildStackMapIf6(Ljavassist/ClassPool;Ljavassist/bytecode/ClassFile;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 398
    invoke-virtual {p2}, Ljavassist/bytecode/ClassFile;->getMajorVersion()I

    move-result p2

    const/16 v0, 0x32

    if-lt p2, v0, :cond_0

    .line 399
    invoke-virtual {p0, p1}, Ljavassist/bytecode/MethodInfo;->rebuildStackMap(Ljavassist/ClassPool;)V

    .line 401
    :cond_0
    sget-boolean p2, Ljavassist/bytecode/MethodInfo;->doPreverify:Z

    if-eqz p2, :cond_1

    .line 402
    invoke-virtual {p0, p1}, Ljavassist/bytecode/MethodInfo;->rebuildStackMapForME(Ljavassist/ClassPool;)V

    :cond_1
    return-void
.end method

.method public removeCodeAttribute()V
    .locals 2

    .line 365
    iget-object v0, p0, Ljavassist/bytecode/MethodInfo;->attribute:Ljava/util/ArrayList;

    const-string v1, "Code"

    invoke-static {v0, v1}, Ljavassist/bytecode/AttributeInfo;->remove(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method public removeExceptionsAttribute()V
    .locals 2

    .line 343
    iget-object v0, p0, Ljavassist/bytecode/MethodInfo;->attribute:Ljava/util/ArrayList;

    const-string v1, "Exceptions"

    invoke-static {v0, v1}, Ljavassist/bytecode/AttributeInfo;->remove(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method public setAccessFlags(I)V
    .locals 0

    .line 253
    iput p1, p0, Ljavassist/bytecode/MethodInfo;->accessFlags:I

    return-void
.end method

.method public setCodeAttribute(Ljavassist/bytecode/CodeAttribute;)V
    .locals 1

    .line 376
    invoke-virtual {p0}, Ljavassist/bytecode/MethodInfo;->removeCodeAttribute()V

    .line 377
    iget-object v0, p0, Ljavassist/bytecode/MethodInfo;->attribute:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 378
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljavassist/bytecode/MethodInfo;->attribute:Ljava/util/ArrayList;

    .line 380
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/MethodInfo;->attribute:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setDescriptor(Ljava/lang/String;)V
    .locals 1

    .line 271
    invoke-virtual {p0}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    iget-object v0, p0, Ljavassist/bytecode/MethodInfo;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ljavassist/bytecode/MethodInfo;->descriptor:I

    :cond_0
    return-void
.end method

.method public setExceptionsAttribute(Ljavassist/bytecode/ExceptionsAttribute;)V
    .locals 1

    .line 354
    invoke-virtual {p0}, Ljavassist/bytecode/MethodInfo;->removeExceptionsAttribute()V

    .line 355
    iget-object v0, p0, Ljavassist/bytecode/MethodInfo;->attribute:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 356
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljavassist/bytecode/MethodInfo;->attribute:Ljava/util/ArrayList;

    .line 358
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/MethodInfo;->attribute:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    .line 204
    iget-object v0, p0, Ljavassist/bytecode/MethodInfo;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/MethodInfo;->name:I

    .line 205
    iput-object p1, p0, Ljavassist/bytecode/MethodInfo;->cachedName:Ljava/lang/String;

    return-void
.end method

.method public setSuperclass(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 483
    invoke-virtual {p0}, Ljavassist/bytecode/MethodInfo;->isConstructor()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 486
    :cond_0
    invoke-virtual {p0}, Ljavassist/bytecode/MethodInfo;->getCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v0

    .line 487
    invoke-virtual {v0}, Ljavassist/bytecode/CodeAttribute;->getCode()[B

    move-result-object v1

    .line 488
    invoke-virtual {v0}, Ljavassist/bytecode/CodeAttribute;->iterator()Ljavassist/bytecode/CodeIterator;

    move-result-object v0

    .line 489
    invoke-virtual {v0}, Ljavassist/bytecode/CodeIterator;->skipSuperConstructor()I

    move-result v0

    if-ltz v0, :cond_1

    .line 491
    iget-object v2, p0, Ljavassist/bytecode/MethodInfo;->constPool:Ljavassist/bytecode/ConstPool;

    add-int/lit8 v0, v0, 0x1

    .line 492
    invoke-static {v1, v0}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v3

    .line 493
    invoke-virtual {v2, v3}, Ljavassist/bytecode/ConstPool;->getMethodrefNameAndType(I)I

    move-result v3

    .line 494
    invoke-virtual {v2, p1}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result p1

    .line 495
    invoke-virtual {v2, p1, v3}, Ljavassist/bytecode/ConstPool;->addMethodrefInfo(II)I

    move-result p1

    .line 496
    invoke-static {p1, v1, v0}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavassist/bytecode/MethodInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method write(Ljava/io/DataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 532
    iget v0, p0, Ljavassist/bytecode/MethodInfo;->accessFlags:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 533
    iget v0, p0, Ljavassist/bytecode/MethodInfo;->name:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 534
    iget v0, p0, Ljavassist/bytecode/MethodInfo;->descriptor:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 536
    iget-object v0, p0, Ljavassist/bytecode/MethodInfo;->attribute:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 537
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_0

    .line 539
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 540
    iget-object v0, p0, Ljavassist/bytecode/MethodInfo;->attribute:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljavassist/bytecode/AttributeInfo;->writeAll(Ljava/util/ArrayList;Ljava/io/DataOutputStream;)V

    :goto_0
    return-void
.end method
