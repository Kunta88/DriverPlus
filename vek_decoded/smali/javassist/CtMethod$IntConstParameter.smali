.class Ljavassist/CtMethod$IntConstParameter;
.super Ljavassist/CtMethod$ConstParameter;
.source "CtMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/CtMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IntConstParameter"
.end annotation


# instance fields
.field param:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 377
    invoke-direct {p0}, Ljavassist/CtMethod$ConstParameter;-><init>()V

    .line 378
    iput p1, p0, Ljavassist/CtMethod$IntConstParameter;->param:I

    return-void
.end method


# virtual methods
.method compile(Ljavassist/bytecode/Bytecode;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 382
    iget v0, p0, Ljavassist/CtMethod$IntConstParameter;->param:I

    invoke-virtual {p1, v0}, Ljavassist/bytecode/Bytecode;->addIconst(I)V

    const/4 p1, 0x1

    return p1
.end method

.method constDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "([Ljava/lang/Object;I)V"

    return-object v0
.end method

.method descriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "([Ljava/lang/Object;I)Ljava/lang/Object;"

    return-object v0
.end method
