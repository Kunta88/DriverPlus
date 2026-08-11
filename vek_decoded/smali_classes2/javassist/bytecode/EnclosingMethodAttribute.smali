.class public Ljavassist/bytecode/EnclosingMethodAttribute;
.super Ljavassist/bytecode/AttributeInfo;
.source "EnclosingMethodAttribute.java"


# static fields
.field public static final tag:Ljava/lang/String; = "EnclosingMethod"


# direct methods
.method constructor <init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2, p3}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    return-void
.end method

.method public constructor <init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;)V
    .locals 2

    const-string v0, "EnclosingMethod"

    .line 67
    invoke-direct {p0, p1, v0}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p1, p2}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x4

    new-array p2, p2, [B

    ushr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    const/4 v1, 0x0

    aput-byte v0, p2, v1

    int-to-byte p1, p1

    const/4 v0, 0x1

    aput-byte p1, p2, v0

    int-to-byte p1, v1

    const/4 v0, 0x2

    aput-byte p1, p2, v0

    int-to-byte p1, v1

    const/4 v0, 0x3

    aput-byte p1, p2, v0

    .line 75
    invoke-virtual {p0, p2}, Ljavassist/bytecode/EnclosingMethodAttribute;->set([B)V

    return-void
.end method

.method public constructor <init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "EnclosingMethod"

    .line 48
    invoke-direct {p0, p1, v0}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p1, p2}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result p2

    .line 50
    invoke-virtual {p1, p3, p4}, Ljavassist/bytecode/ConstPool;->addNameAndTypeInfo(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 p3, 0x4

    new-array p3, p3, [B

    ushr-int/lit8 p4, p2, 0x8

    int-to-byte p4, p4

    const/4 v0, 0x0

    aput-byte p4, p3, v0

    int-to-byte p2, p2

    const/4 p4, 0x1

    aput-byte p2, p3, p4

    ushr-int/lit8 p2, p1, 0x8

    int-to-byte p2, p2

    const/4 p4, 0x2

    aput-byte p2, p3, p4

    int-to-byte p1, p1

    const/4 p2, 0x3

    aput-byte p1, p3, p2

    .line 56
    invoke-virtual {p0, p3}, Ljavassist/bytecode/EnclosingMethodAttribute;->set([B)V

    return-void
.end method


# virtual methods
.method public classIndex()I
    .locals 2

    .line 82
    invoke-virtual {p0}, Ljavassist/bytecode/EnclosingMethodAttribute;->get()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    return v0
.end method

.method public className()Ljava/lang/String;
    .locals 2

    .line 96
    invoke-virtual {p0}, Ljavassist/bytecode/EnclosingMethodAttribute;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v0

    invoke-virtual {p0}, Ljavassist/bytecode/EnclosingMethodAttribute;->classIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getClassInfo(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/AttributeInfo;
    .locals 3

    .line 128
    invoke-virtual {p0}, Ljavassist/bytecode/EnclosingMethodAttribute;->methodIndex()I

    move-result p2

    if-nez p2, :cond_0

    .line 129
    new-instance p2, Ljavassist/bytecode/EnclosingMethodAttribute;

    invoke-virtual {p0}, Ljavassist/bytecode/EnclosingMethodAttribute;->className()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Ljavassist/bytecode/EnclosingMethodAttribute;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;)V

    return-object p2

    .line 131
    :cond_0
    new-instance p2, Ljavassist/bytecode/EnclosingMethodAttribute;

    invoke-virtual {p0}, Ljavassist/bytecode/EnclosingMethodAttribute;->className()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljavassist/bytecode/EnclosingMethodAttribute;->methodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljavassist/bytecode/EnclosingMethodAttribute;->methodDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, p1, v0, v1, v2}, Ljavassist/bytecode/EnclosingMethodAttribute;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method public methodDescriptor()Ljava/lang/String;
    .locals 2

    .line 113
    invoke-virtual {p0}, Ljavassist/bytecode/EnclosingMethodAttribute;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v0

    .line 114
    invoke-virtual {p0}, Ljavassist/bytecode/EnclosingMethodAttribute;->methodIndex()I

    move-result v1

    .line 115
    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getNameAndTypeDescriptor(I)I

    move-result v1

    .line 116
    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public methodIndex()I
    .locals 2

    .line 89
    invoke-virtual {p0}, Ljavassist/bytecode/EnclosingMethodAttribute;->get()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    return v0
.end method

.method public methodName()Ljava/lang/String;
    .locals 2

    .line 103
    invoke-virtual {p0}, Ljavassist/bytecode/EnclosingMethodAttribute;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v0

    .line 104
    invoke-virtual {p0}, Ljavassist/bytecode/EnclosingMethodAttribute;->methodIndex()I

    move-result v1

    .line 105
    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getNameAndTypeName(I)I

    move-result v1

    .line 106
    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
