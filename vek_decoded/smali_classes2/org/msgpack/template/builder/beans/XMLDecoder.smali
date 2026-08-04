.class public Lorg/msgpack/template/builder/beans/XMLDecoder;
.super Ljava/lang/Object;
.source "XMLDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;,
        Lorg/msgpack/template/builder/beans/XMLDecoder$SAXHandler;,
        Lorg/msgpack/template/builder/beans/XMLDecoder$DefaultExceptionListener;
    }
.end annotation


# instance fields
.field private defaultClassLoader:Ljava/lang/ClassLoader;

.field private inputStream:Ljava/io/InputStream;

.field private listener:Lorg/msgpack/template/builder/beans/ExceptionListener;

.field private owner:Ljava/lang/Object;

.field private readObjIndex:I

.field private readObjs:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;",
            ">;"
        }
    .end annotation
.end field

.field private saxHandler:Lorg/msgpack/template/builder/beans/XMLDecoder$SAXHandler;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    .line 579
    invoke-direct {p0, p1, v0, v0, v0}, Lorg/msgpack/template/builder/beans/XMLDecoder;-><init>(Ljava/io/InputStream;Ljava/lang/Object;Lorg/msgpack/template/builder/beans/ExceptionListener;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 591
    invoke-direct {p0, p1, p2, v0, v0}, Lorg/msgpack/template/builder/beans/XMLDecoder;-><init>(Ljava/io/InputStream;Ljava/lang/Object;Lorg/msgpack/template/builder/beans/ExceptionListener;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/Object;Lorg/msgpack/template/builder/beans/ExceptionListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 606
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/msgpack/template/builder/beans/XMLDecoder;-><init>(Ljava/io/InputStream;Ljava/lang/Object;Lorg/msgpack/template/builder/beans/ExceptionListener;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/Object;Lorg/msgpack/template/builder/beans/ExceptionListener;Ljava/lang/ClassLoader;)V
    .locals 2

    .line 610
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lorg/msgpack/template/builder/beans/XMLDecoder;->defaultClassLoader:Ljava/lang/ClassLoader;

    .line 566
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lorg/msgpack/template/builder/beans/XMLDecoder;->readObjs:Ljava/util/Stack;

    const/4 v1, 0x0

    .line 568
    iput v1, p0, Lorg/msgpack/template/builder/beans/XMLDecoder;->readObjIndex:I

    .line 570
    iput-object v0, p0, Lorg/msgpack/template/builder/beans/XMLDecoder;->saxHandler:Lorg/msgpack/template/builder/beans/XMLDecoder$SAXHandler;

    .line 611
    iput-object p1, p0, Lorg/msgpack/template/builder/beans/XMLDecoder;->inputStream:Ljava/io/InputStream;

    .line 612
    iput-object p2, p0, Lorg/msgpack/template/builder/beans/XMLDecoder;->owner:Ljava/lang/Object;

    if-nez p3, :cond_0

    .line 613
    new-instance p3, Lorg/msgpack/template/builder/beans/XMLDecoder$DefaultExceptionListener;

    invoke-direct {p3, v0}, Lorg/msgpack/template/builder/beans/XMLDecoder$DefaultExceptionListener;-><init>(Lorg/msgpack/template/builder/beans/XMLDecoder$1;)V

    :cond_0
    iput-object p3, p0, Lorg/msgpack/template/builder/beans/XMLDecoder;->listener:Lorg/msgpack/template/builder/beans/ExceptionListener;

    .line 615
    iput-object p4, p0, Lorg/msgpack/template/builder/beans/XMLDecoder;->defaultClassLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method static synthetic access$000(Lorg/msgpack/template/builder/beans/XMLDecoder;)Ljava/util/Stack;
    .locals 0

    .line 45
    iget-object p0, p0, Lorg/msgpack/template/builder/beans/XMLDecoder;->readObjs:Ljava/util/Stack;

    return-object p0
.end method

.method static synthetic access$100(Lorg/msgpack/template/builder/beans/XMLDecoder;)Lorg/msgpack/template/builder/beans/ExceptionListener;
    .locals 0

    .line 45
    iget-object p0, p0, Lorg/msgpack/template/builder/beans/XMLDecoder;->listener:Lorg/msgpack/template/builder/beans/ExceptionListener;

    return-object p0
.end method

.method static synthetic access$300(Lorg/msgpack/template/builder/beans/XMLDecoder;)Ljava/lang/Object;
    .locals 0

    .line 45
    iget-object p0, p0, Lorg/msgpack/template/builder/beans/XMLDecoder;->owner:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$400(Lorg/msgpack/template/builder/beans/XMLDecoder;)Ljava/lang/ClassLoader;
    .locals 0

    .line 45
    iget-object p0, p0, Lorg/msgpack/template/builder/beans/XMLDecoder;->defaultClassLoader:Ljava/lang/ClassLoader;

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 622
    iget-object v0, p0, Lorg/msgpack/template/builder/beans/XMLDecoder;->inputStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    return-void

    .line 626
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 628
    iget-object v1, p0, Lorg/msgpack/template/builder/beans/XMLDecoder;->listener:Lorg/msgpack/template/builder/beans/ExceptionListener;

    invoke-interface {v1, v0}, Lorg/msgpack/template/builder/beans/ExceptionListener;->exceptionThrown(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public getExceptionListener()Lorg/msgpack/template/builder/beans/ExceptionListener;
    .locals 1

    .line 638
    iget-object v0, p0, Lorg/msgpack/template/builder/beans/XMLDecoder;->listener:Lorg/msgpack/template/builder/beans/ExceptionListener;

    return-object v0
.end method

.method public getOwner()Ljava/lang/Object;
    .locals 1

    .line 647
    iget-object v0, p0, Lorg/msgpack/template/builder/beans/XMLDecoder;->owner:Ljava/lang/Object;

    return-object v0
.end method

.method public readObject()Ljava/lang/Object;
    .locals 3

    .line 659
    iget-object v0, p0, Lorg/msgpack/template/builder/beans/XMLDecoder;->inputStream:Ljava/io/InputStream;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 662
    :cond_0
    iget-object v0, p0, Lorg/msgpack/template/builder/beans/XMLDecoder;->saxHandler:Lorg/msgpack/template/builder/beans/XMLDecoder$SAXHandler;

    if-nez v0, :cond_1

    .line 663
    new-instance v0, Lorg/msgpack/template/builder/beans/XMLDecoder$SAXHandler;

    invoke-direct {v0, p0, v1}, Lorg/msgpack/template/builder/beans/XMLDecoder$SAXHandler;-><init>(Lorg/msgpack/template/builder/beans/XMLDecoder;Lorg/msgpack/template/builder/beans/XMLDecoder$1;)V

    iput-object v0, p0, Lorg/msgpack/template/builder/beans/XMLDecoder;->saxHandler:Lorg/msgpack/template/builder/beans/XMLDecoder$SAXHandler;

    .line 665
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    iget-object v1, p0, Lorg/msgpack/template/builder/beans/XMLDecoder;->inputStream:Ljava/io/InputStream;

    iget-object v2, p0, Lorg/msgpack/template/builder/beans/XMLDecoder;->saxHandler:Lorg/msgpack/template/builder/beans/XMLDecoder$SAXHandler;

    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 668
    iget-object v1, p0, Lorg/msgpack/template/builder/beans/XMLDecoder;->listener:Lorg/msgpack/template/builder/beans/ExceptionListener;

    invoke-interface {v1, v0}, Lorg/msgpack/template/builder/beans/ExceptionListener;->exceptionThrown(Ljava/lang/Exception;)V

    .line 672
    :cond_1
    :goto_0
    iget v0, p0, Lorg/msgpack/template/builder/beans/XMLDecoder;->readObjIndex:I

    iget-object v1, p0, Lorg/msgpack/template/builder/beans/XMLDecoder;->readObjs:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    const-string v2, "custom.beans.70"

    if-ge v0, v1, :cond_3

    .line 675
    iget-object v0, p0, Lorg/msgpack/template/builder/beans/XMLDecoder;->readObjs:Ljava/util/Stack;

    iget v1, p0, Lorg/msgpack/template/builder/beans/XMLDecoder;->readObjIndex:I

    invoke-virtual {v0, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;

    .line 676
    iget-boolean v1, v0, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;->isClosed:Z

    if-eqz v1, :cond_2

    .line 680
    iget v1, p0, Lorg/msgpack/template/builder/beans/XMLDecoder;->readObjIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/msgpack/template/builder/beans/XMLDecoder;->readObjIndex:I

    .line 681
    iget-object v0, v0, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;->result:Ljava/lang/Object;

    return-object v0

    .line 678
    :cond_2
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-static {v2}, Lorg/apache/harmony/beans/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 673
    :cond_3
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-static {v2}, Lorg/apache/harmony/beans/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setExceptionListener(Lorg/msgpack/template/builder/beans/ExceptionListener;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 692
    iput-object p1, p0, Lorg/msgpack/template/builder/beans/XMLDecoder;->listener:Lorg/msgpack/template/builder/beans/ExceptionListener;

    :cond_0
    return-void
.end method

.method public setOwner(Ljava/lang/Object;)V
    .locals 0

    .line 703
    iput-object p1, p0, Lorg/msgpack/template/builder/beans/XMLDecoder;->owner:Ljava/lang/Object;

    return-void
.end method
