.class Lcom/txdriver/ui/activity/AuthActivity$6;
.super Ljava/lang/Object;
.source "AuthActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/activity/AuthActivity;->checkBackgroundLocation()V
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

    .line 304
    iput-object p1, p0, Lcom/txdriver/ui/activity/AuthActivity$6;->this$0:Lcom/txdriver/ui/activity/AuthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 308
    iget-object p1, p0, Lcom/txdriver/ui/activity/AuthActivity$6;->this$0:Lcom/txdriver/ui/activity/AuthActivity;

    invoke-static {p1}, Lcom/txdriver/compat/CompatIntents;->requestBackground(Landroid/app/Activity;)V

    return-void
.end method
