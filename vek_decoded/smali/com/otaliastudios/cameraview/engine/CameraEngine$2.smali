.class Lcom/otaliastudios/cameraview/engine/CameraEngine$2;
.super Ljava/lang/Object;
.source "CameraEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/engine/CameraEngine;->handleException(Ljava/lang/Throwable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/engine/CameraEngine;

.field final synthetic val$throwable:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/engine/CameraEngine;Ljava/lang/Throwable;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine$2;->this$0:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    iput-object p2, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine$2;->val$throwable:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 224
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine$2;->val$throwable:Ljava/lang/Throwable;

    instance-of v1, v0, Lcom/otaliastudios/cameraview/CameraException;

    const-string v2, "EXCEPTION:"

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    .line 225
    check-cast v0, Lcom/otaliastudios/cameraview/CameraException;

    .line 226
    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/CameraException;->isUnrecoverable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    sget-object v1, Lcom/otaliastudios/cameraview/engine/CameraEngine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v2, v6, v5

    const-string v7, "Got CameraException. Since it is unrecoverable, executing destroy(false)."

    aput-object v7, v6, v4

    invoke-virtual {v1, v6}, Lcom/otaliastudios/cameraview/CameraLogger;->e([Ljava/lang/Object;)Ljava/lang/String;

    .line 229
    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine$2;->this$0:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v1, v5}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->destroy(Z)V

    .line 231
    :cond_0
    sget-object v1, Lcom/otaliastudios/cameraview/engine/CameraEngine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v5

    const-string v2, "Got CameraException. Dispatching to callback."

    aput-object v2, v3, v4

    invoke-virtual {v1, v3}, Lcom/otaliastudios/cameraview/CameraLogger;->e([Ljava/lang/Object;)Ljava/lang/String;

    .line 232
    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine$2;->this$0:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-static {v1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->access$200(Lcom/otaliastudios/cameraview/engine/CameraEngine;)Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;->dispatchError(Lcom/otaliastudios/cameraview/CameraException;)V

    return-void

    .line 234
    :cond_1
    sget-object v0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v2, v1, v5

    const-string v6, "Unexpected error! Executing destroy(true)."

    aput-object v6, v1, v4

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->e([Ljava/lang/Object;)Ljava/lang/String;

    .line 235
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine$2;->this$0:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v0, v4}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->destroy(Z)V

    .line 236
    sget-object v0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v2, v1, v5

    const-string v2, "Unexpected error! Throwing."

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->e([Ljava/lang/Object;)Ljava/lang/String;

    .line 237
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine$2;->val$throwable:Ljava/lang/Throwable;

    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_2

    .line 238
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 240
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine$2;->val$throwable:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
