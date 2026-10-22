.class public final Lcom/txdriver/compat/ChatDraft;
.super Ljava/lang/Object;
.source "ChatDraft.java"

# interfaces
.implements Landroid/text/TextWatcher;


# static fields
.field private static app:Landroid/content/Context;

.field private static field:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field

.field private static final main:Landroid/os/Handler;

.field private static pending:Ljava/lang/String;

.field private static pendingScope:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 16
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/txdriver/compat/ChatDraft;->main:Landroid/os/Handler;

    .line 17
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/txdriver/compat/ChatDraft;->field:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .registers 1

    .line 14
    sget-object v0, Lcom/txdriver/compat/ChatDraft;->app:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/ref/WeakReference;
    .registers 1

    .line 14
    sget-object v0, Lcom/txdriver/compat/ChatDraft;->field:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$200()Landroid/content/SharedPreferences;
    .registers 1

    .line 14
    invoke-static {}, Lcom/txdriver/compat/ChatDraft;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Ljava/lang/String;)V
    .registers 1

    .line 14
    invoke-static {p0}, Lcom/txdriver/compat/ChatDraft;->notice(Ljava/lang/String;)V

    return-void
.end method

.method public static bind(Landroid/widget/EditText;)V
    .registers 5

    .line 23
    sget-object v0, Lcom/txdriver/compat/ChatDraft;->app:Landroid/content/Context;

    if-nez v0, :cond_b

    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/txdriver/compat/ChatDraft;->install(Landroid/content/Context;)V

    .line 24
    :cond_b
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/txdriver/compat/ChatDraft;->field:Ljava/lang/ref/WeakReference;

    .line 25
    sget-object v0, Lcom/txdriver/compat/ChatDraft;->app:Landroid/content/Context;

    invoke-static {}, Lcom/txdriver/compat/ChatDraft;->prefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "draft"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/txdriver/compat/SecureStore;->decode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_37

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_37

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 27
    :cond_37
    new-instance v0, Lcom/txdriver/compat/ChatDraft;

    invoke-direct {v0}, Lcom/txdriver/compat/ChatDraft;-><init>()V

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 28
    return-void
.end method

