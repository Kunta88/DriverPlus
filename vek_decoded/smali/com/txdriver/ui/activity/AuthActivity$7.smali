.class Lcom/txdriver/ui/activity/AuthActivity$7;
.super Ljava/lang/Object;
.source "AuthActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/activity/AuthActivity;->checkActionOverlayPermission()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/activity/AuthActivity;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/activity/AuthActivity;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lcom/txdriver/ui/activity/AuthActivity$7;->this$0:Lcom/txdriver/ui/activity/AuthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 322
    new-instance p1, Landroid/content/Intent;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "package:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/txdriver/ui/activity/AuthActivity$7;->this$0:Lcom/txdriver/ui/activity/AuthActivity;

    invoke-virtual {v0}, Lcom/txdriver/ui/activity/AuthActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v0, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {p1, v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 323
    iget-object p2, p0, Lcom/txdriver/ui/activity/AuthActivity$7;->this$0:Lcom/txdriver/ui/activity/AuthActivity;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/txdriver/ui/activity/AuthActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 324
    invoke-static {}, Lru/yandex/core/CoreApplication;->getActivity()Lru/yandex/core/KDActivity;

    move-result-object p1

    invoke-virtual {p1}, Lru/yandex/core/KDActivity;->onBackPressed()V

    return-void
.end method
