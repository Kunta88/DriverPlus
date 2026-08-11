.class public Ljavassist/tools/web/Webserver;
.super Ljava/lang/Object;
.source "Webserver.java"


# static fields
.field private static final endofline:[B

.field private static final typeClass:I = 0x2

.field private static final typeGif:I = 0x3

.field private static final typeHtml:I = 0x1

.field private static final typeJpeg:I = 0x4

.field private static final typeText:I = 0x5


# instance fields
.field private classPool:Ljavassist/ClassPool;

.field public debugDir:Ljava/lang/String;

.field public htmlfileBase:Ljava/lang/String;

.field private socket:Ljava/net/ServerSocket;

.field protected translator:Ljavassist/Translator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 42
    fill-array-data v0, :array_0

    sput-object v0, Ljavassist/tools/web/Webserver;->endofline:[B

    return-void

    nop

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Ljavassist/tools/web/Webserver;->debugDir:Ljava/lang/String;

    .line 72
    iput-object v0, p0, Ljavassist/tools/web/Webserver;->htmlfileBase:Ljava/lang/String;

    .line 103
    new-instance v1, Ljava/net/ServerSocket;

    invoke-direct {v1, p1}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v1, p0, Ljavassist/tools/web/Webserver;->socket:Ljava/net/ServerSocket;

    .line 104
    iput-object v0, p0, Ljavassist/tools/web/Webserver;->classPool:Ljavassist/ClassPool;

    .line 105
    iput-object v0, p0, Ljavassist/tools/web/Webserver;->translator:Ljavassist/Translator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Ljavassist/tools/web/Webserver;-><init>(I)V

    return-void
.end method

.method private checkFilename(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/tools/web/BadHttpRequest;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_2

    .line 321
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 322
    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x2e

    if-eq v1, v2, :cond_1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 323
    :cond_0
    new-instance p1, Ljavassist/tools/web/BadHttpRequest;

    invoke-direct {p1}, Ljavassist/tools/web/BadHttpRequest;-><init>()V

    throw p1

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string p2, ".."

    .line 326
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_3

    return-void

    .line 327
    :cond_3
    new-instance p1, Ljavassist/tools/web/BadHttpRequest;

    invoke-direct {p1}, Ljavassist/tools/web/BadHttpRequest;-><init>()V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private letUsersSendClassfile(Ljava/io/OutputStream;Ljava/lang/String;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavassist/tools/web/BadHttpRequest;
        }
    .end annotation

    .line 334
    iget-object v0, p0, Ljavassist/tools/web/Webserver;->classPool:Ljavassist/ClassPool;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    add-int/lit8 p3, p3, -0x6

    .line 338
    invoke-virtual {p2, v1, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0x2f

    const/16 v0, 0x2e

    invoke-virtual {p2, p3, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    .line 341
    :try_start_0
    iget-object p3, p0, Ljavassist/tools/web/Webserver;->translator:Ljavassist/Translator;

    if-eqz p3, :cond_1

    .line 342
    iget-object v0, p0, Ljavassist/tools/web/Webserver;->classPool:Ljavassist/ClassPool;

    invoke-interface {p3, v0, p2}, Ljavassist/Translator;->onLoad(Ljavassist/ClassPool;Ljava/lang/String;)V

    .line 344
    :cond_1
    iget-object p3, p0, Ljavassist/tools/web/Webserver;->classPool:Ljavassist/ClassPool;

    invoke-virtual {p3, p2}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object p2

    .line 345
    invoke-virtual {p2}, Ljavassist/CtClass;->toBytecode()[B

    move-result-object p3

    .line 346
    iget-object v0, p0, Ljavassist/tools/web/Webserver;->debugDir:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 347
    invoke-virtual {p2, v0}, Ljavassist/CtClass;->writeFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :cond_2
    array-length p2, p3

    int-to-long v0, p2

    const/4 p2, 0x2

    invoke-direct {p0, p1, v0, v1, p2}, Ljavassist/tools/web/Webserver;->sendHeader(Ljava/io/OutputStream;JI)V

    .line 354
    invoke-virtual {p1, p3}, Ljava/io/OutputStream;->write([B)V

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 350
    new-instance p2, Ljavassist/tools/web/BadHttpRequest;

    invoke-direct {p2, p1}, Ljavassist/tools/web/BadHttpRequest;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 80
    new-instance v0, Ljavassist/tools/web/Webserver;

    const/4 v1, 0x0

    aget-object p0, p0, v1

    invoke-direct {v0, p0}, Ljavassist/tools/web/Webserver;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v0}, Ljavassist/tools/web/Webserver;->run()V

    goto :goto_0

    .line 84
    :cond_0
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v0, "Usage: java javassist.tools.web.Webserver <port number>"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private readLine(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 214
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-ltz v1, :cond_0

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    int-to-char v1, v1

    .line 215
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 217
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    .line 218
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private replyError(Ljava/io/OutputStream;Ljavassist/tools/web/BadHttpRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bad request: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljavassist/tools/web/BadHttpRequest;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljavassist/tools/web/Webserver;->logging2(Ljava/lang/String;)V

    const-string p2, "HTTP/1.0 400 Bad Request"

    .line 385
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 386
    sget-object p2, Ljavassist/tools/web/Webserver;->endofline:[B

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 387
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    const-string p2, "<H1>Bad Request</H1>"

    .line 388
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method private sendHeader(Ljava/io/OutputStream;JI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "HTTP/1.0 200 OK"

    .line 361
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 362
    sget-object v0, Ljavassist/tools/web/Webserver;->endofline:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    const-string v1, "Content-Length: "

    .line 363
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 364
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 365
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    const/4 p2, 0x2

    if-ne p4, p2, :cond_0

    const-string p2, "Content-Type: application/octet-stream"

    .line 367
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    if-ne p4, p2, :cond_1

    const-string p2, "Content-Type: text/html"

    .line 369
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x3

    if-ne p4, p2, :cond_2

    const-string p2, "Content-Type: image/gif"

    .line 371
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    :cond_2
    const/4 p2, 0x4

    if-ne p4, p2, :cond_3

    const-string p2, "Content-Type: image/jpg"

    .line 373
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    :cond_3
    const/4 p2, 0x5

    if-ne p4, p2, :cond_4

    const-string p2, "Content-Type: text/plain"

    .line 375
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 377
    :cond_4
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 378
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method private skipLine(Ljava/io/InputStream;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 224
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-ltz v1, :cond_0

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 227
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    return v0
.end method


# virtual methods
.method public addTranslator(Ljavassist/ClassPool;Ljavassist/Translator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;,
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 127
    iput-object p1, p0, Ljavassist/tools/web/Webserver;->classPool:Ljavassist/ClassPool;

    .line 128
    iput-object p2, p0, Ljavassist/tools/web/Webserver;->translator:Ljavassist/Translator;

    .line 129
    invoke-interface {p2, p1}, Ljavassist/Translator;->start(Ljavassist/ClassPool;)V

    return-void
.end method

.method public doReply(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavassist/tools/web/BadHttpRequest;
        }
    .end annotation

    const-string p1, "GET /"

    .line 244
    invoke-virtual {p3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/16 p1, 0x20

    const/4 v0, 0x5

    .line 245
    invoke-virtual {p3, p1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result p1

    invoke-virtual {p3, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string p3, ".class"

    .line 249
    invoke-virtual {p1, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p3

    const/4 v1, 0x2

    if-eqz p3, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :cond_0
    const-string p3, ".html"

    .line 251
    invoke-virtual {p1, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_3

    const-string p3, ".htm"

    invoke-virtual {p1, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    const-string p3, ".gif"

    .line 253
    invoke-virtual {p1, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    const/4 v0, 0x3

    goto :goto_1

    :cond_2
    const-string p3, ".jpg"

    .line 255
    invoke-virtual {p1, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    const/4 v0, 0x4

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 260
    :cond_4
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-ne v0, v1, :cond_5

    .line 261
    invoke-direct {p0, p2, p1, p3}, Ljavassist/tools/web/Webserver;->letUsersSendClassfile(Ljava/io/OutputStream;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    return-void

    .line 265
    :cond_5
    invoke-direct {p0, p1, p3}, Ljavassist/tools/web/Webserver;->checkFilename(Ljava/lang/String;I)V

    .line 266
    iget-object p3, p0, Ljavassist/tools/web/Webserver;->htmlfileBase:Ljava/lang/String;

    if-eqz p3, :cond_6

    .line 267
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ljavassist/tools/web/Webserver;->htmlfileBase:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_2

    :cond_6
    move-object p3, p1

    .line 269
    :goto_2
    sget-char v2, Ljava/io/File;->separatorChar:C

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_7

    .line 270
    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {p3, v3, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p3

    .line 272
    :cond_7
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 273
    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result p3

    const/4 v3, 0x0

    const/16 v4, 0x1000

    if-eqz p3, :cond_9

    .line 274
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-direct {p0, p2, v5, v6, v0}, Ljavassist/tools/web/Webserver;->sendHeader(Ljava/io/OutputStream;JI)V

    .line 275
    new-instance p3, Ljava/io/FileInputStream;

    invoke-direct {p3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-array v2, v4, [B

    .line 278
    :goto_3
    invoke-virtual {p3, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result p1

    if-gtz p1, :cond_8

    .line 285
    invoke-virtual {p3}, Ljava/io/FileInputStream;->close()V

    return-void

    .line 282
    :cond_8
    invoke-virtual {p2, v2, v3, p1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_3

    :cond_9
    if-ne v0, v1, :cond_b

    .line 293
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 296
    new-instance p3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-array v0, v4, [B

    .line 299
    :goto_4
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-gtz v2, :cond_a

    .line 306
    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p3

    .line 307
    array-length v0, p3

    int-to-long v2, v0

    invoke-direct {p0, p2, v2, v3, v1}, Ljavassist/tools/web/Webserver;->sendHeader(Ljava/io/OutputStream;JI)V

    .line 308
    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write([B)V

    .line 309
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-void

    .line 303
    :cond_a
    invoke-virtual {p3, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_4

    .line 314
    :cond_b
    new-instance p1, Ljavassist/tools/web/BadHttpRequest;

    invoke-direct {p1}, Ljavassist/tools/web/BadHttpRequest;-><init>()V

    throw p1

    .line 247
    :cond_c
    new-instance p1, Ljavassist/tools/web/BadHttpRequest;

    invoke-direct {p1}, Ljavassist/tools/web/BadHttpRequest;-><init>()V

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method public end()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    iget-object v0, p0, Ljavassist/tools/web/Webserver;->socket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    return-void
.end method

.method public logging(Ljava/lang/String;)V
    .locals 1

    .line 143
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public logging(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 150
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 151
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 152
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public logging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 159
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 160
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 161
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 162
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 163
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public logging2(Ljava/lang/String;)V
    .locals 2

    .line 170
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 171
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method final process(Ljava/net/Socket;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 191
    invoke-direct {p0, v0}, Ljavassist/tools/web/Webserver;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 192
    invoke-virtual {p1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3, v1}, Ljavassist/tools/web/Webserver;->logging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :goto_0
    invoke-direct {p0, v0}, Ljavassist/tools/web/Webserver;->skipLine(Ljava/io/InputStream;)I

    move-result v2

    if-lez v2, :cond_0

    goto :goto_0

    .line 197
    :cond_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 199
    :try_start_0
    invoke-virtual {p0, v0, v2, v1}, Ljavassist/tools/web/Webserver;->doReply(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljavassist/tools/web/BadHttpRequest; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 202
    invoke-direct {p0, v2, v1}, Ljavassist/tools/web/Webserver;->replyError(Ljava/io/OutputStream;Ljavassist/tools/web/BadHttpRequest;)V

    .line 205
    :goto_1
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 206
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 207
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 208
    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    return-void
.end method

.method public run()V
    .locals 2

    .line 178
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "ready to service..."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 181
    :goto_0
    :try_start_0
    new-instance v0, Ljavassist/tools/web/ServiceThread;

    iget-object v1, p0, Ljavassist/tools/web/Webserver;->socket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljavassist/tools/web/ServiceThread;-><init>(Ljavassist/tools/web/Webserver;Ljava/net/Socket;)V

    .line 182
    invoke-virtual {v0}, Ljavassist/tools/web/ServiceThread;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 185
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavassist/tools/web/Webserver;->logging(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setClassPool(Ljavassist/ClassPool;)V
    .locals 0

    .line 113
    iput-object p1, p0, Ljavassist/tools/web/Webserver;->classPool:Ljavassist/ClassPool;

    return-void
.end method
