.class Lcom/txdriver/ui/activity/BaseActivity$7;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/activity/BaseActivity;->checkExternalStoragePermission()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/activity/BaseActivity;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/activity/BaseActivity;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/txdriver/ui/activity/BaseActivity$7;->this$0:Lcom/txdriver/ui/activity/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 211
    iget-object p1, p0, Lcom/txdriver/ui/activity/BaseActivity$7;->this$0:Lcom/txdriver/ui/activity/BaseActivity;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, p2, v0

    const/16 v0, 0x3ea

    invoke-static {p1, p2, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method
