.class public Ljavassist/bytecode/SourceFileAttribute;
.super Ljavassist/bytecode/AttributeInfo;
.source "SourceFileAttribute.java"


# static fields
.field public static final tag:Ljava/lang/String; = "SourceFile"


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

    const-string v0, "SourceFile"

    .line 45
    invoke-direct {p0, p1, v0}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p1, p2}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x2

    new-array p2, p2, [B

    ushr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    const/4 v1, 0x0

    aput-byte v0, p2, v1

    int-to-byte p1, p1

    const/4 v0, 0x1

    aput-byte p1, p2, v0

    .line 50
    invoke-virtual {p0, p2}, Ljavassist/bytecode/SourceFileAttribute;->set([B)V

    return-void
.end method


# virtual methods
.method public copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/AttributeInfo;
    .locals 1

    .line 69
    new-instance p2, Ljavassist/bytecode/SourceFileAttribute;

    invoke-virtual {p0}, Ljavassist/bytecode/SourceFileAttribute;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Ljavassist/bytecode/SourceFileAttribute;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;)V

    return-object p2
.end method

.method public getFileName()Ljava/lang/String;
    .locals 3

    .line 57
    invoke-virtual {p0}, Ljavassist/bytecode/SourceFileAttribute;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v0

    invoke-virtual {p0}, Ljavassist/bytecode/SourceFileAttribute;->get()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v1

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
