.class Ljavassist/bytecode/DoubleInfo;
.super Ljavassist/bytecode/ConstInfo;
.source "ConstPool.java"


# static fields
.field static final tag:I = 0x6


# instance fields
.field value:D


# direct methods
.method public constructor <init>(DI)V
    .locals 0

    .line 1561
    invoke-direct {p0, p3}, Ljavassist/bytecode/ConstInfo;-><init>(I)V

    .line 1562
    iput-wide p1, p0, Ljavassist/bytecode/DoubleInfo;->value:D

    return-void
.end method

.method public constructor <init>(Ljava/io/DataInputStream;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1566
    invoke-direct {p0, p2}, Ljavassist/bytecode/ConstInfo;-><init>(I)V

    .line 1567
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide p1

    iput-wide p1, p0, Ljavassist/bytecode/DoubleInfo;->value:D

    return-void
.end method


# virtual methods
.method public copy(Ljavassist/bytecode/ConstPool;Ljavassist/bytecode/ConstPool;Ljava/util/Map;)I
    .locals 2

    .line 1582
    iget-wide v0, p0, Ljavassist/bytecode/DoubleInfo;->value:D

    invoke-virtual {p2, v0, v1}, Ljavassist/bytecode/ConstPool;->addDoubleInfo(D)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1576
    instance-of v0, p1, Ljavassist/bytecode/DoubleInfo;

    if-eqz v0, :cond_0

    check-cast p1, Ljavassist/bytecode/DoubleInfo;

    iget-wide v0, p1, Ljavassist/bytecode/DoubleInfo;->value:D

    iget-wide v2, p0, Ljavassist/bytecode/DoubleInfo;->value:D

    cmpl-double p1, v0, v2

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

    const/4 v0, 0x6

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 1571
    iget-wide v0, p0, Ljavassist/bytecode/DoubleInfo;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public print(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "Double "

    .line 1591
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1592
    iget-wide v0, p0, Ljavassist/bytecode/DoubleInfo;->value:D

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(D)V

    return-void
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x6

    .line 1586
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1587
    iget-wide v0, p0, Ljavassist/bytecode/DoubleInfo;->value:D

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeDouble(D)V

    return-void
.end method
