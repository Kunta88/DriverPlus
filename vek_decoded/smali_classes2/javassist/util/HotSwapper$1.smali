.class Ljavassist/util/HotSwapper$1;
.super Ljava/lang/Thread;
.source "HotSwapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavassist/util/HotSwapper;->startDaemon()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavassist/util/HotSwapper;


# direct methods
.method constructor <init>(Ljavassist/util/HotSwapper;)V
    .locals 0

    .line 210
    iput-object p1, p0, Ljavassist/util/HotSwapper$1;->this$0:Ljavassist/util/HotSwapper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method private errorMsg(Ljava/lang/Throwable;)V
    .locals 2

    .line 212
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Exception in thread \"HotSwap\" "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 213
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x0

    .line 219
    :try_start_0
    iget-object v1, p0, Ljavassist/util/HotSwapper$1;->this$0:Ljavassist/util/HotSwapper;

    invoke-virtual {v1}, Ljavassist/util/HotSwapper;->waitEvent()Lcom/sun/jdi/event/EventSet;

    move-result-object v0

    .line 220
    invoke-interface {v0}, Lcom/sun/jdi/event/EventSet;->eventIterator()Lcom/sun/jdi/event/EventIterator;

    move-result-object v1

    .line 221
    :cond_0
    invoke-interface {v1}, Lcom/sun/jdi/event/EventIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 222
    invoke-interface {v1}, Lcom/sun/jdi/event/EventIterator;->nextEvent()Lcom/sun/jdi/event/Event;

    move-result-object v2

    .line 223
    instance-of v2, v2, Lcom/sun/jdi/event/MethodEntryEvent;

    if-eqz v2, :cond_0

    .line 224
    iget-object v1, p0, Ljavassist/util/HotSwapper$1;->this$0:Ljavassist/util/HotSwapper;

    invoke-virtual {v1}, Ljavassist/util/HotSwapper;->hotswap()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 230
    invoke-direct {p0, v1}, Ljavassist/util/HotSwapper$1;->errorMsg(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 234
    :try_start_1
    invoke-interface {v0}, Lcom/sun/jdi/event/EventSet;->resume()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 237
    invoke-direct {p0, v0}, Ljavassist/util/HotSwapper$1;->errorMsg(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method
