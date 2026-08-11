.class public Lcom/otaliastudios/cameraview/markers/MarkerParser;
.super Ljava/lang/Object;
.source "MarkerParser.java"


# instance fields
.field private autoFocusMarker:Lcom/otaliastudios/cameraview/markers/AutoFocusMarker;


# direct methods
.method public constructor <init>(Landroid/content/res/TypedArray;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/otaliastudios/cameraview/markers/MarkerParser;->autoFocusMarker:Lcom/otaliastudios/cameraview/markers/AutoFocusMarker;

    .line 28
    sget v0, Lcom/otaliastudios/cameraview/R$styleable;->CameraView_cameraAutoFocusMarker:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 31
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 32
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/otaliastudios/cameraview/markers/AutoFocusMarker;

    iput-object p1, p0, Lcom/otaliastudios/cameraview/markers/MarkerParser;->autoFocusMarker:Lcom/otaliastudios/cameraview/markers/AutoFocusMarker;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public getAutoFocusMarker()Lcom/otaliastudios/cameraview/markers/AutoFocusMarker;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/otaliastudios/cameraview/markers/MarkerParser;->autoFocusMarker:Lcom/otaliastudios/cameraview/markers/AutoFocusMarker;

    return-object v0
.end method
