.class public Lcom/otaliastudios/cameraview/internal/OrientationHelper;
.super Ljava/lang/Object;
.source "OrientationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/otaliastudios/cameraview/internal/OrientationHelper$Callback;
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/otaliastudios/cameraview/internal/OrientationHelper$Callback;

.field private final mContext:Landroid/content/Context;

.field private mDeviceOrientation:I

.field final mDeviceOrientationListener:Landroid/view/OrientationEventListener;

.field private mDisplayOffset:I

.field final mDisplayOffsetListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mEnabled:Z

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/otaliastudios/cameraview/internal/OrientationHelper$Callback;)V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/otaliastudios/cameraview/internal/OrientationHelper;->mHandler:Landroid/os/Handler;

    const/4 v0, -0x1

    .line 38
    iput v0, p0, Lcom/otaliastudios/cameraview/internal/OrientationHelper;->mDeviceOrientation:I

    .line 42
    iput v0, p0, Lcom/otaliastudios/cameraview/internal/OrientationHelper;->mDisplayOffset:I

    .line 52
    iput-object p1, p0, Lcom/otaliastudios/cameraview/internal/OrientationHelper;->mContext:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/otaliastudios/cameraview/internal/OrientationHelper;->mCallback:Lcom/otaliastudios/cameraview/internal/OrientationHelper$Callback;

    .line 54
    new-instance p2, Lcom/otaliastudios/cameraview/internal/OrientationHelper$1;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x3

    invoke-direct {p2, p0, p1, v0}, Lcom/otaliastudios/cameraview/internal/OrientationHelper$1;-><init>(Lcom/otaliastudios/cameraview/internal/OrientationHelper;Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/otaliastudios/cameraview/internal/OrientationHelper;->mDeviceOrientationListener:Landroid/view/OrientationEventListener;

    .line 79
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x11

    if-lt p1, p2, :cond_0

    .line 80
    new-instance p1, Lcom/otaliastudios/cameraview/internal/OrientationHelper$2;

    invoke-direct {p1, p0}, Lcom/otaliastudios/cameraview/internal/OrientationHelper$2;-><init>(Lcom/otaliastudios/cameraview/internal/OrientationHelper;)V

    iput-object p1, p0, Lcom/otaliastudios/cameraview/internal/OrientationHelper;->mDisplayOffsetListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 97
    iput-object p1, p0, Lcom/otaliastudios/cameraview/internal/OrientationHelper;->mDisplayOffsetListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/otaliastudios/cameraview/internal/OrientationHelper;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/otaliastudios/cameraview/internal/OrientationHelper;->mDeviceOrientation:I

    return p0
.end method

.method static synthetic access$002(Lcom/otaliastudios/cameraview/internal/OrientationHelper;I)I
    .locals 0

    .line 22
    iput p1, p0, Lcom/otaliastudios/cameraview/internal/OrientationHelper;->mDeviceOrientation:I

    return p1
.end method

.method static synthetic access$100(Lcom/otaliastudios/cameraview/internal/OrientationHelper;)Lcom/otaliastudios/cameraview/internal/OrientationHelper$Callback;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/otaliastudios/cameraview/internal/OrientationHelper;->mCallback:Lcom/otaliastudios/cameraview/internal/OrientationHelper$Callback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/otaliastudios/cameraview/internal/OrientationHelper;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/otaliastudios/cameraview/internal/OrientationHelper;->mDisplayOffset:I

    return p0
.end method

.method static synthetic access$202(Lcom/otaliastudios/cameraview/internal/OrientationHelper;I)I
    .locals 0

    .line 22
    iput p1, p0, Lcom/otaliastudios/cameraview/internal/OrientationHelper;->mDisplayOffset:I

    return p1
.end method

.method static synthetic access$300(Lcom/otaliastudios/cameraview/internal/OrientationHelper;)I
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/otaliastudios/cameraview/internal/OrientationHelper;->findDisplayOffset()I

    move-result p0

    return p0
.end method

.method private findDisplayOffset()I
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/otaliastudios/cameraview/internal/OrientationHelper;->mContext:Landroid/content/Context;

    const-string v1, "window"

    .line 152
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 153
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/16 v0, 0x10e

    return v0

    :cond_1
    const/16 v0, 0xb4

    return v0

    :cond_2
    const/16 v0, 0x5a

    return v0
.end method


# virtual methods
.method public disable()V
    .locals 2

    .line 121
    iget-boolean v0, p0, Lcom/otaliastudios/cameraview/internal/OrientationHelper;->mEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 122
    iput-boolean v0, p0, Lcom/otaliastudios/cameraview/internal/OrientationHelper;->mEnabled:Z

    .line 123
    iget-object v0, p0, Lcom/otaliastudios/cameraview/internal/OrientationHelper;->mDeviceOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 124
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    .line 125
    iget-object v0, p0, Lcom/otaliastudios/cameraview/internal/OrientationHelper;->mContext:Landroid/content/Context;

    const-string v1, "display"

    .line 126
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 127
    iget-object v1, p0, Lcom/otaliastudios/cameraview/internal/OrientationHelper;->mDisplayOffsetListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    :cond_1
    const/4 v0, -0x1

    .line 129
    iput v0, p0, Lcom/otaliastudios/cameraview/internal/OrientationHelper;->mDisplayOffset:I

    .line 130
    iput v0, p0, Lcom/otaliastudios/cameraview/internal/OrientationHelper;->mDeviceOrientation:I

    return-void
.end method

.method public enable()V
    .locals 3

    .line 105
    iget-boolean v0, p0, Lcom/otaliastudios/cameraview/internal/OrientationHelper;->mEnabled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 106
    iput-boolean v0, p0, Lcom/otaliastudios/cameraview/internal/OrientationHelper;->mEnabled:Z

    .line 107
    invoke-direct {p0}, Lcom/otaliastudios/cameraview/internal/OrientationHelper;->findDisplayOffset()I

    move-result v0

    iput v0, p0, Lcom/otaliastudios/cameraview/internal/OrientationHelper;->mDisplayOffset:I

    .line 108
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    .line 109
    iget-object v0, p0, Lcom/otaliastudios/cameraview/internal/OrientationHelper;->mContext:Landroid/content/Context;

    const-string v1, "display"

    .line 110
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 112
    iget-object v1, p0, Lcom/otaliastudios/cameraview/internal/OrientationHelper;->mDisplayOffsetListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v2, p0, Lcom/otaliastudios/cameraview/internal/OrientationHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/otaliastudios/cameraview/internal/OrientationHelper;->mDeviceOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    return-void
.end method

.method public getLastDeviceOrientation()I
    .locals 1

    .line 139
    iget v0, p0, Lcom/otaliastudios/cameraview/internal/OrientationHelper;->mDeviceOrientation:I

    return v0
.end method

.method public getLastDisplayOffset()I
    .locals 1

    .line 147
    iget v0, p0, Lcom/otaliastudios/cameraview/internal/OrientationHelper;->mDisplayOffset:I

    return v0
.end method
