.class public Ljavassist/bytecode/ConstantAttribute;
.super Ljavassist/bytecode/AttributeInfo;
.source "ConstantAttribute.java"


# static fields
.field public static final tag:Ljava/lang/String; = "ConstantValue"


# direct methods
.method public constructor <init>(Ljavassist/bytecode/ConstPool;I)V
    .locals 2

    const-string v0, "ConstantValue"

    .line 46
    invoke-direct {p0, p1, v0}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;)V

    const/4 p1, 0x2

    new-array p1, p1, [B

    ushr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    const/4 v1, 0x0

    aput-byte v0, p1, v1

    int-to-byte p2, p2

    const/4 v0, 0x1

    aput-byte p2, p1, v0

    .line 50
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstantAttribute;->set([B)V

    return-void
.end method

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


# virtual methods
.method public copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/AttributeInfo;
    .locals 2

    .line 69
    invoke-virtual {p0}, Ljavassist/bytecode/ConstantAttribute;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v0

    invoke-virtual {p0}, Ljavassist/bytecode/ConstantAttribute;->getConstantValue()I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Ljavassist/bytecode/ConstPool;->copy(ILjavassist/bytecode/ConstPool;Ljava/util/Map;)I

    move-result p2

    .line 71
    new-instance v0, Ljavassist/bytecode/ConstantAttribute;

    invoke-direct {v0, p1, p2}, Ljavassist/bytecode/ConstantAttribute;-><init>(Ljavassist/bytecode/ConstPool;I)V

    return-object v0
.end method

.method public getConstantValue()I
    .locals 2

    .line 57
    invoke-virtual {p0}, Ljavassist/bytecode/ConstantAttribute;->get()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    return v0
.end method
