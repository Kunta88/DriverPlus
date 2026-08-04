.class public Ljavassist/bytecode/annotation/ShortMemberValue;
.super Ljavassist/bytecode/annotation/MemberValue;
.source "ShortMemberValue.java"


# instance fields
.field valueIndex:I


# direct methods
.method public constructor <init>(ILjavassist/bytecode/ConstPool;)V
    .locals 1

    const/16 v0, 0x53

    .line 40
    invoke-direct {p0, v0, p2}, Ljavassist/bytecode/annotation/MemberValue;-><init>(CLjavassist/bytecode/ConstPool;)V

    .line 41
    iput p1, p0, Ljavassist/bytecode/annotation/ShortMemberValue;->valueIndex:I

    return-void
.end method

.method public constructor <init>(Ljavassist/bytecode/ConstPool;)V
    .locals 1

    const/16 v0, 0x53

    .line 58
    invoke-direct {p0, v0, p1}, Ljavassist/bytecode/annotation/MemberValue;-><init>(CLjavassist/bytecode/ConstPool;)V

    const/4 p1, 0x0

    .line 59
    invoke-virtual {p0, p1}, Ljavassist/bytecode/annotation/ShortMemberValue;->setValue(S)V

    return-void
.end method

.method public constructor <init>(SLjavassist/bytecode/ConstPool;)V
    .locals 1

    const/16 v0, 0x53

    .line 50
    invoke-direct {p0, v0, p2}, Ljavassist/bytecode/annotation/MemberValue;-><init>(CLjavassist/bytecode/ConstPool;)V

    .line 51
    invoke-virtual {p0, p1}, Ljavassist/bytecode/annotation/ShortMemberValue;->setValue(S)V

    return-void
.end method


# virtual methods
.method public accept(Ljavassist/bytecode/annotation/MemberValueVisitor;)V
    .locals 0

    .line 102
    invoke-interface {p1, p0}, Ljavassist/bytecode/annotation/MemberValueVisitor;->visitShortMemberValue(Ljavassist/bytecode/annotation/ShortMemberValue;)V

    return-void
.end method

.method getType(Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 0

    .line 67
    sget-object p1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    return-object p1
.end method

.method getValue(Ljava/lang/ClassLoader;Ljavassist/ClassPool;Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 0

    .line 63
    new-instance p1, Ljava/lang/Short;

    invoke-virtual {p0}, Ljavassist/bytecode/annotation/ShortMemberValue;->getValue()S

    move-result p2

    invoke-direct {p1, p2}, Ljava/lang/Short;-><init>(S)V

    return-object p1
.end method

.method public getValue()S
    .locals 2

    .line 74
    iget-object v0, p0, Ljavassist/bytecode/annotation/ShortMemberValue;->cp:Ljavassist/bytecode/ConstPool;

    iget v1, p0, Ljavassist/bytecode/annotation/ShortMemberValue;->valueIndex:I

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getIntegerInfo(I)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public setValue(S)V
    .locals 1

    .line 81
    iget-object v0, p0, Ljavassist/bytecode/annotation/ShortMemberValue;->cp:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addIntegerInfo(I)I

    move-result p1

    iput p1, p0, Ljavassist/bytecode/annotation/ShortMemberValue;->valueIndex:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 88
    invoke-virtual {p0}, Ljavassist/bytecode/annotation/ShortMemberValue;->getValue()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->toString(S)Ljava/lang/String;

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
    invoke-virtual {p0}, Ljavassist/bytecode/annotation/ShortMemberValue;->getValue()S

    move-result v0

    invoke-virtual {p1, v0}, Ljavassist/bytecode/annotation/AnnotationsWriter;->constValueIndex(S)V

    return-void
.end method
