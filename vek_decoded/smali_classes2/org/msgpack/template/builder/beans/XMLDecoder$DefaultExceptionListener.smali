.class Lorg/msgpack/template/builder/beans/XMLDecoder$DefaultExceptionListener;
.super Ljava/lang/Object;
.source "XMLDecoder.java"

# interfaces
.implements Lorg/msgpack/template/builder/beans/ExceptionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/msgpack/template/builder/beans/XMLDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultExceptionListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/msgpack/template/builder/beans/XMLDecoder$1;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lorg/msgpack/template/builder/beans/XMLDecoder$DefaultExceptionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public exceptionThrown(Ljava/lang/Exception;)V
    .locals 1

    .line 52
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 53
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v0, "Continue..."

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
