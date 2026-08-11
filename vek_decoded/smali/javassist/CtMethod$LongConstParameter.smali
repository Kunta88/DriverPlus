.class Ljavassist/CtMethod$LongConstParameter;
.super Ljavassist/CtMethod$ConstParameter;
.source "CtMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/CtMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LongConstParameter"
.end annotation


# instance fields
.field param:J


# direct methods
.method constructor <init>(J)V
    .locals 0

    .line 398
    invoke-direct {p0}, Ljavassist/CtMethod$ConstParameter;-><init>()V

    .line 399
    iput-wide p1, p0, Ljavassist/CtMethod$LongConstParameter;->param:J

    return-void
.end method


# virtual methods
.method compile(Ljavassist/bytecode/Bytecode;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 403
    iget-wide v0, p0, Ljavassist/CtMethod$LongConstParameter;->param:J

    invoke-virtual {p1, v0, v1}, Ljavassist/bytecode/Bytecode;->addLconst(J)V

    const/4 p1, 0x2

    return p1
.end method

.method constDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "([Ljava/lang/Object;J)V"

    return-object v0
.end method

.method descriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "([Ljava/lang/Object;J)Ljava/lang/Object;"

    return-object v0
.end method
