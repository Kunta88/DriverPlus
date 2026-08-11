.class Ljavassist/bytecode/LongInfo;
.super Ljavassist/bytecode/ConstInfo;
.source "ConstPool.java"


# static fields
.field static final tag:I = 0x5


# instance fields
.field value:J


# direct methods
.method public constructor <init>(JI)V
    .locals 0

    .line 1524
    invoke-direct {p0, p3}, Ljavassist/bytecode/ConstInfo;-><init>(I)V

    .line 1525
    iput-wide p1, p0, Ljavassist/bytecode/LongInfo;->value:J

    return-void
.end method

.method public constructor <init>(Ljava/io/DataInputStream;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1529
    invoke-direct {p0, p2}, Ljavassist/bytecode/ConstInfo;-><init>(I)V

    .line 1530
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide p1

    iput-wide p1, p0, Ljavassist/bytecode/LongInfo;->value:J

    return-void
.end method


# virtual methods
.method public copy(Ljavassist/bytecode/ConstPool;Ljavassist/bytecode/ConstPool;Ljava/util/Map;)I
    .locals 2

    .line 1542
    iget-wide v0, p0, Ljavassist/bytecode/LongInfo;->value:J

    invoke-virtual {p2, v0, v1}, Ljavassist/bytecode/ConstPool;->addLongInfo(J)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1536
    instance-of v0, p1, Ljavassist/bytecode/LongInfo;

    if-eqz v0, :cond_0

    check-cast p1, Ljavassist/bytecode/LongInfo;

    iget-wide v0, p1, Ljavassist/bytecode/LongInfo;->value:J

    iget-wide v2, p0, Ljavassist/bytecode/LongInfo;->value:J

    cmp-long p1, v0, v2

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

    const/4 v0, 0x5

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 1533
    iget-wide v0, p0, Ljavassist/bytecode/LongInfo;->value:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public print(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "Long "

    .line 1551
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1552
    iget-wide v0, p0, Ljavassist/bytecode/LongInfo;->value:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    return-void
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 1546
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1547
    iget-wide v0, p0, Ljavassist/bytecode/LongInfo;->value:J

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    return-void
.end method
