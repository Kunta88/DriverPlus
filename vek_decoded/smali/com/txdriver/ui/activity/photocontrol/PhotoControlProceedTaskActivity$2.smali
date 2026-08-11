.class Lcom/txdriver/ui/activity/photocontrol/PhotoControlProceedTaskActivity$2;
.super Ljava/lang/Object;
.source "PhotoControlProceedTaskActivity.java"

# interfaces
.implements Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter$OnImageClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/activity/photocontrol/PhotoControlProceedTaskActivity;->initCameraPreviews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/activity/photocontrol/PhotoControlProceedTaskActivity;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/activity/photocontrol/PhotoControlProceedTaskActivity;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/txdriver/ui/activity/photocontrol/PhotoControlProceedTaskActivity$2;->this$0:Lcom/txdriver/ui/activity/photocontrol/PhotoControlProceedTaskActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageClick(I)V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/txdriver/ui/activity/photocontrol/PhotoControlProceedTaskActivity$2;->this$0:Lcom/txdriver/ui/activity/photocontrol/PhotoControlProceedTaskActivity;

    invoke-static {v0}, Lcom/txdriver/ui/activity/photocontrol/PhotoControlProceedTaskActivity;->access$000(Lcom/txdriver/ui/activity/photocontrol/PhotoControlProceedTaskActivity;)Lcom/txdriver/json/PhotoControlTask;

    move-result-object v1

    iget-object v1, v1, Lcom/txdriver/json/PhotoControlTask;->photoControlImages:[Lcom/txdriver/json/PhotoControlImage;

    invoke-static {v0, v1, p1}, Lcom/txdriver/ui/activity/photocontrol/PhotoControlProceedTaskActivity;->access$100(Lcom/txdriver/ui/activity/photocontrol/PhotoControlProceedTaskActivity;[Lcom/txdriver/json/PhotoControlImage;I)V

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PHOTO_POSITION"

    invoke-static {v0, p1}, Lcom/activeandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
