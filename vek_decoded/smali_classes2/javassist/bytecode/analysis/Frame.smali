.class public Ljavassist/bytecode/analysis/Frame;
.super Ljava/lang/Object;
.source "Frame.java"


# instance fields
.field private jsrMerged:Z

.field private locals:[Ljavassist/bytecode/analysis/Type;

.field private retMerged:Z

.field private stack:[Ljavassist/bytecode/analysis/Type;

.field private top:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-array p1, p1, [Ljavassist/bytecode/analysis/Type;

    iput-object p1, p0, Ljavassist/bytecode/analysis/Frame;->locals:[Ljavassist/bytecode/analysis/Type;

    .line 39
    new-array p1, p2, [Ljavassist/bytecode/analysis/Type;

    iput-object p1, p0, Ljavassist/bytecode/analysis/Frame;->stack:[Ljavassist/bytecode/analysis/Type;

    return-void
.end method


# virtual methods
.method public clearStack()V
    .locals 1

    const/4 v0, 0x0

    .line 87
    iput v0, p0, Ljavassist/bytecode/analysis/Frame;->top:I

    return-void
.end method

.method public copy()Ljavassist/bytecode/analysis/Frame;
    .locals 5

    .line 152
    new-instance v0, Ljavassist/bytecode/analysis/Frame;

    iget-object v1, p0, Ljavassist/bytecode/analysis/Frame;->locals:[Ljavassist/bytecode/analysis/Type;

    array-length v1, v1

    iget-object v2, p0, Ljavassist/bytecode/analysis/Frame;->stack:[Ljavassist/bytecode/analysis/Type;

    array-length v2, v2

    invoke-direct {v0, v1, v2}, Ljavassist/bytecode/analysis/Frame;-><init>(II)V

    .line 153
    iget-object v1, p0, Ljavassist/bytecode/analysis/Frame;->locals:[Ljavassist/bytecode/analysis/Type;

    iget-object v2, v0, Ljavassist/bytecode/analysis/Frame;->locals:[Ljavassist/bytecode/analysis/Type;

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 154
    iget-object v1, p0, Ljavassist/bytecode/analysis/Frame;->stack:[Ljavassist/bytecode/analysis/Type;

    iget-object v2, v0, Ljavassist/bytecode/analysis/Frame;->stack:[Ljavassist/bytecode/analysis/Type;

    array-length v3, v1

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 155
    iget v1, p0, Ljavassist/bytecode/analysis/Frame;->top:I

    iput v1, v0, Ljavassist/bytecode/analysis/Frame;->top:I

    return-object v0
.end method

.method public copyStack()Ljavassist/bytecode/analysis/Frame;
    .locals 5

    .line 166
    new-instance v0, Ljavassist/bytecode/analysis/Frame;

    iget-object v1, p0, Ljavassist/bytecode/analysis/Frame;->locals:[Ljavassist/bytecode/analysis/Type;

    array-length v1, v1

    iget-object v2, p0, Ljavassist/bytecode/analysis/Frame;->stack:[Ljavassist/bytecode/analysis/Type;

    array-length v2, v2

    invoke-direct {v0, v1, v2}, Ljavassist/bytecode/analysis/Frame;-><init>(II)V

    .line 167
    iget-object v1, p0, Ljavassist/bytecode/analysis/Frame;->stack:[Ljavassist/bytecode/analysis/Type;

    iget-object v2, v0, Ljavassist/bytecode/analysis/Frame;->stack:[Ljavassist/bytecode/analysis/Type;

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 168
    iget v1, p0, Ljavassist/bytecode/analysis/Frame;->top:I

    iput v1, v0, Ljavassist/bytecode/analysis/Frame;->top:I

    return-object v0
.end method

.method public getLocal(I)Ljavassist/bytecode/analysis/Type;
    .locals 1

    .line 49
    iget-object v0, p0, Ljavassist/bytecode/analysis/Frame;->locals:[Ljavassist/bytecode/analysis/Type;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getStack(I)Ljavassist/bytecode/analysis/Type;
    .locals 1

    .line 70
    iget-object v0, p0, Ljavassist/bytecode/analysis/Frame;->stack:[Ljavassist/bytecode/analysis/Type;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getTopIndex()I
    .locals 1

    .line 99
    iget v0, p0, Ljavassist/bytecode/analysis/Frame;->top:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method isJsrMerged()Z
    .locals 1

    .line 258
    iget-boolean v0, p0, Ljavassist/bytecode/analysis/Frame;->jsrMerged:Z

    return v0
.end method

.method isRetMerged()Z
    .locals 1

    .line 277
    iget-boolean v0, p0, Ljavassist/bytecode/analysis/Frame;->retMerged:Z

    return v0
.end method

.method public localsLength()I
    .locals 1

    .line 109
    iget-object v0, p0, Ljavassist/bytecode/analysis/Frame;->locals:[Ljavassist/bytecode/analysis/Type;

    array-length v0, v0

    return v0
.end method

.method public merge(Ljavassist/bytecode/analysis/Frame;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 213
    :goto_0
    iget-object v2, p0, Ljavassist/bytecode/analysis/Frame;->locals:[Ljavassist/bytecode/analysis/Type;

    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 214
    aget-object v3, v2, v0

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 215
    aget-object v2, v2, v0

    .line 216
    iget-object v3, p1, Ljavassist/bytecode/analysis/Frame;->locals:[Ljavassist/bytecode/analysis/Type;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljavassist/bytecode/analysis/Type;->merge(Ljavassist/bytecode/analysis/Type;)Ljavassist/bytecode/analysis/Type;

    move-result-object v3

    .line 218
    iget-object v5, p0, Ljavassist/bytecode/analysis/Frame;->locals:[Ljavassist/bytecode/analysis/Type;

    aput-object v3, v5, v0

    .line 219
    invoke-virtual {v3, v2}, Ljavassist/bytecode/analysis/Type;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v3}, Ljavassist/bytecode/analysis/Type;->popChanged()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 222
    :cond_0
    iget-object v3, p1, Ljavassist/bytecode/analysis/Frame;->locals:[Ljavassist/bytecode/analysis/Type;

    aget-object v5, v3, v0

    if-eqz v5, :cond_2

    .line 223
    aget-object v1, v3, v0

    aput-object v1, v2, v0

    :cond_1
    :goto_1
    const/4 v1, 0x1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 228
    :cond_3
    invoke-virtual {p0, p1}, Ljavassist/bytecode/analysis/Frame;->mergeStack(Ljavassist/bytecode/analysis/Frame;)Z

    move-result p1

    or-int/2addr p1, v1

    return p1
.end method

.method public mergeStack(Ljavassist/bytecode/analysis/Frame;)Z
    .locals 5

    .line 181
    iget v0, p0, Ljavassist/bytecode/analysis/Frame;->top:I

    iget v1, p1, Ljavassist/bytecode/analysis/Frame;->top:I

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 184
    :goto_0
    iget v2, p0, Ljavassist/bytecode/analysis/Frame;->top:I

    if-ge v0, v2, :cond_3

    .line 185
    iget-object v2, p0, Ljavassist/bytecode/analysis/Frame;->stack:[Ljavassist/bytecode/analysis/Type;

    aget-object v3, v2, v0

    if-eqz v3, :cond_2

    .line 186
    aget-object v2, v2, v0

    .line 187
    iget-object v3, p1, Ljavassist/bytecode/analysis/Frame;->stack:[Ljavassist/bytecode/analysis/Type;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljavassist/bytecode/analysis/Type;->merge(Ljavassist/bytecode/analysis/Type;)Ljavassist/bytecode/analysis/Type;

    move-result-object v3

    .line 188
    sget-object v4, Ljavassist/bytecode/analysis/Type;->BOGUS:Ljavassist/bytecode/analysis/Type;

    if-eq v3, v4, :cond_1

    .line 191
    iget-object v4, p0, Ljavassist/bytecode/analysis/Frame;->stack:[Ljavassist/bytecode/analysis/Type;

    aput-object v3, v4, v0

    .line 193
    invoke-virtual {v3, v2}, Ljavassist/bytecode/analysis/Type;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v3}, Ljavassist/bytecode/analysis/Type;->popChanged()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    .line 189
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operand stacks could not be merged due to differing primitive types: pos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v1

    .line 182
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Operand stacks could not be merged, they are different sizes!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public peek()Ljavassist/bytecode/analysis/Type;
    .locals 3

    .line 118
    iget v0, p0, Ljavassist/bytecode/analysis/Frame;->top:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 121
    iget-object v2, p0, Ljavassist/bytecode/analysis/Frame;->stack:[Ljavassist/bytecode/analysis/Type;

    sub-int/2addr v0, v1

    aget-object v0, v2, v0

    return-object v0

    .line 119
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Stack is empty"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public pop()Ljavassist/bytecode/analysis/Type;
    .locals 3

    .line 130
    iget v0, p0, Ljavassist/bytecode/analysis/Frame;->top:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 132
    iget-object v2, p0, Ljavassist/bytecode/analysis/Frame;->stack:[Ljavassist/bytecode/analysis/Type;

    sub-int/2addr v0, v1

    iput v0, p0, Ljavassist/bytecode/analysis/Frame;->top:I

    aget-object v0, v2, v0

    return-object v0

    .line 131
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Stack is empty"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public push(Ljavassist/bytecode/analysis/Type;)V
    .locals 3

    .line 141
    iget-object v0, p0, Ljavassist/bytecode/analysis/Frame;->stack:[Ljavassist/bytecode/analysis/Type;

    iget v1, p0, Ljavassist/bytecode/analysis/Frame;->top:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavassist/bytecode/analysis/Frame;->top:I

    aput-object p1, v0, v1

    return-void
.end method

.method setJsrMerged(Z)V
    .locals 0

    .line 267
    iput-boolean p1, p0, Ljavassist/bytecode/analysis/Frame;->jsrMerged:Z

    return-void
.end method

.method public setLocal(ILjavassist/bytecode/analysis/Type;)V
    .locals 1

    .line 59
    iget-object v0, p0, Ljavassist/bytecode/analysis/Frame;->locals:[Ljavassist/bytecode/analysis/Type;

    aput-object p2, v0, p1

    return-void
.end method

.method setRetMerged(Z)V
    .locals 0

    .line 287
    iput-boolean p1, p0, Ljavassist/bytecode/analysis/Frame;->retMerged:Z

    return-void
.end method

.method public setStack(ILjavassist/bytecode/analysis/Type;)V
    .locals 1

    .line 80
    iget-object v0, p0, Ljavassist/bytecode/analysis/Frame;->stack:[Ljavassist/bytecode/analysis/Type;

    aput-object p2, v0, p1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 233
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "locals = ["

    .line 235
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 236
    :goto_0
    iget-object v3, p0, Ljavassist/bytecode/analysis/Frame;->locals:[Ljavassist/bytecode/analysis/Type;

    array-length v4, v3

    const-string v5, ", "

    if-ge v2, v4, :cond_2

    .line 237
    aget-object v4, v3, v2

    if-nez v4, :cond_0

    const-string v3, "empty"

    goto :goto_1

    :cond_0
    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljavassist/bytecode/analysis/Type;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 238
    iget-object v3, p0, Ljavassist/bytecode/analysis/Frame;->locals:[Ljavassist/bytecode/analysis/Type;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    .line 239
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string v2, "] stack = ["

    .line 241
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 242
    :goto_2
    iget v2, p0, Ljavassist/bytecode/analysis/Frame;->top:I

    if-ge v1, v2, :cond_4

    .line 243
    iget-object v2, p0, Ljavassist/bytecode/analysis/Frame;->stack:[Ljavassist/bytecode/analysis/Type;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 244
    iget v2, p0, Ljavassist/bytecode/analysis/Frame;->top:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_3

    .line 245
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    const-string v1, "]"

    .line 247
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 249
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
