.class Ljavassist/bytecode/FloatInfo;
.super Ljavassist/bytecode/ConstInfo;
.source "ConstPool.java"


# static fields
.field static final tag:I = 0x4


# instance fields
.field value:F


# direct methods
.method public constructor <init>(FI)V
    .locals 0

    .line 1487
    invoke-direct {p0, p2}, Ljavassist/bytecode/ConstInfo;-><init>(I)V

    .line 1488
    iput p1, p0, Ljavassist/bytecode/FloatInfo;->value:F

    return-void
.end method

.method public constructor <init>(Ljava/io/DataInputStream;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1492
    invoke-direct {p0, p2}, Ljavassist/bytecode/ConstInfo;-><init>(I)V

    .line 1493
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result p1

    iput p1, p0, Ljavassist/bytecode/FloatInfo;->value:F

    return-void
.end method


# virtual methods
.method public copy(Ljavassist/bytecode/ConstPool;Ljavassist/bytecode/ConstPool;Ljava/util/Map;)I
    .locals 0

    .line 1505
    iget p1, p0, Ljavassist/bytecode/FloatInfo;->value:F

    invoke-virtual {p2, p1}, Ljavassist/bytecode/ConstPool;->addFloatInfo(F)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1499
    instance-of v0, p1, Ljavassist/bytecode/FloatInfo;

    if-eqz v0, :cond_0

    check-cast p1, Ljavassist/bytecode/FloatInfo;

    iget p1, p1, Ljavassist/bytecode/FloatInfo;->value:F

    iget v0, p0, Ljavassist/bytecode/FloatInfo;->value:F

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getTag()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1496
    iget v0, p0, Ljavassist/bytecode/FloatInfo;->value:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    return v0
.end method

.method public print(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "Float "

    .line 1514
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1515
    iget v0, p0, Ljavassist/bytecode/FloatInfo;->value:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    return-void
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 1509
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1510
    iget v0, p0, Ljavassist/bytecode/FloatInfo;->value:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    return-void
.end method
