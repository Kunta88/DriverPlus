.class Ljavassist/bytecode/StackMapTable$Printer;
.super Ljavassist/bytecode/StackMapTable$Walker;
.source "StackMapTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/StackMapTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Printer"
.end annotation


# instance fields
.field private offset:I

.field private writer:Ljava/io/PrintWriter;


# direct methods
.method constructor <init>([BLjava/io/PrintWriter;)V
    .locals 0

    .line 711
    invoke-direct {p0, p1}, Ljavassist/bytecode/StackMapTable$Walker;-><init>([B)V

    .line 712
    iput-object p2, p0, Ljavassist/bytecode/StackMapTable$Printer;->writer:Ljava/io/PrintWriter;

    const/4 p1, -0x1

    .line 713
    iput p1, p0, Ljavassist/bytecode/StackMapTable$Printer;->offset:I

    return-void
.end method

.method public static print(Ljavassist/bytecode/StackMapTable;Ljava/io/PrintWriter;)V
    .locals 1

    .line 703
    :try_start_0
    new-instance v0, Ljavassist/bytecode/StackMapTable$Printer;

    invoke-virtual {p0}, Ljavassist/bytecode/StackMapTable;->get()[B

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljavassist/bytecode/StackMapTable$Printer;-><init>([BLjava/io/PrintWriter;)V

    invoke-virtual {v0}, Ljavassist/bytecode/StackMapTable$Printer;->parse()V
    :try_end_0
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 706
    invoke-virtual {p0}, Ljavassist/bytecode/BadBytecode;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private printTypeInfo(II)V
    .locals 2

    const-string v0, ")"

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    .line 780
    :pswitch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uninitialized (offset "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 777
    :pswitch_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "object (cpool_index "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_2
    const-string p1, "this"

    goto :goto_0

    :pswitch_3
    const-string p1, "null"

    goto :goto_0

    :pswitch_4
    const-string p1, "long"

    goto :goto_0

    :pswitch_5
    const-string p1, "double"

    goto :goto_0

    :pswitch_6
    const-string p1, "float"

    goto :goto_0

    :pswitch_7
    const-string p1, "integer"

    goto :goto_0

    :pswitch_8
    const-string p1, "top"

    .line 784
    :goto_0
    iget-object p2, p0, Ljavassist/bytecode/StackMapTable$Printer;->writer:Ljava/io/PrintWriter;

    const-string v0, "    "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 785
    iget-object p2, p0, Ljavassist/bytecode/StackMapTable$Printer;->writer:Ljava/io/PrintWriter;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public appendFrame(II[I[I)V
    .locals 2

    .line 733
    iget p1, p0, Ljavassist/bytecode/StackMapTable$Printer;->offset:I

    add-int/lit8 v0, p2, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Ljavassist/bytecode/StackMapTable$Printer;->offset:I

    .line 734
    iget-object p1, p0, Ljavassist/bytecode/StackMapTable$Printer;->writer:Ljava/io/PrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Ljavassist/bytecode/StackMapTable$Printer;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " append frame: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 735
    :goto_0
    array-length p2, p3

    if-ge p1, p2, :cond_0

    .line 736
    aget p2, p3, p1

    aget v0, p4, p1

    invoke-direct {p0, p2, v0}, Ljavassist/bytecode/StackMapTable$Printer;->printTypeInfo(II)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public chopFrame(III)V
    .locals 2

    .line 728
    iget p1, p0, Ljavassist/bytecode/StackMapTable$Printer;->offset:I

    add-int/lit8 v0, p2, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Ljavassist/bytecode/StackMapTable$Printer;->offset:I

    .line 729
    iget-object p1, p0, Ljavassist/bytecode/StackMapTable$Printer;->writer:Ljava/io/PrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Ljavassist/bytecode/StackMapTable$Printer;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " chop frame: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ",    "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " last locals"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public fullFrame(II[I[I[I[I)V
    .locals 2

    .line 741
    iget p1, p0, Ljavassist/bytecode/StackMapTable$Printer;->offset:I

    add-int/lit8 v0, p2, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Ljavassist/bytecode/StackMapTable$Printer;->offset:I

    .line 742
    iget-object p1, p0, Ljavassist/bytecode/StackMapTable$Printer;->writer:Ljava/io/PrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Ljavassist/bytecode/StackMapTable$Printer;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " full frame: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 743
    iget-object p1, p0, Ljavassist/bytecode/StackMapTable$Printer;->writer:Ljava/io/PrintWriter;

    const-string p2, "[locals]"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 744
    :goto_0
    array-length v0, p3

    if-ge p2, v0, :cond_0

    .line 745
    aget v0, p3, p2

    aget v1, p4, p2

    invoke-direct {p0, v0, v1}, Ljavassist/bytecode/StackMapTable$Printer;->printTypeInfo(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 747
    :cond_0
    iget-object p2, p0, Ljavassist/bytecode/StackMapTable$Printer;->writer:Ljava/io/PrintWriter;

    const-string p3, "[stack]"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 748
    :goto_1
    array-length p2, p5

    if-ge p1, p2, :cond_1

    .line 749
    aget p2, p5, p1

    aget p3, p6, p1

    invoke-direct {p0, p2, p3}, Ljavassist/bytecode/StackMapTable$Printer;->printTypeInfo(II)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public sameFrame(II)V
    .locals 2

    .line 717
    iget p1, p0, Ljavassist/bytecode/StackMapTable$Printer;->offset:I

    add-int/lit8 v0, p2, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Ljavassist/bytecode/StackMapTable$Printer;->offset:I

    .line 718
    iget-object p1, p0, Ljavassist/bytecode/StackMapTable$Printer;->writer:Ljava/io/PrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Ljavassist/bytecode/StackMapTable$Printer;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " same frame: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public sameLocals(IIII)V
    .locals 2

    .line 722
    iget p1, p0, Ljavassist/bytecode/StackMapTable$Printer;->offset:I

    add-int/lit8 v0, p2, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Ljavassist/bytecode/StackMapTable$Printer;->offset:I

    .line 723
    iget-object p1, p0, Ljavassist/bytecode/StackMapTable$Printer;->writer:Ljava/io/PrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Ljavassist/bytecode/StackMapTable$Printer;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " same locals: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 724
    invoke-direct {p0, p3, p4}, Ljavassist/bytecode/StackMapTable$Printer;->printTypeInfo(II)V

    return-void
.end method
