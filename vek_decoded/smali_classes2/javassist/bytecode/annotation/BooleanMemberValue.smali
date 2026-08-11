.class public Ljavassist/bytecode/annotation/BooleanMemberValue;
.super Ljavassist/bytecode/annotation/MemberValue;
.source "BooleanMemberValue.java"


# instance fields
.field valueIndex:I


# direct methods
.method public constructor <init>(ILjavassist/bytecode/ConstPool;)V
    .locals 1

    const/16 v0, 0x5a

    .line 39
    invoke-direct {p0, v0, p2}, Ljavassist/bytecode/annotation/MemberValue;-><init>(CLjavassist/bytecode/ConstPool;)V

    .line 40
    iput p1, p0, Ljavassist/bytecode/annotation/BooleanMemberValue;->valueIndex:I

    return-void
.end method

.method public constructor <init>(Ljavassist/bytecode/ConstPool;)V
    .locals 1

    const/16 v0, 0x5a

    .line 57
    invoke-direct {p0, v0, p1}, Ljavassist/bytecode/annotation/MemberValue;-><init>(CLjavassist/bytecode/ConstPool;)V

    const/4 p1, 0x0

    .line 58
    invoke-virtual {p0, p1}, Ljavassist/bytecode/annotation/BooleanMemberValue;->setValue(Z)V

    return-void
.end method

.method public constructor <init>(ZLjavassist/bytecode/ConstPool;)V
    .locals 1

    const/16 v0, 0x5a

    .line 49
    invoke-direct {p0, v0, p2}, Ljavassist/bytecode/annotation/MemberValue;-><init>(CLjavassist/bytecode/ConstPool;)V

    .line 50
    invoke-virtual {p0, p1}, Ljavassist/bytecode/annotation/BooleanMemberValue;->setValue(Z)V

    return-void
.end method


# virtual methods
.method public accept(Ljavassist/bytecode/annotation/MemberValueVisitor;)V
    .locals 0

    .line 101
    invoke-interface {p1, p0}, Ljavassist/bytecode/annotation/MemberValueVisitor;->visitBooleanMemberValue(Ljavassist/bytecode/annotation/BooleanMemberValue;)V

    return-void
.end method

.method getType(Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 0

    .line 66
    sget-object p1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    return-object p1
.end method

.method getValue(Ljava/lang/ClassLoader;Ljavassist/ClassPool;Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 0

    .line 62
    new-instance p1, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljavassist/bytecode/annotation/BooleanMemberValue;->getValue()Z

    move-result p2

    invoke-direct {p1, p2}, Ljava/lang/Boolean;-><init>(Z)V

    return-object p1
.end method

.method public getValue()Z
    .locals 2

    .line 73
    iget-object v0, p0, Ljavassist/bytecode/annotation/BooleanMemberValue;->cp:Ljavassist/bytecode/ConstPool;

    iget v1, p0, Ljavassist/bytecode/annotation/BooleanMemberValue;->valueIndex:I

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getIntegerInfo(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setValue(Z)V
    .locals 1

    .line 80
    iget-object v0, p0, Ljavassist/bytecode/annotation/BooleanMemberValue;->cp:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addIntegerInfo(I)I

    move-result p1

    iput p1, p0, Ljavassist/bytecode/annotation/BooleanMemberValue;->valueIndex:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 87
    invoke-virtual {p0}, Ljavassist/bytecode/annotation/BooleanMemberValue;->getValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    goto :goto_0

    :cond_0
    const-string v0, "false"

    :goto_0
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
    invoke-virtual {p0}, Ljavassist/bytecode/annotation/BooleanMemberValue;->getValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljavassist/bytecode/annotation/AnnotationsWriter;->constValueIndex(Z)V

    return-void
.end method
