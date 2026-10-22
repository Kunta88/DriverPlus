.class public Lcom/txdriver/compat/ManualBreakPolicyTest;
.super Ljava/lang/Object;
.source "ManualBreakPolicyTest.java"


# static fields
.field static checks:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static check(ZLjava/lang/String;)V
    .registers 2

    .line 4
    if-eqz p0, :cond_9

    sget p0, Lcom/txdriver/compat/ManualBreakPolicyTest;->checks:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lcom/txdriver/compat/ManualBreakPolicyTest;->checks:I

    return-void

    :cond_9
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public static main([Ljava/lang/String;)V
    .registers 6

    .line 6
    new-instance p0, Lcom/txdriver/compat/ManualBreakPolicy;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/txdriver/compat/ManualBreakPolicy;-><init>(Z)V

    .line 7
    invoke-virtual {p0}, Lcom/txdriver/compat/ManualBreakPolicy;->desired()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_19

    invoke-virtual {p0}, Lcom/txdriver/compat/ManualBreakPolicy;->note()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v1, 0x1

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    const-string v3, "normal initial state"

    invoke-static {v1, v3}, Lcom/txdriver/compat/ManualBreakPolicyTest;->check(ZLjava/lang/String;)V

    .line 8
    invoke-virtual {p0, v2}, Lcom/txdriver/compat/ManualBreakPolicy;->server(Z)V

    .line 9
    invoke-virtual {p0}, Lcom/txdriver/compat/ManualBreakPolicy;->desired()Z

    move-result v1

    xor-int/2addr v1, v2

    const-string v3, "unsolicited pause cannot change intent"

    invoke-static {v1, v3}, Lcom/txdriver/compat/ManualBreakPolicyTest;->check(ZLjava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lcom/txdriver/compat/ManualBreakPolicy;->note()Ljava/lang/String;

    move-result-object v1

    const-string v3, "\u0421\u0415\u0420\u0412\u0415\u0420 \u0421\u041e\u041e\u0411\u0429\u0418\u041b \u041f\u0415\u0420\u0415\u0420\u042b\u0412"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v3, "remote pause visible, not concealed"

    invoke-static {v1, v3}, Lcom/txdriver/compat/ManualBreakPolicyTest;->check(ZLjava/lang/String;)V

    .line 11
    invoke-virtual {p0, v0}, Lcom/txdriver/compat/ManualBreakPolicy;->server(Z)V

    invoke-virtual {p0}, Lcom/txdriver/compat/ManualBreakPolicy;->note()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const-string v3, "matching normal state"

    invoke-static {v1, v3}, Lcom/txdriver/compat/ManualBreakPolicyTest;->check(ZLjava/lang/String;)V

    .line 12
    invoke-virtual {p0, v2}, Lcom/txdriver/compat/ManualBreakPolicy;->manual(Z)V

    invoke-virtual {p0}, Lcom/txdriver/compat/ManualBreakPolicy;->desired()Z

    move-result v1

    const-string v3, "driver starts break immediately"

    invoke-static {v1, v3}, Lcom/txdriver/compat/ManualBreakPolicyTest;->check(ZLjava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Lcom/txdriver/compat/ManualBreakPolicy;->note()Ljava/lang/String;

    move-result-object v1

    const-string v3, "\u0435\u0449\u0451 \u043d\u0435 \u043f\u043e\u0434\u0442\u0432\u0435\u0440\u0434\u0438\u043b"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v4, "pending not falsely confirmed"

    invoke-static {v1, v4}, Lcom/txdriver/compat/ManualBreakPolicyTest;->check(ZLjava/lang/String;)V

    .line 14
    invoke-virtual {p0, v2}, Lcom/txdriver/compat/ManualBreakPolicy;->server(Z)V

    invoke-virtual {p0}, Lcom/txdriver/compat/ManualBreakPolicy;->desired()Z

    move-result v1

    if-eqz v1, :cond_7d

    invoke-virtual {p0}, Lcom/txdriver/compat/ManualBreakPolicy;->note()Ljava/lang/String;

    move-result-object v1

    const-string v4, "\u0412\u041a\u041b\u042e\u0427\u0401\u041d \u0412\u0420\u0423\u0427\u041d\u0423\u042e"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7d

    const/4 v1, 0x1

    goto :goto_7e

    :cond_7d
    const/4 v1, 0x0

    :goto_7e
    const-string v4, "manual pause acknowledged"

    invoke-static {v1, v4}, Lcom/txdriver/compat/ManualBreakPolicyTest;->check(ZLjava/lang/String;)V

    .line 15
    invoke-virtual {p0, v0}, Lcom/txdriver/compat/ManualBreakPolicy;->server(Z)V

    invoke-virtual {p0}, Lcom/txdriver/compat/ManualBreakPolicy;->desired()Z

    move-result v1

    const-string v4, "remote resume cannot clear intent"

    invoke-static {v1, v4}, Lcom/txdriver/compat/ManualBreakPolicyTest;->check(ZLjava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Lcom/txdriver/compat/ManualBreakPolicy;->note()Ljava/lang/String;

    move-result-object v1

    const-string v4, "\u0441\u0435\u0440\u0432\u0435\u0440 \u0441\u043e\u043e\u0431\u0449\u0438\u043b \u0441\u043d\u044f\u0442\u0438\u0435"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v4, "remote resume warning"

    invoke-static {v1, v4}, Lcom/txdriver/compat/ManualBreakPolicyTest;->check(ZLjava/lang/String;)V

    .line 17
    invoke-virtual {p0, v0}, Lcom/txdriver/compat/ManualBreakPolicy;->automaticIgnored(Z)V

    invoke-virtual {p0}, Lcom/txdriver/compat/ManualBreakPolicy;->desired()Z

    move-result v1

    const-string v4, "order/reset cannot clear break"

    invoke-static {v1, v4}, Lcom/txdriver/compat/ManualBreakPolicyTest;->check(ZLjava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Lcom/txdriver/compat/ManualBreakPolicy;->reconnect()V

    invoke-virtual {p0}, Lcom/txdriver/compat/ManualBreakPolicy;->desired()Z

    move-result v1

    const-string v4, "reconnect preserves break"

    invoke-static {v1, v4}, Lcom/txdriver/compat/ManualBreakPolicyTest;->check(ZLjava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Lcom/txdriver/compat/ManualBreakPolicy;->note()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v3, "old server state invalidated"

    invoke-static {v1, v3}, Lcom/txdriver/compat/ManualBreakPolicyTest;->check(ZLjava/lang/String;)V

    .line 20
    invoke-virtual {p0, v0}, Lcom/txdriver/compat/ManualBreakPolicy;->server(Z)V

    invoke-virtual {p0, v0}, Lcom/txdriver/compat/ManualBreakPolicy;->server(Z)V

    invoke-virtual {p0}, Lcom/txdriver/compat/ManualBreakPolicy;->desired()Z

    move-result v1

    const-string v3, "repeated server resume harmless"

    invoke-static {v1, v3}, Lcom/txdriver/compat/ManualBreakPolicyTest;->check(ZLjava/lang/String;)V

    .line 21
    invoke-virtual {p0, v0}, Lcom/txdriver/compat/ManualBreakPolicy;->manual(Z)V

    invoke-virtual {p0}, Lcom/txdriver/compat/ManualBreakPolicy;->desired()Z

    move-result v1

    xor-int/2addr v1, v2

    const-string v3, "only driver ends break"

    invoke-static {v1, v3}, Lcom/txdriver/compat/ManualBreakPolicyTest;->check(ZLjava/lang/String;)V

    .line 22
    invoke-virtual {p0, v0}, Lcom/txdriver/compat/ManualBreakPolicy;->server(Z)V

    invoke-virtual {p0}, Lcom/txdriver/compat/ManualBreakPolicy;->note()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const-string v3, "resume acknowledged"

    invoke-static {v1, v3}, Lcom/txdriver/compat/ManualBreakPolicyTest;->check(ZLjava/lang/String;)V

    .line 23
    invoke-virtual {p0, v2}, Lcom/txdriver/compat/ManualBreakPolicy;->automaticIgnored(Z)V

    invoke-virtual {p0}, Lcom/txdriver/compat/ManualBreakPolicy;->desired()Z

    move-result v1

    xor-int/2addr v1, v2

    const-string v3, "automatic pause ignored"

    invoke-static {v1, v3}, Lcom/txdriver/compat/ManualBreakPolicyTest;->check(ZLjava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Lcom/txdriver/compat/ManualBreakPolicy;->reconnect()V

    invoke-virtual {p0}, Lcom/txdriver/compat/ManualBreakPolicy;->desired()Z

    move-result v1

    if-nez v1, :cond_111

    invoke-virtual {p0}, Lcom/txdriver/compat/ManualBreakPolicy;->note()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_111

    const/4 p0, 0x1

    goto :goto_112

    :cond_111
    const/4 p0, 0x0

    :goto_112
    const-string v1, "idle reconnect adds no fake break"

    invoke-static {p0, v1}, Lcom/txdriver/compat/ManualBreakPolicyTest;->check(ZLjava/lang/String;)V

    .line 25
    new-instance p0, Lcom/txdriver/compat/ManualBreakPolicy;

    invoke-direct {p0, v2}, Lcom/txdriver/compat/ManualBreakPolicy;-><init>(Z)V

    .line 26
    invoke-virtual {p0}, Lcom/txdriver/compat/ManualBreakPolicy;->desired()Z

    move-result v1

    const-string v2, "saved break restored"

    invoke-static {v1, v2}, Lcom/txdriver/compat/ManualBreakPolicyTest;->check(ZLjava/lang/String;)V

    .line 27
    invoke-virtual {p0}, Lcom/txdriver/compat/ManualBreakPolicy;->reconnect()V

    invoke-virtual {p0, v0}, Lcom/txdriver/compat/ManualBreakPolicy;->server(Z)V

    invoke-virtual {p0}, Lcom/txdriver/compat/ManualBreakPolicy;->desired()Z

    move-result p0

    const-string v0, "saved break protected after process restart"

    invoke-static {p0, v0}, Lcom/txdriver/compat/ManualBreakPolicyTest;->check(ZLjava/lang/String;)V

    .line 28
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ManualBreakPolicyTest: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/txdriver/compat/ManualBreakPolicyTest;->checks:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " checks passed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 29
    return-void
.end method
