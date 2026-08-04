.class Ljavassist/compiler/MemberCodeGen$JsrHook2;
.super Ljavassist/compiler/CodeGen$ReturnHook;
.source "MemberCodeGen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/compiler/MemberCodeGen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JsrHook2"
.end annotation


# instance fields
.field target:I

.field var:I


# direct methods
.method constructor <init>(Ljavassist/compiler/CodeGen;[I)V
    .locals 0

    .line 155
    invoke-direct {p0, p1}, Ljavassist/compiler/CodeGen$ReturnHook;-><init>(Ljavassist/compiler/CodeGen;)V

    const/4 p1, 0x0

    .line 156
    aget p1, p2, p1

    iput p1, p0, Ljavassist/compiler/MemberCodeGen$JsrHook2;->target:I

    const/4 p1, 0x1

    .line 157
    aget p1, p2, p1

    iput p1, p0, Ljavassist/compiler/MemberCodeGen$JsrHook2;->var:I

    return-void
.end method


# virtual methods
.method protected doit(Ljavassist/bytecode/Bytecode;I)Z
    .locals 1

    packed-switch p2, :pswitch_data_0

    .line 180
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "fatal"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 165
    :pswitch_0
    iget p2, p0, Ljavassist/compiler/MemberCodeGen$JsrHook2;->var:I

    invoke-virtual {p1, p2}, Ljavassist/bytecode/Bytecode;->addAstore(I)V

    goto :goto_0

    .line 174
    :pswitch_1
    iget p2, p0, Ljavassist/compiler/MemberCodeGen$JsrHook2;->var:I

    invoke-virtual {p1, p2}, Ljavassist/bytecode/Bytecode;->addDstore(I)V

    goto :goto_0

    .line 177
    :pswitch_2
    iget p2, p0, Ljavassist/compiler/MemberCodeGen$JsrHook2;->var:I

    invoke-virtual {p1, p2}, Ljavassist/bytecode/Bytecode;->addFstore(I)V

    goto :goto_0

    .line 171
    :pswitch_3
    iget p2, p0, Ljavassist/compiler/MemberCodeGen$JsrHook2;->var:I

    invoke-virtual {p1, p2}, Ljavassist/bytecode/Bytecode;->addLstore(I)V

    goto :goto_0

    .line 168
    :pswitch_4
    iget p2, p0, Ljavassist/compiler/MemberCodeGen$JsrHook2;->var:I

    invoke-virtual {p1, p2}, Ljavassist/bytecode/Bytecode;->addIstore(I)V

    :goto_0
    :pswitch_5
    const/16 p2, 0xa7

    .line 183
    invoke-virtual {p1, p2}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 184
    iget p2, p0, Ljavassist/compiler/MemberCodeGen$JsrHook2;->target:I

    invoke-virtual {p1}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v0

    sub-int/2addr p2, v0

    add-int/lit8 p2, p2, 0x3

    invoke-virtual {p1, p2}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0xac
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
