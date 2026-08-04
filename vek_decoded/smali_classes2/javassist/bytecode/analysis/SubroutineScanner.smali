.class public Ljavassist/bytecode/analysis/SubroutineScanner;
.super Ljava/lang/Object;
.source "SubroutineScanner.java"

# interfaces
.implements Ljavassist/bytecode/Opcode;


# instance fields
.field done:Ljava/util/Set;

.field subTable:Ljava/util/Map;

.field private subroutines:[Ljavassist/bytecode/analysis/Subroutine;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljavassist/bytecode/analysis/SubroutineScanner;->subTable:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ljavassist/bytecode/analysis/SubroutineScanner;->done:Ljava/util/Set;

    return-void
.end method

.method private scan(ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/analysis/Subroutine;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Ljavassist/bytecode/analysis/SubroutineScanner;->done:Ljava/util/Set;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/analysis/SubroutineScanner;->done:Ljava/util/Set;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-virtual {p2}, Ljavassist/bytecode/CodeIterator;->lookAhead()I

    move-result v0

    .line 71
    invoke-virtual {p2, p1}, Ljavassist/bytecode/CodeIterator;->move(I)V

    .line 75
    :cond_1
    invoke-virtual {p2}, Ljavassist/bytecode/CodeIterator;->next()I

    move-result p1

    .line 76
    invoke-direct {p0, p1, p2, p3}, Ljavassist/bytecode/analysis/SubroutineScanner;->scanOp(ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/analysis/Subroutine;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Ljavassist/bytecode/CodeIterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 79
    invoke-virtual {p2, v0}, Ljavassist/bytecode/CodeIterator;->move(I)V

    return-void
.end method

.method private scanLookupSwitch(ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/analysis/Subroutine;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    and-int/lit8 v0, p1, -0x4

    add-int/lit8 v0, v0, 0x4

    .line 129
    invoke-virtual {p2, v0}, Ljavassist/bytecode/CodeIterator;->s32bitAt(I)I

    move-result v1

    add-int/2addr v1, p1

    invoke-direct {p0, v1, p2, p3}, Ljavassist/bytecode/analysis/SubroutineScanner;->scan(ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/analysis/Subroutine;)V

    add-int/lit8 v0, v0, 0x4

    .line 130
    invoke-virtual {p2, v0}, Ljavassist/bytecode/CodeIterator;->s32bitAt(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    add-int/lit8 v0, v0, 0x4

    add-int/2addr v1, v0

    add-int/lit8 v0, v0, 0x4

    :goto_0
    if-ge v0, v1, :cond_0

    .line 135
    invoke-virtual {p2, v0}, Ljavassist/bytecode/CodeIterator;->s32bitAt(I)I

    move-result v2

    add-int/2addr v2, p1

    .line 136
    invoke-direct {p0, v2, p2, p3}, Ljavassist/bytecode/analysis/SubroutineScanner;->scan(ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/analysis/Subroutine;)V

    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    :cond_0
    return-void
.end method

.method private scanOp(ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/analysis/Subroutine;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Ljavassist/bytecode/analysis/SubroutineScanner;->subroutines:[Ljavassist/bytecode/analysis/Subroutine;

    aput-object p3, v0, p1

    .line 85
    invoke-virtual {p2, p1}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xaa

    if-ne v0, v2, :cond_0

    .line 88
    invoke-direct {p0, p1, p2, p3}, Ljavassist/bytecode/analysis/SubroutineScanner;->scanTableSwitch(ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/analysis/Subroutine;)V

    return v1

    :cond_0
    const/16 v2, 0xab

    if-ne v0, v2, :cond_1

    .line 94
    invoke-direct {p0, p1, p2, p3}, Ljavassist/bytecode/analysis/SubroutineScanner;->scanLookupSwitch(ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/analysis/Subroutine;)V

    return v1

    .line 100
    :cond_1
    invoke-static {v0}, Ljavassist/bytecode/analysis/Util;->isReturn(I)Z

    move-result v2

    if-nez v2, :cond_7

    const/16 v2, 0xa9

    if-eq v0, v2, :cond_7

    const/16 v2, 0xbf

    if-ne v0, v2, :cond_2

    goto :goto_2

    .line 103
    :cond_2
    invoke-static {v0}, Ljavassist/bytecode/analysis/Util;->isJumpInstruction(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 104
    invoke-static {p1, p2}, Ljavassist/bytecode/analysis/Util;->getJumpTarget(ILjavassist/bytecode/CodeIterator;)I

    move-result v2

    const/16 v3, 0xa8

    if-eq v0, v3, :cond_4

    const/16 v3, 0xc9

    if-ne v0, v3, :cond_3

    goto :goto_0

    .line 115
    :cond_3
    invoke-direct {p0, v2, p2, p3}, Ljavassist/bytecode/analysis/SubroutineScanner;->scan(ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/analysis/Subroutine;)V

    .line 118
    invoke-static {v0}, Ljavassist/bytecode/analysis/Util;->isGoto(I)Z

    move-result p1

    if-eqz p1, :cond_6

    return v1

    .line 106
    :cond_4
    :goto_0
    iget-object p3, p0, Ljavassist/bytecode/analysis/SubroutineScanner;->subTable:Ljava/util/Map;

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljavassist/bytecode/analysis/Subroutine;

    if-nez p3, :cond_5

    .line 108
    new-instance p3, Ljavassist/bytecode/analysis/Subroutine;

    invoke-direct {p3, v2, p1}, Ljavassist/bytecode/analysis/Subroutine;-><init>(II)V

    .line 109
    iget-object p1, p0, Ljavassist/bytecode/analysis/SubroutineScanner;->subTable:Ljava/util/Map;

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {p1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    invoke-direct {p0, v2, p2, p3}, Ljavassist/bytecode/analysis/SubroutineScanner;->scan(ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/analysis/Subroutine;)V

    goto :goto_1

    .line 112
    :cond_5
    invoke-virtual {p3, p1}, Ljavassist/bytecode/analysis/Subroutine;->addCaller(I)V

    :cond_6
    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_7
    :goto_2
    return v1
.end method

.method private scanTableSwitch(ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/analysis/Subroutine;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    and-int/lit8 v0, p1, -0x4

    add-int/lit8 v0, v0, 0x4

    .line 144
    invoke-virtual {p2, v0}, Ljavassist/bytecode/CodeIterator;->s32bitAt(I)I

    move-result v1

    add-int/2addr v1, p1

    invoke-direct {p0, v1, p2, p3}, Ljavassist/bytecode/analysis/SubroutineScanner;->scan(ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/analysis/Subroutine;)V

    add-int/lit8 v0, v0, 0x4

    .line 145
    invoke-virtual {p2, v0}, Ljavassist/bytecode/CodeIterator;->s32bitAt(I)I

    move-result v1

    add-int/lit8 v0, v0, 0x4

    .line 146
    invoke-virtual {p2, v0}, Ljavassist/bytecode/CodeIterator;->s32bitAt(I)I

    move-result v2

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x4

    add-int/lit8 v0, v0, 0x4

    add-int/2addr v2, v0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 151
    invoke-virtual {p2, v0}, Ljavassist/bytecode/CodeIterator;->s32bitAt(I)I

    move-result v1

    add-int/2addr v1, p1

    .line 152
    invoke-direct {p0, v1, p2, p3}, Ljavassist/bytecode/analysis/SubroutineScanner;->scan(ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/analysis/Subroutine;)V

    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public scan(Ljavassist/bytecode/MethodInfo;)[Ljavassist/bytecode/analysis/Subroutine;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 43
    invoke-virtual {p1}, Ljavassist/bytecode/MethodInfo;->getCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object p1

    .line 44
    invoke-virtual {p1}, Ljavassist/bytecode/CodeAttribute;->iterator()Ljavassist/bytecode/CodeIterator;

    move-result-object v0

    .line 46
    invoke-virtual {p1}, Ljavassist/bytecode/CodeAttribute;->getCodeLength()I

    move-result v1

    new-array v1, v1, [Ljavassist/bytecode/analysis/Subroutine;

    iput-object v1, p0, Ljavassist/bytecode/analysis/SubroutineScanner;->subroutines:[Ljavassist/bytecode/analysis/Subroutine;

    .line 47
    iget-object v1, p0, Ljavassist/bytecode/analysis/SubroutineScanner;->subTable:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 48
    iget-object v1, p0, Ljavassist/bytecode/analysis/SubroutineScanner;->done:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 50
    invoke-direct {p0, v1, v0, v2}, Ljavassist/bytecode/analysis/SubroutineScanner;->scan(ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/analysis/Subroutine;)V

    .line 52
    invoke-virtual {p1}, Ljavassist/bytecode/CodeAttribute;->getExceptionTable()Ljavassist/bytecode/ExceptionTable;

    move-result-object p1

    .line 53
    :goto_0
    invoke-virtual {p1}, Ljavassist/bytecode/ExceptionTable;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 54
    invoke-virtual {p1, v1}, Ljavassist/bytecode/ExceptionTable;->handlerPc(I)I

    move-result v2

    .line 57
    iget-object v3, p0, Ljavassist/bytecode/analysis/SubroutineScanner;->subroutines:[Ljavassist/bytecode/analysis/Subroutine;

    invoke-virtual {p1, v1}, Ljavassist/bytecode/ExceptionTable;->startPc(I)I

    move-result v4

    aget-object v3, v3, v4

    invoke-direct {p0, v2, v0, v3}, Ljavassist/bytecode/analysis/SubroutineScanner;->scan(ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/analysis/Subroutine;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 60
    :cond_0
    iget-object p1, p0, Ljavassist/bytecode/analysis/SubroutineScanner;->subroutines:[Ljavassist/bytecode/analysis/Subroutine;

    return-object p1
.end method
