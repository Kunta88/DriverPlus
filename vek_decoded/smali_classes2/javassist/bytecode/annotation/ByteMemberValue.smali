.class public Ljavassist/bytecode/annotation/ByteMemberValue;
.super Ljavassist/bytecode/annotation/MemberValue;
.source "ByteMemberValue.java"


# instance fields
.field valueIndex:I


# direct methods
.method public constructor <init>(BLjavassist/bytecode/ConstPool;)V
    .locals 1

    const/16 v0, 0x42

    .line 49
    invoke-direct {p0, v0, p2}, Ljavassist/bytecode/annotation/MemberValue;-><init>(CLjavassist/bytecode/ConstPool;)V

    .line 50
    invoke-virtual {p0, p1}, Ljavassist/bytecode/annotation/ByteMemberValue;->setValue(B)V

    return-void
.end method

.method public constructor <init>(ILjavassist/bytecode/ConstPool;)V
    .locals 1

    const/16 v0, 0x42

    .line 39
    invoke-direct {p0, v0, p2}, Ljavassist/bytecode/annotation/MemberValue;-><init>(CLjavassist/bytecode/ConstPool;)V

    .line 40
    iput p1, p0, Ljavassist/bytecode/annotation/ByteMemberValue;->valueIndex:I

    return-void
.end method

.method public constructor <init>(Ljavassist/bytecode/ConstPool;)V
    .locals 1

    const/16 v0, 0x42

    .line 57
    invoke-direct {p0, v0, p1}, Ljavassist/bytecode/annotation/MemberValue;-><init>(CLjavassist/bytecode/ConstPool;)V

    const/4 p1, 0x0

    .line 58
    invoke-virtual {p0, p1}, Ljavassist/bytecode/annotation/ByteMemberValue;->setValue(B)V

    return-void
.end method


# virtual methods
.method public accept(Ljavassist/bytecode/annotation/MemberValueVisitor;)V
    .locals 0

    .line 101
    invoke-interface {p1, p0}, Ljavassist/bytecode/annotation/MemberValueVisitor;->visitByteMemberValue(Ljavassist/bytecode/annotation/ByteMemberValue;)V

    return-void
.end method

.method getType(Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 0

    .line 66
    sget-object p1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    return-object p1
.end method

.method public getValue()B
    .locals 2

    .line 73
    iget-object v0, p0, Ljavassist/bytecode/annotation/ByteMemberValue;->cp:Ljavassist/bytecode/ConstPool;

    iget v1, p0, Ljavassist/bytecode/annotation/ByteMemberValue;->valueIndex:I

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getIntegerInfo(I)I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method getValue(Ljava/lang/ClassLoader;Ljavassist/ClassPool;Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 0

    .line 62
    new-instance p1, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljavassist/bytecode/annotation/ByteMemberValue;->getValue()B

    move-result p2

    invoke-direct {p1, p2}, Ljava/lang/Byte;-><init>(B)V

    return-object p1
.end method

.method public setValue(B)V
    .locals 1

    .line 80
    iget-object v0, p0, Ljavassist/bytecode/annotation/ByteMemberValue;->cp:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addIntegerInfo(I)I

    move-result p1

    iput p1, p0, Ljavassist/bytecode/annotation/ByteMemberValue;->valueIndex:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 87
    invoke-virtual {p0}, Ljavassist/bytecode/annotation/ByteMemberValue;->getValue()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

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

    .line 94
    invoke-virtual {p0}, Ljavassist/bytecode/annotation/ByteMemberValue;->getValue()B

    move-result v0

    invoke-virtual {p1, v0}, Ljavassist/bytecode/annotation/AnnotationsWriter;->constValueIndex(B)V

    return-void
.end method
