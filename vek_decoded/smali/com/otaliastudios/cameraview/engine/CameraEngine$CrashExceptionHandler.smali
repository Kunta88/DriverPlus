.class Lcom/otaliastudios/cameraview/engine/CameraEngine$CrashExceptionHandler;
.super Ljava/lang/Object;
.source "CameraEngine.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/otaliastudios/cameraview/engine/CameraEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CrashExceptionHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/engine/CameraEngine;


# direct methods
.method private constructor <init>(Lcom/otaliastudios/cameraview/engine/CameraEngine;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine$CrashExceptionHandler;->this$0:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/otaliastudios/cameraview/engine/CameraEngine;Lcom/otaliastudios/cameraview/engine/CameraEngine$1;)V
    .locals 0

    .line 177
    invoke-direct {p0, p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine$CrashExceptionHandler;-><init>(Lcom/otaliastudios/cameraview/engine/CameraEngine;)V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .line 180
    iget-object p1, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine$CrashExceptionHandler;->this$0:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->access$100(Lcom/otaliastudios/cameraview/engine/CameraEngine;Ljava/lang/Throwable;Z)V

    return-void
.end method
