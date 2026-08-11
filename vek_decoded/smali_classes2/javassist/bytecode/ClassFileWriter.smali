.class public Ljavassist/bytecode/ClassFileWriter;
.super Ljava/lang/Object;
.source "ClassFileWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;,
        Ljavassist/bytecode/ClassFileWriter$MethodWriter;,
        Ljavassist/bytecode/ClassFileWriter$FieldWriter;,
        Ljavassist/bytecode/ClassFileWriter$AttributeWriter;
    }
.end annotation


# instance fields
.field private constPool:Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;

.field private fields:Ljavassist/bytecode/ClassFileWriter$FieldWriter;

.field private methods:Ljavassist/bytecode/ClassFileWriter$MethodWriter;

.field private output:Ljavassist/bytecode/ByteStream;

.field superClass:I

.field thisClass:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Ljavassist/bytecode/ByteStream;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljavassist/bytecode/ByteStream;-><init>(I)V

    iput-object v0, p0, Ljavassist/bytecode/ClassFileWriter;->output:Ljavassist/bytecode/ByteStream;

    const v1, -0x35014542    # -8346975.0f

    .line 91
    invoke-virtual {v0, v1}, Ljavassist/bytecode/ByteStream;->writeInt(I)V

    .line 92
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {v0, p2}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    .line 93
    iget-object p2, p0, Ljavassist/bytecode/ClassFileWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {p2, p1}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    .line 94
    new-instance p1, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;

    iget-object p2, p0, Ljavassist/bytecode/ClassFileWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-direct {p1, p2}, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;-><init>(Ljavassist/bytecode/ByteStream;)V

    iput-object p1, p0, Ljavassist/bytecode/ClassFileWriter;->constPool:Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;

    .line 95
    new-instance p1, Ljavassist/bytecode/ClassFileWriter$FieldWriter;

    iget-object p2, p0, Ljavassist/bytecode/ClassFileWriter;->constPool:Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;

    invoke-direct {p1, p2}, Ljavassist/bytecode/ClassFileWriter$FieldWriter;-><init>(Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;)V

    iput-object p1, p0, Ljavassist/bytecode/ClassFileWriter;->fields:Ljavassist/bytecode/ClassFileWriter$FieldWriter;

    .line 96
    new-instance p1, Ljavassist/bytecode/ClassFileWriter$MethodWriter;

    iget-object p2, p0, Ljavassist/bytecode/ClassFileWriter;->constPool:Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;

    invoke-direct {p1, p2}, Ljavassist/bytecode/ClassFileWriter$MethodWriter;-><init>(Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;)V

    iput-object p1, p0, Ljavassist/bytecode/ClassFileWriter;->methods:Ljavassist/bytecode/ClassFileWriter$MethodWriter;

    return-void
.end method

