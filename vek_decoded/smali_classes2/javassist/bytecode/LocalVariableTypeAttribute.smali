.class public Ljavassist/bytecode/LocalVariableTypeAttribute;
.super Ljavassist/bytecode/LocalVariableAttribute;
.source "LocalVariableTypeAttribute.java"


# static fields
.field public static final tag:Ljava/lang/String; = "LocalVariableTypeTable"


# direct methods
.method public constructor <init>(Ljavassist/bytecode/ConstPool;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [B

    const-string v1, "LocalVariableTypeTable"

    .line 38
    invoke-direct {p0, p1, v1, v0}, Ljavassist/bytecode/LocalVariableAttribute;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;[B)V

    .line 39
    iget-object p1, p0, Ljavassist/bytecode/LocalVariableTypeAttribute;->info:[B

    const/4 v0, 0x0

    invoke-static {v0, p1, v0}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    return-void
.end method

.method constructor <init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2, p3}, Ljavassist/bytecode/LocalVariableAttribute;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    return-void
.end method

.method private constructor <init>(Ljavassist/bytecode/ConstPool;[B)V
    .locals 1

    const-string v0, "LocalVariableTypeTable"

    .line 49
    invoke-direct {p0, p1, v0, p2}, Ljavassist/bytecode/LocalVariableAttribute;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;[B)V

    return-void
.end method


# virtual methods
.method makeThisAttr(Ljavassist/bytecode/ConstPool;[B)Ljavassist/bytecode/LocalVariableAttribute;
    .locals 1

    .line 61
    new-instance v0, Ljavassist/bytecode/LocalVariableTypeAttribute;

    invoke-direct {v0, p1, p2}, Ljavassist/bytecode/LocalVariableTypeAttribute;-><init>(Ljavassist/bytecode/ConstPool;[B)V

    return-object v0
.end method

.method renameEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 53
    invoke-static {p1, p2, p3}, Ljavassist/bytecode/SignatureAttribute;->renameClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method renameEntry(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 0

    .line 57
    invoke-static {p1, p2}, Ljavassist/bytecode/SignatureAttribute;->renameClass(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
