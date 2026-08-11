.class Lcom/txdriver/ui/activity/LaunchActivity$4;
.super Ljava/lang/Object;
.source "LaunchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/activity/LaunchActivity;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field clickCount:I

.field final synthetic this$0:Lcom/txdriver/ui/activity/LaunchActivity;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/activity/LaunchActivity;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/txdriver/ui/activity/LaunchActivity$4;->this$0:Lcom/txdriver/ui/activity/LaunchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 151
    iget p1, p0, Lcom/txdriver/ui/activity/LaunchActivity$4;->clickCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/txdriver/ui/activity/LaunchActivity$4;->clickCount:I

    const/16 v1, 0xa

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    .line 153
    iput p1, p0, Lcom/txdriver/ui/activity/LaunchActivity$4;->clickCount:I

    .line 154
    iget-object v1, p0, Lcom/txdriver/ui/activity/LaunchActivity$4;->this$0:Lcom/txdriver/ui/activity/LaunchActivity;

    iget-object v1, v1, Lcom/txdriver/ui/activity/LaunchActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/txdriver/preferences/Preferences;->isDevMode()Z

    move-result v1

    xor-int/2addr v1, v0

    .line 155
    iget-object v2, p0, Lcom/txdriver/ui/activity/LaunchActivity$4;->this$0:Lcom/txdriver/ui/activity/LaunchActivity;

    iget-object v2, v2, Lcom/txdriver/ui/activity/LaunchActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v2}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/txdriver/preferences/Preferences;->setDevMode(Z)V

    .line 156
    iget-object v2, p0, Lcom/txdriver/ui/activity/LaunchActivity$4;->this$0:Lcom/txdriver/ui/activity/LaunchActivity;

    iget-object v2, v2, Lcom/txdriver/ui/activity/LaunchActivity;->app:Lcom/txdriver/App;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, p1

    const-string p1, "Dev mode: %b"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/txdriver/utils/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
