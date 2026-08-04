.class Lcom/otaliastudios/cameraview/internal/OrientationHelper$1;
.super Landroid/view/OrientationEventListener;
.source "OrientationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/internal/OrientationHelper;-><init>(Landroid/content/Context;Lcom/otaliastudios/cameraview/internal/OrientationHelper$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/internal/OrientationHelper;


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/internal/OrientationHelper;Landroid/content/Context;I)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/otaliastudios/cameraview/internal/OrientationHelper$1;->this$0:Lcom/otaliastudios/cameraview/internal/OrientationHelper;

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 62
    iget-object p1, p0, Lcom/otaliastudios/cameraview/internal/OrientationHelper$1;->this$0:Lcom/otaliastudios/cameraview/internal/OrientationHelper;

    invoke-static {p1}, Lcom/otaliastudios/cameraview/internal/OrientationHelper;->access$000(Lcom/otaliastudios/cameraview/internal/OrientationHelper;)I

    move-result p1

    if-eq p1, v0, :cond_4

    iget-object p1, p0, Lcom/otaliastudios/cameraview/internal/OrientationHelper$1;->this$0:Lcom/otaliastudios/cameraview/internal/OrientationHelper;

    invoke-static {p1}, Lcom/otaliastudios/cameraview/internal/OrientationHelper;->access$000(Lcom/otaliastudios/cameraview/internal/OrientationHelper;)I

    move-result p1

    move v1, p1

    goto :goto_0

    :cond_0
    const/16 v0, 0x13b

    if-ge p1, v0, :cond_4

    const/16 v2, 0x2d

    if-ge p1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v3, 0x87

    if-lt p1, v2, :cond_2

    if-ge p1, v3, :cond_2

    const/16 v1, 0x5a

    goto :goto_0

    :cond_2
    const/16 v2, 0xe1

    if-lt p1, v3, :cond_3

    if-ge p1, v2, :cond_3

    const/16 v1, 0xb4

    goto :goto_0

    :cond_3
    if-lt p1, v2, :cond_4

    if-ge p1, v0, :cond_4

    const/16 v1, 0x10e

    .line 73
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/otaliastudios/cameraview/internal/OrientationHelper$1;->this$0:Lcom/otaliastudios/cameraview/internal/OrientationHelper;

    invoke-static {p1}, Lcom/otaliastudios/cameraview/internal/OrientationHelper;->access$000(Lcom/otaliastudios/cameraview/internal/OrientationHelper;)I

    move-result p1

    if-eq v1, p1, :cond_5

    .line 74
    iget-object p1, p0, Lcom/otaliastudios/cameraview/internal/OrientationHelper$1;->this$0:Lcom/otaliastudios/cameraview/internal/OrientationHelper;

    invoke-static {p1, v1}, Lcom/otaliastudios/cameraview/internal/OrientationHelper;->access$002(Lcom/otaliastudios/cameraview/internal/OrientationHelper;I)I

    .line 75
    iget-object p1, p0, Lcom/otaliastudios/cameraview/internal/OrientationHelper$1;->this$0:Lcom/otaliastudios/cameraview/internal/OrientationHelper;

    invoke-static {p1}, Lcom/otaliastudios/cameraview/internal/OrientationHelper;->access$100(Lcom/otaliastudios/cameraview/internal/OrientationHelper;)Lcom/otaliastudios/cameraview/internal/OrientationHelper$Callback;

    move-result-object p1

    iget-object v0, p0, Lcom/otaliastudios/cameraview/internal/OrientationHelper$1;->this$0:Lcom/otaliastudios/cameraview/internal/OrientationHelper;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/internal/OrientationHelper;->access$000(Lcom/otaliastudios/cameraview/internal/OrientationHelper;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/otaliastudios/cameraview/internal/OrientationHelper$Callback;->onDeviceOrientationChanged(I)V

    :cond_5
    return-void
.end method
