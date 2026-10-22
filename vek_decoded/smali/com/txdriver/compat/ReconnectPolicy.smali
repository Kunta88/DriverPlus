.class public final Lcom/txdriver/compat/ReconnectPolicy;
.super Ljava/lang/Object;
.source "ReconnectPolicy.java"


# instance fields
.field private lastAttempt:J

.field private lost:Z

.field private network:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-wide/16 v0, -0x2710

    iput-wide v0, p0, Lcom/txdriver/compat/ReconnectPolicy;->lastAttempt:J

    return-void
.end method


# virtual methods
.method public available(Ljava/lang/String;)Z
    .registers 4

    .line 9
    iget-object v0, p0, Lcom/txdriver/compat/ReconnectPolicy;->network:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/txdriver/compat/ReconnectPolicy;->network:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/txdriver/compat/ReconnectPolicy;->lost:Z

    if-eqz v0, :cond_13

    :cond_11
    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    .line 10
    :goto_14
    iput-object p1, p0, Lcom/txdriver/compat/ReconnectPolicy;->network:Ljava/lang/String;

    .line 11
    iput-boolean v1, p0, Lcom/txdriver/compat/ReconnectPolicy;->lost:Z

    .line 12
    return v0
.end method

.method public delay(J)J
    .registers 5

    .line 15
    iget-wide v0, p0, Lcom/txdriver/compat/ReconnectPolicy;->lastAttempt:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x1388

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x2ee

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public lost(Ljava/lang/String;)V
    .registers 3

    .line 14
    iget-object v0, p0, Lcom/txdriver/compat/ReconnectPolicy;->network:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/txdriver/compat/ReconnectPolicy;->lost:Z

    :cond_b
    return-void
.end method

.method public ready(J)Z
    .registers 8

    .line 17
    iget-boolean v0, p0, Lcom/txdriver/compat/ReconnectPolicy;->lost:Z

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/txdriver/compat/ReconnectPolicy;->network:Ljava/lang/String;

    if-eqz v0, :cond_17

    iget-wide v0, p0, Lcom/txdriver/compat/ReconnectPolicy;->lastAttempt:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x1388

    cmp-long v4, v0, v2

    if-gez v4, :cond_13

    goto :goto_17

    .line 18
    :cond_13
    iput-wide p1, p0, Lcom/txdriver/compat/ReconnectPolicy;->lastAttempt:J

    .line 19
    const/4 p1, 0x1

    return p1

    .line 17
    :cond_17
    :goto_17
    const/4 p1, 0x0

    return p1
.end method
