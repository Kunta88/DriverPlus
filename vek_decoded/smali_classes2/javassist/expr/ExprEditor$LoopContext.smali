.class final Ljavassist/expr/ExprEditor$LoopContext;
.super Ljava/lang/Object;
.source "ExprEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/expr/ExprEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LoopContext"
.end annotation


# instance fields
.field maxLocals:I

.field maxStack:I

.field newList:Ljavassist/expr/ExprEditor$NewOp;


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput p1, p0, Ljavassist/expr/ExprEditor$LoopContext;->maxLocals:I

    const/4 p1, 0x0

    .line 163
    iput p1, p0, Ljavassist/expr/ExprEditor$LoopContext;->maxStack:I

    const/4 p1, 0x0

    .line 164
    iput-object p1, p0, Ljavassist/expr/ExprEditor$LoopContext;->newList:Ljavassist/expr/ExprEditor$NewOp;

    return-void
.end method


# virtual methods
.method updateMax(II)V
    .locals 1

    .line 168
    iget v0, p0, Ljavassist/expr/ExprEditor$LoopContext;->maxLocals:I

    if-ge v0, p1, :cond_0

    .line 169
    iput p1, p0, Ljavassist/expr/ExprEditor$LoopContext;->maxLocals:I

    .line 171
    :cond_0
    iget p1, p0, Ljavassist/expr/ExprEditor$LoopContext;->maxStack:I

    if-ge p1, p2, :cond_1

    .line 172
    iput p2, p0, Ljavassist/expr/ExprEditor$LoopContext;->maxStack:I

    :cond_1
    return-void
.end method
