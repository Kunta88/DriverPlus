.class public Lcom/otaliastudios/cameraview/preview/SurfaceCameraPreview;
.super Lcom/otaliastudios/cameraview/preview/CameraPreview;
.source "SurfaceCameraPreview.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/otaliastudios/cameraview/preview/CameraPreview<",
        "Landroid/view/SurfaceView;",
        "Landroid/view/SurfaceHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG:Lcom/otaliastudios/cameraview/CameraLogger;


# instance fields
.field private mDispatched:Z

.field private mRootView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/otaliastudios/cameraview/preview/SurfaceCameraPreview;

    .line 25
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/otaliastudios/cameraview/CameraLogger;->create(Ljava/lang/String;)Lcom/otaliastudios/cameraview/CameraLogger;

    move-result-object v0

    sput-object v0, Lcom/otaliastudios/cameraview/preview/SurfaceCameraPreview;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/otaliastudios/cameraview/preview/CameraPreview;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic access$000(Lcom/otaliastudios/cameraview/preview/SurfaceCameraPreview;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcom/otaliastudios/cameraview/preview/SurfaceCameraPreview;->mDispatched:Z

    return p0
.end method

.method static synthetic access$002(Lcom/otaliastudios/cameraview/preview/SurfaceCameraPreview;Z)Z
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/otaliastudios/cameraview/preview/SurfaceCameraPreview;->mDispatched:Z

    return p1
.end method

.method static synthetic access$100()Lcom/otaliastudios/cameraview/CameraLogger;
    .locals 1

    .line 22
    sget-object v0, Lcom/otaliastudios/cameraview/preview/SurfaceCameraPreview;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    return-object v0
.end method


# virtual methods
.method public getOutput()Landroid/view/SurfaceHolder;
    .locals 1

    .line 85
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/preview/SurfaceCameraPreview;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOutput()Ljava/lang/Object;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/preview/SurfaceCameraPreview;->getOutput()Landroid/view/SurfaceHolder;

    move-result-object v0

    return-object v0
.end method

.method public getOutputClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Landroid/view/SurfaceHolder;",
            ">;"
        }
    .end annotation

    .line 91
    const-class v0, Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/otaliastudios/cameraview/preview/SurfaceCameraPreview;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method protected onCreateView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/SurfaceView;
    .locals 2

    .line 37
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/otaliastudios/cameraview/R$layout;->cameraview_surface_view:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 39
    invoke-virtual {p2, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 40
    sget p2, Lcom/otaliastudios/cameraview/R$id;->surface_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/SurfaceView;

    .line 41
    invoke-virtual {p2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    .line 42
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 43
    new-instance v1, Lcom/otaliastudios/cameraview/preview/SurfaceCameraPreview$1;

    invoke-direct {v1, p0}, Lcom/otaliastudios/cameraview/preview/SurfaceCameraPreview$1;-><init>(Lcom/otaliastudios/cameraview/preview/SurfaceCameraPreview;)V

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 72
    iput-object p1, p0, Lcom/otaliastudios/cameraview/preview/SurfaceCameraPreview;->mRootView:Landroid/view/View;

    return-object p2
.end method

.method protected bridge synthetic onCreateView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/otaliastudios/cameraview/preview/SurfaceCameraPreview;->onCreateView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/SurfaceView;

    move-result-object p1

    return-object p1
.end method
