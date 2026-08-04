.class public final Ljavassist/bytecode/FieldInfo;
.super Ljava/lang/Object;
.source "FieldInfo.java"


# instance fields
.field accessFlags:I

.field attribute:Ljava/util/ArrayList;

.field cachedName:Ljava/lang/String;

.field cachedType:Ljava/lang/String;

.field constPool:Ljavassist/bytecode/ConstPool;

.field descriptor:I

.field name:I


# direct methods
.method private constructor <init>(Ljavassist/bytecode/ConstPool;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Ljavassist/bytecode/FieldInfo;->constPool:Ljavassist/bytecode/ConstPool;

    const/4 p1, 0x0

    .line 41
    iput p1, p0, Ljavassist/bytecode/FieldInfo;->accessFlags:I

    const/4 p1, 0x0

    .line 42
    iput-object p1, p0, Ljavassist/bytecode/FieldInfo;->attribute:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>(Ljavassist/bytecode/ConstPool;Ljava/io/DataInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1}, Ljavassist/bytecode/FieldInfo;-><init>(Ljavassist/bytecode/ConstPool;)V

    .line 63
    invoke-direct {p0, p2}, Ljavassist/bytecode/FieldInfo;->read(Ljava/io/DataInputStream;)V

    return-void
.end method

.method public constructor <init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 55
    invoke-direct {p0, p1}, Ljavassist/bytecode/FieldInfo;-><init>(Ljavassist/bytecode/ConstPool;)V

    .line 56
    invoke-virtual {p1, p2}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/FieldInfo;->name:I

    .line 57
    iput-object p2, p0, Ljavassist/bytecode/FieldInfo;->cachedName:Ljava/lang/String;

    .line 58
    invoke-virtual {p1, p3}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ljavassist/bytecode/FieldInfo;->descriptor:I

    return-void
.end method

.method private read(Ljava/io/DataInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 247
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/FieldInfo;->accessFlags:I

    .line 248
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/FieldInfo;->name:I

    .line 249
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/FieldInfo;->descriptor:I

    .line 250
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 251
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ljavassist/bytecode/FieldInfo;->attribute:Ljava/util/ArrayList;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 253
    iget-object v2, p0, Ljavassist/bytecode/FieldInfo;->attribute:Ljava/util/ArrayList;

    iget-object v3, p0, Ljavassist/bytecode/FieldInfo;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-static {v3, p1}, Ljavassist/bytecode/AttributeInfo;->read(Ljavassist/bytecode/ConstPool;Ljava/io/DataInputStream;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addAttribute(Ljavassist/bytecode/AttributeInfo;)V
    .locals 2

    .line 239
    iget-object v0, p0, Ljavassist/bytecode/FieldInfo;->attribute:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljavassist/bytecode/FieldInfo;->attribute:Ljava/util/ArrayList;

    .line 242
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/FieldInfo;->attribute:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljavassist/bytecode/AttributeInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljavassist/bytecode/AttributeInfo;->remove(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Ljavassist/bytecode/FieldInfo;->attribute:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method compact(Ljavassist/bytecode/ConstPool;)V
    .locals 1

    .line 82
    invoke-virtual {p0}, Ljavassist/bytecode/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/FieldInfo;->name:I

    .line 83
    invoke-virtual {p0}, Ljavassist/bytecode/FieldInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/FieldInfo;->descriptor:I

    .line 84
    iget-object v0, p0, Ljavassist/bytecode/FieldInfo;->attribute:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljavassist/bytecode/AttributeInfo;->copyAll(Ljava/util/ArrayList;Ljavassist/bytecode/ConstPool;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Ljavassist/bytecode/FieldInfo;->attribute:Ljava/util/ArrayList;

    .line 85
    iput-object p1, p0, Ljavassist/bytecode/FieldInfo;->constPool:Ljavassist/bytecode/ConstPool;

    return-void
.end method

.method public getAccessFlags()I
    .locals 1

    .line 155
    iget v0, p0, Ljavassist/bytecode/FieldInfo;->accessFlags:I

    return v0
.end method

.method public getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;
    .locals 1

    .line 229
    iget-object v0, p0, Ljavassist/bytecode/FieldInfo;->attribute:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljavassist/bytecode/AttributeInfo;->lookup(Ljava/util/ArrayList;Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object p1

    return-object p1
.end method

.method public getAttributes()Ljava/util/List;
    .locals 1

    .line 215
    iget-object v0, p0, Ljavassist/bytecode/FieldInfo;->attribute:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljavassist/bytecode/FieldInfo;->attribute:Ljava/util/ArrayList;

    .line 218
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/FieldInfo;->attribute:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getConstPool()Ljavassist/bytecode/ConstPool;
    .locals 1

    .line 128
    iget-object v0, p0, Ljavassist/bytecode/FieldInfo;->constPool:Ljavassist/bytecode/ConstPool;

    return-object v0
.end method

.method public getConstantValue()I
    .locals 2

    .line 193
    iget v0, p0, Ljavassist/bytecode/FieldInfo;->accessFlags:I

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "ConstantValue"

    .line 196
    invoke-virtual {p0, v0}, Ljavassist/bytecode/FieldInfo;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/ConstantAttribute;

    if-nez v0, :cond_1

    return v1

    .line 201
    :cond_1
    invoke-virtual {v0}, Ljavassist/bytecode/ConstantAttribute;->getConstantValue()I

    move-result v0

    return v0
.end method

.method public getDescriptor()Ljava/lang/String;
    .locals 2

    .line 173
    iget-object v0, p0, Ljavassist/bytecode/FieldInfo;->constPool:Ljavassist/bytecode/ConstPool;

    iget v1, p0, Ljavassist/bytecode/FieldInfo;->descriptor:I

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 135
    iget-object v0, p0, Ljavassist/bytecode/FieldInfo;->cachedName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Ljavassist/bytecode/FieldInfo;->constPool:Ljavassist/bytecode/ConstPool;

    iget v1, p0, Ljavassist/bytecode/FieldInfo;->name:I

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavassist/bytecode/FieldInfo;->cachedName:Ljava/lang/String;

    .line 138
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/FieldInfo;->cachedName:Ljava/lang/String;

    return-object v0
.end method

.method prune(Ljavassist/bytecode/ConstPool;)V
    .locals 4

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "RuntimeInvisibleAnnotations"

    .line 90
    invoke-virtual {p0, v1}, Ljavassist/bytecode/FieldInfo;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 93
    invoke-virtual {v1, p1, v2}, Ljavassist/bytecode/AttributeInfo;->copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v1

    .line 94
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v1, "RuntimeVisibleAnnotations"

    .line 97
    invoke-virtual {p0, v1}, Ljavassist/bytecode/FieldInfo;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 100
    invoke-virtual {v1, p1, v2}, Ljavassist/bytecode/AttributeInfo;->copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v1

    .line 101
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v1, "Signature"

    .line 104
    invoke-virtual {p0, v1}, Ljavassist/bytecode/FieldInfo;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 107
    invoke-virtual {v1, p1, v2}, Ljavassist/bytecode/AttributeInfo;->copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v1

    .line 108
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_2
    invoke-virtual {p0}, Ljavassist/bytecode/FieldInfo;->getConstantValue()I

    move-result v1

    if-eqz v1, :cond_3

    .line 113
    iget-object v3, p0, Ljavassist/bytecode/FieldInfo;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v3, v1, p1, v2}, Ljavassist/bytecode/ConstPool;->copy(ILjavassist/bytecode/ConstPool;Ljava/util/Map;)I

    move-result v1

    .line 114
    new-instance v2, Ljavassist/bytecode/ConstantAttribute;

    invoke-direct {v2, p1, v1}, Ljavassist/bytecode/ConstantAttribute;-><init>(Ljavassist/bytecode/ConstPool;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_3
    iput-object v0, p0, Ljavassist/bytecode/FieldInfo;->attribute:Ljava/util/ArrayList;

    .line 118
    invoke-virtual {p0}, Ljavassist/bytecode/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/FieldInfo;->name:I

    .line 119
    invoke-virtual {p0}, Ljavassist/bytecode/FieldInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/FieldInfo;->descriptor:I

    .line 120
    iput-object p1, p0, Ljavassist/bytecode/FieldInfo;->constPool:Ljavassist/bytecode/ConstPool;

    return-void
.end method

.method public setAccessFlags(I)V
    .locals 0

    .line 164
    iput p1, p0, Ljavassist/bytecode/FieldInfo;->accessFlags:I

    return-void
.end method

.method public setDescriptor(Ljava/lang/String;)V
    .locals 1

    .line 182
    invoke-virtual {p0}, Ljavassist/bytecode/FieldInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Ljavassist/bytecode/FieldInfo;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ljavassist/bytecode/FieldInfo;->descriptor:I

    :cond_0
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    .line 145
    iget-object v0, p0, Ljavassist/bytecode/FieldInfo;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/FieldInfo;->name:I

    .line 146
    iput-object p1, p0, Ljavassist/bytecode/FieldInfo;->cachedName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavassist/bytecode/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljavassist/bytecode/FieldInfo;->getDescriptor()Ljava/lang/String;

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

    .line 257
    iget v0, p0, Ljavassist/bytecode/FieldInfo;->accessFlags:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 258
    iget v0, p0, Ljavassist/bytecode/FieldInfo;->name:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 259
    iget v0, p0, Ljavassist/bytecode/FieldInfo;->descriptor:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 260
    iget-object v0, p0, Ljavassist/bytecode/FieldInfo;->attribute:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 261
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_0

    .line 263
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 264
    iget-object v0, p0, Ljavassist/bytecode/FieldInfo;->attribute:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljavassist/bytecode/AttributeInfo;->writeAll(Ljava/util/ArrayList;Ljava/io/DataOutputStream;)V

    :goto_0
    return-void
.end method
