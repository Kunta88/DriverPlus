.class Ljavassist/bytecode/ConstInfoPadding;
.super Ljavassist/bytecode/ConstInfo;
.source "ConstPool.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1109
    invoke-direct {p0, p1}, Ljavassist/bytecode/ConstInfo;-><init>(I)V

    return-void
.end method


# virtual methods
.method public copy(Ljavassist/bytecode/ConstPool;Ljavassist/bytecode/ConstPool;Ljava/util/Map;)I
    .locals 0

    .line 1114
    invoke-virtual {p2}, Ljavassist/bytecode/ConstPool;->addConstInfoPadding()I

    move-result p1

    return p1
.end method

.method public getTag()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public print(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "padding"

    .line 1120
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
