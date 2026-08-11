.class public Lcom/otaliastudios/cameraview/internal/Issue514Workaround;
.super Ljava/lang/Object;
.source "Issue514Workaround.java"


# instance fields
.field private final textureId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput p1, p0, Lcom/otaliastudios/cameraview/internal/Issue514Workaround;->textureId:I

    return-void
.end method

.method private bindTexture(I)V
    .locals 1

    const v0, 0x8d65

    .line 120
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void
.end method


# virtual methods
.method public beforeOverlayUpdateTexImage()V
    .locals 1

    .line 112
    iget v0, p0, Lcom/otaliastudios/cameraview/internal/Issue514Workaround;->textureId:I

    invoke-direct {p0, v0}, Lcom/otaliastudios/cameraview/internal/Issue514Workaround;->bindTexture(I)V

    return-void
.end method

.method public end()V
    .locals 1

    const/4 v0, 0x0

    .line 116
    invoke-direct {p0, v0}, Lcom/otaliastudios/cameraview/internal/Issue514Workaround;->bindTexture(I)V

    return-void
.end method
