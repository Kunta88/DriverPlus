.class public Ljavassist/bytecode/annotation/FloatMemberValue;
.super Ljavassist/bytecode/annotation/MemberValue;
.source "FloatMemberValue.java"


# instance fields
.field valueIndex:I


# direct methods
.method public constructor <init>(FLjavassist/bytecode/ConstPool;)V
    .locals 1

    const/16 v0, 0x46

    .line 51
    invoke-direct {p0, v0, p2}, Ljavassist/bytecode/annotation/MemberValue;-><init>(CLjavassist/bytecode/ConstPool;)V

    .line 52
    invoke-virtual {p0, p1}, Ljavassist/bytecode/annotation/FloatMemberValue;->setValue(F)V

    return-void
.end method

.method public constructor <init>(ILjavassist/bytecode/ConstPool;)V
    .locals 1

    const/16 v0, 0x46

    .line 41
    invoke-direct {p0, v0, p2}, Ljavassist/bytecode/annotation/MemberValue;-><init>(CLjavassist/bytecode/ConstPool;)V

    .line 42
    iput p1, p0, Ljavassist/bytecode/annotation/FloatMemberValue;->valueIndex:I

    return-void
.end method

.method public constructor <init>(Ljavassist/bytecode/ConstPool;)V
    .locals 1

    const/16 v0, 0x46

    .line 59
    invoke-direct {p0, v0, p1}, Ljavassist/bytecode/annotation/MemberValue;-><init>(CLjavassist/bytecode/ConstPool;)V

    const/4 p1, 0x0

    .line 60
    invoke-virtual {p0, p1}, Ljavassist/bytecode/annotation/FloatMemberValue;->setValue(F)V

    return-void
.end method


# virtual methods
.method public accept(Ljavassist/bytecode/annotation/MemberValueVisitor;)V
    .locals 0

    .line 103
    invoke-interface {p1, p0}, Ljavassist/bytecode/annotation/MemberValueVisitor;->visitFloatMemberValue(Ljavassist/bytecode/annotation/FloatMemberValue;)V

    return-void
.end method

.method getType(Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 0

    .line 68
    sget-object p1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    return-object p1
.end method

.method public getValue()F
    .locals 2

    .line 75
    iget-object v0, p0, Ljavassist/bytecode/annotation/FloatMemberValue;->cp:Ljavassist/bytecode/ConstPool;

    iget v1, p0, Ljavassist/bytecode/annotation/FloatMemberValue;->valueIndex:I

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getFloatInfo(I)F

    move-result v0

    return v0
.end method

.method getValue(Ljava/lang/ClassLoader;Ljavassist/ClassPool;Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 0

    .line 64
    new-instance p1, Ljava/lang/Float;

    invoke-virtual {p0}, Ljavassist/bytecode/annotation/FloatMemberValue;->getValue()F

    move-result p2

    invoke-direct {p1, p2}, Ljava/lang/Float;-><init>(F)V

    return-object p1
.end method

.method public setValue(F)V
    .locals 1

    .line 82
    iget-object v0, p0, Ljavassist/bytecode/annotation/FloatMemberValue;->cp:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addFloatInfo(F)I

    move-result p1

    iput p1, p0, Ljavassist/bytecode/annotation/FloatMemberValue;->valueIndex:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 89
    invoke-virtual {p0}, Ljavassist/bytecode/annotation/FloatMemberValue;->getValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljavassist/bytecode/annotation/AnnotationsWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    invoke-virtual {p0}, Ljavassist/bytecode/annotation/FloatMemberValue;->getValue()F

    move-result v0

    invoke-virtual {p1, v0}, Ljavassist/bytecode/annotation/AnnotationsWriter;->constValueIndex(F)V

    return-void
.end method