.method public static declared-synchronized disconnected()V
    .registers 2

    const-class v0, Lcom/txdriver/compat/ChatDraft;

    monitor-enter v0

    .line 58
    :try_start_3
    sget-object v1, Lcom/txdriver/compat/ChatDraft;->pending:Ljava/lang/String;

    if-eqz v1, :cond_f

    const/4 v1, 0x0

    sput-object v1, Lcom/txdriver/compat/ChatDraft;->pending:Ljava/lang/String;

    const-string v1, "\u0421\u0432\u044f\u0437\u044c \u043f\u043e\u0442\u0435\u0440\u044f\u043d\u0430 \u2014 \u0442\u0435\u043a\u0441\u0442 \u0441\u043e\u0445\u0440\u0430\u043d\u0451\u043d, \u043f\u043e\u0432\u0442\u043e\u0440\u0438\u0442\u0435 \u043e\u0442\u043f\u0440\u0430\u0432\u043a\u0443"

    invoke-static {v1}, Lcom/txdriver/compat/ChatDraft;->notice(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_11

    .line 59
    :cond_f
    monitor-exit v0

    return-void

    .line 57
    :catchall_11
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static install(Landroid/content/Context;)V
    .registers 1

    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/txdriver/compat/ChatDraft;->app:Landroid/content/Context;

    return-void
.end method

.method private static notice(Ljava/lang/String;)V
    .registers 3

    .line 61
    sget-object v0, Lcom/txdriver/compat/ChatDraft;->app:Landroid/content/Context;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/txdriver/compat/ChatDraft;->main:Landroid/os/Handler;

    new-instance v1, Lcom/txdriver/compat/ChatDraft$2;

    invoke-direct {v1, p0}, Lcom/txdriver/compat/ChatDraft$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 62
    :cond_e
    return-void
.end method

.method private static prefs()Landroid/content/SharedPreferences;
    .registers 3

    .line 21
    sget-object v0, Lcom/txdriver/compat/ChatDraft;->app:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chat_draft_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/txdriver/compat/ChatDraft;->app:Landroid/content/Context;

    invoke-static {v2}, Lcom/txdriver/compat/EventGuard;->scope(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized send(Lcom/txdriver/socket/Client;Lcom/txdriver/socket/Packet;Ljava/lang/String;)Z
    .registers 6

    const-class v0, Lcom/txdriver/compat/ChatDraft;

    monitor-enter v0

    .line 37
    :try_start_3
    sget-object v1, Lcom/txdriver/compat/ChatDraft;->pending:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_f

    const-string p0, "\u041f\u0440\u0435\u0434\u044b\u0434\u0443\u0449\u0435\u0435 \u0441\u043e\u043e\u0431\u0449\u0435\u043d\u0438\u0435 \u0435\u0449\u0451 \u043e\u0442\u043f\u0440\u0430\u0432\u043b\u044f\u0435\u0442\u0441\u044f"

    invoke-static {p0}, Lcom/txdriver/compat/ChatDraft;->notice(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_3e

    monitor-exit v0

    return v2

    .line 38
    :cond_f
    :try_start_f
    invoke-virtual {p0}, Lcom/txdriver/socket/Client;->isSocketConnected()Z

    move-result v1

    if-nez v1, :cond_1c

    const-string p0, "\u041d\u0435\u0442 \u0441\u0432\u044f\u0437\u0438 \u2014 \u0442\u0435\u043a\u0441\u0442 \u0441\u043e\u0445\u0440\u0430\u043d\u0451\u043d"

    invoke-static {p0}, Lcom/txdriver/compat/ChatDraft;->notice(Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_3e

    monitor-exit v0

    return v2

    .line 39
    :cond_1c
    :try_start_1c
    sput-object p2, Lcom/txdriver/compat/ChatDraft;->pending:Ljava/lang/String;

    .line 40
    sget-object p2, Lcom/txdriver/compat/ChatDraft;->app:Landroid/content/Context;

    invoke-static {p2}, Lcom/txdriver/compat/EventGuard;->scope(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/txdriver/compat/ChatDraft;->pendingScope:Ljava/lang/String;

    .line 41
    invoke-virtual {p0, p1}, Lcom/txdriver/socket/Client;->trySend(Lcom/txdriver/socket/Packet;)Z

    move-result p0

    if-nez p0, :cond_36

    const/4 p0, 0x0

    sput-object p0, Lcom/txdriver/compat/ChatDraft;->pending:Ljava/lang/String;

    const-string p0, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u043e\u0442\u043f\u0440\u0430\u0432\u0438\u0442\u044c \u2014 \u0442\u0435\u043a\u0441\u0442 \u0441\u043e\u0445\u0440\u0430\u043d\u0451\u043d"

    invoke-static {p0}, Lcom/txdriver/compat/ChatDraft;->notice(Ljava/lang/String;)V
    :try_end_34
    .catchall {:try_start_1c .. :try_end_34} :catchall_3e

    monitor-exit v0

    return v2

    .line 42
    :cond_36
    :try_start_36
    const-string p0, "\u041e\u0442\u043f\u0440\u0430\u0432\u043b\u044f\u0435\u0442\u0441\u044f\u2026"

    invoke-static {p0}, Lcom/txdriver/compat/ChatDraft;->notice(Ljava/lang/String;)V
    :try_end_3b
    .catchall {:try_start_36 .. :try_end_3b} :catchall_3e

    monitor-exit v0

    const/4 p0, 0x1

    return p0

    .line 36
    :catchall_3e
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static sent(Ljava/lang/String;)V
    .registers 4

    .line 46
    const-class v0, Lcom/txdriver/compat/ChatDraft;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/txdriver/compat/ChatDraft;->pending:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    monitor-exit v0

    return-void

    :cond_d
    sget-object v1, Lcom/txdriver/compat/ChatDraft;->pendingScope:Ljava/lang/String;

    const/4 v2, 0x0

    sput-object v2, Lcom/txdriver/compat/ChatDraft;->pending:Ljava/lang/String;

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_1e

    .line 47
    sget-object v0, Lcom/txdriver/compat/ChatDraft;->main:Landroid/os/Handler;

    new-instance v2, Lcom/txdriver/compat/ChatDraft$1;

    invoke-direct {v2, v1, p0}, Lcom/txdriver/compat/ChatDraft$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 56
    return-void

    .line 46
    :catchall_1e
    move-exception p0

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw p0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    .line 35
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 29
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 32
    :try_start_0
    invoke-static {}, Lcom/txdriver/compat/ChatDraft;->prefs()Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string p3, "draft"

    sget-object p4, Lcom/txdriver/compat/ChatDraft;->app:Landroid/content/Context;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Lcom/txdriver/compat/SecureStore;->encode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1b
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_1b} :catch_1c

    .line 33
    goto :goto_22

    :catch_1c
    move-exception p1

    const-string p1, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u0441\u043e\u0445\u0440\u0430\u043d\u0438\u0442\u044c \u0447\u0435\u0440\u043d\u043e\u0432\u0438\u043a \u2014 \u043d\u0435 \u0437\u0430\u043a\u0440\u044b\u0432\u0430\u0439\u0442\u0435 \u0447\u0430\u0442"

    invoke-static {p1}, Lcom/txdriver/compat/ChatDraft;->notice(Ljava/lang/String;)V

    .line 34
    :goto_22
    return-void
.end method
