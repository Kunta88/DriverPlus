.class public Ljavassist/bytecode/annotation/AnnotationsWriter;
.super Ljava/lang/Object;
.source "AnnotationsWriter.java"


# instance fields
.field private output:Ljava/io/OutputStream;

.field private pool:Ljavassist/bytecode/ConstPool;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Ljavassist/bytecode/ConstPool;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Ljavassist/bytecode/annotation/AnnotationsWriter;->output:Ljava/io/OutputStream;

    .line 72
    iput-object p2, p0, Ljavassist/bytecode/annotation/AnnotationsWriter;->pool:Ljavassist/bytecode/ConstPool;

    return-void
.end method

.method private write16bit(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 351
    invoke-static {p1, v0, v1}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 352
    iget-object p1, p0, Ljavassist/bytecode/annotation/AnnotationsWriter;->output:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method


# virtual methods
.method public annotation(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    invoke-direct {p0, p1}, Ljavassist/bytecode/annotation/AnnotationsWriter;->write16bit(I)V

    .line 138
    invoke-direct {p0, p2}, Ljavassist/bytecode/annotation/AnnotationsWriter;->write16bit(I)V

    return-void
.end method

.method public annotation(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    iget-object v0, p0, Ljavassist/bytecode/annotation/AnnotationsWriter;->pool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Ljavassist/bytecode/annotation/AnnotationsWriter;->annotation(II)V

    return-void
.end method

.method public annotationValue()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 331
    iget-object v0, p0, Ljavassist/bytecode/annotation/AnnotationsWriter;->output:Ljava/io/OutputStream;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public arrayValue(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 345
    iget-object v0, p0, Ljavassist/bytecode/annotation/AnnotationsWriter;->output:Ljava/io/OutputStream;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 346
    invoke-direct {p0, p1}, Ljavassist/bytecode/annotation/AnnotationsWriter;->write16bit(I)V

    return-void
.end method

.method public classInfoIndex(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 321
    iget-object v0, p0, Ljavassist/bytecode/annotation/AnnotationsWriter;->output:Ljava/io/OutputStream;

    const/16 v1, 0x63

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 322
    invoke-direct {p0, p1}, Ljavassist/bytecode/annotation/AnnotationsWriter;->write16bit(I)V

    return-void
.end method

.method public classInfoIndex(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    iget-object v0, p0, Ljavassist/bytecode/annotation/AnnotationsWriter;->pool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Ljavassist/bytecode/annotation/AnnotationsWriter;->classInfoIndex(I)V

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Ljavassist/bytecode/annotation/AnnotationsWriter;->output:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public constValueIndex(B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    iget-object v0, p0, Ljavassist/bytecode/annotation/AnnotationsWriter;->pool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addIntegerInfo(I)I

    move-result p1

    const/16 v0, 0x42

    invoke-virtual {p0, v0, p1}, Ljavassist/bytecode/annotation/AnnotationsWriter;->constValueIndex(II)V

    return-void
.end method

.method public constValueIndex(C)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    iget-object v0, p0, Ljavassist/bytecode/annotation/AnnotationsWriter;->pool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addIntegerInfo(I)I

    move-result p1

    const/16 v0, 0x43

    invoke-virtual {p0, v0, p1}, Ljavassist/bytecode/annotation/AnnotationsWriter;->constValueIndex(II)V

    return-void
.end method

.method public constValueIndex(D)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    iget-object v0, p0, Ljavassist/bytecode/annotation/AnnotationsWriter;->pool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1, p2}, Ljavassist/bytecode/ConstPool;->addDoubleInfo(D)I

    move-result p1

    const/16 p2, 0x44

    invoke-virtual {p0, p2, p1}, Ljavassist/bytecode/annotation/AnnotationsWriter;->constValueIndex(II)V

    return-void
.end method

.method public constValueIndex(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 235
    iget-object v0, p0, Ljavassist/bytecode/annotation/AnnotationsWriter;->pool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addFloatInfo(F)I

    move-result p1

    const/16 v0, 0x46

    invoke-virtual {p0, v0, p1}, Ljavassist/bytecode/annotation/AnnotationsWriter;->constValueIndex(II)V

    return-void
.end method

.method public constValueIndex(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    iget-object v0, p0, Ljavassist/bytecode/annotation/AnnotationsWriter;->pool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addIntegerInfo(I)I

    move-result p1

    const/16 v0, 0x49

    invoke-virtual {p0, v0, p1}, Ljavassist/bytecode/annotation/AnnotationsWriter;->constValueIndex(II)V

    return-void
.end method

.method public constValueIndex(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 269
    iget-object v0, p0, Ljavassist/bytecode/annotation/AnnotationsWriter;->output:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 270
    invoke-direct {p0, p2}, Ljavassist/bytecode/annotation/AnnotationsWriter;->write16bit(I)V

    return-void
.end method

.method public constValueIndex(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 225
    iget-object v0, p0, Ljavassist/bytecode/annotation/AnnotationsWriter;->pool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1, p2}, Ljavassist/bytecode/ConstPool;->addLongInfo(J)I

    move-result p1

    const/16 p2, 0x4a

    invoke-virtual {p0, p2, p1}, Ljavassist/bytecode/annotation/AnnotationsWriter;->constValueIndex(II)V

    return-void
.end method

.method public constValueIndex(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    iget-object v0, p0, Ljavassist/bytecode/annotation/AnnotationsWriter;->pool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result p1

    const/16 v0, 0x73

    invoke-virtual {p0, v0, p1}, Ljavassist/bytecode/annotation/AnnotationsWriter;->constValueIndex(II)V

    return-void
.end method

.method public constValueIndex(S)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    iget-object v0, p0, Ljavassist/bytecode/annotation/AnnotationsWriter;->pool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addIntegerInfo(I)I

    move-result p1

    const/16 v0, 0x53

    invoke-virtual {p0, v0, p1}, Ljavassist/bytecode/annotation/AnnotationsWriter;->constValueIndex(II)V

    return-void
.end method

.method public constValueIndex(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    iget-object v0, p0, Ljavassist/bytecode/annotation/AnnotationsWriter;->pool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addIntegerInfo(I)I

    move-result p1

    const/16 v0, 0x5a

    invoke-virtual {p0, v0, p1}, Ljavassist/bytecode/annotation/AnnotationsWriter;->constValueIndex(II)V

    return-void
.end method

.method public enumConstValue(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 299
    iget-object v0, p0, Ljavassist/bytecode/annotation/AnnotationsWriter;->output:Ljava/io/OutputStream;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 300
    invoke-direct {p0, p1}, Ljavassist/bytecode/annotation/AnnotationsWriter;->write16bit(I)V

    .line 301
    invoke-direct {p0, p2}, Ljavassist/bytecode/annotation/AnnotationsWriter;->write16bit(I)V

    return-void
.end method

.method public enumConstValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    iget-object v0, p0, Ljavassist/bytecode/annotation/AnnotationsWriter;->pool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Ljavassist/bytecode/annotation/AnnotationsWriter;->pool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p2}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Ljavassist/bytecode/annotation/AnnotationsWriter;->enumConstValue(II)V

    return-void
.end method

.method public getConstPool()Ljavassist/bytecode/ConstPool;
    .locals 1

    .line 79
    iget-object v0, p0, Ljavassist/bytecode/annotation/AnnotationsWriter;->pool:Ljavassist/bytecode/ConstPool;

    return-object v0
.end method

.method public memberValuePair(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    invoke-direct {p0, p1}, Ljavassist/bytecode/annotation/AnnotationsWriter;->write16bit(I)V

    return-void
.end method

.method public memberValuePair(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    iget-object v0, p0, Ljavassist/bytecode/annotation/AnnotationsWriter;->pool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Ljavassist/bytecode/annotation/AnnotationsWriter;->memberValuePair(I)V

    return-void
.end method

.method public numAnnotations(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    invoke-direct {p0, p1}, Ljavassist/bytecode/annotation/AnnotationsWriter;->write16bit(I)V

    return-void
.end method

.method public numParameters(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Ljavassist/bytecode/annotation/AnnotationsWriter;->output:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method
