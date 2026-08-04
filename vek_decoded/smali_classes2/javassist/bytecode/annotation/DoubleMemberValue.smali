.class public Ljavassist/bytecode/annotation/DoubleMemberValue;
.super Ljavassist/bytecode/annotation/MemberValue;
.source "DoubleMemberValue.java"


# instance fields
.field valueIndex:I


# direct methods
.method public constructor <init>(DLjavassist/bytecode/ConstPool;)V
    .locals 1

    const/16 v0, 0x44

    .line 51
    invoke-direct {p0, v0, p3}, Ljavassist/bytecode/annotation/MemberValue;-><init>(CLjavassist/bytecode/ConstPool;)V

    .line 52
    invoke-virtual {p0, p1, p2}, Ljavassist/bytecode/annotation/DoubleMemberValue;->setValue(D)V

    return-void
.end method

.method public constructor <init>(ILjavassist/bytecode/ConstPool;)V
    .locals 1

    const/16 v0, 0x44

    .line 41
    invoke-direct {p0, v0, p2}, Ljavassist/bytecode/annotation/MemberValue;-><init>(CLjavassist/bytecode/ConstPool;)V

    .line 42
    iput p1, p0, Ljavassist/bytecode/annotation/DoubleMemberValue;->valueIndex:I

    return-void
.end method

.method public constructor <init>(Ljavassist/bytecode/ConstPool;)V
    .locals 2

    const/16 v0, 0x44

    .line 59
    invoke-direct {p0, v0, p1}, Ljavassist/bytecode/annotation/MemberValue;-><init>(CLjavassist/bytecode/ConstPool;)V

    const-wide/16 v0, 0x0

    .line 60
    invoke-virtual {p0, v0, v1}, Ljavassist/bytecode/annotation/DoubleMemberValue;->setValue(D)V

    return-void
.end method


# virtual methods
.method public accept(Ljavassist/bytecode/annotation/MemberValueVisitor;)V
    .locals 0

    .line 103
    invoke-interface {p1, p0}, Ljavassist/bytecode/annotation/MemberValueVisitor;->visitDoubleMemberValue(Ljavassist/bytecode/annotation/DoubleMemberValue;)V

    return-void
.end method

.method getType(Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 0

    .line 68
    sget-object p1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    return-object p1
.end method

.method public getValue()D
    .locals 2

    .line 75
    iget-object v0, p0, Ljavassist/bytecode/annotation/DoubleMemberValue;->cp:Ljavassist/bytecode/ConstPool;

    iget v1, p0, Ljavassist/bytecode/annotation/DoubleMemberValue;->valueIndex:I

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getDoubleInfo(I)D

    move-result-wide v0

    return-wide v0
.end method

.method getValue(Ljava/lang/ClassLoader;Ljavassist/ClassPool;Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 0

    .line 64
    new-instance p1, Ljava/lang/Double;

    invoke-virtual {p0}, Ljavassist/bytecode/annotation/DoubleMemberValue;->getValue()D

    move-result-wide p2

    invoke-direct {p1, p2, p3}, Ljava/lang/Double;-><init>(D)V

    return-object p1
.end method

.method public setValue(D)V
    .locals 1

    .line 82
    iget-object v0, p0, Ljavassist/bytecode/annotation/DoubleMemberValue;->cp:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1, p2}, Ljavassist/bytecode/ConstPool;->addDoubleInfo(D)I

    move-result p1

    iput p1, p0, Ljavassist/bytecode/annotation/DoubleMemberValue;->valueIndex:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 89
    invoke-virtual {p0}, Ljavassist/bytecode/annotation/DoubleMemberValue;->getValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljavassist/bytecode/annotation/AnnotationsWriter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    invoke-virtual {p0}, Ljavassist/bytecode/annotation/DoubleMemberValue;->getValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljavassist/bytecode/annotation/AnnotationsWriter;->constValueIndex(D)V

    return-void
.end method
