.class public Ljavassist/bytecode/AttributeInfo;
.super Ljava/lang/Object;
.source "AttributeInfo.java"


# instance fields
.field protected constPool:Ljavassist/bytecode/ConstPool;

.field info:[B

.field name:I


# direct methods
.method protected constructor <init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Ljavassist/bytecode/AttributeInfo;->constPool:Ljavassist/bytecode/ConstPool;

    .line 65
    iput p2, p0, Ljavassist/bytecode/AttributeInfo;->name:I

    .line 66
    invoke-virtual {p3}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    .line 67
    new-array p2, p1, [B

    iput-object p2, p0, Ljavassist/bytecode/AttributeInfo;->info:[B

    if-lez p1, :cond_0

    .line 69
    invoke-virtual {p3, p2}, Ljava/io/DataInputStream;->readFully([B)V

    :cond_0
    return-void
.end method

.method protected constructor <init>(Ljavassist/bytecode/ConstPool;I[B)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Ljavassist/bytecode/AttributeInfo;->constPool:Ljavassist/bytecode/ConstPool;

    .line 41
    iput p2, p0, Ljavassist/bytecode/AttributeInfo;->name:I

    .line 42
    iput-object p3, p0, Ljavassist/bytecode/AttributeInfo;->info:[B

    return-void
.end method

.method protected constructor <init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    check-cast v0, [B

    invoke-direct {p0, p1, p2, v0}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;[B)V

    return-void
.end method

.method public constructor <init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;[B)V
    .locals 0

    .line 58
    invoke-virtual {p1, p2}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, p1, p2, p3}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;I[B)V

    return-void
.end method

.method static copyAll(Ljava/util/ArrayList;Ljavassist/bytecode/ConstPool;)Ljava/util/ArrayList;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 243
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 244
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 246
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavassist/bytecode/AttributeInfo;

    .line 247
    invoke-virtual {v4, p1, v0}, Ljavassist/bytecode/AttributeInfo;->copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method static getLength(Ljava/util/ArrayList;)I
    .locals 4

    .line 191
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 193
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavassist/bytecode/AttributeInfo;

    .line 194
    invoke-virtual {v3}, Ljavassist/bytecode/AttributeInfo;->length()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method static getRefClasses(Ljava/util/List;Ljava/util/Map;)V
    .locals 1

    .line 281
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 282
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/AttributeInfo;

    .line 284
    invoke-virtual {v0, p1}, Ljavassist/bytecode/AttributeInfo;->getRefClasses(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static lookup(Ljava/util/ArrayList;Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 204
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object p0

    .line 205
    :cond_1
    invoke-interface {p0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 206
    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/AttributeInfo;

    .line 207
    invoke-virtual {v1}, Ljavassist/bytecode/AttributeInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    return-object v0
.end method

.method static read(Ljavassist/bytecode/ConstPool;Ljava/io/DataInputStream;)Ljavassist/bytecode/AttributeInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 76
    invoke-virtual {p0, v0}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x4c

    if-ge v2, v3, :cond_6

    const-string v2, "AnnotationDefault"

    .line 78
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    new-instance v1, Ljavassist/bytecode/AnnotationDefaultAttribute;

    invoke-direct {v1, p0, v0, p1}, Ljavassist/bytecode/AnnotationDefaultAttribute;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    return-object v1

    :cond_0
    const-string v2, "Code"

    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    new-instance v1, Ljavassist/bytecode/CodeAttribute;

    invoke-direct {v1, p0, v0, p1}, Ljavassist/bytecode/CodeAttribute;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    return-object v1

    :cond_1
    const-string v2, "ConstantValue"

    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 83
    new-instance v1, Ljavassist/bytecode/ConstantAttribute;

    invoke-direct {v1, p0, v0, p1}, Ljavassist/bytecode/ConstantAttribute;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    return-object v1

    :cond_2
    const-string v2, "Deprecated"

    .line 84
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 85
    new-instance v1, Ljavassist/bytecode/DeprecatedAttribute;

    invoke-direct {v1, p0, v0, p1}, Ljavassist/bytecode/DeprecatedAttribute;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    return-object v1

    :cond_3
    const-string v2, "EnclosingMethod"

    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 87
    new-instance v1, Ljavassist/bytecode/EnclosingMethodAttribute;

    invoke-direct {v1, p0, v0, p1}, Ljavassist/bytecode/EnclosingMethodAttribute;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    return-object v1

    :cond_4
    const-string v2, "Exceptions"

    .line 88
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 89
    new-instance v1, Ljavassist/bytecode/ExceptionsAttribute;

    invoke-direct {v1, p0, v0, p1}, Ljavassist/bytecode/ExceptionsAttribute;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    return-object v1

    :cond_5
    const-string v2, "InnerClasses"

    .line 90
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 91
    new-instance v1, Ljavassist/bytecode/InnerClassesAttribute;

    invoke-direct {v1, p0, v0, p1}, Ljavassist/bytecode/InnerClassesAttribute;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    return-object v1

    :cond_6
    const-string v2, "LineNumberTable"

    .line 96
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 97
    new-instance v1, Ljavassist/bytecode/LineNumberAttribute;

    invoke-direct {v1, p0, v0, p1}, Ljavassist/bytecode/LineNumberAttribute;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    return-object v1

    :cond_7
    const-string v2, "LocalVariableTable"

    .line 98
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 99
    new-instance v1, Ljavassist/bytecode/LocalVariableAttribute;

    invoke-direct {v1, p0, v0, p1}, Ljavassist/bytecode/LocalVariableAttribute;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    return-object v1

    :cond_8
    const-string v2, "LocalVariableTypeTable"

    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 101
    new-instance v1, Ljavassist/bytecode/LocalVariableTypeAttribute;

    invoke-direct {v1, p0, v0, p1}, Ljavassist/bytecode/LocalVariableTypeAttribute;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    return-object v1

    :cond_9
    const-string v2, "RuntimeVisibleAnnotations"

    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    const-string v2, "RuntimeInvisibleAnnotations"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_1

    :cond_a
    const-string v2, "RuntimeVisibleParameterAnnotations"

    .line 107
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    const-string v2, "RuntimeInvisibleParameterAnnotations"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_0

    :cond_b
    const-string v2, "Signature"

    .line 110
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 111
    new-instance v1, Ljavassist/bytecode/SignatureAttribute;

    invoke-direct {v1, p0, v0, p1}, Ljavassist/bytecode/SignatureAttribute;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    return-object v1

    :cond_c
    const-string v2, "SourceFile"

    .line 112
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 113
    new-instance v1, Ljavassist/bytecode/SourceFileAttribute;

    invoke-direct {v1, p0, v0, p1}, Ljavassist/bytecode/SourceFileAttribute;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    return-object v1

    :cond_d
    const-string v2, "Synthetic"

    .line 114
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 115
    new-instance v1, Ljavassist/bytecode/SyntheticAttribute;

    invoke-direct {v1, p0, v0, p1}, Ljavassist/bytecode/SyntheticAttribute;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    return-object v1

    :cond_e
    const-string v2, "StackMap"

    .line 116
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 117
    new-instance v1, Ljavassist/bytecode/StackMap;

    invoke-direct {v1, p0, v0, p1}, Ljavassist/bytecode/StackMap;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    return-object v1

    :cond_f
    const-string v2, "StackMapTable"

    .line 118
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 119
    new-instance v1, Ljavassist/bytecode/StackMapTable;

    invoke-direct {v1, p0, v0, p1}, Ljavassist/bytecode/StackMapTable;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    return-object v1

    .line 122
    :cond_10
    new-instance v1, Ljavassist/bytecode/AttributeInfo;

    invoke-direct {v1, p0, v0, p1}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    return-object v1

    .line 109
    :cond_11
    :goto_0
    new-instance v1, Ljavassist/bytecode/ParameterAnnotationsAttribute;

    invoke-direct {v1, p0, v0, p1}, Ljavassist/bytecode/ParameterAnnotationsAttribute;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    return-object v1

    .line 105
    :cond_12
    :goto_1
    new-instance v1, Ljavassist/bytecode/AnnotationsAttribute;

    invoke-direct {v1, p0, v0, p1}, Ljavassist/bytecode/AnnotationsAttribute;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    return-object v1
.end method

.method static declared-synchronized remove(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 2

    const-class v0, Ljavassist/bytecode/AttributeInfo;

    monitor-enter v0

    if-nez p0, :cond_0

    .line 216
    monitor-exit v0

    return-void

    .line 218
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object p0

    .line 219
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 220
    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/AttributeInfo;

    .line 221
    invoke-virtual {v1}, Ljavassist/bytecode/AttributeInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 222
    invoke-interface {p0}, Ljava/util/ListIterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 224
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method static renameClass(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 263
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 264
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/AttributeInfo;

    .line 266
    invoke-virtual {v0, p1, p2}, Ljavassist/bytecode/AttributeInfo;->renameClass(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static renameClass(Ljava/util/List;Ljava/util/Map;)V
    .locals 1

    .line 271
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 272
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/AttributeInfo;

    .line 274
    invoke-virtual {v0, p1}, Ljavassist/bytecode/AttributeInfo;->renameClass(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static writeAll(Ljava/util/ArrayList;Ljava/io/DataOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 232
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 234
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavassist/bytecode/AttributeInfo;

    .line 235
    invoke-virtual {v2, p1}, Ljavassist/bytecode/AttributeInfo;->write(Ljava/io/DataOutputStream;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/AttributeInfo;
    .locals 4

    .line 173
    iget-object p2, p0, Ljavassist/bytecode/AttributeInfo;->info:[B

    array-length v0, p2

    .line 175
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 177
    aget-byte v3, p2, v2

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 179
    :cond_0
    new-instance p2, Ljavassist/bytecode/AttributeInfo;

    invoke-virtual {p0}, Ljavassist/bytecode/AttributeInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p1, v0, v1}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;[B)V

    return-object p2
.end method

.method public get()[B
    .locals 1

    .line 153
    iget-object v0, p0, Ljavassist/bytecode/AttributeInfo;->info:[B

    return-object v0
.end method

.method public getConstPool()Ljavassist/bytecode/ConstPool;
    .locals 1

    .line 135
    iget-object v0, p0, Ljavassist/bytecode/AttributeInfo;->constPool:Ljavassist/bytecode/ConstPool;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 129
    iget-object v0, p0, Ljavassist/bytecode/AttributeInfo;->constPool:Ljavassist/bytecode/ConstPool;

    iget v1, p0, Ljavassist/bytecode/AttributeInfo;->name:I

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getRefClasses(Ljava/util/Map;)V
    .locals 0

    return-void
.end method

.method public length()I
    .locals 1

    .line 143
    iget-object v0, p0, Ljavassist/bytecode/AttributeInfo;->info:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x6

    return v0
.end method

.method renameClass(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method renameClass(Ljava/util/Map;)V
    .locals 0

    return-void
.end method

.method public set([B)V
    .locals 0

    .line 162
    iput-object p1, p0, Ljavassist/bytecode/AttributeInfo;->info:[B

    return-void
.end method

.method write(Ljava/io/DataOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    iget v0, p0, Ljavassist/bytecode/AttributeInfo;->name:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 184
    iget-object v0, p0, Ljavassist/bytecode/AttributeInfo;->info:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 185
    iget-object v0, p0, Ljavassist/bytecode/AttributeInfo;->info:[B

    array-length v1, v0

    if-lez v1, :cond_0

    .line 186
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    :cond_0
    return-void
.end method
