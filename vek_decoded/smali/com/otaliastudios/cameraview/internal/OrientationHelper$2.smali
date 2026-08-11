.class Lcom/otaliastudios/cameraview/internal/OrientationHelper$2;
.super Ljava/lang/Object;
.source "OrientationHelper.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


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
.method constructor <init>(Lcom/otaliastudios/cameraview/internal/OrientationHelper;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/otaliastudios/cameraview/internal/OrientationHelper$2;->this$0:Lcom/otaliastudios/cameraview/internal/OrientationHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 2

    .line 86
    iget-object p1, p0, Lcom/otaliastudios/cameraview/internal/OrientationHelper$2;->this$0:Lcom/otaliastudios/cameraview/internal/OrientationHelper;

    invoke-static {p1}, Lcom/otaliastudios/cameraview/internal/OrientationHelper;->access$200(Lcom/otaliastudios/cameraview/internal/OrientationHelper;)I

    move-result p1

    .line 87
    iget-object v0, p0, Lcom/otaliastudios/cameraview/internal/OrientationHelper$2;->this$0:Lcom/otaliastudios/cameraview/internal/OrientationHelper;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/internal/OrientationHelper;->access$300(Lcom/otaliastudios/cameraview/internal/OrientationHelper;)I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 89
    iget-object v1, p0, Lcom/otaliastudios/cameraview/internal/OrientationHelper$2;->this$0:Lcom/otaliastudios/cameraview/internal/OrientationHelper;

    invoke-static {v1, v0}, Lcom/otaliastudios/cameraview/internal/OrientationHelper;->access$202(Lcom/otaliastudios/cameraview/internal/OrientationHelper;I)I

    sub-int p1, v0, p1

    .line 91
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/16 v1, 0xb4

    if-eq p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 92
    :goto_0
    iget-object v1, p0, Lcom/otaliastudios/cameraview/internal/OrientationHelper$2;->this$0:Lcom/otaliastudios/cameraview/internal/OrientationHelper;

    invoke-static {v1}, Lcom/otaliastudios/cameraview/internal/OrientationHelper;->access$100(Lcom/otaliastudios/cameraview/internal/OrientationHelper;)Lcom/otaliastudios/cameraview/internal/OrientationHelper$Callback;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/otaliastudios/cameraview/internal/OrientationHelper$Callback;->onDisplayOffsetChanged(IZ)V

    :cond_1
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
