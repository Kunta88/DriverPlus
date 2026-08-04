.class public abstract Ljavassist/convert/Transformer;
.super Ljava/lang/Object;
.source "Transformer.java"

# interfaces
.implements Ljavassist/bytecode/Opcode;


# instance fields
.field private next:Ljavassist/convert/Transformer;


# direct methods
.method public constructor <init>(Ljavassist/convert/Transformer;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Ljavassist/convert/Transformer;->next:Ljavassist/convert/Transformer;

    return-void
.end method


# virtual methods
.method public clean()V
    .locals 0

    return-void
.end method

.method public extraLocals()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public extraStack()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getNext()Ljavassist/convert/Transformer;
    .locals 1

    .line 41
    iget-object v0, p0, Ljavassist/convert/Transformer;->next:Ljavassist/convert/Transformer;

    return-object v0
.end method

.method public initialize(Ljavassist/bytecode/ConstPool;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 46
    invoke-virtual {p3}, Ljavassist/bytecode/MethodInfo;->getCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljavassist/convert/Transformer;->initialize(Ljavassist/bytecode/ConstPool;Ljavassist/bytecode/CodeAttribute;)V

    return-void
.end method

.method public initialize(Ljavassist/bytecode/ConstPool;Ljavassist/bytecode/CodeAttribute;)V
    .locals 0

    return-void
.end method

.method public abstract transform(Ljavassist/CtClass;ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/ConstPool;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;,
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation
.end method
