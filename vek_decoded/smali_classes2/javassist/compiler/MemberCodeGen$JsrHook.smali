.class Ljavassist/compiler/MemberCodeGen$JsrHook;
.super Ljavassist/compiler/CodeGen$ReturnHook;
.source "MemberCodeGen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/compiler/MemberCodeGen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JsrHook"
.end annotation


# instance fields
.field cgen:Ljavassist/compiler/CodeGen;

.field jsrList:Ljava/util/ArrayList;

.field var:I


# direct methods
.method constructor <init>(Ljavassist/compiler/CodeGen;)V
    .locals 1

    .line 91
    invoke-direct {p0, p1}, Ljavassist/compiler/CodeGen$ReturnHook;-><init>(Ljavassist/compiler/CodeGen;)V

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljavassist/compiler/MemberCodeGen$JsrHook;->jsrList:Ljava/util/ArrayList;

    .line 93
    iput-object p1, p0, Ljavassist/compiler/MemberCodeGen$JsrHook;->cgen:Ljavassist/compiler/CodeGen;

    const/4 p1, -0x1

    .line 94
    iput p1, p0, Ljavassist/compiler/MemberCodeGen$JsrHook;->var:I

    return-void
.end method

.method private getVar(I)I
    .locals 1

    .line 98
    iget v0, p0, Ljavassist/compiler/MemberCodeGen$JsrHook;->var:I

    if-gez v0, :cond_0

    .line 99
    iget-object v0, p0, Ljavassist/compiler/MemberCodeGen$JsrHook;->cgen:Ljavassist/compiler/CodeGen;

    invoke-virtual {v0}, Ljavassist/compiler/CodeGen;->getMaxLocals()I

    move-result v0

    iput v0, p0, Ljavassist/compiler/MemberCodeGen$JsrHook;->var:I

    .line 100
    iget-object v0, p0, Ljavassist/compiler/MemberCodeGen$JsrHook;->cgen:Ljavassist/compiler/CodeGen;

    invoke-virtual {v0, p1}, Ljavassist/compiler/CodeGen;->incMaxLocals(I)V

    .line 103
    :cond_0
    iget p1, p0, Ljavassist/compiler/MemberCodeGen$JsrHook;->var:I

    return p1
.end method

.method private jsrJmp(Ljavassist/bytecode/Bytecode;)V
    .locals 5

    const/16 v0, 0xa7

    .line 107
    invoke-virtual {p1, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 108
    iget-object v0, p0, Ljavassist/compiler/MemberCodeGen$JsrHook;->jsrList:Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {p1}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, p0, Ljavassist/compiler/MemberCodeGen$JsrHook;->var:I

    const/4 v4, 0x1

    aput v2, v1, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    invoke-virtual {p1, v3}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    return-void
.end method


# virtual methods
.method protected doit(Ljavassist/bytecode/Bytecode;I)Z
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    packed-switch p2, :pswitch_data_0

    .line 143
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "fatal"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 115
    :pswitch_0
    invoke-direct {p0, p1}, Ljavassist/compiler/MemberCodeGen$JsrHook;->jsrJmp(Ljavassist/bytecode/Bytecode;)V

    goto :goto_0

    .line 118
    :pswitch_1
    invoke-direct {p0, v1}, Ljavassist/compiler/MemberCodeGen$JsrHook;->getVar(I)I

    move-result p2

    invoke-virtual {p1, p2}, Ljavassist/bytecode/Bytecode;->addAstore(I)V

    .line 119
    invoke-direct {p0, p1}, Ljavassist/compiler/MemberCodeGen$JsrHook;->jsrJmp(Ljavassist/bytecode/Bytecode;)V

    .line 120
    iget p2, p0, Ljavassist/compiler/MemberCodeGen$JsrHook;->var:I

    invoke-virtual {p1, p2}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    goto :goto_0

    .line 133
    :pswitch_2
    invoke-direct {p0, v0}, Ljavassist/compiler/MemberCodeGen$JsrHook;->getVar(I)I

    move-result p2

    invoke-virtual {p1, p2}, Ljavassist/bytecode/Bytecode;->addDstore(I)V

    .line 134
    invoke-direct {p0, p1}, Ljavassist/compiler/MemberCodeGen$JsrHook;->jsrJmp(Ljavassist/bytecode/Bytecode;)V

    .line 135
    iget p2, p0, Ljavassist/compiler/MemberCodeGen$JsrHook;->var:I

    invoke-virtual {p1, p2}, Ljavassist/bytecode/Bytecode;->addDload(I)V

    goto :goto_0

    .line 138
    :pswitch_3
    invoke-direct {p0, v1}, Ljavassist/compiler/MemberCodeGen$JsrHook;->getVar(I)I

    move-result p2

    invoke-virtual {p1, p2}, Ljavassist/bytecode/Bytecode;->addFstore(I)V

    .line 139
    invoke-direct {p0, p1}, Ljavassist/compiler/MemberCodeGen$JsrHook;->jsrJmp(Ljavassist/bytecode/Bytecode;)V

    .line 140
    iget p2, p0, Ljavassist/compiler/MemberCodeGen$JsrHook;->var:I

    invoke-virtual {p1, p2}, Ljavassist/bytecode/Bytecode;->addFload(I)V

    goto :goto_0

    .line 128
    :pswitch_4
    invoke-direct {p0, v0}, Ljavassist/compiler/MemberCodeGen$JsrHook;->getVar(I)I

    move-result p2

    invoke-virtual {p1, p2}, Ljavassist/bytecode/Bytecode;->addLstore(I)V

    .line 129
    invoke-direct {p0, p1}, Ljavassist/compiler/MemberCodeGen$JsrHook;->jsrJmp(Ljavassist/bytecode/Bytecode;)V

    .line 130
    iget p2, p0, Ljavassist/compiler/MemberCodeGen$JsrHook;->var:I

    invoke-virtual {p1, p2}, Ljavassist/bytecode/Bytecode;->addLload(I)V

    goto :goto_0

    .line 123
    :pswitch_5
    invoke-direct {p0, v1}, Ljavassist/compiler/MemberCodeGen$JsrHook;->getVar(I)I

    move-result p2

    invoke-virtual {p1, p2}, Ljavassist/bytecode/Bytecode;->addIstore(I)V

    .line 124
    invoke-direct {p0, p1}, Ljavassist/compiler/MemberCodeGen$JsrHook;->jsrJmp(Ljavassist/bytecode/Bytecode;)V

    .line 125
    iget p2, p0, Ljavassist/compiler/MemberCodeGen$JsrHook;->var:I

    invoke-virtual {p1, p2}, Ljavassist/bytecode/Bytecode;->addIload(I)V

    :goto_0
    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0xac
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
