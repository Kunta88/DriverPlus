.class public Ljavassist/bytecode/stackmap/Liveness;
.super Ljava/lang/Object;
.source "Liveness.java"


# static fields
.field static final CHANGED_LAST:I = 0x1

.field static final CHANGED_NOW:I = 0x3

.field static final DONE:I = 0x2

.field static final NOT_YET:I = 0x0

.field protected static final READ:B = 0x1t

.field protected static final UNKNOWN:B = 0x0t

.field protected static final UPDATED:B = 0x2t

.field public static useArgs:Z = true


# instance fields
.field protected localsUsage:[B


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private computeLiveness1(Ljavassist/bytecode/stackmap/TypedBlock;)V
    .locals 9

    .line 63
    iget-boolean v0, p1, Ljavassist/bytecode/stackmap/TypedBlock;->updating:Z

    if-eqz v0, :cond_0

    .line 65
    invoke-direct {p0, p1}, Ljavassist/bytecode/stackmap/Liveness;->computeLiveness1u(Ljavassist/bytecode/stackmap/TypedBlock;)V

    return-void

    .line 69
    :cond_0
    iget-object v0, p1, Ljavassist/bytecode/stackmap/TypedBlock;->inputs:[Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p1, Ljavassist/bytecode/stackmap/TypedBlock;->updating:Z

    .line 73
    iget-object v1, p1, Ljavassist/bytecode/stackmap/TypedBlock;->localsUsage:[B

    .line 74
    array-length v2, v1

    .line 75
    new-array v3, v2, [Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_3

    .line 77
    aget-byte v6, v1, v5

    if-ne v6, v0, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    aput-boolean v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 79
    :cond_3
    iget-object v5, p1, Ljavassist/bytecode/stackmap/TypedBlock;->toCatch:Ljavassist/bytecode/stackmap/BasicBlock$Catch;

    :goto_2
    if-eqz v5, :cond_6

    .line 81
    iget-object v6, v5, Ljavassist/bytecode/stackmap/BasicBlock$Catch;->body:Ljavassist/bytecode/stackmap/BasicBlock;

    check-cast v6, Ljavassist/bytecode/stackmap/TypedBlock;

    .line 82
    invoke-direct {p0, v6}, Ljavassist/bytecode/stackmap/Liveness;->computeLiveness1(Ljavassist/bytecode/stackmap/TypedBlock;)V

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v2, :cond_5

    .line 84
    iget-object v8, v6, Ljavassist/bytecode/stackmap/TypedBlock;->inputs:[Z

    aget-boolean v8, v8, v7

    if-eqz v8, :cond_4

    .line 85
    aput-boolean v0, v3, v7

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 87
    :cond_5
    iget-object v5, v5, Ljavassist/bytecode/stackmap/BasicBlock$Catch;->next:Ljavassist/bytecode/stackmap/BasicBlock$Catch;

    goto :goto_2

    .line 90
    :cond_6
    iget-object v5, p1, Ljavassist/bytecode/stackmap/TypedBlock;->exit:[Ljavassist/bytecode/stackmap/BasicBlock;

    if-eqz v5, :cond_a

    const/4 v5, 0x0

    .line 91
    :goto_4
    iget-object v6, p1, Ljavassist/bytecode/stackmap/TypedBlock;->exit:[Ljavassist/bytecode/stackmap/BasicBlock;

    array-length v6, v6

    if-ge v5, v6, :cond_a

    .line 92
    iget-object v6, p1, Ljavassist/bytecode/stackmap/TypedBlock;->exit:[Ljavassist/bytecode/stackmap/BasicBlock;

    aget-object v6, v6, v5

    check-cast v6, Ljavassist/bytecode/stackmap/TypedBlock;

    .line 93
    invoke-direct {p0, v6}, Ljavassist/bytecode/stackmap/Liveness;->computeLiveness1(Ljavassist/bytecode/stackmap/TypedBlock;)V

    const/4 v7, 0x0

    :goto_5
    if-ge v7, v2, :cond_9

    .line 95
    aget-boolean v8, v3, v7

    if-nez v8, :cond_8

    .line 96
    aget-byte v8, v1, v7

    if-nez v8, :cond_7

    iget-object v8, v6, Ljavassist/bytecode/stackmap/TypedBlock;->inputs:[Z

    aget-boolean v8, v8, v7

    if-eqz v8, :cond_7

    const/4 v8, 0x1

    goto :goto_6

    :cond_7
    const/4 v8, 0x0

    :goto_6
    aput-boolean v8, v3, v7

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 100
    :cond_a
    iput-boolean v4, p1, Ljavassist/bytecode/stackmap/TypedBlock;->updating:Z

    .line 101
    iget-object v1, p1, Ljavassist/bytecode/stackmap/TypedBlock;->inputs:[Z

    if-nez v1, :cond_b

    .line 102
    iput-object v3, p1, Ljavassist/bytecode/stackmap/TypedBlock;->inputs:[Z

    const/4 v0, 0x2

    .line 103
    iput v0, p1, Ljavassist/bytecode/stackmap/TypedBlock;->status:I

    goto :goto_8

    :cond_b
    :goto_7
    if-ge v4, v2, :cond_d

    .line 107
    aget-boolean v1, v3, v4

    if-eqz v1, :cond_c

    iget-object v1, p1, Ljavassist/bytecode/stackmap/TypedBlock;->inputs:[Z

    aget-boolean v1, v1, v4

    if-nez v1, :cond_c

    .line 108
    iget-object v1, p1, Ljavassist/bytecode/stackmap/TypedBlock;->inputs:[Z

    aput-boolean v0, v1, v4

    const/4 v1, 0x3

    .line 109
    iput v1, p1, Ljavassist/bytecode/stackmap/TypedBlock;->status:I

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_d
    :goto_8
    return-void
.end method

.method private computeLiveness1u(Ljavassist/bytecode/stackmap/TypedBlock;)V
    .locals 7

    .line 115
    iget-object v0, p1, Ljavassist/bytecode/stackmap/TypedBlock;->inputs:[Z

    if-nez v0, :cond_2

    .line 116
    iget-object v0, p1, Ljavassist/bytecode/stackmap/TypedBlock;->localsUsage:[B

    .line 117
    array-length v1, v0

    .line 118
    new-array v2, v1, [Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    .line 120
    aget-byte v5, v0, v4

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    aput-boolean v6, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 122
    :cond_1
    iput-object v2, p1, Ljavassist/bytecode/stackmap/TypedBlock;->inputs:[Z

    const/4 v0, 0x2

    .line 123
    iput v0, p1, Ljavassist/bytecode/stackmap/TypedBlock;->status:I

    :cond_2
    return-void
.end method

.method private computeLiveness2(Ljavassist/bytecode/stackmap/TypedBlock;)V
    .locals 11

    .line 128
    iget-boolean v0, p1, Ljavassist/bytecode/stackmap/TypedBlock;->updating:Z

    if-nez v0, :cond_a

    iget v0, p1, Ljavassist/bytecode/stackmap/TypedBlock;->status:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x1

    .line 131
    iput-boolean v0, p1, Ljavassist/bytecode/stackmap/TypedBlock;->updating:Z

    .line 132
    iget-object v2, p1, Ljavassist/bytecode/stackmap/TypedBlock;->exit:[Ljavassist/bytecode/stackmap/BasicBlock;

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-nez v2, :cond_1

    .line 133
    iput v1, p1, Ljavassist/bytecode/stackmap/TypedBlock;->status:I

    goto :goto_3

    :cond_1
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 136
    :goto_0
    iget-object v6, p1, Ljavassist/bytecode/stackmap/TypedBlock;->exit:[Ljavassist/bytecode/stackmap/BasicBlock;

    array-length v6, v6

    if-ge v2, v6, :cond_3

    .line 137
    iget-object v6, p1, Ljavassist/bytecode/stackmap/TypedBlock;->exit:[Ljavassist/bytecode/stackmap/BasicBlock;

    aget-object v6, v6, v2

    check-cast v6, Ljavassist/bytecode/stackmap/TypedBlock;

    .line 138
    invoke-direct {p0, v6}, Ljavassist/bytecode/stackmap/Liveness;->computeLiveness2(Ljavassist/bytecode/stackmap/TypedBlock;)V

    .line 139
    iget v6, v6, Ljavassist/bytecode/stackmap/TypedBlock;->status:I

    if-eq v6, v1, :cond_2

    const/4 v5, 0x1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz v5, :cond_8

    .line 145
    iget-object v2, p1, Ljavassist/bytecode/stackmap/TypedBlock;->localsUsage:[B

    .line 146
    array-length v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 147
    :goto_1
    iget-object v8, p1, Ljavassist/bytecode/stackmap/TypedBlock;->exit:[Ljavassist/bytecode/stackmap/BasicBlock;

    array-length v8, v8

    if-ge v6, v8, :cond_6

    .line 148
    iget-object v8, p1, Ljavassist/bytecode/stackmap/TypedBlock;->exit:[Ljavassist/bytecode/stackmap/BasicBlock;

    aget-object v8, v8, v6

    check-cast v8, Ljavassist/bytecode/stackmap/TypedBlock;

    .line 149
    iget v9, v8, Ljavassist/bytecode/stackmap/TypedBlock;->status:I

    if-eq v9, v1, :cond_5

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v5, :cond_5

    .line 151
    iget-object v10, p1, Ljavassist/bytecode/stackmap/TypedBlock;->inputs:[Z

    aget-boolean v10, v10, v9

    if-nez v10, :cond_4

    .line 152
    aget-byte v10, v2, v9

    if-nez v10, :cond_4

    iget-object v10, v8, Ljavassist/bytecode/stackmap/TypedBlock;->inputs:[Z

    aget-boolean v10, v10, v9

    if-eqz v10, :cond_4

    .line 153
    iget-object v7, p1, Ljavassist/bytecode/stackmap/TypedBlock;->inputs:[Z

    aput-boolean v0, v7, v9

    const/4 v7, 0x1

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_6
    if-eqz v7, :cond_7

    const/4 v1, 0x3

    .line 159
    :cond_7
    iput v1, p1, Ljavassist/bytecode/stackmap/TypedBlock;->status:I

    goto :goto_3

    .line 162
    :cond_8
    iput v1, p1, Ljavassist/bytecode/stackmap/TypedBlock;->status:I

    .line 165
    :goto_3
    invoke-direct {p0, p1}, Ljavassist/bytecode/stackmap/Liveness;->computeLiveness2except(Ljavassist/bytecode/stackmap/TypedBlock;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 166
    iput v3, p1, Ljavassist/bytecode/stackmap/TypedBlock;->status:I

    .line 168
    :cond_9
    iput-boolean v4, p1, Ljavassist/bytecode/stackmap/TypedBlock;->updating:Z

    :cond_a
    :goto_4
    return-void
.end method

.method private computeLiveness2except(Ljavassist/bytecode/stackmap/TypedBlock;)Z
    .locals 9

    .line 172
    iget-object v0, p1, Ljavassist/bytecode/stackmap/TypedBlock;->toCatch:Ljavassist/bytecode/stackmap/BasicBlock$Catch;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 175
    iget-object v3, v0, Ljavassist/bytecode/stackmap/BasicBlock$Catch;->body:Ljavassist/bytecode/stackmap/BasicBlock;

    check-cast v3, Ljavassist/bytecode/stackmap/TypedBlock;

    .line 176
    invoke-direct {p0, v3}, Ljavassist/bytecode/stackmap/Liveness;->computeLiveness2(Ljavassist/bytecode/stackmap/TypedBlock;)V

    .line 177
    iget v4, v3, Ljavassist/bytecode/stackmap/TypedBlock;->status:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    .line 178
    iget-object v4, p1, Ljavassist/bytecode/stackmap/TypedBlock;->inputs:[Z

    .line 179
    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    .line 181
    aget-boolean v7, v4, v6

    const/4 v8, 0x1

    if-nez v7, :cond_0

    iget-object v7, v3, Ljavassist/bytecode/stackmap/TypedBlock;->inputs:[Z

    aget-boolean v7, v7, v6

    if-eqz v7, :cond_0

    .line 182
    aput-boolean v8, v4, v6

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 187
    :cond_1
    iget-object v0, v0, Ljavassist/bytecode/stackmap/BasicBlock$Catch;->next:Ljavassist/bytecode/stackmap/BasicBlock$Catch;

    goto :goto_0

    :cond_2
    return v2
.end method

.method private computeUsage(Ljavassist/bytecode/CodeIterator;[Ljavassist/bytecode/stackmap/TypedBlock;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 212
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 214
    aget-object v2, p2, v1

    .line 215
    new-array v3, p3, [B

    iput-object v3, v2, Ljavassist/bytecode/stackmap/TypedBlock;->localsUsage:[B

    iput-object v3, p0, Ljavassist/bytecode/stackmap/Liveness;->localsUsage:[B

    .line 216
    iget v3, v2, Ljavassist/bytecode/stackmap/TypedBlock;->position:I

    .line 217
    iget v2, v2, Ljavassist/bytecode/stackmap/TypedBlock;->length:I

    add-int/2addr v2, v3

    invoke-virtual {p0, p1, v3, v2}, Ljavassist/bytecode/stackmap/Liveness;->analyze(Ljavassist/bytecode/CodeIterator;II)V

    const/4 v2, 0x0

    .line 218
    iput-object v2, p0, Ljavassist/bytecode/stackmap/Liveness;->localsUsage:[B

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private doOpcode0_53(Ljavassist/bytecode/CodeIterator;II)V
    .locals 0

    packed-switch p3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    add-int/lit8 p3, p3, -0x2a

    .line 295
    invoke-virtual {p0, p3}, Ljavassist/bytecode/stackmap/Liveness;->readLocal(I)V

    goto :goto_0

    :pswitch_1
    add-int/lit8 p3, p3, -0x26

    .line 289
    invoke-virtual {p0, p3}, Ljavassist/bytecode/stackmap/Liveness;->readLocal(I)V

    goto :goto_0

    :pswitch_2
    add-int/lit8 p3, p3, -0x22

    .line 283
    invoke-virtual {p0, p3}, Ljavassist/bytecode/stackmap/Liveness;->readLocal(I)V

    goto :goto_0

    :pswitch_3
    add-int/lit8 p3, p3, -0x1e

    .line 277
    invoke-virtual {p0, p3}, Ljavassist/bytecode/stackmap/Liveness;->readLocal(I)V

    goto :goto_0

    :pswitch_4
    add-int/lit8 p3, p3, -0x1a

    .line 271
    invoke-virtual {p0, p3}, Ljavassist/bytecode/stackmap/Liveness;->readLocal(I)V

    goto :goto_0

    :pswitch_5
    add-int/lit8 p2, p2, 0x1

    .line 265
    invoke-virtual {p1, p2}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result p1

    invoke-virtual {p0, p1}, Ljavassist/bytecode/stackmap/Liveness;->readLocal(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private doOpcode54_95(Ljavassist/bytecode/CodeIterator;II)V
    .locals 0

    packed-switch p3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    add-int/lit8 p3, p3, -0x4b

    .line 337
    invoke-virtual {p0, p3}, Ljavassist/bytecode/stackmap/Liveness;->writeLocal(I)V

    goto :goto_0

    :pswitch_1
    add-int/lit8 p3, p3, -0x47

    .line 331
    invoke-virtual {p0, p3}, Ljavassist/bytecode/stackmap/Liveness;->writeLocal(I)V

    goto :goto_0

    :pswitch_2
    add-int/lit8 p3, p3, -0x43

    .line 325
    invoke-virtual {p0, p3}, Ljavassist/bytecode/stackmap/Liveness;->writeLocal(I)V

    goto :goto_0

    :pswitch_3
    add-int/lit8 p3, p3, -0x3f

    .line 319
    invoke-virtual {p0, p3}, Ljavassist/bytecode/stackmap/Liveness;->writeLocal(I)V

    goto :goto_0

    :pswitch_4
    add-int/lit8 p3, p3, -0x3b

    .line 313
    invoke-virtual {p0, p3}, Ljavassist/bytecode/stackmap/Liveness;->writeLocal(I)V

    goto :goto_0

    :pswitch_5
    add-int/lit8 p2, p2, 0x1

    .line 307
    invoke-virtual {p1, p2}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result p1

    invoke-virtual {p0, p1}, Ljavassist/bytecode/stackmap/Liveness;->writeLocal(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x36
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private doWIDE(Ljavassist/bytecode/CodeIterator;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    add-int/lit8 v0, p2, 0x1

    .line 343
    invoke-virtual {p1, v0}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v0

    add-int/lit8 p2, p2, 0x2

    .line 344
    invoke-virtual {p1, p2}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result p1

    const/16 p2, 0x84

    if-eq v0, p2, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 358
    :pswitch_0
    invoke-virtual {p0, p1}, Ljavassist/bytecode/stackmap/Liveness;->writeLocal(I)V

    goto :goto_0

    .line 351
    :pswitch_1
    invoke-virtual {p0, p1}, Ljavassist/bytecode/stackmap/Liveness;->readLocal(I)V

    goto :goto_0

    .line 361
    :cond_0
    invoke-virtual {p0, p1}, Ljavassist/bytecode/stackmap/Liveness;->readLocal(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x36
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private hasChanged([Ljavassist/bytecode/stackmap/TypedBlock;)Z
    .locals 8

    .line 194
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 197
    aget-object v4, p1, v2

    .line 198
    iget v5, v4, Ljavassist/bytecode/stackmap/TypedBlock;->status:I

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-ne v5, v6, :cond_0

    .line 199
    iput v7, v4, Ljavassist/bytecode/stackmap/TypedBlock;->status:I

    const/4 v3, 0x1

    goto :goto_1

    .line 203
    :cond_0
    iput v1, v4, Ljavassist/bytecode/stackmap/TypedBlock;->status:I

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method private useAllArgs([Ljavassist/bytecode/stackmap/TypedBlock;[Ljavassist/bytecode/stackmap/TypeData;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 49
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 50
    aget-object v2, p1, v1

    iget-object v2, v2, Ljavassist/bytecode/stackmap/TypedBlock;->localsUsage:[B

    const/4 v3, 0x0

    .line 51
    :goto_1
    array-length v4, p2

    if-ge v3, v4, :cond_1

    .line 52
    aget-object v4, p2, v3

    sget-object v5, Ljavassist/bytecode/stackmap/TypeTag;->TOP:Ljavassist/bytecode/stackmap/TypeData;

    if-eq v4, v5, :cond_0

    const/4 v4, 0x1

    .line 53
    aput-byte v4, v2, v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method protected analyze(Ljavassist/bytecode/CodeIterator;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 235
    invoke-virtual {p1}, Ljavassist/bytecode/CodeIterator;->begin()V

    .line 236
    invoke-virtual {p1, p2}, Ljavassist/bytecode/CodeIterator;->move(I)V

    .line 237
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljavassist/bytecode/CodeIterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 238
    invoke-virtual {p1}, Ljavassist/bytecode/CodeIterator;->next()I

    move-result p2

    if-lt p2, p3, :cond_1

    goto :goto_1

    .line 242
    :cond_1
    invoke-virtual {p1, p2}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v0

    const/16 v1, 0x60

    if-ge v0, v1, :cond_3

    const/16 v1, 0x36

    if-ge v0, v1, :cond_2

    .line 245
    invoke-direct {p0, p1, p2, v0}, Ljavassist/bytecode/stackmap/Liveness;->doOpcode0_53(Ljavassist/bytecode/CodeIterator;II)V

    goto :goto_0

    .line 247
    :cond_2
    invoke-direct {p0, p1, p2, v0}, Ljavassist/bytecode/stackmap/Liveness;->doOpcode54_95(Ljavassist/bytecode/CodeIterator;II)V

    goto :goto_0

    :cond_3
    const/16 v1, 0x84

    if-ne v0, v1, :cond_4

    add-int/lit8 p2, p2, 0x1

    .line 251
    invoke-virtual {p1, p2}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result p2

    invoke-virtual {p0, p2}, Ljavassist/bytecode/stackmap/Liveness;->readLocal(I)V

    goto :goto_0

    :cond_4
    const/16 v1, 0xc4

    if-ne v0, v1, :cond_0

    .line 254
    invoke-direct {p0, p1, p2}, Ljavassist/bytecode/stackmap/Liveness;->doWIDE(Ljavassist/bytecode/CodeIterator;I)V

    goto :goto_0

    :cond_5
    :goto_1
    return-void
.end method

.method public compute(Ljavassist/bytecode/CodeIterator;[Ljavassist/bytecode/stackmap/TypedBlock;I[Ljavassist/bytecode/stackmap/TypeData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2, p3}, Ljavassist/bytecode/stackmap/Liveness;->computeUsage(Ljavassist/bytecode/CodeIterator;[Ljavassist/bytecode/stackmap/TypedBlock;I)V

    .line 40
    sget-boolean p1, Ljavassist/bytecode/stackmap/Liveness;->useArgs:Z

    if-eqz p1, :cond_0

    .line 41
    invoke-direct {p0, p2, p4}, Ljavassist/bytecode/stackmap/Liveness;->useAllArgs([Ljavassist/bytecode/stackmap/TypedBlock;[Ljavassist/bytecode/stackmap/TypeData;)V

    :cond_0
    const/4 p1, 0x0

    .line 43
    aget-object p3, p2, p1

    invoke-direct {p0, p3}, Ljavassist/bytecode/stackmap/Liveness;->computeLiveness1(Ljavassist/bytecode/stackmap/TypedBlock;)V

    .line 44
    :goto_0
    invoke-direct {p0, p2}, Ljavassist/bytecode/stackmap/Liveness;->hasChanged([Ljavassist/bytecode/stackmap/TypedBlock;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 45
    aget-object p3, p2, p1

    invoke-direct {p0, p3}, Ljavassist/bytecode/stackmap/Liveness;->computeLiveness2(Ljavassist/bytecode/stackmap/TypedBlock;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected final readLocal(I)V
    .locals 2

    .line 223
    iget-object v0, p0, Ljavassist/bytecode/stackmap/Liveness;->localsUsage:[B

    aget-byte v1, v0, p1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 224
    aput-byte v1, v0, p1

    :cond_0
    return-void
.end method

.method protected final writeLocal(I)V
    .locals 2

    .line 228
    iget-object v0, p0, Ljavassist/bytecode/stackmap/Liveness;->localsUsage:[B

    aget-byte v1, v0, p1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    .line 229
    aput-byte v1, v0, p1

    :cond_0
    return-void
.end method
