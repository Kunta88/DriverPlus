.class public Ljavassist/bytecode/SyntheticAttribute;
.super Ljavassist/bytecode/AttributeInfo;
.source "SyntheticAttribute.java"


# static fields
.field public static final tag:Ljava/lang/String; = "Synthetic"


# direct methods
.method public constructor <init>(Ljavassist/bytecode/ConstPool;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [B

    const-string v1, "Synthetic"

    .line 44
    invoke-direct {p0, p1, v1, v0}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;[B)V

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
    .locals 0

    .line 54
    new-instance p2, Ljavassist/bytecode/SyntheticAttribute;

    invoke-direct {p2, p1}, Ljavassist/bytecode/SyntheticAttribute;-><init>(Ljavassist/bytecode/ConstPool;)V

    return-object p2
.end method
