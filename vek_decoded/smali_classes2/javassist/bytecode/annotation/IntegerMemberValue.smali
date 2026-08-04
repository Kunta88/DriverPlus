.class public Ljavassist/bytecode/annotation/IntegerMemberValue;
.super Ljavassist/bytecode/annotation/MemberValue;
.source "IntegerMemberValue.java"


# instance fields
.field valueIndex:I


# direct methods
.method public constructor <init>(ILjavassist/bytecode/ConstPool;)V
    .locals 1

    const/16 v0, 0x49

    .line 40
    invoke-direct {p0, v0, p2}, Ljavassist/bytecode/annotation/MemberValue;-><init>(CLjavassist/bytecode/ConstPool;)V

    .line 41
    iput p1, p0, Ljavassist/bytecode/annotation/IntegerMemberValue;->valueIndex:I

    return-void
.end method

.method public constructor <init>(Ljavassist/bytecode/ConstPool;)V
    .locals 1

    const/16 v0, 0x49

    .line 64
    invoke-direct {p0, v0, p1}, Ljavassist/bytecode/annotation/MemberValue;-><init>(CLjavassist/bytecode/ConstPool;)V

    const/4 p1, 0x0

    .line 65
    invoke-virtual {p0, p1}, Ljavassist/bytecode/annotation/IntegerMemberValue;->setValue(I)V

    return-void
.end method

.method public constructor <init>(Ljavassist/bytecode/ConstPool;I)V
    .locals 1

    const/16 v0, 0x49

    .line 56
    invoke-direct {p0, v0, p1}, Ljavassist/bytecode/annotation/MemberValue;-><init>(CLjavassist/bytecode/ConstPool;)V

    .line 57
    invoke-virtual {p0, p2}, Ljavassist/bytecode/annotation/IntegerMemberValue;->setValue(I)V

    return-void
.end method


# virtual methods
.method public accept(Ljavassist/bytecode/annotation/MemberValueVisitor;)V
    .locals 0

    .line 108
    invoke-interface {p1, p0}, Ljavassist/bytecode/annotation/MemberValueVisitor;->visitIntegerMemberValue(Ljavassist/bytecode/annotation/IntegerMemberValue;)V

    return-void
.end method

.method getType(Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 0

    .line 73
    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    return-object p1
.end method

.method public getValue()I
    .locals 2

    .line 80
    iget-object v0, p0, Ljavassist/bytecode/annotation/IntegerMemberValue;->cp:Ljavassist/bytecode/ConstPool;

    iget v1, p0, Ljavassist/bytecode/annotation/IntegerMemberValue;->valueIndex:I

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getIntegerInfo(I)I

    move-result v0

    return v0
.end method

.method getValue(Ljava/lang/ClassLoader;Ljavassist/ClassPool;Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 0

    .line 69
    new-instance p1, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljavassist/bytecode/annotation/IntegerMemberValue;->getValue()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/lang/Integer;-><init>(I)V

    return-object p1
.end method

.method public setValue(I)V
    .locals 1

    .line 87
    iget-object v0, p0, Ljavassist/bytecode/annotation/IntegerMemberValue;->cp:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addIntegerInfo(I)I

    move-result p1

    iput p1, p0, Ljavassist/bytecode/annotation/IntegerMemberValue;->valueIndex:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 94
    invoke-virtual {p0}, Ljavassist/bytecode/annotation/IntegerMemberValue;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

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

    .line 101
    invoke-virtual {p0}, Ljavassist/bytecode/annotation/IntegerMemberValue;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Ljavassist/bytecode/annotation/AnnotationsWriter;->constValueIndex(I)V

    return-void
.end method
