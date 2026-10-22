.class public Lcom/txdriver/compat/WebDiagnosticsTest;
.super Ljava/lang/Object;
.source "WebDiagnosticsTest.java"


# static fields
.field static checks:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static check(ZLjava/lang/String;)V
    .registers 2

    .line 7
    if-eqz p0, :cond_9

    sget p0, Lcom/txdriver/compat/WebDiagnosticsTest;->checks:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lcom/txdriver/compat/WebDiagnosticsTest;->checks:I

    return-void

    :cond_9
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public static main([Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9
    const/4 p0, 0x0

    new-array v0, p0, [Ljava/nio/file/attribute/FileAttribute;

    const-string v1, "driverplus-diagnostics-test"

    invoke-static {v1, v0}, Ljava/nio/file/Files;->createTempDirectory(Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    .line 10
    invoke-static {v0}, Lcom/txdriver/compat/WebDiagnostics;->init(Ljava/io/File;)V

    .line 11
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-static {v1}, Lcom/txdriver/compat/WebDiagnostics;->begin(Ljava/lang/Object;)V

    .line 12
    new-instance v1, Lcom/txdriver/compat/WebDiagnostics$Trace;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/txdriver/compat/WebDiagnostics$Trace;-><init>(Z)V

    .line 13
    new-instance v3, Ljava/net/URL;

    const-string v4, "https://login:secret@private-host.test:8443/customer/123?password=secret&uuid=token"

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/txdriver/compat/WebDiagnostics$Trace;->endpoint(Ljava/net/URL;)V

    .line 14
    const-string v3, "response_headers"

    iput-object v3, v1, Lcom/txdriver/compat/WebDiagnostics$Trace;->phase:Ljava/lang/String;

    const/16 v3, 0x1f7

    iput v3, v1, Lcom/txdriver/compat/WebDiagnostics$Trace;->status:I

    .line 15
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/net/SocketTimeoutException;

    const-string v5, "private-host"

    invoke-direct {v4, v5}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    const-string v6, "secret password token"

    invoke-direct {v3, v6, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v3}, Lcom/txdriver/compat/WebDiagnostics$Trace;->finish(Ljava/lang/Throwable;)V

    .line 16
    invoke-static {}, Lcom/txdriver/compat/WebDiagnostics;->end()V

    .line 17
    new-instance v1, Ljava/io/File;

    const-string v3, "web-diagnostics/web-current.log"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 18
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v4

    invoke-static {v4}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v4

    const-string v6, "UTF-8"

    invoke-direct {v3, v4, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 19
    const-string v4, "status=503"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    const-string v8, "numeric status"

    invoke-static {v7, v8}, Lcom/txdriver/compat/WebDiagnosticsTest;->check(ZLjava/lang/String;)V

    .line 20
    const-string v7, "phase=response_headers"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    const-string v8, "failure stage"

    invoke-static {v7, v8}, Lcom/txdriver/compat/WebDiagnosticsTest;->check(ZLjava/lang/String;)V

    .line 21
    const-string v7, "SocketTimeoutException"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    const-string v8, "cause chain"

    invoke-static {v7, v8}, Lcom/txdriver/compat/WebDiagnosticsTest;->check(ZLjava/lang/String;)V

    .line 22
    const-string v7, "duration_ms="

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    const-string v8, "duration"

    invoke-static {v7, v8}, Lcom/txdriver/compat/WebDiagnosticsTest;->check(ZLjava/lang/String;)V

    .line 23
    const-string v7, "secret"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a6

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a6

    const-string v5, "customer"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a6

    const-string v5, "token"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a6

    const/4 v5, 0x1

    goto :goto_a7

    :cond_a6
    const/4 v5, 0x0

    :goto_a7
    const-string v8, "no URL/messages/credentials"

    invoke-static {v5, v8}, Lcom/txdriver/compat/WebDiagnosticsTest;->check(ZLjava/lang/String;)V

    .line 24
    const-string v5, "port=8443"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v5, "port"

    invoke-static {v3, v5}, Lcom/txdriver/compat/WebDiagnosticsTest;->check(ZLjava/lang/String;)V

    .line 25
    const-string v3, "bad\nrecord"

    invoke-static {v3}, Lcom/txdriver/compat/WebDiagnostics;->token(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "other"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v5, "newline rejected"

    invoke-static {v3, v5}, Lcom/txdriver/compat/WebDiagnosticsTest;->check(ZLjava/lang/String;)V

    .line 26
    invoke-static {v0}, Lcom/txdriver/compat/WebDiagnostics;->init(Ljava/io/File;)V

    .line 27
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v5

    invoke-static {v5}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v5

    invoke-direct {v3, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 28
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "history survives reinit"

    invoke-static {v3, v4}, Lcom/txdriver/compat/WebDiagnosticsTest;->check(ZLjava/lang/String;)V

    .line 29
    const/4 v3, 0x0

    :goto_e2
    const/16 v4, 0x898

    if-ge v3, v4, :cond_f2

    new-instance v4, Lcom/txdriver/compat/WebDiagnostics$Trace;

    invoke-direct {v4, p0}, Lcom/txdriver/compat/WebDiagnostics$Trace;-><init>(Z)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/txdriver/compat/WebDiagnostics$Trace;->finish(Ljava/lang/Throwable;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_e2

    .line 30
    :cond_f2
    new-instance v3, Ljava/io/File;

    const-string v4, "web-diagnostics/web-previous.log"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    const-string v5, "rotates"

    invoke-static {v4, v5}, Lcom/txdriver/compat/WebDiagnosticsTest;->check(ZLjava/lang/String;)V

    .line 32
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/32 v8, 0x203a0

    cmp-long v6, v4, v8

    if-gez v6, :cond_117

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v5, v3, v8

    if-gez v5, :cond_117

    const/4 v3, 0x1

    goto :goto_118

    :cond_117
    const/4 v3, 0x0

    :goto_118
    const-string v4, "bounded disk usage"

    invoke-static {v3, v4}, Lcom/txdriver/compat/WebDiagnosticsTest;->check(ZLjava/lang/String;)V

    .line 33
    new-instance v3, Ljava/io/File;

    const-string v4, "web-diagnostics"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_12e

    const/4 v0, 0x1

    goto :goto_12f

    :cond_12e
    const/4 v0, 0x0

    :goto_12f
    const-string v3, "only two journals"

    invoke-static {v0, v3}, Lcom/txdriver/compat/WebDiagnosticsTest;->check(ZLjava/lang/String;)V

    .line 34
    invoke-static {v1}, Lcom/txdriver/compat/WebDiagnostics;->init(Ljava/io/File;)V

    .line 35
    new-instance v0, Lcom/txdriver/compat/WebDiagnostics$Trace;

    invoke-direct {v0, p0}, Lcom/txdriver/compat/WebDiagnostics$Trace;-><init>(Z)V

    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/txdriver/compat/WebDiagnostics$Trace;->finish(Ljava/lang/Throwable;)V

    .line 36
    const-string p0, "storage errors swallowed"

    invoke-static {v2, p0}, Lcom/txdriver/compat/WebDiagnosticsTest;->check(ZLjava/lang/String;)V

    .line 37
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WebDiagnosticsTest: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/txdriver/compat/WebDiagnosticsTest;->checks:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " checks passed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 38
    return-void
.end method
