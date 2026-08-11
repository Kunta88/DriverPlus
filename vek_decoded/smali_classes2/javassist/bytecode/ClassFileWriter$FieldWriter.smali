.class public final Ljavassist/bytecode/ClassFileWriter$FieldWriter;
.super Ljava/lang/Object;
.source "ClassFileWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/ClassFileWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FieldWriter"
.end annotation


# instance fields
.field protected constPool:Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;

.field private fieldCount:I

.field protected output:Ljavassist/bytecode/ByteStream;


# direct methods
.method constructor <init>(Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;)V
    .locals 2

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    new-instance v0, Ljavassist/bytecode/ByteStream;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljavassist/bytecode/ByteStream;-><init>(I)V

    iput-object v0, p0, Ljavassist/bytecode/ClassFileWriter$FieldWriter;->output:Ljavassist/bytecode/ByteStream;

    .line 261
    iput-object p1, p0, Ljavassist/bytecode/ClassFileWriter$FieldWriter;->constPool:Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;

    const/4 p1, 0x0

    .line 262
    iput p1, p0, Ljavassist/bytecode/ClassFileWriter$FieldWriter;->fieldCount:I

    return-void
.end method


# virtual methods
.method public add(IIILjavassist/bytecode/ClassFileWriter$AttributeWriter;)V
    .locals 1

    .line 290
    iget v0, p0, Ljavassist/bytecode/ClassFileWriter$FieldWriter;->fieldCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavassist/bytecode/ClassFileWriter$FieldWriter;->fieldCount:I

    .line 291
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$FieldWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    .line 292
    iget-object p1, p0, Ljavassist/bytecode/ClassFileWriter$FieldWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {p1, p2}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    .line 293
    iget-object p1, p0, Ljavassist/bytecode/ClassFileWriter$FieldWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {p1, p3}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    .line 294
    iget-object p1, p0, Ljavassist/bytecode/ClassFileWriter$FieldWriter;->output:Ljavassist/bytecode/ByteStream;

    const/4 p2, 0x0

    invoke-static {p1, p4, p2}, Ljavassist/bytecode/ClassFileWriter;->writeAttribute(Ljavassist/bytecode/ByteStream;Ljavassist/bytecode/ClassFileWriter$AttributeWriter;I)V

    return-void
.end method

.method public add(ILjava/lang/String;Ljava/lang/String;Ljavassist/bytecode/ClassFileWriter$AttributeWriter;)V
    .locals 1

    .line 275
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$FieldWriter;->constPool:Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;

    invoke-virtual {v0, p2}, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->addUtf8Info(Ljava/lang/String;)I

    move-result p2

    .line 276
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$FieldWriter;->constPool:Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;

    invoke-virtual {v0, p3}, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->addUtf8Info(Ljava/lang/String;)I

    move-result p3

    .line 277
    invoke-virtual {p0, p1, p2, p3, p4}, Ljavassist/bytecode/ClassFileWriter$FieldWriter;->add(IIILjavassist/bytecode/ClassFileWriter$AttributeWriter;)V

    return-void
.end method

.method dataSize()I
    .locals 1

    .line 299
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$FieldWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {v0}, Ljavassist/bytecode/ByteStream;->size()I

    move-result v0

    return v0
.end method

.method size()I
    .locals 1

    .line 297
    iget v0, p0, Ljavassist/bytecode/ClassFileWriter$FieldWriter;->fieldCount:I

    return v0
.end method

.method write(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 305
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$FieldWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ByteStream;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method
