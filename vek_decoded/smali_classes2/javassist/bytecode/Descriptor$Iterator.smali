.class public Ljavassist/bytecode/Descriptor$Iterator;
.super Ljava/lang/Object;
.source "Descriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/Descriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Iterator"
.end annotation


# instance fields
.field private curPos:I

.field private desc:Ljava/lang/String;

.field private index:I

.field private param:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 806
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 807
    iput-object p1, p0, Ljavassist/bytecode/Descriptor$Iterator;->desc:Ljava/lang/String;

    const/4 p1, 0x0

    .line 808
    iput p1, p0, Ljavassist/bytecode/Descriptor$Iterator;->curPos:I

    iput p1, p0, Ljavassist/bytecode/Descriptor$Iterator;->index:I

    .line 809
    iput-boolean p1, p0, Ljavassist/bytecode/Descriptor$Iterator;->param:Z

    return-void
.end method


# virtual methods
.method public currentChar()C
    .locals 2

    .line 827
    iget-object v0, p0, Ljavassist/bytecode/Descriptor$Iterator;->desc:Ljava/lang/String;

    iget v1, p0, Ljavassist/bytecode/Descriptor$Iterator;->curPos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public hasNext()Z
    .locals 2

    .line 816
    iget v0, p0, Ljavassist/bytecode/Descriptor$Iterator;->index:I

    iget-object v1, p0, Ljavassist/bytecode/Descriptor$Iterator;->desc:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public is2byte()Z
    .locals 2

    .line 833
    invoke-virtual {p0}, Ljavassist/bytecode/Descriptor$Iterator;->currentChar()C

    move-result v0

    const/16 v1, 0x44

    if-eq v0, v1, :cond_1

    const/16 v1, 0x4a

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isParameter()Z
    .locals 1

    .line 822
    iget-boolean v0, p0, Ljavassist/bytecode/Descriptor$Iterator;->param:Z

    return v0
.end method

.method public next()I
    .locals 4

    .line 842
    iget v0, p0, Ljavassist/bytecode/Descriptor$Iterator;->index:I

    .line 843
    iget-object v1, p0, Ljavassist/bytecode/Descriptor$Iterator;->desc:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x28

    if-ne v1, v3, :cond_0

    .line 845
    iget v1, p0, Ljavassist/bytecode/Descriptor$Iterator;->index:I

    add-int/2addr v1, v2

    iput v1, p0, Ljavassist/bytecode/Descriptor$Iterator;->index:I

    .line 846
    iget-object v1, p0, Ljavassist/bytecode/Descriptor$Iterator;->desc:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 847
    iput-boolean v2, p0, Ljavassist/bytecode/Descriptor$Iterator;->param:Z

    :cond_0
    const/16 v3, 0x29

    if-ne v1, v3, :cond_1

    .line 851
    iget v1, p0, Ljavassist/bytecode/Descriptor$Iterator;->index:I

    add-int/2addr v1, v2

    iput v1, p0, Ljavassist/bytecode/Descriptor$Iterator;->index:I

    .line 852
    iget-object v1, p0, Ljavassist/bytecode/Descriptor$Iterator;->desc:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v3, 0x0

    .line 853
    iput-boolean v3, p0, Ljavassist/bytecode/Descriptor$Iterator;->param:Z

    :cond_1
    :goto_0
    const/16 v3, 0x5b

    if-ne v1, v3, :cond_2

    .line 857
    iget-object v1, p0, Ljavassist/bytecode/Descriptor$Iterator;->desc:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_0

    :cond_2
    const/16 v3, 0x4c

    if-ne v1, v3, :cond_4

    .line 860
    iget-object v1, p0, Ljavassist/bytecode/Descriptor$Iterator;->desc:Ljava/lang/String;

    const/16 v3, 0x3b

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    add-int/2addr v0, v2

    if-lez v0, :cond_3

    goto :goto_1

    .line 862
    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "bad descriptor"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    add-int/2addr v0, v2

    .line 867
    :goto_1
    iget v1, p0, Ljavassist/bytecode/Descriptor$Iterator;->index:I

    iput v1, p0, Ljavassist/bytecode/Descriptor$Iterator;->curPos:I

    .line 868
    iput v0, p0, Ljavassist/bytecode/Descriptor$Iterator;->index:I

    return v1
.end method
