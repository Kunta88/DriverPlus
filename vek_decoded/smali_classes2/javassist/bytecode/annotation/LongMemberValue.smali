.class public Ljavassist/bytecode/annotation/LongMemberValue;
.super Ljavassist/bytecode/annotation/MemberValue;
.source "LongMemberValue.java"


# instance fields
.field valueIndex:I


# direct methods
.method public constructor <init>(ILjavassist/bytecode/ConstPool;)V
    .locals 1

    const/16 v0, 0x4a

    .line 40
    invoke-direct {p0, v0, p2}, Ljavassist/bytecode/annotation/MemberValue;-><init>(CLjavassist/bytecode/ConstPool;)V

    .line 41
    iput p1, p0, Ljavassist/bytecode/annotation/LongMemberValue;->valueIndex:I

    return-void
.end method

.method public constructor <init>(JLjavassist/bytecode/ConstPool;)V
    .locals 1

    const/16 v0, 0x4a

    .line 50
    invoke-direct {p0, v0, p3}, Ljavassist/bytecode/annotation/MemberValue;-><init>(CLjavassist/bytecode/ConstPool;)V

    .line 51
    invoke-virtual {p0, p1, p2}, Ljavassist/bytecode/annotation/LongMemberValue;->setValue(J)V

    return-void
.end method

.method public constructor <init>(Ljavassist/bytecode/ConstPool;)V
    .locals 2

    const/16 v0, 0x4a

    .line 58
    invoke-direct {p0, v0, p1}, Ljavassist/bytecode/annotation/MemberValue;-><init>(CLjavassist/bytecode/ConstPool;)V

    const-wide/16 v0, 0x0

    .line 59
    invoke-virtual {p0, v0, v1}, Ljavassist/bytecode/annotation/LongMemberValue;->setValue(J)V

    return-void
.end method


# virtual methods
.method public accept(Ljavassist/bytecode/annotation/MemberValueVisitor;)V
    .locals 0

    .line 102
    invoke-interface {p1, p0}, Ljavassist/bytecode/annotation/MemberValueVisitor;->visitLongMemberValue(Ljavassist/bytecode/annotation/LongMemberValue;)V

    return-void
.end method

.method getType(Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 0

    .line 67
    sget-object p1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    return-object p1
.end method

.method public getValue()J
    .locals 2

    .line 74
    iget-object v0, p0, Ljavassist/bytecode/annotation/LongMemberValue;->cp:Ljavassist/bytecode/ConstPool;

    iget v1, p0, Ljavassist/bytecode/annotation/LongMemberValue;->valueIndex:I

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getLongInfo(I)J

    move-result-wide v0

    return-wide v0
.end method

.method getValue(Ljava/lang/ClassLoader;Ljavassist/ClassPool;Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 0

    .line 63
    new-instance p1, Ljava/lang/Long;

    invoke-virtual {p0}, Ljavassist/bytecode/annotation/LongMemberValue;->getValue()J

    move-result-wide p2

    invoke-direct {p1, p2, p3}, Ljava/lang/Long;-><init>(J)V

    return-object p1
.end method

.method public setValue(J)V
    .locals 1

    .line 81
    iget-object v0, p0, Ljavassist/bytecode/annotation/LongMemberValue;->cp:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1, p2}, Ljavassist/bytecode/ConstPool;->addLongInfo(J)I

    move-result p1

    iput p1, p0, Ljavassist/bytecode/annotation/LongMemberValue;->valueIndex:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 88
    invoke-virtual {p0}, Ljavassist/bytecode/annotation/LongMemberValue;->getValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

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

    .line 95
    invoke-virtual {p0}, Ljavassist/bytecode/annotation/LongMemberValue;->getValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljavassist/bytecode/annotation/AnnotationsWriter;->constValueIndex(J)V

    return-void
.end method
