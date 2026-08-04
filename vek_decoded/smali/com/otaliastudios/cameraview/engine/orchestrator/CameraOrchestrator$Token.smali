.class public Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$Token;
.super Ljava/lang/Object;
.source "CameraOrchestrator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Token"
.end annotation


# instance fields
.field public final name:Ljava/lang/String;

.field public final task:Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/Task<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/google/android/gms/tasks/Task;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tasks/Task<",
            "*>;)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$Token;->name:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$Token;->task:Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/gms/tasks/Task;Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$1;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$Token;-><init>(Ljava/lang/String;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 54
    instance-of v0, p1, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$Token;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$Token;

    iget-object p1, p1, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$Token;->name:Ljava/lang/String;

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$Token;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
