.class public Lcom/otaliastudios/cameraview/CameraView;
.super Landroid/widget/FrameLayout;
.source "CameraView.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;
    }
.end annotation


# static fields
.field static final DEFAULT_AUTOFOCUS_RESET_DELAY_MILLIS:J = 0xbb8L

.field static final DEFAULT_FRAME_PROCESSING_EXECUTORS:I = 0x1

.field static final DEFAULT_FRAME_PROCESSING_POOL_SIZE:I = 0x2

.field static final DEFAULT_PICTURE_METERING:Z = true

.field static final DEFAULT_PICTURE_SNAPSHOT_METERING:Z = false

.field static final DEFAULT_PLAY_SOUNDS:Z = true

.field static final DEFAULT_REQUEST_PERMISSIONS:Z = true

.field static final DEFAULT_USE_DEVICE_ORIENTATION:Z = true

.field private static final LOG:Lcom/otaliastudios/cameraview/CameraLogger;

.field public static final PERMISSION_REQUEST_CODE:I = 0x10

.field private static final TAG:Ljava/lang/String; = "CameraView"


# instance fields
.field private mAutoFocusMarker:Lcom/otaliastudios/cameraview/markers/AutoFocusMarker;

.field mCameraCallbacks:Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;

.field private mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

.field private mCameraPreview:Lcom/otaliastudios/cameraview/preview/CameraPreview;

.field private mEngine:Lcom/otaliastudios/cameraview/controls/Engine;

.field private mExperimental:Z

.field private mFrameProcessingExecutor:Ljava/util/concurrent/Executor;

.field private mFrameProcessingExecutors:I

.field mFrameProcessors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/otaliastudios/cameraview/frame/FrameProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private mGestureMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/otaliastudios/cameraview/gesture/Gesture;",
            "Lcom/otaliastudios/cameraview/gesture/GestureAction;",
            ">;"
        }
    .end annotation
.end field

.field mGridLinesLayout:Lcom/otaliastudios/cameraview/internal/GridLinesLayout;

.field private mInEditor:Z

.field private mKeepScreenOn:Z

.field private mLastPreviewStreamSize:Lcom/otaliastudios/cameraview/size/Size;

.field private mLifecycle:Landroidx/lifecycle/Lifecycle;

.field mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/otaliastudios/cameraview/CameraListener;",
            ">;"
        }
    .end annotation
.end field

.field mMarkerLayout:Lcom/otaliastudios/cameraview/markers/MarkerLayout;

.field private mOrientationHelper:Lcom/otaliastudios/cameraview/internal/OrientationHelper;

.field mOverlayLayout:Lcom/otaliastudios/cameraview/overlay/OverlayLayout;

.field private mPendingFilter:Lcom/otaliastudios/cameraview/filter/Filter;

.field mPinchGestureFinder:Lcom/otaliastudios/cameraview/gesture/PinchGestureFinder;

.field private mPlaySounds:Z

.field private mPreview:Lcom/otaliastudios/cameraview/controls/Preview;

.field private mRequestPermissions:Z

.field mScrollGestureFinder:Lcom/otaliastudios/cameraview/gesture/ScrollGestureFinder;

.field private mSound:Landroid/media/MediaActionSound;

.field mTapGestureFinder:Lcom/otaliastudios/cameraview/gesture/TapGestureFinder;

.field private mUiHandler:Landroid/os/Handler;

.field private mUseDeviceOrientation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 113
    const-class v0, Lcom/otaliastudios/cameraview/CameraView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-static {v0}, Lcom/otaliastudios/cameraview/CameraLogger;->create(Ljava/lang/String;)Lcom/otaliastudios/cameraview/CameraLogger;

    move-result-object v0

    sput-object v0, Lcom/otaliastudios/cameraview/CameraView;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    .line 168
    invoke-direct {p0, p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 131
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/otaliastudios/cameraview/CameraView;->mGestureMap:Ljava/util/HashMap;

    .line 147
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/otaliastudios/cameraview/CameraView;->mListeners:Ljava/util/List;

    .line 148
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/otaliastudios/cameraview/CameraView;->mFrameProcessors:Ljava/util/List;

    .line 169
    invoke-direct {p0, p1, v0}, Lcom/otaliastudios/cameraview/CameraView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 173
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 131
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mGestureMap:Ljava/util/HashMap;

    .line 147
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mListeners:Ljava/util/List;

    .line 148
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mFrameProcessors:Ljava/util/List;

    .line 174
    invoke-direct {p0, p1, p2}, Lcom/otaliastudios/cameraview/CameraView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/otaliastudios/cameraview/CameraView;)Z
    .locals 0

    .line 111
    iget-boolean p0, p0, Lcom/otaliastudios/cameraview/CameraView;->mKeepScreenOn:Z

    return p0
.end method

.method static synthetic access$002(Lcom/otaliastudios/cameraview/CameraView;Z)Z
    .locals 0

    .line 111
    iput-boolean p1, p0, Lcom/otaliastudios/cameraview/CameraView;->mKeepScreenOn:Z

    return p1
.end method

.method static synthetic access$100(Lcom/otaliastudios/cameraview/CameraView;)Landroid/os/Handler;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->mUiHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/otaliastudios/cameraview/CameraView;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->mFrameProcessingExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic access$200(Lcom/otaliastudios/cameraview/CameraView;)Lcom/otaliastudios/cameraview/engine/CameraEngine;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    return-object p0
.end method

.method static synthetic access$300(Lcom/otaliastudios/cameraview/CameraView;)Lcom/otaliastudios/cameraview/size/Size;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->mLastPreviewStreamSize:Lcom/otaliastudios/cameraview/size/Size;

    return-object p0
.end method

.method static synthetic access$400(Lcom/otaliastudios/cameraview/CameraView;)Z
    .locals 0

    .line 111
    iget-boolean p0, p0, Lcom/otaliastudios/cameraview/CameraView;->mPlaySounds:Z

    return p0
.end method

.method static synthetic access$500(Lcom/otaliastudios/cameraview/CameraView;I)V
    .locals 0

    .line 111
    invoke-direct {p0, p1}, Lcom/otaliastudios/cameraview/CameraView;->playSound(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/otaliastudios/cameraview/CameraView;)Lcom/otaliastudios/cameraview/markers/AutoFocusMarker;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->mAutoFocusMarker:Lcom/otaliastudios/cameraview/markers/AutoFocusMarker;

    return-object p0
.end method

.method static synthetic access$700(Lcom/otaliastudios/cameraview/CameraView;)Lcom/otaliastudios/cameraview/internal/OrientationHelper;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->mOrientationHelper:Lcom/otaliastudios/cameraview/internal/OrientationHelper;

    return-object p0
.end method

.method static synthetic access$800(Lcom/otaliastudios/cameraview/CameraView;)Z
    .locals 0

    .line 111
    iget-boolean p0, p0, Lcom/otaliastudios/cameraview/CameraView;->mUseDeviceOrientation:Z

    return p0
.end method

