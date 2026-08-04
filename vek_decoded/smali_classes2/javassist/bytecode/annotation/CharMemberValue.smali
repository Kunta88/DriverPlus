.class public Ljavassist/bytecode/annotation/CharMemberValue;
.super Ljavassist/bytecode/annotation/MemberValue;
.source "CharMemberValue.java"


# instance fields
.field valueIndex:I


# direct methods
.method public constructor <init>(CLjavassist/bytecode/ConstPool;)V
    .locals 1

    const/16 v0, 0x43

    .line 50
    invoke-direct {p0, v0, p2}, Ljavassist/bytecode/annotation/MemberValue;-><init>(CLjavassist/bytecode/ConstPool;)V

    .line 51
    invoke-virtual {p0, p1}, Ljavassist/bytecode/annotation/CharMemberValue;->setValue(C)V

    return-void
.end method

.method public constructor <init>(ILjavassist/bytecode/ConstPool;)V
    .locals 1

    const/16 v0, 0x43

    .line 40
    invoke-direct {p0, v0, p2}, Ljavassist/bytecode/annotation/MemberValue;-><init>(CLjavassist/bytecode/ConstPool;)V

    .line 41
    iput p1, p0, Ljavassist/bytecode/annotation/CharMemberValue;->valueIndex:I

    return-void
.end method

.method public constructor <init>(Ljavassist/bytecode/ConstPool;)V
    .locals 1

    const/16 v0, 0x43

    .line 58
    invoke-direct {p0, v0, p1}, Ljavassist/bytecode/annotation/MemberValue;-><init>(CLjavassist/bytecode/ConstPool;)V

    const/4 p1, 0x0

    .line 59
    invoke-virtual {p0, p1}, Ljavassist/bytecode/annotation/CharMemberValue;->setValue(C)V

    return-void
.end method


# virtual methods
.method public accept(Ljavassist/bytecode/annotation/MemberValueVisitor;)V
    .locals 0

    .line 102
    invoke-interface {p1, p0}, Ljavassist/bytecode/annotation/MemberValueVisitor;->visitCharMemberValue(Ljavassist/bytecode/annotation/CharMemberValue;)V

    return-void
.end method

.method getType(Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 0

    .line 67
    sget-object p1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    return-object p1
.end method

.method public getValue()C
    .locals 2

    .line 74
    iget-object v0, p0, Ljavassist/bytecode/annotation/CharMemberValue;->cp:Ljavassist/bytecode/ConstPool;

    iget v1, p0, Ljavassist/bytecode/annotation/CharMemberValue;->valueIndex:I

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getIntegerInfo(I)I

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method getValue(Ljava/lang/ClassLoader;Ljavassist/ClassPool;Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 0

    .line 63
    new-instance p1, Ljava/lang/Character;

    invoke-virtual {p0}, Ljavassist/bytecode/annotation/CharMemberValue;->getValue()C

    move-result p2

    invoke-direct {p1, p2}, Ljava/lang/Character;-><init>(C)V

    return-object p1
.end method

.method public setValue(C)V
    .locals 1

    .line 81
    iget-object v0, p0, Ljavassist/bytecode/annotation/CharMemberValue;->cp:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addIntegerInfo(I)I

    move-result p1

    iput p1, p0, Ljavassist/bytecode/annotation/CharMemberValue;->valueIndex:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 88
    invoke-virtual {p0}, Ljavassist/bytecode/annotation/CharMemberValue;->getValue()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

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

    .line 95
    invoke-virtual {p0}, Ljavassist/bytecode/annotation/CharMemberValue;->getValue()C

    move-result v0

    invoke-virtual {p1, v0}, Ljavassist/bytecode/annotation/AnnotationsWriter;->constValueIndex(C)V

    return-void
.end method
