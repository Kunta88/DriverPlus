.class Ljavassist/bytecode/MethodrefInfo;
.super Ljavassist/bytecode/MemberrefInfo;
.source "ConstPool.java"


# static fields
.field static final tag:I = 0xa


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 1372
    invoke-direct {p0, p1, p2, p3}, Ljavassist/bytecode/MemberrefInfo;-><init>(III)V

    return-void
.end method

.method public constructor <init>(Ljava/io/DataInputStream;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1376
    invoke-direct {p0, p1, p2}, Ljavassist/bytecode/MemberrefInfo;-><init>(Ljava/io/DataInputStream;I)V

    return-void
.end method


# virtual methods
.method protected copy2(Ljavassist/bytecode/ConstPool;II)I
    .locals 0

    .line 1384
    invoke-virtual {p1, p2, p3}, Ljavassist/bytecode/ConstPool;->addMethodrefInfo(II)I

    move-result p1

    return p1
.end method

.method public getTag()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 1

    const-string v0, "Method"

    return-object v0
.end method