.method static writeAttribute(Ljavassist/bytecode/ByteStream;Ljavassist/bytecode/ClassFileWriter$AttributeWriter;I)V
    .locals 1

    if-nez p1, :cond_0

    .line 238
    invoke-virtual {p0, p2}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    return-void

    .line 242
    :cond_0
    invoke-interface {p1}, Ljavassist/bytecode/ClassFileWriter$AttributeWriter;->size()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0, v0}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    .line 243
    new-instance p2, Ljava/io/DataOutputStream;

    invoke-direct {p2, p0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 245
    :try_start_0
    invoke-interface {p1, p2}, Ljavassist/bytecode/ClassFileWriter$AttributeWriter;->write(Ljava/io/DataOutputStream;)V

    .line 246
    invoke-virtual {p2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public end(Ljava/io/DataOutputStream;III[ILjavassist/bytecode/ClassFileWriter$AttributeWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter;->constPool:Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;

    invoke-virtual {v0}, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->end()V

    .line 177
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ByteStream;->writeTo(Ljava/io/OutputStream;)V

    .line 178
    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 179
    invoke-virtual {p1, p3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 180
    invoke-virtual {p1, p4}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 p2, 0x0

    if-nez p5, :cond_0

    .line 182
    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_1

    .line 184
    :cond_0
    array-length p3, p5

    .line 185
    invoke-virtual {p1, p3}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_1

    .line 187
    aget v0, p5, p4

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 190
    :cond_1
    :goto_1
    iget-object p3, p0, Ljavassist/bytecode/ClassFileWriter;->fields:Ljavassist/bytecode/ClassFileWriter$FieldWriter;

    invoke-virtual {p3}, Ljavassist/bytecode/ClassFileWriter$FieldWriter;->size()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 191
    iget-object p3, p0, Ljavassist/bytecode/ClassFileWriter;->fields:Ljavassist/bytecode/ClassFileWriter$FieldWriter;

    invoke-virtual {p3, p1}, Ljavassist/bytecode/ClassFileWriter$FieldWriter;->write(Ljava/io/OutputStream;)V

    .line 193
    iget-object p3, p0, Ljavassist/bytecode/ClassFileWriter;->methods:Ljavassist/bytecode/ClassFileWriter$MethodWriter;

    invoke-virtual {p3}, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->size()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 194
    iget-object p3, p0, Ljavassist/bytecode/ClassFileWriter;->methods:Ljavassist/bytecode/ClassFileWriter$MethodWriter;

    invoke-virtual {p3, p1}, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->write(Ljava/io/OutputStream;)V

    if-nez p6, :cond_2

    .line 196
    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_2

    .line 198
    :cond_2
    invoke-interface {p6}, Ljavassist/bytecode/ClassFileWriter$AttributeWriter;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 199
    invoke-interface {p6, p1}, Ljavassist/bytecode/ClassFileWriter$AttributeWriter;->write(Ljava/io/DataOutputStream;)V

    :goto_2
    return-void
.end method

.method public end(III[ILjavassist/bytecode/ClassFileWriter$AttributeWriter;)[B
    .locals 2

    .line 130
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter;->constPool:Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;

    invoke-virtual {v0}, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->end()V

    .line 131
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    .line 132
    iget-object p1, p0, Ljavassist/bytecode/ClassFileWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {p1, p2}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    .line 133
    iget-object p1, p0, Ljavassist/bytecode/ClassFileWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {p1, p3}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    const/4 p1, 0x0

    if-nez p4, :cond_0

    .line 135
    iget-object p2, p0, Ljavassist/bytecode/ClassFileWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {p2, p1}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    goto :goto_1

    .line 137
    :cond_0
    array-length p2, p4

    .line 138
    iget-object p3, p0, Ljavassist/bytecode/ClassFileWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {p3, p2}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_1

    .line 140
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter;->output:Ljavassist/bytecode/ByteStream;

    aget v1, p4, p3

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 143
    :cond_1
    :goto_1
    iget-object p2, p0, Ljavassist/bytecode/ClassFileWriter;->output:Ljavassist/bytecode/ByteStream;

    iget-object p3, p0, Ljavassist/bytecode/ClassFileWriter;->fields:Ljavassist/bytecode/ClassFileWriter$FieldWriter;

    invoke-virtual {p3}, Ljavassist/bytecode/ClassFileWriter$FieldWriter;->dataSize()I

    move-result p3

    iget-object p4, p0, Ljavassist/bytecode/ClassFileWriter;->methods:Ljavassist/bytecode/ClassFileWriter$MethodWriter;

    invoke-virtual {p4}, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->dataSize()I

    move-result p4

    add-int/2addr p3, p4

    add-int/lit8 p3, p3, 0x6

    invoke-virtual {p2, p3}, Ljavassist/bytecode/ByteStream;->enlarge(I)V

    .line 145
    :try_start_0
    iget-object p2, p0, Ljavassist/bytecode/ClassFileWriter;->output:Ljavassist/bytecode/ByteStream;

    iget-object p3, p0, Ljavassist/bytecode/ClassFileWriter;->fields:Ljavassist/bytecode/ClassFileWriter$FieldWriter;

    invoke-virtual {p3}, Ljavassist/bytecode/ClassFileWriter$FieldWriter;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    .line 146
    iget-object p2, p0, Ljavassist/bytecode/ClassFileWriter;->fields:Ljavassist/bytecode/ClassFileWriter$FieldWriter;

    iget-object p3, p0, Ljavassist/bytecode/ClassFileWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {p2, p3}, Ljavassist/bytecode/ClassFileWriter$FieldWriter;->write(Ljava/io/OutputStream;)V

    .line 148
    iget-object p2, p0, Ljavassist/bytecode/ClassFileWriter;->output:Ljavassist/bytecode/ByteStream;

    iget-object p3, p0, Ljavassist/bytecode/ClassFileWriter;->methods:Ljavassist/bytecode/ClassFileWriter$MethodWriter;

    invoke-virtual {p3}, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    .line 149
    iget-object p2, p0, Ljavassist/bytecode/ClassFileWriter;->methods:Ljavassist/bytecode/ClassFileWriter$MethodWriter;

    iget-object p3, p0, Ljavassist/bytecode/ClassFileWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {p2, p3}, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->write(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :catch_0
    iget-object p2, p0, Ljavassist/bytecode/ClassFileWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-static {p2, p5, p1}, Ljavassist/bytecode/ClassFileWriter;->writeAttribute(Ljavassist/bytecode/ByteStream;Ljavassist/bytecode/ClassFileWriter$AttributeWriter;I)V

    .line 154
    iget-object p1, p0, Ljavassist/bytecode/ClassFileWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {p1}, Ljavassist/bytecode/ByteStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public getConstPool()Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;
    .locals 1

    .line 103
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter;->constPool:Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;

    return-object v0
.end method

.method public getFieldWriter()Ljavassist/bytecode/ClassFileWriter$FieldWriter;
    .locals 1

    .line 108
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter;->fields:Ljavassist/bytecode/ClassFileWriter$FieldWriter;

    return-object v0
.end method

.method public getMethodWriter()Ljavassist/bytecode/ClassFileWriter$MethodWriter;
    .locals 1

    .line 113
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter;->methods:Ljavassist/bytecode/ClassFileWriter$MethodWriter;

    return-object v0
.end method
