.class Ljavassist/CtClass$DelayedFileOutputStream;
.super Ljava/io/OutputStream;
.source "CtClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/CtClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DelayedFileOutputStream"
.end annotation


# instance fields
.field private file:Ljava/io/FileOutputStream;

.field private filename:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1402
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x0

    .line 1403
    iput-object v0, p0, Ljavassist/CtClass$DelayedFileOutputStream;->file:Ljava/io/FileOutputStream;

    .line 1404
    iput-object p1, p0, Ljavassist/CtClass$DelayedFileOutputStream;->filename:Ljava/lang/String;

    return-void
.end method

.method private init()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1408
    iget-object v0, p0, Ljavassist/CtClass$DelayedFileOutputStream;->file:Ljava/io/FileOutputStream;

    if-nez v0, :cond_0

    .line 1409
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Ljavassist/CtClass$DelayedFileOutputStream;->filename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljavassist/CtClass$DelayedFileOutputStream;->file:Ljava/io/FileOutputStream;

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1434
    invoke-direct {p0}, Ljavassist/CtClass$DelayedFileOutputStream;->init()V

    .line 1435
    iget-object v0, p0, Ljavassist/CtClass$DelayedFileOutputStream;->file:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1429
    invoke-direct {p0}, Ljavassist/CtClass$DelayedFileOutputStream;->init()V

    .line 1430
    iget-object v0, p0, Ljavassist/CtClass$DelayedFileOutputStream;->file:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    return-void
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1413
    invoke-direct {p0}, Ljavassist/CtClass$DelayedFileOutputStream;->init()V

    .line 1414
    iget-object v0, p0, Ljavassist/CtClass$DelayedFileOutputStream;->file:Ljava/io/FileOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write(I)V

    return-void
.end method

.method public write([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1418
    invoke-direct {p0}, Ljavassist/CtClass$DelayedFileOutputStream;->init()V

    .line 1419
    iget-object v0, p0, Ljavassist/CtClass$DelayedFileOutputStream;->file:Ljava/io/FileOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1423
    invoke-direct {p0}, Ljavassist/CtClass$DelayedFileOutputStream;->init()V

    .line 1424
    iget-object v0, p0, Ljavassist/CtClass$DelayedFileOutputStream;->file:Ljava/io/FileOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/FileOutputStream;->write([BII)V

    return-void
.end method