.method private checkPermissionsManifestOrThrow(Lcom/otaliastudios/cameraview/controls/Audio;)V
    .locals 5

    .line 831
    sget-object v0, Lcom/otaliastudios/cameraview/controls/Audio;->ON:Lcom/otaliastudios/cameraview/controls/Audio;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/otaliastudios/cameraview/controls/Audio;->MONO:Lcom/otaliastudios/cameraview/controls/Audio;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/otaliastudios/cameraview/controls/Audio;->STEREO:Lcom/otaliastudios/cameraview/controls/Audio;

    if-ne p1, v0, :cond_3

    .line 833
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/CameraView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 834
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/CameraView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1000

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 836
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    const-string v4, "android.permission.RECORD_AUDIO"

    .line 837
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 841
    :cond_2
    sget-object p1, Lcom/otaliastudios/cameraview/CameraView;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "Permission error: when audio is enabled (Audio.ON) the RECORD_AUDIO permission should be added to the app manifest file."

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Lcom/otaliastudios/cameraview/CameraLogger;->e([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 843
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-void
.end method

.method private clearLifecycleObserver()V
    .locals 1

    .line 772
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    if-eqz v0, :cond_0

    .line 773
    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    const/4 v0, 0x0

    .line 774
    iput-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    :cond_0
    return-void
.end method

.method private doInstantiateEngine()V
    .locals 8

    .line 315
    sget-object v0, Lcom/otaliastudios/cameraview/CameraView;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "doInstantiateEngine:"

    aput-object v4, v2, v3

    const-string v5, "instantiating. engine:"

    const/4 v6, 0x1

    aput-object v5, v2, v6

    iget-object v5, p0, Lcom/otaliastudios/cameraview/CameraView;->mEngine:Lcom/otaliastudios/cameraview/controls/Engine;

    const/4 v7, 0x2

    aput-object v5, v2, v7

    invoke-virtual {v0, v2}, Lcom/otaliastudios/cameraview/CameraLogger;->w([Ljava/lang/Object;)Ljava/lang/String;

    .line 316
    iget-object v2, p0, Lcom/otaliastudios/cameraview/CameraView;->mEngine:Lcom/otaliastudios/cameraview/controls/Engine;

    iget-object v5, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraCallbacks:Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;

    invoke-virtual {p0, v2, v5}, Lcom/otaliastudios/cameraview/CameraView;->instantiateCameraEngine(Lcom/otaliastudios/cameraview/controls/Engine;Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;)Lcom/otaliastudios/cameraview/engine/CameraEngine;

    move-result-object v2

    iput-object v2, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v3

    const-string v3, "instantiated. engine:"

    aput-object v3, v1, v6

    .line 318
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    .line 317
    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->w([Ljava/lang/Object;)Ljava/lang/String;

    .line 319
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/CameraView;->mOverlayLayout:Lcom/otaliastudios/cameraview/overlay/OverlayLayout;

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->setOverlay(Lcom/otaliastudios/cameraview/overlay/Overlay;)V

    return-void
.end method

.method private initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 181
    invoke-virtual/range {p0 .. p0}, Lcom/otaliastudios/cameraview/CameraView;->isInEditMode()Z

    move-result v2

    iput-boolean v2, v0, Lcom/otaliastudios/cameraview/CameraView;->mInEditor:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 184
    invoke-virtual {v0, v2}, Lcom/otaliastudios/cameraview/CameraView;->setWillNotDraw(Z)V

    .line 185
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget-object v4, Lcom/otaliastudios/cameraview/R$styleable;->CameraView:[I

    move-object/from16 v5, p2

    invoke-virtual {v3, v5, v4, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 187
    new-instance v4, Lcom/otaliastudios/cameraview/controls/ControlParser;

    invoke-direct {v4, v1, v3}, Lcom/otaliastudios/cameraview/controls/ControlParser;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 190
    sget v5, Lcom/otaliastudios/cameraview/R$styleable;->CameraView_cameraPlaySounds:I

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 192
    sget v7, Lcom/otaliastudios/cameraview/R$styleable;->CameraView_cameraUseDeviceOrientation:I

    invoke-virtual {v3, v7, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 194
    sget v8, Lcom/otaliastudios/cameraview/R$styleable;->CameraView_cameraExperimental:I

    invoke-virtual {v3, v8, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, v0, Lcom/otaliastudios/cameraview/CameraView;->mExperimental:Z

    .line 195
    sget v8, Lcom/otaliastudios/cameraview/R$styleable;->CameraView_cameraRequestPermissions:I

    invoke-virtual {v3, v8, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, v0, Lcom/otaliastudios/cameraview/CameraView;->mRequestPermissions:Z

    .line 197
    invoke-virtual {v4}, Lcom/otaliastudios/cameraview/controls/ControlParser;->getPreview()Lcom/otaliastudios/cameraview/controls/Preview;

    move-result-object v8

    iput-object v8, v0, Lcom/otaliastudios/cameraview/CameraView;->mPreview:Lcom/otaliastudios/cameraview/controls/Preview;

    .line 198
    invoke-virtual {v4}, Lcom/otaliastudios/cameraview/controls/ControlParser;->getEngine()Lcom/otaliastudios/cameraview/controls/Engine;

    move-result-object v8

    iput-object v8, v0, Lcom/otaliastudios/cameraview/CameraView;->mEngine:Lcom/otaliastudios/cameraview/controls/Engine;

    .line 201
    sget v8, Lcom/otaliastudios/cameraview/R$styleable;->CameraView_cameraGridColor:I

    sget v9, Lcom/otaliastudios/cameraview/internal/GridLinesLayout;->DEFAULT_COLOR:I

    invoke-virtual {v3, v8, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    .line 203
    sget v9, Lcom/otaliastudios/cameraview/R$styleable;->CameraView_cameraVideoMaxSize:I

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v9

    float-to-long v11, v9

    .line 205
    sget v9, Lcom/otaliastudios/cameraview/R$styleable;->CameraView_cameraVideoMaxDuration:I

    invoke-virtual {v3, v9, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v9

    .line 207
    sget v13, Lcom/otaliastudios/cameraview/R$styleable;->CameraView_cameraVideoBitRate:I

    invoke-virtual {v3, v13, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v13

    .line 208
    sget v14, Lcom/otaliastudios/cameraview/R$styleable;->CameraView_cameraAudioBitRate:I

    invoke-virtual {v3, v14, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v14

    .line 209
    sget v15, Lcom/otaliastudios/cameraview/R$styleable;->CameraView_cameraPreviewFrameRate:I

    invoke-virtual {v3, v15, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    .line 210
    sget v15, Lcom/otaliastudios/cameraview/R$styleable;->CameraView_cameraPreviewFrameRateExact:I

    invoke-virtual {v3, v15, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    .line 211
    sget v2, Lcom/otaliastudios/cameraview/R$styleable;->CameraView_cameraAutoFocusResetDelay:I

    const/16 v6, 0xbb8

    invoke-virtual {v3, v2, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    move v6, v9

    move/from16 v17, v10

    int-to-long v9, v2

    .line 214
    sget v2, Lcom/otaliastudios/cameraview/R$styleable;->CameraView_cameraPictureMetering:I

    move/from16 v18, v15

    const/4 v15, 0x1

    invoke-virtual {v3, v2, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 216
    sget v15, Lcom/otaliastudios/cameraview/R$styleable;->CameraView_cameraPictureSnapshotMetering:I

    move-wide/from16 v19, v9

    const/4 v9, 0x0

    invoke-virtual {v3, v15, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    .line 219
    sget v15, Lcom/otaliastudios/cameraview/R$styleable;->CameraView_cameraSnapshotMaxWidth:I

    invoke-virtual {v3, v15, v9}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v15

    move/from16 v16, v15

    .line 220
    sget v15, Lcom/otaliastudios/cameraview/R$styleable;->CameraView_cameraSnapshotMaxHeight:I

    invoke-virtual {v3, v15, v9}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v15

    move/from16 v21, v15

    .line 221
    sget v15, Lcom/otaliastudios/cameraview/R$styleable;->CameraView_cameraFrameProcessingMaxWidth:I

    invoke-virtual {v3, v15, v9}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v15

    move/from16 v22, v15

    .line 222
    sget v15, Lcom/otaliastudios/cameraview/R$styleable;->CameraView_cameraFrameProcessingMaxHeight:I

    invoke-virtual {v3, v15, v9}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v15

    move/from16 v23, v15

    .line 223
    sget v15, Lcom/otaliastudios/cameraview/R$styleable;->CameraView_cameraFrameProcessingFormat:I

    invoke-virtual {v3, v15, v9}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v9

    .line 224
    sget v15, Lcom/otaliastudios/cameraview/R$styleable;->CameraView_cameraFrameProcessingPoolSize:I

    move/from16 v24, v9

    const/4 v9, 0x2

    invoke-virtual {v3, v15, v9}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v9

    .line 226
    sget v15, Lcom/otaliastudios/cameraview/R$styleable;->CameraView_cameraFrameProcessingExecutors:I

    move/from16 v25, v9

    const/4 v9, 0x1

    invoke-virtual {v3, v15, v9}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v9

    .line 230
    new-instance v15, Lcom/otaliastudios/cameraview/size/SizeSelectorParser;

    invoke-direct {v15, v3}, Lcom/otaliastudios/cameraview/size/SizeSelectorParser;-><init>(Landroid/content/res/TypedArray;)V

    move/from16 p2, v9

    .line 231
    new-instance v9, Lcom/otaliastudios/cameraview/gesture/GestureParser;

    invoke-direct {v9, v3}, Lcom/otaliastudios/cameraview/gesture/GestureParser;-><init>(Landroid/content/res/TypedArray;)V

    move-object/from16 v26, v9

    .line 232
    new-instance v9, Lcom/otaliastudios/cameraview/markers/MarkerParser;

    invoke-direct {v9, v3}, Lcom/otaliastudios/cameraview/markers/MarkerParser;-><init>(Landroid/content/res/TypedArray;)V

    move-object/from16 v27, v9

    .line 233
    new-instance v9, Lcom/otaliastudios/cameraview/filter/FilterParser;

    invoke-direct {v9, v3}, Lcom/otaliastudios/cameraview/filter/FilterParser;-><init>(Landroid/content/res/TypedArray;)V

    .line 235
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 238
    new-instance v3, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;

    invoke-direct {v3, v0}, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;-><init>(Lcom/otaliastudios/cameraview/CameraView;)V

    iput-object v3, v0, Lcom/otaliastudios/cameraview/CameraView;->mCameraCallbacks:Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;

    .line 239
    new-instance v3, Landroid/os/Handler;

    move-object/from16 v28, v9

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v3, v9}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, v0, Lcom/otaliastudios/cameraview/CameraView;->mUiHandler:Landroid/os/Handler;

    .line 242
    new-instance v3, Lcom/otaliastudios/cameraview/gesture/PinchGestureFinder;

    iget-object v9, v0, Lcom/otaliastudios/cameraview/CameraView;->mCameraCallbacks:Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;

    invoke-direct {v3, v9}, Lcom/otaliastudios/cameraview/gesture/PinchGestureFinder;-><init>(Lcom/otaliastudios/cameraview/gesture/GestureFinder$Controller;)V

    iput-object v3, v0, Lcom/otaliastudios/cameraview/CameraView;->mPinchGestureFinder:Lcom/otaliastudios/cameraview/gesture/PinchGestureFinder;

    .line 243
    new-instance v3, Lcom/otaliastudios/cameraview/gesture/TapGestureFinder;

    iget-object v9, v0, Lcom/otaliastudios/cameraview/CameraView;->mCameraCallbacks:Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;

    invoke-direct {v3, v9}, Lcom/otaliastudios/cameraview/gesture/TapGestureFinder;-><init>(Lcom/otaliastudios/cameraview/gesture/GestureFinder$Controller;)V

    iput-object v3, v0, Lcom/otaliastudios/cameraview/CameraView;->mTapGestureFinder:Lcom/otaliastudios/cameraview/gesture/TapGestureFinder;

    .line 244
    new-instance v3, Lcom/otaliastudios/cameraview/gesture/ScrollGestureFinder;

    iget-object v9, v0, Lcom/otaliastudios/cameraview/CameraView;->mCameraCallbacks:Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;

    invoke-direct {v3, v9}, Lcom/otaliastudios/cameraview/gesture/ScrollGestureFinder;-><init>(Lcom/otaliastudios/cameraview/gesture/GestureFinder$Controller;)V

    iput-object v3, v0, Lcom/otaliastudios/cameraview/CameraView;->mScrollGestureFinder:Lcom/otaliastudios/cameraview/gesture/ScrollGestureFinder;

    .line 247
    new-instance v3, Lcom/otaliastudios/cameraview/internal/GridLinesLayout;

    invoke-direct {v3, v1}, Lcom/otaliastudios/cameraview/internal/GridLinesLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/otaliastudios/cameraview/CameraView;->mGridLinesLayout:Lcom/otaliastudios/cameraview/internal/GridLinesLayout;

    .line 248
    new-instance v3, Lcom/otaliastudios/cameraview/overlay/OverlayLayout;

    invoke-direct {v3, v1}, Lcom/otaliastudios/cameraview/overlay/OverlayLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/otaliastudios/cameraview/CameraView;->mOverlayLayout:Lcom/otaliastudios/cameraview/overlay/OverlayLayout;

    .line 249
    new-instance v3, Lcom/otaliastudios/cameraview/markers/MarkerLayout;

    invoke-direct {v3, v1}, Lcom/otaliastudios/cameraview/markers/MarkerLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/otaliastudios/cameraview/CameraView;->mMarkerLayout:Lcom/otaliastudios/cameraview/markers/MarkerLayout;

    .line 250
    iget-object v3, v0, Lcom/otaliastudios/cameraview/CameraView;->mGridLinesLayout:Lcom/otaliastudios/cameraview/internal/GridLinesLayout;

    invoke-virtual {v0, v3}, Lcom/otaliastudios/cameraview/CameraView;->addView(Landroid/view/View;)V

    .line 251
    iget-object v3, v0, Lcom/otaliastudios/cameraview/CameraView;->mMarkerLayout:Lcom/otaliastudios/cameraview/markers/MarkerLayout;

    invoke-virtual {v0, v3}, Lcom/otaliastudios/cameraview/CameraView;->addView(Landroid/view/View;)V

    .line 252
    iget-object v3, v0, Lcom/otaliastudios/cameraview/CameraView;->mOverlayLayout:Lcom/otaliastudios/cameraview/overlay/OverlayLayout;

    invoke-virtual {v0, v3}, Lcom/otaliastudios/cameraview/CameraView;->addView(Landroid/view/View;)V

    .line 255
    invoke-direct/range {p0 .. p0}, Lcom/otaliastudios/cameraview/CameraView;->doInstantiateEngine()V

    .line 258
    invoke-virtual {v0, v5}, Lcom/otaliastudios/cameraview/CameraView;->setPlaySounds(Z)V

    .line 259
    invoke-virtual {v0, v7}, Lcom/otaliastudios/cameraview/CameraView;->setUseDeviceOrientation(Z)V

    .line 260
    invoke-virtual {v4}, Lcom/otaliastudios/cameraview/controls/ControlParser;->getGrid()Lcom/otaliastudios/cameraview/controls/Grid;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/otaliastudios/cameraview/CameraView;->setGrid(Lcom/otaliastudios/cameraview/controls/Grid;)V

    .line 261
    invoke-virtual {v0, v8}, Lcom/otaliastudios/cameraview/CameraView;->setGridColor(I)V

    .line 265
    invoke-virtual {v4}, Lcom/otaliastudios/cameraview/controls/ControlParser;->getFacing()Lcom/otaliastudios/cameraview/controls/Facing;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/otaliastudios/cameraview/CameraView;->setFacing(Lcom/otaliastudios/cameraview/controls/Facing;)V

    .line 266
    invoke-virtual {v4}, Lcom/otaliastudios/cameraview/controls/ControlParser;->getFlash()Lcom/otaliastudios/cameraview/controls/Flash;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/otaliastudios/cameraview/CameraView;->setFlash(Lcom/otaliastudios/cameraview/controls/Flash;)V

    .line 267
    invoke-virtual {v4}, Lcom/otaliastudios/cameraview/controls/ControlParser;->getMode()Lcom/otaliastudios/cameraview/controls/Mode;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/otaliastudios/cameraview/CameraView;->setMode(Lcom/otaliastudios/cameraview/controls/Mode;)V

    .line 268
    invoke-virtual {v4}, Lcom/otaliastudios/cameraview/controls/ControlParser;->getWhiteBalance()Lcom/otaliastudios/cameraview/controls/WhiteBalance;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/otaliastudios/cameraview/CameraView;->setWhiteBalance(Lcom/otaliastudios/cameraview/controls/WhiteBalance;)V

    .line 269
    invoke-virtual {v4}, Lcom/otaliastudios/cameraview/controls/ControlParser;->getHdr()Lcom/otaliastudios/cameraview/controls/Hdr;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/otaliastudios/cameraview/CameraView;->setHdr(Lcom/otaliastudios/cameraview/controls/Hdr;)V

    .line 270
    invoke-virtual {v4}, Lcom/otaliastudios/cameraview/controls/ControlParser;->getAudio()Lcom/otaliastudios/cameraview/controls/Audio;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/otaliastudios/cameraview/CameraView;->setAudio(Lcom/otaliastudios/cameraview/controls/Audio;)V

    .line 271
    invoke-virtual {v0, v14}, Lcom/otaliastudios/cameraview/CameraView;->setAudioBitRate(I)V

    .line 272
    invoke-virtual {v4}, Lcom/otaliastudios/cameraview/controls/ControlParser;->getAudioCodec()Lcom/otaliastudios/cameraview/controls/AudioCodec;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/otaliastudios/cameraview/CameraView;->setAudioCodec(Lcom/otaliastudios/cameraview/controls/AudioCodec;)V

    .line 273
    invoke-virtual {v15}, Lcom/otaliastudios/cameraview/size/SizeSelectorParser;->getPictureSizeSelector()Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/otaliastudios/cameraview/CameraView;->setPictureSize(Lcom/otaliastudios/cameraview/size/SizeSelector;)V

    .line 274
    invoke-virtual {v0, v2}, Lcom/otaliastudios/cameraview/CameraView;->setPictureMetering(Z)V

    .line 275
    invoke-virtual {v0, v10}, Lcom/otaliastudios/cameraview/CameraView;->setPictureSnapshotMetering(Z)V

    .line 276
    invoke-virtual {v4}, Lcom/otaliastudios/cameraview/controls/ControlParser;->getPictureFormat()Lcom/otaliastudios/cameraview/controls/PictureFormat;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/otaliastudios/cameraview/CameraView;->setPictureFormat(Lcom/otaliastudios/cameraview/controls/PictureFormat;)V

    .line 277
    invoke-virtual {v15}, Lcom/otaliastudios/cameraview/size/SizeSelectorParser;->getVideoSizeSelector()Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/otaliastudios/cameraview/CameraView;->setVideoSize(Lcom/otaliastudios/cameraview/size/SizeSelector;)V

    .line 278
    invoke-virtual {v4}, Lcom/otaliastudios/cameraview/controls/ControlParser;->getVideoCodec()Lcom/otaliastudios/cameraview/controls/VideoCodec;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/otaliastudios/cameraview/CameraView;->setVideoCodec(Lcom/otaliastudios/cameraview/controls/VideoCodec;)V

    .line 279
    invoke-virtual {v0, v11, v12}, Lcom/otaliastudios/cameraview/CameraView;->setVideoMaxSize(J)V

    .line 280
    invoke-virtual {v0, v6}, Lcom/otaliastudios/cameraview/CameraView;->setVideoMaxDuration(I)V

    .line 281
    invoke-virtual {v0, v13}, Lcom/otaliastudios/cameraview/CameraView;->setVideoBitRate(I)V

    move-wide/from16 v2, v19

    .line 282
    invoke-virtual {v0, v2, v3}, Lcom/otaliastudios/cameraview/CameraView;->setAutoFocusResetDelay(J)V

    move/from16 v2, v18

    .line 283
    invoke-virtual {v0, v2}, Lcom/otaliastudios/cameraview/CameraView;->setPreviewFrameRateExact(Z)V

    move/from16 v2, v17

    .line 284
    invoke-virtual {v0, v2}, Lcom/otaliastudios/cameraview/CameraView;->setPreviewFrameRate(F)V

    move/from16 v2, v16

    .line 285
    invoke-virtual {v0, v2}, Lcom/otaliastudios/cameraview/CameraView;->setSnapshotMaxWidth(I)V

    move/from16 v2, v21

    .line 286
    invoke-virtual {v0, v2}, Lcom/otaliastudios/cameraview/CameraView;->setSnapshotMaxHeight(I)V

    move/from16 v2, v22

    .line 287
    invoke-virtual {v0, v2}, Lcom/otaliastudios/cameraview/CameraView;->setFrameProcessingMaxWidth(I)V

    move/from16 v2, v23

    .line 288
    invoke-virtual {v0, v2}, Lcom/otaliastudios/cameraview/CameraView;->setFrameProcessingMaxHeight(I)V

    move/from16 v2, v24

    .line 289
    invoke-virtual {v0, v2}, Lcom/otaliastudios/cameraview/CameraView;->setFrameProcessingFormat(I)V

    move/from16 v2, v25

    .line 290
    invoke-virtual {v0, v2}, Lcom/otaliastudios/cameraview/CameraView;->setFrameProcessingPoolSize(I)V

    move/from16 v2, p2

    .line 291
    invoke-virtual {v0, v2}, Lcom/otaliastudios/cameraview/CameraView;->setFrameProcessingExecutors(I)V

    .line 294
    sget-object v2, Lcom/otaliastudios/cameraview/gesture/Gesture;->TAP:Lcom/otaliastudios/cameraview/gesture/Gesture;

    invoke-virtual/range {v26 .. v26}, Lcom/otaliastudios/cameraview/gesture/GestureParser;->getTapAction()Lcom/otaliastudios/cameraview/gesture/GestureAction;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/otaliastudios/cameraview/CameraView;->mapGesture(Lcom/otaliastudios/cameraview/gesture/Gesture;Lcom/otaliastudios/cameraview/gesture/GestureAction;)Z

    .line 295
    sget-object v2, Lcom/otaliastudios/cameraview/gesture/Gesture;->LONG_TAP:Lcom/otaliastudios/cameraview/gesture/Gesture;

    invoke-virtual/range {v26 .. v26}, Lcom/otaliastudios/cameraview/gesture/GestureParser;->getLongTapAction()Lcom/otaliastudios/cameraview/gesture/GestureAction;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/otaliastudios/cameraview/CameraView;->mapGesture(Lcom/otaliastudios/cameraview/gesture/Gesture;Lcom/otaliastudios/cameraview/gesture/GestureAction;)Z

    .line 296
    sget-object v2, Lcom/otaliastudios/cameraview/gesture/Gesture;->PINCH:Lcom/otaliastudios/cameraview/gesture/Gesture;

    invoke-virtual/range {v26 .. v26}, Lcom/otaliastudios/cameraview/gesture/GestureParser;->getPinchAction()Lcom/otaliastudios/cameraview/gesture/GestureAction;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/otaliastudios/cameraview/CameraView;->mapGesture(Lcom/otaliastudios/cameraview/gesture/Gesture;Lcom/otaliastudios/cameraview/gesture/GestureAction;)Z

    .line 297
    sget-object v2, Lcom/otaliastudios/cameraview/gesture/Gesture;->SCROLL_HORIZONTAL:Lcom/otaliastudios/cameraview/gesture/Gesture;

    invoke-virtual/range {v26 .. v26}, Lcom/otaliastudios/cameraview/gesture/GestureParser;->getHorizontalScrollAction()Lcom/otaliastudios/cameraview/gesture/GestureAction;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/otaliastudios/cameraview/CameraView;->mapGesture(Lcom/otaliastudios/cameraview/gesture/Gesture;Lcom/otaliastudios/cameraview/gesture/GestureAction;)Z

    .line 298
    sget-object v2, Lcom/otaliastudios/cameraview/gesture/Gesture;->SCROLL_VERTICAL:Lcom/otaliastudios/cameraview/gesture/Gesture;

    invoke-virtual/range {v26 .. v26}, Lcom/otaliastudios/cameraview/gesture/GestureParser;->getVerticalScrollAction()Lcom/otaliastudios/cameraview/gesture/GestureAction;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/otaliastudios/cameraview/CameraView;->mapGesture(Lcom/otaliastudios/cameraview/gesture/Gesture;Lcom/otaliastudios/cameraview/gesture/GestureAction;)Z

    .line 301
    invoke-virtual/range {v27 .. v27}, Lcom/otaliastudios/cameraview/markers/MarkerParser;->getAutoFocusMarker()Lcom/otaliastudios/cameraview/markers/AutoFocusMarker;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/otaliastudios/cameraview/CameraView;->setAutoFocusMarker(Lcom/otaliastudios/cameraview/markers/AutoFocusMarker;)V

    .line 304
    invoke-virtual/range {v28 .. v28}, Lcom/otaliastudios/cameraview/filter/FilterParser;->getFilter()Lcom/otaliastudios/cameraview/filter/Filter;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/otaliastudios/cameraview/CameraView;->setFilter(Lcom/otaliastudios/cameraview/filter/Filter;)V

    .line 307
    new-instance v2, Lcom/otaliastudios/cameraview/internal/OrientationHelper;

    iget-object v3, v0, Lcom/otaliastudios/cameraview/CameraView;->mCameraCallbacks:Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;

    invoke-direct {v2, v1, v3}, Lcom/otaliastudios/cameraview/internal/OrientationHelper;-><init>(Landroid/content/Context;Lcom/otaliastudios/cameraview/internal/OrientationHelper$Callback;)V

    iput-object v2, v0, Lcom/otaliastudios/cameraview/CameraView;->mOrientationHelper:Lcom/otaliastudios/cameraview/internal/OrientationHelper;

    return-void
.end method

.method private isClosed()Z
    .locals 2

    .line 748
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getState()Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    move-result-object v0

    sget-object v1, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->OFF:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    .line 749
    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->isChangingState()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private ms(I)Ljava/lang/String;
    .locals 1

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_2

    if-eqz p1, :cond_1

    const/high16 v0, 0x40000000    # 2.0f

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string p1, "EXACTLY"

    return-object p1

    :cond_1
    const-string p1, "UNSPECIFIED"

    return-object p1

    :cond_2
    const-string p1, "AT_MOST"

    return-object p1
.end method

.method private onGesture(Lcom/otaliastudios/cameraview/gesture/GestureFinder;Lcom/otaliastudios/cameraview/CameraOptions;)V
    .locals 7

    .line 665
    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/gesture/GestureFinder;->getGesture()Lcom/otaliastudios/cameraview/gesture/Gesture;

    move-result-object v0

    .line 666
    iget-object v1, p0, Lcom/otaliastudios/cameraview/CameraView;->mGestureMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/otaliastudios/cameraview/gesture/GestureAction;

    .line 667
    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/gesture/GestureFinder;->getPoints()[Landroid/graphics/PointF;

    move-result-object v2

    .line 670
    sget-object v3, Lcom/otaliastudios/cameraview/CameraView$7;->$SwitchMap$com$otaliastudios$cameraview$gesture$GestureAction:[I

    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/gesture/GestureAction;->ordinal()I

    move-result v1

    aget v1, v3, v1

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 713
    :pswitch_0
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/CameraView;->getFilter()Lcom/otaliastudios/cameraview/filter/Filter;

    move-result-object p2

    instance-of p2, p2, Lcom/otaliastudios/cameraview/filter/TwoParameterFilter;

    if-eqz p2, :cond_0

    .line 714
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/CameraView;->getFilter()Lcom/otaliastudios/cameraview/filter/Filter;

    move-result-object p2

    check-cast p2, Lcom/otaliastudios/cameraview/filter/TwoParameterFilter;

    .line 715
    invoke-interface {p2}, Lcom/otaliastudios/cameraview/filter/TwoParameterFilter;->getParameter2()F

    move-result v0

    .line 716
    invoke-virtual {p1, v0, v5, v4}, Lcom/otaliastudios/cameraview/gesture/GestureFinder;->computeValue(FFF)F

    move-result p1

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 718
    invoke-interface {p2, p1}, Lcom/otaliastudios/cameraview/filter/TwoParameterFilter;->setParameter2(F)V

    goto/16 :goto_0

    .line 702
    :pswitch_1
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/CameraView;->getFilter()Lcom/otaliastudios/cameraview/filter/Filter;

    move-result-object p2

    instance-of p2, p2, Lcom/otaliastudios/cameraview/filter/OneParameterFilter;

    if-eqz p2, :cond_0

    .line 703
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/CameraView;->getFilter()Lcom/otaliastudios/cameraview/filter/Filter;

    move-result-object p2

    check-cast p2, Lcom/otaliastudios/cameraview/filter/OneParameterFilter;

    .line 704
    invoke-interface {p2}, Lcom/otaliastudios/cameraview/filter/OneParameterFilter;->getParameter1()F

    move-result v0

    .line 705
    invoke-virtual {p1, v0, v5, v4}, Lcom/otaliastudios/cameraview/gesture/GestureFinder;->computeValue(FFF)F

    move-result p1

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 707
    invoke-interface {p2, p1}, Lcom/otaliastudios/cameraview/filter/OneParameterFilter;->setParameter1(F)V

    goto :goto_0

    .line 691
    :pswitch_2
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getExposureCorrectionValue()F

    move-result v0

    .line 692
    invoke-virtual {p2}, Lcom/otaliastudios/cameraview/CameraOptions;->getExposureCorrectionMinValue()F

    move-result v1

    .line 693
    invoke-virtual {p2}, Lcom/otaliastudios/cameraview/CameraOptions;->getExposureCorrectionMaxValue()F

    move-result p2

    .line 694
    invoke-virtual {p1, v0, v1, p2}, Lcom/otaliastudios/cameraview/gesture/GestureFinder;->computeValue(FFF)F

    move-result p1

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [F

    aput v1, v0, v6

    aput p2, v0, v3

    .line 697
    iget-object p2, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {p2, p1, v0, v2, v3}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->setExposureCorrection(F[F[Landroid/graphics/PointF;Z)V

    goto :goto_0

    .line 683
    :pswitch_3
    iget-object p2, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {p2}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getZoomValue()F

    move-result p2

    .line 684
    invoke-virtual {p1, p2, v5, v4}, Lcom/otaliastudios/cameraview/gesture/GestureFinder;->computeValue(FFF)F

    move-result p1

    cmpl-float p2, p1, p2

    if-eqz p2, :cond_0

    .line 686
    iget-object p2, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {p2, p1, v2, v3}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->setZoom(F[Landroid/graphics/PointF;Z)V

    goto :goto_0

    .line 677
    :pswitch_4
    new-instance p1, Lcom/otaliastudios/cameraview/size/Size;

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/CameraView;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/CameraView;->getHeight()I

    move-result v1

    invoke-direct {p1, p2, v1}, Lcom/otaliastudios/cameraview/size/Size;-><init>(II)V

    .line 678
    aget-object p2, v2, v6

    invoke-static {p1, p2}, Lcom/otaliastudios/cameraview/metering/MeteringRegions;->fromPoint(Lcom/otaliastudios/cameraview/size/Size;Landroid/graphics/PointF;)Lcom/otaliastudios/cameraview/metering/MeteringRegions;

    move-result-object p1

    .line 679
    iget-object p2, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    aget-object v1, v2, v6

    invoke-virtual {p2, v0, p1, v1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->startAutoFocus(Lcom/otaliastudios/cameraview/gesture/Gesture;Lcom/otaliastudios/cameraview/metering/MeteringRegions;Landroid/graphics/PointF;)V

    goto :goto_0

    .line 673
    :pswitch_5
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/CameraView;->takePicture()V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private playSound(I)V
    .locals 1

    .line 2013
    iget-boolean v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mPlaySounds:Z

    if-eqz v0, :cond_1

    .line 2014
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mSound:Landroid/media/MediaActionSound;

    if-nez v0, :cond_0

    new-instance v0, Landroid/media/MediaActionSound;

    invoke-direct {v0}, Landroid/media/MediaActionSound;-><init>()V

    iput-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mSound:Landroid/media/MediaActionSound;

    .line 2015
    :cond_0
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mSound:Landroid/media/MediaActionSound;

    invoke-virtual {v0, p1}, Landroid/media/MediaActionSound;->play(I)V

    :cond_1
    return-void
.end method

.method private requestPermissions(ZZ)V
    .locals 3

    .line 1994
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/CameraView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    .line 1995
    :goto_0
    instance-of v2, v0, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_1

    .line 1996
    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 1997
    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    .line 1999
    :cond_0
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    .line 2002
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2

    const-string p1, "android.permission.CAMERA"

    .line 2003
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz p2, :cond_3

    const-string p1, "android.permission.RECORD_AUDIO"

    .line 2004
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz v1, :cond_4

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    .line 2006
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    const/16 p2, 0x10

    invoke-virtual {v1, p1, p2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    :cond_4
    return-void
.end method

.method private takeVideo(Ljava/io/File;Ljava/io/FileDescriptor;)V
    .locals 2

    .line 1752
    new-instance v0, Lcom/otaliastudios/cameraview/VideoResult$Stub;

    invoke-direct {v0}, Lcom/otaliastudios/cameraview/VideoResult$Stub;-><init>()V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1754
    iget-object p2, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {p2, v0, p1, v1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->takeVideo(Lcom/otaliastudios/cameraview/VideoResult$Stub;Ljava/io/File;Ljava/io/FileDescriptor;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 1756
    iget-object p1, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {p1, v0, v1, p2}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->takeVideo(Lcom/otaliastudios/cameraview/VideoResult$Stub;Ljava/io/File;Ljava/io/FileDescriptor;)V

    .line 1760
    :goto_0
    iget-object p1, p0, Lcom/otaliastudios/cameraview/CameraView;->mUiHandler:Landroid/os/Handler;

    new-instance p2, Lcom/otaliastudios/cameraview/CameraView$1;

    invoke-direct {p2, p0}, Lcom/otaliastudios/cameraview/CameraView$1;-><init>(Lcom/otaliastudios/cameraview/CameraView;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 1758
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "file and fileDescriptor are both null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private takeVideo(Ljava/io/File;Ljava/io/FileDescriptor;I)V
    .locals 2

    .line 1819
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/CameraView;->getVideoMaxDuration()I

    move-result v0

    .line 1820
    new-instance v1, Lcom/otaliastudios/cameraview/CameraView$3;

    invoke-direct {v1, p0, v0}, Lcom/otaliastudios/cameraview/CameraView$3;-><init>(Lcom/otaliastudios/cameraview/CameraView;I)V

    invoke-virtual {p0, v1}, Lcom/otaliastudios/cameraview/CameraView;->addCameraListener(Lcom/otaliastudios/cameraview/CameraListener;)V

    .line 1836
    invoke-virtual {p0, p3}, Lcom/otaliastudios/cameraview/CameraView;->setVideoMaxDuration(I)V

    .line 1837
    invoke-direct {p0, p1, p2}, Lcom/otaliastudios/cameraview/CameraView;->takeVideo(Ljava/io/File;Ljava/io/FileDescriptor;)V

    return-void
.end method


# virtual methods
.method public addCameraListener(Lcom/otaliastudios/cameraview/CameraListener;)V
    .locals 1

    .line 1684
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addFrameProcessor(Lcom/otaliastudios/cameraview/frame/FrameProcessor;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2451
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mFrameProcessors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2452
    iget-object p1, p0, Lcom/otaliastudios/cameraview/CameraView;->mFrameProcessors:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2453
    iget-object p1, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {p1, v0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->setHasFrameProcessors(Z)V

    :cond_0
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 2626
    iget-boolean v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mInEditor:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mOverlayLayout:Lcom/otaliastudios/cameraview/overlay/OverlayLayout;

    invoke-virtual {v0, p3}, Lcom/otaliastudios/cameraview/overlay/OverlayLayout;->isOverlay(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2627
    iget-object p2, p0, Lcom/otaliastudios/cameraview/CameraView;->mOverlayLayout:Lcom/otaliastudios/cameraview/overlay/OverlayLayout;

    invoke-virtual {p2, p1, p3}, Lcom/otaliastudios/cameraview/overlay/OverlayLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 2629
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method protected checkPermissions(Lcom/otaliastudios/cameraview/controls/Audio;)Z
    .locals 4

    .line 803
    invoke-direct {p0, p1}, Lcom/otaliastudios/cameraview/CameraView;->checkPermissionsManifestOrThrow(Lcom/otaliastudios/cameraview/controls/Audio;)V

    .line 805
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    return v1

    .line 807
    :cond_0
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/CameraView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 809
    sget-object v2, Lcom/otaliastudios/cameraview/controls/Audio;->ON:Lcom/otaliastudios/cameraview/controls/Audio;

    const/4 v3, 0x0

    if-eq p1, v2, :cond_2

    sget-object v2, Lcom/otaliastudios/cameraview/controls/Audio;->MONO:Lcom/otaliastudios/cameraview/controls/Audio;

    if-eq p1, v2, :cond_2

    sget-object v2, Lcom/otaliastudios/cameraview/controls/Audio;->STEREO:Lcom/otaliastudios/cameraview/controls/Audio;

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    const-string v2, "android.permission.CAMERA"

    .line 811
    invoke-virtual {v0, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    if-eqz p1, :cond_4

    const-string p1, "android.permission.RECORD_AUDIO"

    .line 813
    invoke-virtual {v0, p1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    :goto_3
    if-nez v2, :cond_5

    if-nez p1, :cond_5

    return v1

    .line 818
    :cond_5
    iget-boolean v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mRequestPermissions:Z

    if-eqz v0, :cond_6

    .line 819
    invoke-direct {p0, v2, p1}, Lcom/otaliastudios/cameraview/CameraView;->requestPermissions(ZZ)V

    :cond_6
    return v3
.end method

.method public clearCameraListeners()V
    .locals 1

    .line 1701
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public clearFrameProcessors()V
    .locals 3

    .line 2477
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mFrameProcessors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2478
    :goto_0
    iget-object v2, p0, Lcom/otaliastudios/cameraview/CameraView;->mFrameProcessors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    if-eqz v0, :cond_1

    .line 2480
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->setHasFrameProcessors(Z)V

    :cond_1
    return-void
.end method

.method public clearGesture(Lcom/otaliastudios/cameraview/gesture/Gesture;)V
    .locals 1

    .line 619
    sget-object v0, Lcom/otaliastudios/cameraview/gesture/GestureAction;->NONE:Lcom/otaliastudios/cameraview/gesture/GestureAction;

    invoke-virtual {p0, p1, v0}, Lcom/otaliastudios/cameraview/CameraView;->mapGesture(Lcom/otaliastudios/cameraview/gesture/Gesture;Lcom/otaliastudios/cameraview/gesture/GestureAction;)Z

    return-void
.end method

.method public close()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 856
    iget-boolean v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mInEditor:Z

    if-eqz v0, :cond_0

    return-void

    .line 857
    :cond_0
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mOrientationHelper:Lcom/otaliastudios/cameraview/internal/OrientationHelper;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/internal/OrientationHelper;->disable()V

    .line 858
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->stop(Z)Lcom/google/android/gms/tasks/Task;

    .line 859
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraPreview:Lcom/otaliastudios/cameraview/preview/CameraPreview;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/preview/CameraPreview;->onPause()V

    :cond_1
    return-void
.end method

.method public destroy()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 868
    iget-boolean v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mInEditor:Z

    if-eqz v0, :cond_0

    return-void

    .line 869
    :cond_0
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/CameraView;->clearCameraListeners()V

    .line 870
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/CameraView;->clearFrameProcessors()V

    .line 871
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->destroy(Z)V

    .line 872
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraPreview:Lcom/otaliastudios/cameraview/preview/CameraPreview;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/preview/CameraPreview;->onDestroy()V

    :cond_1
    return-void
.end method

.method doInstantiatePreview()V
    .locals 8

    .line 329
    sget-object v0, Lcom/otaliastudios/cameraview/CameraView;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "doInstantiateEngine:"

    aput-object v4, v2, v3

    const-string v5, "instantiating. preview:"

    const/4 v6, 0x1

    aput-object v5, v2, v6

    iget-object v5, p0, Lcom/otaliastudios/cameraview/CameraView;->mPreview:Lcom/otaliastudios/cameraview/controls/Preview;

    const/4 v7, 0x2

    aput-object v5, v2, v7

    invoke-virtual {v0, v2}, Lcom/otaliastudios/cameraview/CameraLogger;->w([Ljava/lang/Object;)Ljava/lang/String;

    .line 330
    iget-object v2, p0, Lcom/otaliastudios/cameraview/CameraView;->mPreview:Lcom/otaliastudios/cameraview/controls/Preview;

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/CameraView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0, v2, v5, p0}, Lcom/otaliastudios/cameraview/CameraView;->instantiatePreview(Lcom/otaliastudios/cameraview/controls/Preview;Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/otaliastudios/cameraview/preview/CameraPreview;

    move-result-object v2

    iput-object v2, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraPreview:Lcom/otaliastudios/cameraview/preview/CameraPreview;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v3

    const-string v3, "instantiated. preview:"

    aput-object v3, v1, v6

    .line 332
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    .line 331
    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->w([Ljava/lang/Object;)Ljava/lang/String;

    .line 333
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraPreview:Lcom/otaliastudios/cameraview/preview/CameraPreview;

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->setPreview(Lcom/otaliastudios/cameraview/preview/CameraPreview;)V

    .line 334
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mPendingFilter:Lcom/otaliastudios/cameraview/filter/Filter;

    if-eqz v0, :cond_0

    .line 335
    invoke-virtual {p0, v0}, Lcom/otaliastudios/cameraview/CameraView;->setFilter(Lcom/otaliastudios/cameraview/filter/Filter;)V

    const/4 v0, 0x0

    .line 336
    iput-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mPendingFilter:Lcom/otaliastudios/cameraview/filter/Filter;

    :cond_0
    return-void
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 111
    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/CameraView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .line 2618
    iget-boolean v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mInEditor:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mOverlayLayout:Lcom/otaliastudios/cameraview/overlay/OverlayLayout;

    invoke-virtual {v0, p1}, Lcom/otaliastudios/cameraview/overlay/OverlayLayout;->isOverlay(Landroid/util/AttributeSet;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2619
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mOverlayLayout:Lcom/otaliastudios/cameraview/overlay/OverlayLayout;

    invoke-virtual {v0, p1}, Lcom/otaliastudios/cameraview/overlay/OverlayLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/otaliastudios/cameraview/overlay/OverlayLayout$LayoutParams;

    move-result-object p1

    return-object p1

    .line 2621
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Class;)Lcom/otaliastudios/cameraview/controls/Control;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/otaliastudios/cameraview/controls/Control;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 933
    const-class v0, Lcom/otaliastudios/cameraview/controls/Audio;

    if-ne p1, v0, :cond_0

    .line 934
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/CameraView;->getAudio()Lcom/otaliastudios/cameraview/controls/Audio;

    move-result-object p1

    return-object p1

    .line 935
    :cond_0
    const-class v0, Lcom/otaliastudios/cameraview/controls/Facing;

    if-ne p1, v0, :cond_1

    .line 936
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/CameraView;->getFacing()Lcom/otaliastudios/cameraview/controls/Facing;

    move-result-object p1

    return-object p1

    .line 937
    :cond_1
    const-class v0, Lcom/otaliastudios/cameraview/controls/Flash;

    if-ne p1, v0, :cond_2

    .line 938
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/CameraView;->getFlash()Lcom/otaliastudios/cameraview/controls/Flash;

    move-result-object p1

    return-object p1

    .line 939
    :cond_2
    const-class v0, Lcom/otaliastudios/cameraview/controls/Grid;

    if-ne p1, v0, :cond_3

    .line 940
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/CameraView;->getGrid()Lcom/otaliastudios/cameraview/controls/Grid;

    move-result-object p1

    return-object p1

    .line 941
    :cond_3
    const-class v0, Lcom/otaliastudios/cameraview/controls/Hdr;

    if-ne p1, v0, :cond_4

    .line 942
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/CameraView;->getHdr()Lcom/otaliastudios/cameraview/controls/Hdr;

    move-result-object p1

    return-object p1

    .line 943
    :cond_4
    const-class v0, Lcom/otaliastudios/cameraview/controls/Mode;

    if-ne p1, v0, :cond_5

    .line 944
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/CameraView;->getMode()Lcom/otaliastudios/cameraview/controls/Mode;

    move-result-object p1

    return-object p1

    .line 945
    :cond_5
    const-class v0, Lcom/otaliastudios/cameraview/controls/WhiteBalance;

    if-ne p1, v0, :cond_6

    .line 946
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/CameraView;->getWhiteBalance()Lcom/otaliastudios/cameraview/controls/WhiteBalance;

    move-result-object p1

    return-object p1

    .line 947
    :cond_6
    const-class v0, Lcom/otaliastudios/cameraview/controls/VideoCodec;

    if-ne p1, v0, :cond_7

    .line 948
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/CameraView;->getVideoCodec()Lcom/otaliastudios/cameraview/controls/VideoCodec;

    move-result-object p1

    return-object p1

    .line 949
    :cond_7
    const-class v0, Lcom/otaliastudios/cameraview/controls/AudioCodec;

    if-ne p1, v0, :cond_8

    .line 950
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/CameraView;->getAudioCodec()Lcom/otaliastudios/cameraview/controls/AudioCodec;

    move-result-object p1

    return-object p1

    .line 951
    :cond_8
    const-class v0, Lcom/otaliastudios/cameraview/controls/Preview;

    if-ne p1, v0, :cond_9

    .line 952
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/CameraView;->getPreview()Lcom/otaliastudios/cameraview/controls/Preview;

    move-result-object p1

    return-object p1

    .line 953
    :cond_9
    const-class v0, Lcom/otaliastudios/cameraview/controls/Engine;

    if-ne p1, v0, :cond_a

    .line 954
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/CameraView;->getEngine()Lcom/otaliastudios/cameraview/controls/Engine;

    move-result-object p1

    return-object p1

    .line 955
    :cond_a
    const-class v0, Lcom/otaliastudios/cameraview/controls/PictureFormat;

    if-ne p1, v0, :cond_b

    .line 956
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/CameraView;->getPictureFormat()Lcom/otaliastudios/cameraview/controls/PictureFormat;

    move-result-object p1

    return-object p1

    .line 958
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown control class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAudio()Lcom/otaliastudios/cameraview/controls/Audio;
    .locals 1

    .line 1344
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getAudio()Lcom/otaliastudios/cameraview/controls/Audio;

    move-result-object v0

    return-object v0
.end method

.method public getAudioBitRate()I
    .locals 1

    .line 1650
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getAudioBitRate()I

    move-result v0

    return v0
.end method

.method public getAudioCodec()Lcom/otaliastudios/cameraview/controls/AudioCodec;
    .locals 1

    .line 1674
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getAudioCodec()Lcom/otaliastudios/cameraview/controls/AudioCodec;

    move-result-object v0

    return-object v0
.end method

.method public getAutoFocusResetDelay()J
    .locals 2

    .line 1375
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getAutoFocusResetDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCameraOptions()Lcom/otaliastudios/cameraview/CameraOptions;
    .locals 1

    .line 1063
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getCameraOptions()Lcom/otaliastudios/cameraview/CameraOptions;

    move-result-object v0

    return-object v0
.end method

.method public getEngine()Lcom/otaliastudios/cameraview/controls/Engine;
    .locals 1

    .line 1051
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mEngine:Lcom/otaliastudios/cameraview/controls/Engine;

    return-object v0
.end method

.method public getExposureCorrection()F
    .locals 1

    .line 1097
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getExposureCorrectionValue()F

    move-result v0

    return v0
.end method

.method public getFacing()Lcom/otaliastudios/cameraview/controls/Facing;
    .locals 1

    .line 1262
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getFacing()Lcom/otaliastudios/cameraview/controls/Facing;

    move-result-object v0

    return-object v0
.end method

.method public getFilter()Lcom/otaliastudios/cameraview/filter/Filter;
    .locals 3

    .line 2694
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraPreview:Lcom/otaliastudios/cameraview/preview/CameraPreview;

    if-nez v0, :cond_0

    .line 2695
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mPendingFilter:Lcom/otaliastudios/cameraview/filter/Filter;

    return-object v0

    .line 2696
    :cond_0
    instance-of v1, v0, Lcom/otaliastudios/cameraview/preview/FilterCameraPreview;

    if-eqz v1, :cond_1

    .line 2697
    check-cast v0, Lcom/otaliastudios/cameraview/preview/FilterCameraPreview;

    invoke-interface {v0}, Lcom/otaliastudios/cameraview/preview/FilterCameraPreview;->getCurrentFilter()Lcom/otaliastudios/cameraview/filter/Filter;

    move-result-object v0

    return-object v0

    .line 2699
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Filters are only supported by the GL_SURFACE preview. Current:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/otaliastudios/cameraview/CameraView;->mPreview:Lcom/otaliastudios/cameraview/controls/Preview;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFlash()Lcom/otaliastudios/cameraview/controls/Flash;
    .locals 1

    .line 1306
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getFlash()Lcom/otaliastudios/cameraview/controls/Flash;

    move-result-object v0

    return-object v0
.end method

.method public getFrameProcessingExecutors()I
    .locals 1

    .line 2609
    iget v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mFrameProcessingExecutors:I

    return v0
.end method

.method public getFrameProcessingFormat()I
    .locals 1

    .line 2540
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getFrameProcessingFormat()I

    move-result v0

    return v0
.end method

.method public getFrameProcessingMaxHeight()I
    .locals 1

    .line 2521
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getFrameProcessingMaxHeight()I

    move-result v0

    return v0
.end method

.method public getFrameProcessingMaxWidth()I
    .locals 1

    .line 2512
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getFrameProcessingMaxWidth()I

    move-result v0

    return v0
.end method

.method public getFrameProcessingPoolSize()I
    .locals 1

    .line 2566
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getFrameProcessingPoolSize()I

    move-result v0

    return v0
.end method

.method public getGestureAction(Lcom/otaliastudios/cameraview/gesture/Gesture;)Lcom/otaliastudios/cameraview/gesture/GestureAction;
    .locals 1

    .line 631
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mGestureMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/otaliastudios/cameraview/gesture/GestureAction;

    return-object p1
.end method

.method public getGrid()Lcom/otaliastudios/cameraview/controls/Grid;
    .locals 1

    .line 1144
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mGridLinesLayout:Lcom/otaliastudios/cameraview/internal/GridLinesLayout;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/internal/GridLinesLayout;->getGridMode()Lcom/otaliastudios/cameraview/controls/Grid;

    move-result-object v0

    return-object v0
.end method

.method public getGridColor()I
    .locals 1

    .line 1162
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mGridLinesLayout:Lcom/otaliastudios/cameraview/internal/GridLinesLayout;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/internal/GridLinesLayout;->getGridColor()I

    move-result v0

    return v0
.end method

.method public getHdr()Lcom/otaliastudios/cameraview/controls/Hdr;
    .locals 1

    .line 1183
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getHdr()Lcom/otaliastudios/cameraview/controls/Hdr;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .line 1217
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public getMode()Lcom/otaliastudios/cameraview/controls/Mode;
    .locals 1

    .line 1453
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getMode()Lcom/otaliastudios/cameraview/controls/Mode;

    move-result-object v0

    return-object v0
.end method

.method public getPictureFormat()Lcom/otaliastudios/cameraview/controls/PictureFormat;
    .locals 1

    .line 1543
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getPictureFormat()Lcom/otaliastudios/cameraview/controls/PictureFormat;

    move-result-object v0

    return-object v0
.end method

.method public getPictureMetering()Z
    .locals 1

    .line 1493
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getPictureMetering()Z

    move-result v0

    return v0
.end method

.method public getPictureSize()Lcom/otaliastudios/cameraview/size/Size;
    .locals 2

    .line 1973
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    sget-object v1, Lcom/otaliastudios/cameraview/engine/offset/Reference;->OUTPUT:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getPictureSize(Lcom/otaliastudios/cameraview/engine/offset/Reference;)Lcom/otaliastudios/cameraview/size/Size;

    move-result-object v0

    return-object v0
.end method

.method public getPictureSnapshotMetering()Z
    .locals 1

    .line 1521
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getPictureSnapshotMetering()Z

    move-result v0

    return v0
.end method

.method public getPlaySounds()Z
    .locals 1

    .line 2039
    iget-boolean v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mPlaySounds:Z

    return v0
.end method

.method public getPreview()Lcom/otaliastudios/cameraview/controls/Preview;
    .locals 1

    .line 995
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mPreview:Lcom/otaliastudios/cameraview/controls/Preview;

    return-object v0
.end method

.method public getPreviewFrameRate()F
    .locals 1

    .line 1631
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getPreviewFrameRate()F

    move-result v0

    return v0
.end method

.method public getPreviewFrameRateExact()Z
    .locals 1

    .line 1607
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getPreviewFrameRateExact()Z

    move-result v0

    return v0
.end method

.method public getSnapshotMaxHeight()I
    .locals 1

    .line 1928
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getSnapshotMaxHeight()I

    move-result v0

    return v0
.end method

.method public getSnapshotMaxWidth()I
    .locals 1

    .line 1919
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getSnapshotMaxWidth()I

    move-result v0

    return v0
.end method

.method public getSnapshotSize()Lcom/otaliastudios/cameraview/size/Size;
    .locals 4

    .line 1946
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/CameraView;->getWidth()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/CameraView;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1950
    :cond_0
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    sget-object v2, Lcom/otaliastudios/cameraview/engine/offset/Reference;->VIEW:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    invoke-virtual {v0, v2}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getUncroppedSnapshotSize(Lcom/otaliastudios/cameraview/engine/offset/Reference;)Lcom/otaliastudios/cameraview/size/Size;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 1952
    :cond_1
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/CameraView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/CameraView;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Lcom/otaliastudios/cameraview/size/AspectRatio;->of(II)Lcom/otaliastudios/cameraview/size/AspectRatio;

    move-result-object v1

    .line 1953
    invoke-static {v0, v1}, Lcom/otaliastudios/cameraview/internal/CropHelper;->computeCrop(Lcom/otaliastudios/cameraview/size/Size;Lcom/otaliastudios/cameraview/size/AspectRatio;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1954
    new-instance v1, Lcom/otaliastudios/cameraview/size/Size;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/otaliastudios/cameraview/size/Size;-><init>(II)V

    .line 1955
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getAngles()Lcom/otaliastudios/cameraview/engine/offset/Angles;

    move-result-object v0

    sget-object v2, Lcom/otaliastudios/cameraview/engine/offset/Reference;->VIEW:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    sget-object v3, Lcom/otaliastudios/cameraview/engine/offset/Reference;->OUTPUT:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    invoke-virtual {v0, v2, v3}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->flip(Lcom/otaliastudios/cameraview/engine/offset/Reference;Lcom/otaliastudios/cameraview/engine/offset/Reference;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1956
    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/size/Size;->flip()Lcom/otaliastudios/cameraview/size/Size;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public getUseDeviceOrientation()Z
    .locals 1

    .line 2061
    iget-boolean v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mUseDeviceOrientation:Z

    return v0
.end method

.method public getVideoBitRate()I
    .locals 1

    .line 1575
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getVideoBitRate()I

    move-result v0

    return v0
.end method

.method public getVideoCodec()Lcom/otaliastudios/cameraview/controls/VideoCodec;
    .locals 1

    .line 2084
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getVideoCodec()Lcom/otaliastudios/cameraview/controls/VideoCodec;

    move-result-object v0

    return-object v0
.end method

.method public getVideoMaxDuration()I
    .locals 1

    .line 2128
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getVideoMaxDuration()I

    move-result v0

    return v0
.end method

.method public getVideoMaxSize()J
    .locals 2

    .line 2106
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getVideoMaxSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getVideoSize()Lcom/otaliastudios/cameraview/size/Size;
    .locals 2

    .line 1987
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    sget-object v1, Lcom/otaliastudios/cameraview/engine/offset/Reference;->OUTPUT:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getVideoSize(Lcom/otaliastudios/cameraview/engine/offset/Reference;)Lcom/otaliastudios/cameraview/size/Size;

    move-result-object v0

    return-object v0
.end method

.method public getWhiteBalance()Lcom/otaliastudios/cameraview/controls/WhiteBalance;
    .locals 1

    .line 1241
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getWhiteBalance()Lcom/otaliastudios/cameraview/controls/WhiteBalance;

    move-result-object v0

    return-object v0
.end method

.method public getZoom()F
    .locals 1

    .line 1121
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getZoomValue()F

    move-result v0

    return v0
.end method

.method protected instantiateCameraEngine(Lcom/otaliastudios/cameraview/controls/Engine;Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;)Lcom/otaliastudios/cameraview/engine/CameraEngine;
    .locals 1

    .line 350
    iget-boolean v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mExperimental:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/otaliastudios/cameraview/controls/Engine;->CAMERA2:Lcom/otaliastudios/cameraview/controls/Engine;

    if-ne p1, v0, :cond_0

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    .line 353
    new-instance p1, Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    invoke-direct {p1, p2}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;-><init>(Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;)V

    return-object p1

    .line 355
    :cond_0
    sget-object p1, Lcom/otaliastudios/cameraview/controls/Engine;->CAMERA1:Lcom/otaliastudios/cameraview/controls/Engine;

    iput-object p1, p0, Lcom/otaliastudios/cameraview/CameraView;->mEngine:Lcom/otaliastudios/cameraview/controls/Engine;

    .line 356
    new-instance p1, Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    invoke-direct {p1, p2}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;-><init>(Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;)V

    return-object p1
.end method

.method protected instantiatePreview(Lcom/otaliastudios/cameraview/controls/Preview;Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/otaliastudios/cameraview/preview/CameraPreview;
    .locals 1

    .line 372
    sget-object v0, Lcom/otaliastudios/cameraview/CameraView$7;->$SwitchMap$com$otaliastudios$cameraview$controls$Preview:[I

    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/controls/Preview;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 376
    :cond_0
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/CameraView;->isHardwareAccelerated()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 378
    new-instance p1, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview;

    invoke-direct {p1, p2, p3}, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    return-object p1

    .line 382
    :cond_1
    :goto_0
    sget-object p1, Lcom/otaliastudios/cameraview/controls/Preview;->GL_SURFACE:Lcom/otaliastudios/cameraview/controls/Preview;

    iput-object p1, p0, Lcom/otaliastudios/cameraview/CameraView;->mPreview:Lcom/otaliastudios/cameraview/controls/Preview;

    .line 383
    new-instance p1, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;

    invoke-direct {p1, p2, p3}, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    return-object p1

    .line 374
    :cond_2
    new-instance p1, Lcom/otaliastudios/cameraview/preview/SurfaceCameraPreview;

    invoke-direct {p1, p2, p3}, Lcom/otaliastudios/cameraview/preview/SurfaceCameraPreview;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    return-object p1
.end method

.method public isOpened()Z
    .locals 2

    .line 743
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getState()Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    move-result-object v0

    sget-object v1, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->ENGINE:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->isAtLeast(Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    .line 744
    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getTargetState()Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    move-result-object v0

    sget-object v1, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->ENGINE:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->isAtLeast(Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTakingPicture()Z
    .locals 1

    .line 2144
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->isTakingPicture()Z

    move-result v0

    return v0
.end method

.method public isTakingVideo()Z
    .locals 1

    .line 2136
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->isTakingVideo()Z

    move-result v0

    return v0
.end method

.method public mapGesture(Lcom/otaliastudios/cameraview/gesture/Gesture;Lcom/otaliastudios/cameraview/gesture/GestureAction;)Z
    .locals 4

    .line 586
    sget-object v0, Lcom/otaliastudios/cameraview/gesture/GestureAction;->NONE:Lcom/otaliastudios/cameraview/gesture/GestureAction;

    .line 587
    invoke-virtual {p1, p2}, Lcom/otaliastudios/cameraview/gesture/Gesture;->isAssignableTo(Lcom/otaliastudios/cameraview/gesture/GestureAction;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    .line 588
    iget-object v1, p0, Lcom/otaliastudios/cameraview/CameraView;->mGestureMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    sget-object p2, Lcom/otaliastudios/cameraview/CameraView$7;->$SwitchMap$com$otaliastudios$cameraview$gesture$Gesture:[I

    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/gesture/Gesture;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_6

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 603
    :cond_0
    iget-object p1, p0, Lcom/otaliastudios/cameraview/CameraView;->mScrollGestureFinder:Lcom/otaliastudios/cameraview/gesture/ScrollGestureFinder;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/CameraView;->mGestureMap:Ljava/util/HashMap;

    sget-object v3, Lcom/otaliastudios/cameraview/gesture/Gesture;->SCROLL_HORIZONTAL:Lcom/otaliastudios/cameraview/gesture/Gesture;

    .line 604
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_1

    iget-object v1, p0, Lcom/otaliastudios/cameraview/CameraView;->mGestureMap:Ljava/util/HashMap;

    sget-object v3, Lcom/otaliastudios/cameraview/gesture/Gesture;->SCROLL_VERTICAL:Lcom/otaliastudios/cameraview/gesture/Gesture;

    .line 605
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v0, :cond_2

    :cond_1
    const/4 v2, 0x1

    .line 603
    :cond_2
    invoke-virtual {p1, v2}, Lcom/otaliastudios/cameraview/gesture/ScrollGestureFinder;->setActive(Z)V

    goto :goto_0

    .line 596
    :cond_3
    iget-object p1, p0, Lcom/otaliastudios/cameraview/CameraView;->mTapGestureFinder:Lcom/otaliastudios/cameraview/gesture/TapGestureFinder;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/CameraView;->mGestureMap:Ljava/util/HashMap;

    sget-object v3, Lcom/otaliastudios/cameraview/gesture/Gesture;->TAP:Lcom/otaliastudios/cameraview/gesture/Gesture;

    .line 597
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_4

    iget-object v1, p0, Lcom/otaliastudios/cameraview/CameraView;->mGestureMap:Ljava/util/HashMap;

    sget-object v3, Lcom/otaliastudios/cameraview/gesture/Gesture;->LONG_TAP:Lcom/otaliastudios/cameraview/gesture/Gesture;

    .line 599
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v0, :cond_5

    :cond_4
    const/4 v2, 0x1

    .line 596
    :cond_5
    invoke-virtual {p1, v2}, Lcom/otaliastudios/cameraview/gesture/TapGestureFinder;->setActive(Z)V

    goto :goto_0

    .line 591
    :cond_6
    iget-object p1, p0, Lcom/otaliastudios/cameraview/CameraView;->mPinchGestureFinder:Lcom/otaliastudios/cameraview/gesture/PinchGestureFinder;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/CameraView;->mGestureMap:Ljava/util/HashMap;

    sget-object v3, Lcom/otaliastudios/cameraview/gesture/Gesture;->PINCH:Lcom/otaliastudios/cameraview/gesture/Gesture;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v0, :cond_7

    const/4 v2, 0x1

    :cond_7
    invoke-virtual {p1, v2}, Lcom/otaliastudios/cameraview/gesture/PinchGestureFinder;->setActive(Z)V

    :goto_0
    return p2

    .line 610
    :cond_8
    invoke-virtual {p0, p1, v0}, Lcom/otaliastudios/cameraview/CameraView;->mapGesture(Lcom/otaliastudios/cameraview/gesture/Gesture;Lcom/otaliastudios/cameraview/gesture/GestureAction;)Z

    return v2
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 390
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 391
    iget-boolean v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mInEditor:Z

    if-eqz v0, :cond_0

    return-void

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraPreview:Lcom/otaliastudios/cameraview/preview/CameraPreview;

    if-nez v0, :cond_1

    .line 395
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/CameraView;->doInstantiatePreview()V

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x0

    .line 401
    iput-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mLastPreviewStreamSize:Lcom/otaliastudios/cameraview/size/Size;

    .line 402
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected onMeasure(II)V
    .locals 16

    move-object/from16 v0, p0

    .line 436
    iget-boolean v1, v0, Lcom/otaliastudios/cameraview/CameraView;->mInEditor:Z

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v1, :cond_0

    .line 437
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 438
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 439
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 440
    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 439
    invoke-super {v0, v1, v2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void

    .line 444
    :cond_0
    iget-object v1, v0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    sget-object v3, Lcom/otaliastudios/cameraview/engine/offset/Reference;->VIEW:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    invoke-virtual {v1, v3}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getPreviewStreamSize(Lcom/otaliastudios/cameraview/engine/offset/Reference;)Lcom/otaliastudios/cameraview/size/Size;

    move-result-object v1

    iput-object v1, v0, Lcom/otaliastudios/cameraview/CameraView;->mLastPreviewStreamSize:Lcom/otaliastudios/cameraview/size/Size;

    const-string v3, "onMeasure:"

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v1, :cond_1

    .line 446
    sget-object v1, Lcom/otaliastudios/cameraview/CameraView;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v3, v2, v6

    const-string v3, "surface is not ready. Calling default behavior."

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lcom/otaliastudios/cameraview/CameraLogger;->w([Ljava/lang/Object;)Ljava/lang/String;

    .line 447
    invoke-super/range {p0 .. p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void

    .line 452
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 453
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 454
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 455
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 456
    iget-object v10, v0, Lcom/otaliastudios/cameraview/CameraView;->mLastPreviewStreamSize:Lcom/otaliastudios/cameraview/size/Size;

    invoke-virtual {v10}, Lcom/otaliastudios/cameraview/size/Size;->getWidth()I

    move-result v10

    int-to-float v10, v10

    .line 457
    iget-object v11, v0, Lcom/otaliastudios/cameraview/CameraView;->mLastPreviewStreamSize:Lcom/otaliastudios/cameraview/size/Size;

    invoke-virtual {v11}, Lcom/otaliastudios/cameraview/size/Size;->getHeight()I

    move-result v11

    int-to-float v11, v11

    .line 460
    invoke-virtual/range {p0 .. p0}, Lcom/otaliastudios/cameraview/CameraView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .line 461
    iget-object v13, v0, Lcom/otaliastudios/cameraview/CameraView;->mCameraPreview:Lcom/otaliastudios/cameraview/preview/CameraPreview;

    invoke-virtual {v13}, Lcom/otaliastudios/cameraview/preview/CameraPreview;->supportsCropping()Z

    move-result v13

    const/high16 v14, -0x80000000

    if-nez v13, :cond_3

    if-ne v1, v2, :cond_2

    const/high16 v1, -0x80000000

    :cond_2
    if-ne v7, v2, :cond_5

    const/high16 v7, -0x80000000

    goto :goto_0

    :cond_3
    const/4 v13, -0x1

    if-ne v1, v14, :cond_4

    .line 468
    iget v15, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v15, v13, :cond_4

    const/high16 v1, 0x40000000    # 2.0f

    :cond_4
    if-ne v7, v14, :cond_5

    .line 469
    iget v12, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v12, v13, :cond_5

    const/high16 v7, 0x40000000    # 2.0f

    .line 472
    :cond_5
    :goto_0
    sget-object v12, Lcom/otaliastudios/cameraview/CameraView;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v13, v4, [Ljava/lang/Object;

    aput-object v3, v13, v6

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "requested dimensions are ("

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 473
    invoke-direct {v0, v1}, Lcom/otaliastudios/cameraview/CameraView;->ms(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v14, "]x"

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 474
    invoke-direct {v0, v7}, Lcom/otaliastudios/cameraview/CameraView;->ms(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v14, "])"

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v13, v5

    .line 472
    invoke-virtual {v12, v13}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    const/4 v2, 0x3

    new-array v13, v2, [Ljava/lang/Object;

    aput-object v3, v13, v6

    const-string v14, "previewSize is"

    aput-object v14, v13, v5

    .line 475
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v2, "x"

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v5, ")"

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v4

    invoke-virtual {v12, v13}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    const/4 v13, 0x4

    const/high16 v14, 0x40000000    # 2.0f

    if-ne v1, v14, :cond_6

    if-ne v7, v14, :cond_6

    new-array v1, v13, [Ljava/lang/Object;

    aput-object v3, v1, v6

    const-string v3, "both are MATCH_PARENT or fixed value. We adapt."

    const/4 v6, 0x1

    aput-object v3, v1, v6

    const-string v3, "This means CROP_CENTER."

    aput-object v3, v1, v4

    .line 483
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-virtual {v12, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 485
    invoke-super/range {p0 .. p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void

    :cond_6
    if-nez v1, :cond_7

    if-nez v7, :cond_7

    new-array v1, v13, [Ljava/lang/Object;

    aput-object v3, v1, v6

    const-string v3, "both are completely free."

    const/4 v6, 0x1

    aput-object v3, v1, v6

    const-string v3, "We respect that and extend to the whole preview size."

    aput-object v3, v1, v4

    .line 492
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-virtual {v12, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    float-to-int v1, v10

    const/high16 v14, 0x40000000    # 2.0f

    .line 496
    invoke-static {v1, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    float-to-int v2, v11

    .line 497
    invoke-static {v2, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 495
    invoke-super {v0, v1, v2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void

    :cond_7
    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v11, v10

    if-eqz v1, :cond_e

    if-nez v7, :cond_8

    goto/16 :goto_5

    :cond_8
    if-eq v1, v14, :cond_b

    if-ne v7, v14, :cond_9

    goto :goto_2

    :cond_9
    int-to-float v1, v9

    int-to-float v7, v8

    div-float v10, v1, v7

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_a

    mul-float v7, v7, v11

    .line 554
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v9

    goto :goto_1

    :cond_a
    div-float/2addr v1, v11

    .line 557
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v8

    :goto_1
    new-array v1, v13, [Ljava/lang/Object;

    aput-object v3, v1, v6

    const-string v3, "both dimension were AT_MOST."

    const/4 v6, 0x1

    aput-object v3, v1, v6

    const-string v3, "We fit the preview aspect ratio."

    aput-object v3, v1, v4

    .line 559
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-virtual {v12, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    const/high16 v1, 0x40000000    # 2.0f

    .line 562
    invoke-static {v8, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 563
    invoke-static {v9, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 562
    invoke-super {v0, v2, v1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void

    :cond_b
    :goto_2
    const/high16 v7, -0x80000000

    if-ne v1, v7, :cond_c

    const/4 v1, 0x1

    goto :goto_3

    :cond_c
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_d

    int-to-float v1, v9

    div-float/2addr v1, v11

    .line 534
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    goto :goto_4

    :cond_d
    int-to-float v1, v8

    mul-float v1, v1, v11

    .line 537
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    :goto_4
    new-array v1, v13, [Ljava/lang/Object;

    aput-object v3, v1, v6

    const-string v3, "one dimension was EXACTLY, another AT_MOST."

    const/4 v6, 0x1

    aput-object v3, v1, v6

    const-string v3, "We have TRIED to fit the aspect ratio, but it\'s not guaranteed."

    aput-object v3, v1, v4

    .line 539
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-virtual {v12, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    const/high16 v1, 0x40000000    # 2.0f

    .line 542
    invoke-static {v8, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 543
    invoke-static {v9, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 542
    invoke-super {v0, v2, v1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void

    :cond_e
    :goto_5
    if-nez v1, :cond_f

    const/4 v1, 0x1

    goto :goto_6

    :cond_f
    const/4 v1, 0x0

    :goto_6
    if-eqz v1, :cond_10

    int-to-float v1, v9

    div-float/2addr v1, v11

    .line 513
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v8

    goto :goto_7

    :cond_10
    int-to-float v1, v8

    mul-float v1, v1, v11

    .line 516
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v9

    :goto_7
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v6

    const-string v3, "one dimension was free, we adapted it to fit the ratio."

    const/4 v6, 0x1

    aput-object v3, v1, v6

    .line 518
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v12, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    const/high16 v1, 0x40000000    # 2.0f

    .line 520
    invoke-static {v8, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 521
    invoke-static {v9, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 520
    invoke-super {v0, v2, v1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 642
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/CameraView;->isOpened()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 645
    :cond_0
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getCameraOptions()Lcom/otaliastudios/cameraview/CameraOptions;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 647
    iget-object v2, p0, Lcom/otaliastudios/cameraview/CameraView;->mPinchGestureFinder:Lcom/otaliastudios/cameraview/gesture/PinchGestureFinder;

    invoke-virtual {v2, p1}, Lcom/otaliastudios/cameraview/gesture/PinchGestureFinder;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    const-string v3, "onTouchEvent"

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v2, :cond_1

    .line 648
    sget-object p1, Lcom/otaliastudios/cameraview/CameraView;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v3, v2, v4

    const-string v3, "pinch!"

    aput-object v3, v2, v1

    invoke-virtual {p1, v2}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 649
    iget-object p1, p0, Lcom/otaliastudios/cameraview/CameraView;->mPinchGestureFinder:Lcom/otaliastudios/cameraview/gesture/PinchGestureFinder;

    invoke-direct {p0, p1, v0}, Lcom/otaliastudios/cameraview/CameraView;->onGesture(Lcom/otaliastudios/cameraview/gesture/GestureFinder;Lcom/otaliastudios/cameraview/CameraOptions;)V

    goto :goto_0

    .line 650
    :cond_1
    iget-object v2, p0, Lcom/otaliastudios/cameraview/CameraView;->mScrollGestureFinder:Lcom/otaliastudios/cameraview/gesture/ScrollGestureFinder;

    invoke-virtual {v2, p1}, Lcom/otaliastudios/cameraview/gesture/ScrollGestureFinder;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 651
    sget-object p1, Lcom/otaliastudios/cameraview/CameraView;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v3, v2, v4

    const-string v3, "scroll!"

    aput-object v3, v2, v1

    invoke-virtual {p1, v2}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 652
    iget-object p1, p0, Lcom/otaliastudios/cameraview/CameraView;->mScrollGestureFinder:Lcom/otaliastudios/cameraview/gesture/ScrollGestureFinder;

    invoke-direct {p0, p1, v0}, Lcom/otaliastudios/cameraview/CameraView;->onGesture(Lcom/otaliastudios/cameraview/gesture/GestureFinder;Lcom/otaliastudios/cameraview/CameraOptions;)V

    goto :goto_0

    .line 653
    :cond_2
    iget-object v2, p0, Lcom/otaliastudios/cameraview/CameraView;->mTapGestureFinder:Lcom/otaliastudios/cameraview/gesture/TapGestureFinder;

    invoke-virtual {v2, p1}, Lcom/otaliastudios/cameraview/gesture/TapGestureFinder;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 654
    sget-object p1, Lcom/otaliastudios/cameraview/CameraView;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v3, v2, v4

    const-string v3, "tap!"

    aput-object v3, v2, v1

    invoke-virtual {p1, v2}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 655
    iget-object p1, p0, Lcom/otaliastudios/cameraview/CameraView;->mTapGestureFinder:Lcom/otaliastudios/cameraview/gesture/TapGestureFinder;

    invoke-direct {p0, p1, v0}, Lcom/otaliastudios/cameraview/CameraView;->onGesture(Lcom/otaliastudios/cameraview/gesture/GestureFinder;Lcom/otaliastudios/cameraview/CameraOptions;)V

    :cond_3
    :goto_0
    return v1

    .line 646
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Options should not be null here."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public open()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 784
    iget-boolean v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mInEditor:Z

    if-eqz v0, :cond_0

    return-void

    .line 785
    :cond_0
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraPreview:Lcom/otaliastudios/cameraview/preview/CameraPreview;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/preview/CameraPreview;->onResume()V

    .line 786
    :cond_1
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/CameraView;->getAudio()Lcom/otaliastudios/cameraview/controls/Audio;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/otaliastudios/cameraview/CameraView;->checkPermissions(Lcom/otaliastudios/cameraview/controls/Audio;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 788
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mOrientationHelper:Lcom/otaliastudios/cameraview/internal/OrientationHelper;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/internal/OrientationHelper;->enable()V

    .line 789
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getAngles()Lcom/otaliastudios/cameraview/engine/offset/Angles;

    move-result-object v0

    iget-object v1, p0, Lcom/otaliastudios/cameraview/CameraView;->mOrientationHelper:Lcom/otaliastudios/cameraview/internal/OrientationHelper;

    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/internal/OrientationHelper;->getLastDisplayOffset()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->setDisplayOffset(I)V

    .line 790
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->start()Lcom/google/android/gms/tasks/Task;

    :cond_2
    return-void
.end method

.method public removeCameraListener(Lcom/otaliastudios/cameraview/CameraListener;)V
    .locals 1

    .line 1693
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeFrameProcessor(Lcom/otaliastudios/cameraview/frame/FrameProcessor;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2465
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mFrameProcessors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2466
    iget-object p1, p0, Lcom/otaliastudios/cameraview/CameraView;->mFrameProcessors:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 2467
    iget-object p1, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->setHasFrameProcessors(Z)V

    :cond_0
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2

    .line 2635
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2636
    iget-boolean v1, p0, Lcom/otaliastudios/cameraview/CameraView;->mInEditor:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/otaliastudios/cameraview/CameraView;->mOverlayLayout:Lcom/otaliastudios/cameraview/overlay/OverlayLayout;

    invoke-virtual {v1, v0}, Lcom/otaliastudios/cameraview/overlay/OverlayLayout;->isOverlay(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2637
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mOverlayLayout:Lcom/otaliastudios/cameraview/overlay/OverlayLayout;

    invoke-virtual {v0, p1}, Lcom/otaliastudios/cameraview/overlay/OverlayLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 2639
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public set(Lcom/otaliastudios/cameraview/controls/Control;)V
    .locals 1

    .line 895
    instance-of v0, p1, Lcom/otaliastudios/cameraview/controls/Audio;

    if-eqz v0, :cond_0

    .line 896
    check-cast p1, Lcom/otaliastudios/cameraview/controls/Audio;

    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/CameraView;->setAudio(Lcom/otaliastudios/cameraview/controls/Audio;)V

    goto/16 :goto_0

    .line 897
    :cond_0
    instance-of v0, p1, Lcom/otaliastudios/cameraview/controls/Facing;

    if-eqz v0, :cond_1

    .line 898
    check-cast p1, Lcom/otaliastudios/cameraview/controls/Facing;

    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/CameraView;->setFacing(Lcom/otaliastudios/cameraview/controls/Facing;)V

    goto/16 :goto_0

    .line 899
    :cond_1
    instance-of v0, p1, Lcom/otaliastudios/cameraview/controls/Flash;

    if-eqz v0, :cond_2

    .line 900
    check-cast p1, Lcom/otaliastudios/cameraview/controls/Flash;

    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/CameraView;->setFlash(Lcom/otaliastudios/cameraview/controls/Flash;)V

    goto :goto_0

    .line 901
    :cond_2
    instance-of v0, p1, Lcom/otaliastudios/cameraview/controls/Grid;

    if-eqz v0, :cond_3

    .line 902
    check-cast p1, Lcom/otaliastudios/cameraview/controls/Grid;

    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/CameraView;->setGrid(Lcom/otaliastudios/cameraview/controls/Grid;)V

    goto :goto_0

    .line 903
    :cond_3
    instance-of v0, p1, Lcom/otaliastudios/cameraview/controls/Hdr;

    if-eqz v0, :cond_4

    .line 904
    check-cast p1, Lcom/otaliastudios/cameraview/controls/Hdr;

    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/CameraView;->setHdr(Lcom/otaliastudios/cameraview/controls/Hdr;)V

    goto :goto_0

    .line 905
    :cond_4
    instance-of v0, p1, Lcom/otaliastudios/cameraview/controls/Mode;

    if-eqz v0, :cond_5

    .line 906
    check-cast p1, Lcom/otaliastudios/cameraview/controls/Mode;

    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/CameraView;->setMode(Lcom/otaliastudios/cameraview/controls/Mode;)V

    goto :goto_0

    .line 907
    :cond_5
    instance-of v0, p1, Lcom/otaliastudios/cameraview/controls/WhiteBalance;

    if-eqz v0, :cond_6

    .line 908
    check-cast p1, Lcom/otaliastudios/cameraview/controls/WhiteBalance;

    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/CameraView;->setWhiteBalance(Lcom/otaliastudios/cameraview/controls/WhiteBalance;)V

    goto :goto_0

    .line 909
    :cond_6
    instance-of v0, p1, Lcom/otaliastudios/cameraview/controls/VideoCodec;

    if-eqz v0, :cond_7

    .line 910
    check-cast p1, Lcom/otaliastudios/cameraview/controls/VideoCodec;

    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/CameraView;->setVideoCodec(Lcom/otaliastudios/cameraview/controls/VideoCodec;)V

    goto :goto_0

    .line 911
    :cond_7
    instance-of v0, p1, Lcom/otaliastudios/cameraview/controls/AudioCodec;

    if-eqz v0, :cond_8

    .line 912
    check-cast p1, Lcom/otaliastudios/cameraview/controls/AudioCodec;

    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/CameraView;->setAudioCodec(Lcom/otaliastudios/cameraview/controls/AudioCodec;)V

    goto :goto_0

    .line 913
    :cond_8
    instance-of v0, p1, Lcom/otaliastudios/cameraview/controls/Preview;

    if-eqz v0, :cond_9

    .line 914
    check-cast p1, Lcom/otaliastudios/cameraview/controls/Preview;

    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/CameraView;->setPreview(Lcom/otaliastudios/cameraview/controls/Preview;)V

    goto :goto_0

    .line 915
    :cond_9
    instance-of v0, p1, Lcom/otaliastudios/cameraview/controls/Engine;

    if-eqz v0, :cond_a

    .line 916
    check-cast p1, Lcom/otaliastudios/cameraview/controls/Engine;

    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/CameraView;->setEngine(Lcom/otaliastudios/cameraview/controls/Engine;)V

    goto :goto_0

    .line 917
    :cond_a
    instance-of v0, p1, Lcom/otaliastudios/cameraview/controls/PictureFormat;

    if-eqz v0, :cond_b

    .line 918
    check-cast p1, Lcom/otaliastudios/cameraview/controls/PictureFormat;

    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/CameraView;->setPictureFormat(Lcom/otaliastudios/cameraview/controls/PictureFormat;)V

    :cond_b
    :goto_0
    return-void
.end method

.method public setAudio(Lcom/otaliastudios/cameraview/controls/Audio;)V
    .locals 1

    .line 1321
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/CameraView;->getAudio()Lcom/otaliastudios/cameraview/controls/Audio;

    move-result-object v0

    if-eq p1, v0, :cond_2

    invoke-direct {p0}, Lcom/otaliastudios/cameraview/CameraView;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1325
    :cond_0
    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/CameraView;->checkPermissions(Lcom/otaliastudios/cameraview/controls/Audio;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1327
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v0, p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->setAudio(Lcom/otaliastudios/cameraview/controls/Audio;)V

    goto :goto_1

    .line 1334
    :cond_1
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/CameraView;->close()V

    goto :goto_1

    .line 1323
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v0, p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->setAudio(Lcom/otaliastudios/cameraview/controls/Audio;)V

    :goto_1
    return-void
.end method

.method public setAudioBitRate(I)V
    .locals 1

    .line 1641
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v0, p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->setAudioBitRate(I)V

    return-void
.end method

.method public setAudioCodec(Lcom/otaliastudios/cameraview/controls/AudioCodec;)V
    .locals 1

    .line 1665
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v0, p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->setAudioCodec(Lcom/otaliastudios/cameraview/controls/AudioCodec;)V

    return-void
.end method

.method public setAutoFocusMarker(Lcom/otaliastudios/cameraview/markers/AutoFocusMarker;)V
    .locals 2

    .line 1354
    iput-object p1, p0, Lcom/otaliastudios/cameraview/CameraView;->mAutoFocusMarker:Lcom/otaliastudios/cameraview/markers/AutoFocusMarker;

    .line 1355
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mMarkerLayout:Lcom/otaliastudios/cameraview/markers/MarkerLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/otaliastudios/cameraview/markers/MarkerLayout;->onMarker(ILcom/otaliastudios/cameraview/markers/Marker;)V

    return-void
.end method

.method public setAutoFocusResetDelay(J)V
    .locals 1

    .line 1366
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v0, p1, p2}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->setAutoFocusResetDelay(J)V

    return-void
.end method

.method public setEngine(Lcom/otaliastudios/cameraview/controls/Engine;)V
    .locals 2

    .line 1009
    invoke-direct {p0}, Lcom/otaliastudios/cameraview/CameraView;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1010
    :cond_0
    iput-object p1, p0, Lcom/otaliastudios/cameraview/CameraView;->mEngine:Lcom/otaliastudios/cameraview/controls/Engine;

    .line 1011
    iget-object p1, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    .line 1012
    invoke-direct {p0}, Lcom/otaliastudios/cameraview/CameraView;->doInstantiateEngine()V

    .line 1013
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraPreview:Lcom/otaliastudios/cameraview/preview/CameraPreview;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v1, v0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->setPreview(Lcom/otaliastudios/cameraview/preview/CameraPreview;)V

    .line 1016
    :cond_1
    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getFacing()Lcom/otaliastudios/cameraview/controls/Facing;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/otaliastudios/cameraview/CameraView;->setFacing(Lcom/otaliastudios/cameraview/controls/Facing;)V

    .line 1017
    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getFlash()Lcom/otaliastudios/cameraview/controls/Flash;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/otaliastudios/cameraview/CameraView;->setFlash(Lcom/otaliastudios/cameraview/controls/Flash;)V

    .line 1018
    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getMode()Lcom/otaliastudios/cameraview/controls/Mode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/otaliastudios/cameraview/CameraView;->setMode(Lcom/otaliastudios/cameraview/controls/Mode;)V

    .line 1019
    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getWhiteBalance()Lcom/otaliastudios/cameraview/controls/WhiteBalance;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/otaliastudios/cameraview/CameraView;->setWhiteBalance(Lcom/otaliastudios/cameraview/controls/WhiteBalance;)V

    .line 1020
    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getHdr()Lcom/otaliastudios/cameraview/controls/Hdr;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/otaliastudios/cameraview/CameraView;->setHdr(Lcom/otaliastudios/cameraview/controls/Hdr;)V

    .line 1021
    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getAudio()Lcom/otaliastudios/cameraview/controls/Audio;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/otaliastudios/cameraview/CameraView;->setAudio(Lcom/otaliastudios/cameraview/controls/Audio;)V

    .line 1022
    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getAudioBitRate()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/otaliastudios/cameraview/CameraView;->setAudioBitRate(I)V

    .line 1023
    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getAudioCodec()Lcom/otaliastudios/cameraview/controls/AudioCodec;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/otaliastudios/cameraview/CameraView;->setAudioCodec(Lcom/otaliastudios/cameraview/controls/AudioCodec;)V

    .line 1024
    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getPictureSizeSelector()Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/otaliastudios/cameraview/CameraView;->setPictureSize(Lcom/otaliastudios/cameraview/size/SizeSelector;)V

    .line 1025
    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getPictureFormat()Lcom/otaliastudios/cameraview/controls/PictureFormat;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/otaliastudios/cameraview/CameraView;->setPictureFormat(Lcom/otaliastudios/cameraview/controls/PictureFormat;)V

    .line 1026
    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getVideoSizeSelector()Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/otaliastudios/cameraview/CameraView;->setVideoSize(Lcom/otaliastudios/cameraview/size/SizeSelector;)V

    .line 1027
    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getVideoCodec()Lcom/otaliastudios/cameraview/controls/VideoCodec;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/otaliastudios/cameraview/CameraView;->setVideoCodec(Lcom/otaliastudios/cameraview/controls/VideoCodec;)V

    .line 1028
    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getVideoMaxSize()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/otaliastudios/cameraview/CameraView;->setVideoMaxSize(J)V

    .line 1029
    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getVideoMaxDuration()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/otaliastudios/cameraview/CameraView;->setVideoMaxDuration(I)V

    .line 1030
    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getVideoBitRate()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/otaliastudios/cameraview/CameraView;->setVideoBitRate(I)V

    .line 1031
    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getAutoFocusResetDelay()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/otaliastudios/cameraview/CameraView;->setAutoFocusResetDelay(J)V

    .line 1032
    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getPreviewFrameRate()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/otaliastudios/cameraview/CameraView;->setPreviewFrameRate(F)V

    .line 1033
    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getPreviewFrameRateExact()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/otaliastudios/cameraview/CameraView;->setPreviewFrameRateExact(Z)V

    .line 1034
    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getSnapshotMaxWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/otaliastudios/cameraview/CameraView;->setSnapshotMaxWidth(I)V

    .line 1035
    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getSnapshotMaxHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/otaliastudios/cameraview/CameraView;->setSnapshotMaxHeight(I)V

    .line 1036
    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getFrameProcessingMaxWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/otaliastudios/cameraview/CameraView;->setFrameProcessingMaxWidth(I)V

    .line 1037
    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getFrameProcessingMaxHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/otaliastudios/cameraview/CameraView;->setFrameProcessingMaxHeight(I)V

    const/4 v0, 0x0

    .line 1038
    invoke-virtual {p0, v0}, Lcom/otaliastudios/cameraview/CameraView;->setFrameProcessingFormat(I)V

    .line 1039
    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getFrameProcessingPoolSize()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/CameraView;->setFrameProcessingPoolSize(I)V

    .line 1040
    iget-object p1, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mFrameProcessors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->setHasFrameProcessors(Z)V

    return-void
.end method

.method public setExperimental(Z)V
    .locals 0

    .line 885
    iput-boolean p1, p0, Lcom/otaliastudios/cameraview/CameraView;->mExperimental:Z

    return-void
.end method

.method public setExposureCorrection(F)V
    .locals 4

    .line 1080
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/CameraView;->getCameraOptions()Lcom/otaliastudios/cameraview/CameraOptions;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1082
    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/CameraOptions;->getExposureCorrectionMinValue()F

    move-result v1

    .line 1083
    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/CameraOptions;->getExposureCorrectionMaxValue()F

    move-result v0

    cmpg-float v2, p1, v1

    if-gez v2, :cond_0

    move p1, v1

    :cond_0
    cmpl-float v2, p1, v0

    if-lez v2, :cond_1

    move p1, v0

    :cond_1
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v1, 0x1

    aput v0, v2, v1

    .line 1087
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v2, v1, v3}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->setExposureCorrection(F[F[Landroid/graphics/PointF;Z)V

    :cond_2
    return-void
.end method

.method public setFacing(Lcom/otaliastudios/cameraview/controls/Facing;)V
    .locals 1

    .line 1253
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v0, p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->setFacing(Lcom/otaliastudios/cameraview/controls/Facing;)V

    return-void
.end method

.method public setFilter(Lcom/otaliastudios/cameraview/filter/Filter;)V
    .locals 3

    .line 2665
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraPreview:Lcom/otaliastudios/cameraview/preview/CameraPreview;

    if-nez v0, :cond_0

    .line 2666
    iput-object p1, p0, Lcom/otaliastudios/cameraview/CameraView;->mPendingFilter:Lcom/otaliastudios/cameraview/filter/Filter;

    goto :goto_1

    .line 2668
    :cond_0
    instance-of v1, p1, Lcom/otaliastudios/cameraview/filter/NoFilter;

    .line 2669
    instance-of v2, v0, Lcom/otaliastudios/cameraview/preview/FilterCameraPreview;

    if-nez v1, :cond_2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 2672
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Filters are only supported by the GL_SURFACE preview. Current preview:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/otaliastudios/cameraview/CameraView;->mPreview:Lcom/otaliastudios/cameraview/controls/Preview;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    .line 2677
    check-cast v0, Lcom/otaliastudios/cameraview/preview/FilterCameraPreview;

    invoke-interface {v0, p1}, Lcom/otaliastudios/cameraview/preview/FilterCameraPreview;->setFilter(Lcom/otaliastudios/cameraview/filter/Filter;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setFlash(Lcom/otaliastudios/cameraview/controls/Flash;)V
    .locals 1

    .line 1297
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v0, p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->setFlash(Lcom/otaliastudios/cameraview/controls/Flash;)V

    return-void
.end method

.method public setFrameProcessingExecutors(I)V
    .locals 10

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 2584
    iput p1, p0, Lcom/otaliastudios/cameraview/CameraView;->mFrameProcessingExecutors:I

    .line 2585
    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Lcom/otaliastudios/cameraview/CameraView$6;

    invoke-direct {v8, p0}, Lcom/otaliastudios/cameraview/CameraView$6;-><init>(Lcom/otaliastudios/cameraview/CameraView;)V

    move-object v1, v9

    move v2, p1

    move v3, p1

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 2599
    invoke-virtual {v9, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 2600
    iput-object v9, p0, Lcom/otaliastudios/cameraview/CameraView;->mFrameProcessingExecutor:Ljava/util/concurrent/Executor;

    return-void

    .line 2582
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Need at least 1 executor, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFrameProcessingFormat(I)V
    .locals 1

    .line 2531
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v0, p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->setFrameProcessingFormat(I)V

    return-void
.end method

.method public setFrameProcessingMaxHeight(I)V
    .locals 1

    .line 2503
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v0, p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->setFrameProcessingMaxHeight(I)V

    return-void
.end method

.method public setFrameProcessingMaxWidth(I)V
    .locals 1

    .line 2492
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v0, p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->setFrameProcessingMaxWidth(I)V

    return-void
.end method

.method public setFrameProcessingPoolSize(I)V
    .locals 1

    .line 2557
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v0, p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->setFrameProcessingPoolSize(I)V

    return-void
.end method

.method public setGrid(Lcom/otaliastudios/cameraview/controls/Grid;)V
    .locals 1

    .line 1135
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mGridLinesLayout:Lcom/otaliastudios/cameraview/internal/GridLinesLayout;

    invoke-virtual {v0, p1}, Lcom/otaliastudios/cameraview/internal/GridLinesLayout;->setGridMode(Lcom/otaliastudios/cameraview/controls/Grid;)V

    return-void
.end method

.method public setGridColor(I)V
    .locals 1

    .line 1154
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mGridLinesLayout:Lcom/otaliastudios/cameraview/internal/GridLinesLayout;

    invoke-virtual {v0, p1}, Lcom/otaliastudios/cameraview/internal/GridLinesLayout;->setGridColor(I)V

    return-void
.end method

.method public setHdr(Lcom/otaliastudios/cameraview/controls/Hdr;)V
    .locals 1

    .line 1174
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v0, p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->setHdr(Lcom/otaliastudios/cameraview/controls/Hdr;)V

    return-void
.end method

.method public setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    if-nez p1, :cond_0

    .line 763
    invoke-direct {p0}, Lcom/otaliastudios/cameraview/CameraView;->clearLifecycleObserver()V

    goto :goto_0

    .line 765
    :cond_0
    invoke-direct {p0}, Lcom/otaliastudios/cameraview/CameraView;->clearLifecycleObserver()V

    .line 766
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    iput-object p1, p0, Lcom/otaliastudios/cameraview/CameraView;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    .line 767
    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :goto_0
    return-void
.end method

.method public setLocation(DD)V
    .locals 3

    .line 1193
    new-instance v0, Landroid/location/Location;

    const-string v1, "Unknown"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 1194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setTime(J)V

    const-wide/16 v1, 0x0

    .line 1195
    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setAltitude(D)V

    .line 1196
    invoke-virtual {v0, p1, p2}, Landroid/location/Location;->setLatitude(D)V

    .line 1197
    invoke-virtual {v0, p3, p4}, Landroid/location/Location;->setLongitude(D)V

    .line 1198
    iget-object p1, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {p1, v0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->setLocation(Landroid/location/Location;)V

    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 1

    .line 1207
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v0, p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->setLocation(Landroid/location/Location;)V

    return-void
.end method

.method public setMode(Lcom/otaliastudios/cameraview/controls/Mode;)V
    .locals 1

    .line 1444
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v0, p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->setMode(Lcom/otaliastudios/cameraview/controls/Mode;)V

    return-void
.end method

.method public setPictureFormat(Lcom/otaliastudios/cameraview/controls/PictureFormat;)V
    .locals 1

    .line 1533
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v0, p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->setPictureFormat(Lcom/otaliastudios/cameraview/controls/PictureFormat;)V

    return-void
.end method

.method public setPictureMetering(Z)V
    .locals 1

    .line 1482
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v0, p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->setPictureMetering(Z)V

    return-void
.end method

.method public setPictureSize(Lcom/otaliastudios/cameraview/size/SizeSelector;)V
    .locals 1

    .line 1465
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v0, p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->setPictureSizeSelector(Lcom/otaliastudios/cameraview/size/SizeSelector;)V

    return-void
.end method

.method public setPictureSnapshotMetering(Z)V
    .locals 1

    .line 1510
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v0, p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->setPictureSnapshotMetering(Z)V

    return-void
.end method

.method public setPlaySounds(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 2028
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mPlaySounds:Z

    .line 2029
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v0, p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->setPlaySounds(Z)V

    return-void
.end method

.method public setPreview(Lcom/otaliastudios/cameraview/controls/Preview;)V
    .locals 3

    .line 975
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mPreview:Lcom/otaliastudios/cameraview/controls/Preview;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 977
    iput-object p1, p0, Lcom/otaliastudios/cameraview/CameraView;->mPreview:Lcom/otaliastudios/cameraview/controls/Preview;

    .line 978
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/CameraView;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_2

    .line 979
    iget-object p1, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraPreview:Lcom/otaliastudios/cameraview/preview/CameraPreview;

    if-eqz p1, :cond_2

    .line 981
    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/preview/CameraPreview;->onDestroy()V

    const/4 p1, 0x0

    .line 982
    iput-object p1, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraPreview:Lcom/otaliastudios/cameraview/preview/CameraPreview;

    :cond_2
    return-void
.end method

.method public setPreviewFrameRate(F)V
    .locals 1

    .line 1620
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v0, p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->setPreviewFrameRate(F)V

    return-void
.end method

.method public setPreviewFrameRateExact(Z)V
    .locals 1

    .line 1595
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v0, p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->setPreviewFrameRateExact(Z)V

    return-void
.end method

.method public setPreviewStreamSize(Lcom/otaliastudios/cameraview/size/SizeSelector;)V
    .locals 1

    .line 1432
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v0, p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->setPreviewStreamSizeSelector(Lcom/otaliastudios/cameraview/size/SizeSelector;)V

    return-void
.end method

.method public setRequestPermissions(Z)V
    .locals 0

    .line 735
    iput-boolean p1, p0, Lcom/otaliastudios/cameraview/CameraView;->mRequestPermissions:Z

    return-void
.end method

.method public setSnapshotMaxHeight(I)V
    .locals 1

    .line 1910
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v0, p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->setSnapshotMaxHeight(I)V

    return-void
.end method

.method public setSnapshotMaxWidth(I)V
    .locals 1

    .line 1899
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v0, p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->setSnapshotMaxWidth(I)V

    return-void
.end method

.method public setUseDeviceOrientation(Z)V
    .locals 0

    .line 2050
    iput-boolean p1, p0, Lcom/otaliastudios/cameraview/CameraView;->mUseDeviceOrientation:Z

    return-void
.end method

.method public setVideoBitRate(I)V
    .locals 1

    .line 1566
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v0, p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->setVideoBitRate(I)V

    return-void
.end method

.method public setVideoCodec(Lcom/otaliastudios/cameraview/controls/VideoCodec;)V
    .locals 1

    .line 2075
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v0, p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->setVideoCodec(Lcom/otaliastudios/cameraview/controls/VideoCodec;)V

    return-void
.end method

.method public setVideoMaxDuration(I)V
    .locals 1

    .line 2117
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v0, p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->setVideoMaxDuration(I)V

    return-void
.end method

.method public setVideoMaxSize(J)V
    .locals 1

    .line 2095
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v0, p1, p2}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->setVideoMaxSize(J)V

    return-void
.end method

.method public setVideoSize(Lcom/otaliastudios/cameraview/size/SizeSelector;)V
    .locals 1

    .line 1556
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v0, p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->setVideoSizeSelector(Lcom/otaliastudios/cameraview/size/SizeSelector;)V

    return-void
.end method

.method public setWhiteBalance(Lcom/otaliastudios/cameraview/controls/WhiteBalance;)V
    .locals 1

    .line 1232
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v0, p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->setWhiteBalance(Lcom/otaliastudios/cameraview/controls/WhiteBalance;)V

    return-void
.end method

.method public setZoom(F)V
    .locals 3

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const/4 p1, 0x0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    .line 1113
    :cond_1
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->setZoom(F[Landroid/graphics/PointF;Z)V

    return-void
.end method

.method public startAutoFocus(FF)V
    .locals 3

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-ltz v1, :cond_1

    .line 1385
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/CameraView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-gtz v1, :cond_1

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_0

    .line 1388
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/CameraView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-gtz v0, :cond_0

    .line 1391
    new-instance v0, Lcom/otaliastudios/cameraview/size/Size;

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/CameraView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/CameraView;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/otaliastudios/cameraview/size/Size;-><init>(II)V

    .line 1392
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1393
    invoke-static {v0, v1}, Lcom/otaliastudios/cameraview/metering/MeteringRegions;->fromPoint(Lcom/otaliastudios/cameraview/size/Size;Landroid/graphics/PointF;)Lcom/otaliastudios/cameraview/metering/MeteringRegions;

    move-result-object p1

    .line 1394
    iget-object p2, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1, v1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->startAutoFocus(Lcom/otaliastudios/cameraview/gesture/Gesture;Lcom/otaliastudios/cameraview/metering/MeteringRegions;Landroid/graphics/PointF;)V

    return-void

    .line 1389
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "y should be >= 0 and <= getHeight()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1386
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "x should be >= 0 and <= getWidth()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startAutoFocus(Landroid/graphics/RectF;)V
    .locals 5

    .line 1404
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/CameraView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/CameraView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1405
    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1408
    new-instance v0, Lcom/otaliastudios/cameraview/size/Size;

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/CameraView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/CameraView;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/otaliastudios/cameraview/size/Size;-><init>(II)V

    .line 1409
    invoke-static {v0, p1}, Lcom/otaliastudios/cameraview/metering/MeteringRegions;->fromArea(Lcom/otaliastudios/cameraview/size/Size;Landroid/graphics/RectF;)Lcom/otaliastudios/cameraview/metering/MeteringRegions;

    move-result-object v0

    .line 1410
    iget-object v1, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    const/4 v2, 0x0

    new-instance v3, Landroid/graphics/PointF;

    .line 1411
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    invoke-direct {v3, v4, p1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1410
    invoke-virtual {v1, v2, v0, v3}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->startAutoFocus(Lcom/otaliastudios/cameraview/gesture/Gesture;Lcom/otaliastudios/cameraview/metering/MeteringRegions;Landroid/graphics/PointF;)V

    return-void

    .line 1406
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Region is out of view bounds! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stopVideo()V
    .locals 2

    .line 1882
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->stopVideo()V

    .line 1883
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/otaliastudios/cameraview/CameraView$5;

    invoke-direct {v1, p0}, Lcom/otaliastudios/cameraview/CameraView$5;-><init>(Lcom/otaliastudios/cameraview/CameraView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public takePicture()V
    .locals 2

    .line 1712
    new-instance v0, Lcom/otaliastudios/cameraview/PictureResult$Stub;

    invoke-direct {v0}, Lcom/otaliastudios/cameraview/PictureResult$Stub;-><init>()V

    .line 1713
    iget-object v1, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v1, v0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->takePicture(Lcom/otaliastudios/cameraview/PictureResult$Stub;)V

    return-void
.end method

.method public takePictureSnapshot()V
    .locals 2

    .line 1727
    new-instance v0, Lcom/otaliastudios/cameraview/PictureResult$Stub;

    invoke-direct {v0}, Lcom/otaliastudios/cameraview/PictureResult$Stub;-><init>()V

    .line 1728
    iget-object v1, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v1, v0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->takePictureSnapshot(Lcom/otaliastudios/cameraview/PictureResult$Stub;)V

    return-void
.end method

.method public takeVideo(Ljava/io/File;)V
    .locals 1

    const/4 v0, 0x0

    .line 1738
    invoke-direct {p0, p1, v0}, Lcom/otaliastudios/cameraview/CameraView;->takeVideo(Ljava/io/File;Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public takeVideo(Ljava/io/File;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1800
    invoke-direct {p0, p1, v0, p2}, Lcom/otaliastudios/cameraview/CameraView;->takeVideo(Ljava/io/File;Ljava/io/FileDescriptor;I)V

    return-void
.end method

.method public takeVideo(Ljava/io/FileDescriptor;)V
    .locals 1

    const/4 v0, 0x0

    .line 1748
    invoke-direct {p0, v0, p1}, Lcom/otaliastudios/cameraview/CameraView;->takeVideo(Ljava/io/File;Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public takeVideo(Ljava/io/FileDescriptor;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1814
    invoke-direct {p0, v0, p1, p2}, Lcom/otaliastudios/cameraview/CameraView;->takeVideo(Ljava/io/File;Ljava/io/FileDescriptor;I)V

    return-void
.end method

.method public takeVideoSnapshot(Ljava/io/File;)V
    .locals 2

    .line 1779
    new-instance v0, Lcom/otaliastudios/cameraview/VideoResult$Stub;

    invoke-direct {v0}, Lcom/otaliastudios/cameraview/VideoResult$Stub;-><init>()V

    .line 1780
    iget-object v1, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v1, v0, p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->takeVideoSnapshot(Lcom/otaliastudios/cameraview/VideoResult$Stub;Ljava/io/File;)V

    .line 1781
    iget-object p1, p0, Lcom/otaliastudios/cameraview/CameraView;->mUiHandler:Landroid/os/Handler;

    new-instance v0, Lcom/otaliastudios/cameraview/CameraView$2;

    invoke-direct {v0, p0}, Lcom/otaliastudios/cameraview/CameraView$2;-><init>(Lcom/otaliastudios/cameraview/CameraView;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public takeVideoSnapshot(Ljava/io/File;I)V
    .locals 2

    .line 1854
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/CameraView;->getVideoMaxDuration()I

    move-result v0

    .line 1855
    new-instance v1, Lcom/otaliastudios/cameraview/CameraView$4;

    invoke-direct {v1, p0, v0}, Lcom/otaliastudios/cameraview/CameraView$4;-><init>(Lcom/otaliastudios/cameraview/CameraView;I)V

    invoke-virtual {p0, v1}, Lcom/otaliastudios/cameraview/CameraView;->addCameraListener(Lcom/otaliastudios/cameraview/CameraListener;)V

    .line 1871
    invoke-virtual {p0, p2}, Lcom/otaliastudios/cameraview/CameraView;->setVideoMaxDuration(I)V

    .line 1872
    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/CameraView;->takeVideoSnapshot(Ljava/io/File;)V

    return-void
.end method

.method public toggleFacing()Lcom/otaliastudios/cameraview/controls/Facing;
    .locals 2

    .line 1272
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getFacing()Lcom/otaliastudios/cameraview/controls/Facing;

    move-result-object v0

    .line 1273
    sget-object v1, Lcom/otaliastudios/cameraview/CameraView$7;->$SwitchMap$com$otaliastudios$cameraview$controls$Facing:[I

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/controls/Facing;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1279
    :cond_0
    sget-object v0, Lcom/otaliastudios/cameraview/controls/Facing;->BACK:Lcom/otaliastudios/cameraview/controls/Facing;

    invoke-virtual {p0, v0}, Lcom/otaliastudios/cameraview/CameraView;->setFacing(Lcom/otaliastudios/cameraview/controls/Facing;)V

    goto :goto_0

    .line 1275
    :cond_1
    sget-object v0, Lcom/otaliastudios/cameraview/controls/Facing;->FRONT:Lcom/otaliastudios/cameraview/controls/Facing;

    invoke-virtual {p0, v0}, Lcom/otaliastudios/cameraview/CameraView;->setFacing(Lcom/otaliastudios/cameraview/controls/Facing;)V

    .line 1283
    :goto_0
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->mCameraEngine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getFacing()Lcom/otaliastudios/cameraview/controls/Facing;

    move-result-object v0

    return-object v0
.end method
