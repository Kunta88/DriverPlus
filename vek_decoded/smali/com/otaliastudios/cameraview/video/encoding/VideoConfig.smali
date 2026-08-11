.class public Lcom/otaliastudios/cameraview/video/encoding/VideoConfig;
.super Ljava/lang/Object;
.source "VideoConfig.java"


# instance fields
.field public bitRate:I

.field public encoder:Ljava/lang/String;

.field public frameRate:I

.field public height:I

.field public mimeType:Ljava/lang/String;

.field public rotation:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected copy(Lcom/otaliastudios/cameraview/video/encoding/VideoConfig;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Lcom/otaliastudios/cameraview/video/encoding/VideoConfig;",
            ">(TC;)V"
        }
    .end annotation

    .line 19
    iget v0, p0, Lcom/otaliastudios/cameraview/video/encoding/VideoConfig;->width:I

    iput v0, p1, Lcom/otaliastudios/cameraview/video/encoding/VideoConfig;->width:I

    .line 20
    iget v0, p0, Lcom/otaliastudios/cameraview/video/encoding/VideoConfig;->height:I

    iput v0, p1, Lcom/otaliastudios/cameraview/video/encoding/VideoConfig;->height:I

    .line 21
    iget v0, p0, Lcom/otaliastudios/cameraview/video/encoding/VideoConfig;->bitRate:I

    iput v0, p1, Lcom/otaliastudios/cameraview/video/encoding/VideoConfig;->bitRate:I

    .line 22
    iget v0, p0, Lcom/otaliastudios/cameraview/video/encoding/VideoConfig;->frameRate:I

    iput v0, p1, Lcom/otaliastudios/cameraview/video/encoding/VideoConfig;->frameRate:I

    .line 23
    iget v0, p0, Lcom/otaliastudios/cameraview/video/encoding/VideoConfig;->rotation:I

    iput v0, p1, Lcom/otaliastudios/cameraview/video/encoding/VideoConfig;->rotation:I

    .line 24
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/VideoConfig;->mimeType:Ljava/lang/String;

    iput-object v0, p1, Lcom/otaliastudios/cameraview/video/encoding/VideoConfig;->mimeType:Ljava/lang/String;

    .line 25
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/VideoConfig;->encoder:Ljava/lang/String;

    iput-object v0, p1, Lcom/otaliastudios/cameraview/video/encoding/VideoConfig;->encoder:Ljava/lang/String;

    return-void
.end method
