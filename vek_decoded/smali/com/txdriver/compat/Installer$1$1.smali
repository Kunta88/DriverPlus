.class Lcom/txdriver/compat/Installer$1$1;
.super Ljava/lang/Object;
.source "Installer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/compat/Installer$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/compat/Installer$1;

.field final synthetic val$app:Landroid/content/Context;

.field final synthetic val$content:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/txdriver/compat/Installer$1;Landroid/content/Context;Landroid/net/Uri;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 39
    iput-object p2, p0, Lcom/txdriver/compat/Installer$1$1;->val$app:Landroid/content/Context;

    iput-object p3, p0, Lcom/txdriver/compat/Installer$1$1;->val$content:Landroid/net/Uri;

    iput-object p1, p0, Lcom/txdriver/compat/Installer$1$1;->this$0:Lcom/txdriver/compat/Installer$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 40
    :try_start_0
    invoke-static {}, Lcom/txdriver/db/Order;->getCurrentOrder()Lcom/txdriver/db/Order;

    move-result-object v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/txdriver/compat/Installer$1$1;->val$app:Landroid/content/Context;

    check-cast v0, Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getTaximeter()Lcom/txdriver/taximeter/Taximeter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/taximeter/Taximeter;->getStatus()I

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_30

    .line 41
    :cond_15
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/txdriver/compat/Installer$1$1;->val$content:Landroid/net/Uri;

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 42
    const v1, 0x10000001

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/txdriver/compat/Installer$1$1;->val$app:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2f
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_2f} :catch_31

    .line 43
    goto :goto_3e

    .line 40
    :cond_30
    :goto_30
    return-void

    .line 43
    :catch_31
    move-exception v0

    iget-object v0, p0, Lcom/txdriver/compat/Installer$1$1;->val$app:Landroid/content/Context;

    const-string v1, "\u041e\u0442\u043a\u0440\u043e\u0439\u0442\u0435 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435 \u0434\u043b\u044f \u0443\u0441\u0442\u0430\u043d\u043e\u0432\u043a\u0438 \u043e\u0431\u043d\u043e\u0432\u043b\u0435\u043d\u0438\u044f"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_3e
    return-void
.end method
