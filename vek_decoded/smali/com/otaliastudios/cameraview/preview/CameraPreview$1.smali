.class Lcom/otaliastudios/cameraview/preview/CameraPreview$1;
.super Ljava/lang/Object;
.source "CameraPreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/preview/CameraPreview;->onDestroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/preview/CameraPreview;

.field final synthetic val$task:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/preview/CameraPreview;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/otaliastudios/cameraview/preview/CameraPreview$1;->this$0:Lcom/otaliastudios/cameraview/preview/CameraPreview;

    iput-object p2, p0, Lcom/otaliastudios/cameraview/preview/CameraPreview$1;->val$task:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/otaliastudios/cameraview/preview/CameraPreview$1;->this$0:Lcom/otaliastudios/cameraview/preview/CameraPreview;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/preview/CameraPreview;->onDestroyView()V

    .line 272
    iget-object v0, p0, Lcom/otaliastudios/cameraview/preview/CameraPreview$1;->val$task:Lcom/google/android/gms/tasks/TaskCompletionSource;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method
