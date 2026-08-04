.class public Ljavassist/bytecode/StackMapTable;
.super Ljavassist/bytecode/AttributeInfo;
.source "StackMapTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/bytecode/StackMapTable$NewRemover;,
        Ljavassist/bytecode/StackMapTable$Shifter;,
        Ljavassist/bytecode/StackMapTable$Printer;,
        Ljavassist/bytecode/StackMapTable$Writer;,
        Ljavassist/bytecode/StackMapTable$InsertLocal;,
        Ljavassist/bytecode/StackMapTable$Copier;,
        Ljavassist/bytecode/StackMapTable$SimpleCopy;,
        Ljavassist/bytecode/StackMapTable$Walker;,
        Ljavassist/bytecode/StackMapTable$RuntimeCopyException;
    }
.end annotation


# static fields
.field public static final DOUBLE:I = 0x3

.field public static final FLOAT:I = 0x2

.field public static final INTEGER:I = 0x1

.field public static final LONG:I = 0x4

.field public static final NULL:I = 0x5

.field public static final OBJECT:I = 0x7

.field public static final THIS:I = 0x6

.field public static final TOP:I = 0x0

.field public static final UNINIT:I = 0x8

.field public static final tag:Ljava/lang/String; = "StackMapTable"


# direct methods
.method constructor <init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2, p3}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    return-void
.end method

.method constructor <init>(Ljavassist/bytecode/ConstPool;[B)V
    .locals 1

    const-string v0, "StackMapTable"

    .line 47
    invoke-direct {p0, p1, v0, p2}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;[B)V

    return-void
.end method

.method public static typeTagOf(C)I
    .locals 1

    const/16 v0, 0x44

    if-eq p0, v0, :cond_3

    const/16 v0, 0x46

    if-eq p0, v0, :cond_2

    const/16 v0, 0x4a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x5b

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x7

    return p0

    :cond_1
    const/4 p0, 0x4

    return p0

    :cond_2
    const/4 p0, 0x2

    return p0

    :cond_3
    const/4 p0, 0x3

    return p0
.end method


# virtual methods
.method public copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/AttributeInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/StackMapTable$RuntimeCopyException;
        }
    .end annotation

    .line 69
    :try_start_0
    new-instance p2, Ljavassist/bytecode/StackMapTable;

    new-instance v0, Ljavassist/bytecode/StackMapTable$Copier;

    iget-object v1, p0, Ljavassist/bytecode/StackMapTable;->constPool:Ljavassist/bytecode/ConstPool;

    iget-object v2, p0, Ljavassist/bytecode/StackMapTable;->info:[B

    invoke-direct {v0, v1, v2, p1}, Ljavassist/bytecode/StackMapTable$Copier;-><init>(Ljavassist/bytecode/ConstPool;[BLjavassist/bytecode/ConstPool;)V

    invoke-virtual {v0}, Ljavassist/bytecode/StackMapTable$Copier;->doit()[B

    move-result-object v0

    invoke-direct {p2, p1, v0}, Ljavassist/bytecode/StackMapTable;-><init>(Ljavassist/bytecode/ConstPool;[B)V
    :try_end_0
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    .line 73
    :catch_0
    new-instance p1, Ljavassist/bytecode/StackMapTable$RuntimeCopyException;

    const-string p2, "bad bytecode. fatal?"

    invoke-direct {p1, p2}, Ljavassist/bytecode/StackMapTable$RuntimeCopyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public insertLocal(III)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 446
    new-instance v0, Ljavassist/bytecode/StackMapTable$InsertLocal;

    invoke-virtual {p0}, Ljavassist/bytecode/StackMapTable;->get()[B

    move-result-object v1

    invoke-direct {v0, v1, p1, p2, p3}, Ljavassist/bytecode/StackMapTable$InsertLocal;-><init>([BIII)V

    invoke-virtual {v0}, Ljavassist/bytecode/StackMapTable$InsertLocal;->doit()[B

    move-result-object p1

    .line 447
    invoke-virtual {p0, p1}, Ljavassist/bytecode/StackMapTable;->set([B)V

    return-void
.end method

.method public println(Ljava/io/PrintStream;)V
    .locals 2

    .line 691
    new-instance v0, Ljava/io/PrintWriter;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    invoke-static {p0, v0}, Ljavassist/bytecode/StackMapTable$Printer;->print(Ljavassist/bytecode/StackMapTable;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public println(Ljava/io/PrintWriter;)V
    .locals 0

    .line 682
    invoke-static {p0, p1}, Ljavassist/bytecode/StackMapTable$Printer;->print(Ljavassist/bytecode/StackMapTable;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public removeNew(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 901
    :try_start_0
    new-instance v0, Ljavassist/bytecode/StackMapTable$NewRemover;

    invoke-virtual {p0}, Ljavassist/bytecode/StackMapTable;->get()[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljavassist/bytecode/StackMapTable$NewRemover;-><init>([BI)V

    invoke-virtual {v0}, Ljavassist/bytecode/StackMapTable$NewRemover;->doit()[B

    move-result-object p1

    .line 902
    invoke-virtual {p0, p1}, Ljavassist/bytecode/StackMapTable;->set([B)V
    :try_end_0
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 905
    new-instance v0, Ljavassist/CannotCompileException;

    const-string v1, "bad stack map table"

    invoke-direct {v0, v1, p1}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method shiftPc(IIZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 792
    new-instance v0, Ljavassist/bytecode/StackMapTable$Shifter;

    invoke-direct {v0, p0, p1, p2, p3}, Ljavassist/bytecode/StackMapTable$Shifter;-><init>(Ljavassist/bytecode/StackMapTable;IIZ)V

    invoke-virtual {v0}, Ljavassist/bytecode/StackMapTable$Shifter;->doit()V

    return-void
.end method

.method write(Ljava/io/DataOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    invoke-super {p0, p1}, Ljavassist/bytecode/AttributeInfo;->write(Ljava/io/DataOutputStream;)V

    return-void
.end method
