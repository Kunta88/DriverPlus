.class Lcom/txdriver/compat/ChatDraft$1;
.super Ljava/lang/Object;
.source "ChatDraft.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/compat/ChatDraft;->sent(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$scope:Ljava/lang/String;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lcom/txdriver/compat/ChatDraft$1;->val$scope:Ljava/lang/String;

    iput-object p2, p0, Lcom/txdriver/compat/ChatDraft$1;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 48
    iget-object v0, p0, Lcom/txdriver/compat/ChatDraft$1;->val$scope:Ljava/lang/String;

    # getter for: Lcom/txdriver/compat/ChatDraft;->app:Landroid/content/Context;
    invoke-static {}, Lcom/txdriver/compat/ChatDraft;->access$000()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/txdriver/compat/EventGuard;->scope(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "draft"

    if-nez v0, :cond_3c

    .line 49
    # getter for: Lcom/txdriver/compat/ChatDraft;->app:Landroid/content/Context;
    invoke-static {}, Lcom/txdriver/compat/ChatDraft;->access$000()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chat_draft_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/txdriver/compat/ChatDraft$1;->val$scope:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    .line 51
    :cond_3c
    # getter for: Lcom/txdriver/compat/ChatDraft;->field:Ljava/lang/ref/WeakReference;
    invoke-static {}, Lcom/txdriver/compat/ChatDraft;->access$100()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 52
    const-string v2, ""

    if-eqz v0, :cond_5a

    iget-object v3, p0, Lcom/txdriver/compat/ChatDraft$1;->val$text:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5a

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_81

    .line 53
    :cond_5a
    iget-object v0, p0, Lcom/txdriver/compat/ChatDraft$1;->val$text:Ljava/lang/String;

    # getter for: Lcom/txdriver/compat/ChatDraft;->app:Landroid/content/Context;
    invoke-static {}, Lcom/txdriver/compat/ChatDraft;->access$000()Landroid/content/Context;

    move-result-object v3

    # invokes: Lcom/txdriver/compat/ChatDraft;->prefs()Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/txdriver/compat/ChatDraft;->access$200()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/txdriver/compat/SecureStore;->decode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_81

    # invokes: Lcom/txdriver/compat/ChatDraft;->prefs()Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/txdriver/compat/ChatDraft;->access$200()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 54
    :cond_81
    :goto_81
    const-string v0, "\u041f\u0435\u0440\u0435\u0434\u0430\u043d\u043e \u0432 \u0441\u043e\u0435\u0434\u0438\u043d\u0435\u043d\u0438\u0435"

    # invokes: Lcom/txdriver/compat/ChatDraft;->notice(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/txdriver/compat/ChatDraft;->access$300(Ljava/lang/String;)V

    .line 55
    return-void
.end method
