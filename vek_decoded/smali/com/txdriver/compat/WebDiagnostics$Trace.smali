.class public final Lcom/txdriver/compat/WebDiagnostics$Trace;
.super Ljava/lang/Object;
.source "WebDiagnostics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/compat/WebDiagnostics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Trace"
.end annotation


# instance fields
.field final enabled:Z

.field hostKey:Ljava/lang/String;

.field final id:J

.field final method:Ljava/lang/String;

.field phase:Ljava/lang/String;

.field port:I

.field redirects:I

.field final request:Ljava/lang/String;

.field scheme:Ljava/lang/String;

.field final started:J

.field status:I


# direct methods
.method constructor <init>(Z)V
    .registers 4

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    # getter for: Lcom/txdriver/compat/WebDiagnostics;->ids:Ljava/util/concurrent/atomic/AtomicLong;
    invoke-static {}, Lcom/txdriver/compat/WebDiagnostics;->access$000()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/txdriver/compat/WebDiagnostics$Trace;->id:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/txdriver/compat/WebDiagnostics$Trace;->started:J

    .line 49
    # invokes: Lcom/txdriver/compat/WebDiagnostics;->label()Ljava/lang/String;
    invoke-static {}, Lcom/txdriver/compat/WebDiagnostics;->access$100()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/txdriver/compat/WebDiagnostics$Trace;->request:Ljava/lang/String;

    .line 50
    invoke-static {}, Lcom/txdriver/compat/WebDiagnostics;->suppressed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/txdriver/compat/WebDiagnostics$Trace;->enabled:Z

    .line 51
    const-string v0, "validate"

    iput-object v0, p0, Lcom/txdriver/compat/WebDiagnostics$Trace;->phase:Ljava/lang/String;

    const-string v0, "unknown"

    iput-object v0, p0, Lcom/txdriver/compat/WebDiagnostics$Trace;->scheme:Ljava/lang/String;

    iput-object v0, p0, Lcom/txdriver/compat/WebDiagnostics$Trace;->hostKey:Ljava/lang/String;

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/txdriver/compat/WebDiagnostics$Trace;->port:I

    iput v0, p0, Lcom/txdriver/compat/WebDiagnostics$Trace;->status:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/txdriver/compat/WebDiagnostics$Trace;->redirects:I

    .line 53
    if-eqz p1, :cond_38

    const-string p1, "POST"

    goto :goto_3a

    :cond_38
    const-string p1, "GET"

    :goto_3a
    iput-object p1, p0, Lcom/txdriver/compat/WebDiagnostics$Trace;->method:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method endpoint(Ljava/net/URL;)V
    .registers 4

    .line 55
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    :goto_c
    goto :goto_1c

    :cond_d
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_c

    :cond_1a
    const-string v1, "other"

    :goto_1c
    iput-object v1, p0, Lcom/txdriver/compat/WebDiagnostics$Trace;->scheme:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/txdriver/compat/WebDiagnostics$Trace;->hostKey:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v0

    if-gez v0, :cond_3d

    invoke-virtual {p1}, Ljava/net/URL;->getDefaultPort()I

    move-result p1

    goto :goto_41

    :cond_3d
    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result p1

    :goto_41
    iput p1, p0, Lcom/txdriver/compat/WebDiagnostics$Trace;->port:I

    .line 59
    return-void
.end method

.method finish(Ljava/lang/Throwable;)V
    .registers 7

    .line 61
    iget-boolean v0, p0, Lcom/txdriver/compat/WebDiagnostics$Trace;->enabled:Z

    if-nez v0, :cond_5

    return-void

    .line 62
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "event=http_end id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/txdriver/compat/WebDiagnostics$Trace;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " request="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/txdriver/compat/WebDiagnostics$Trace;->request:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/txdriver/compat/WebDiagnostics$Trace;->method:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " scheme="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/txdriver/compat/WebDiagnostics$Trace;->scheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " host_key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/txdriver/compat/WebDiagnostics$Trace;->hostKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/txdriver/compat/WebDiagnostics$Trace;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " phase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/txdriver/compat/WebDiagnostics$Trace;->phase:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/txdriver/compat/WebDiagnostics$Trace;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " redirects="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/txdriver/compat/WebDiagnostics$Trace;->redirects:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " duration_ms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 64
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/txdriver/compat/WebDiagnostics$Trace;->started:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 65
    if-nez p1, :cond_96

    const-string v1, "ok"

    goto :goto_98

    :cond_96
    const-string v1, "failed"

    :goto_98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " causes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/txdriver/compat/WebDiagnostics;->causes(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 62
    # invokes: Lcom/txdriver/compat/WebDiagnostics;->write(Ljava/lang/String;)V
    invoke-static {p1}, Lcom/txdriver/compat/WebDiagnostics;->access$200(Ljava/lang/String;)V

    .line 66
    return-void
.end method
