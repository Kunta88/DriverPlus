.class Lcom/otaliastudios/cameraview/video/encoding/TextureMediaEncoder$1;
.super Ljava/lang/Object;
.source "TextureMediaEncoder.java"

# interfaces
.implements Lcom/otaliastudios/cameraview/internal/Pool$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/otaliastudios/cameraview/video/encoding/TextureMediaEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/otaliastudios/cameraview/internal/Pool$Factory<",
        "Lcom/otaliastudios/cameraview/video/encoding/TextureMediaEncoder$Frame;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/video/encoding/TextureMediaEncoder;


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/video/encoding/TextureMediaEncoder;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/otaliastudios/cameraview/video/encoding/TextureMediaEncoder$1;->this$0:Lcom/otaliastudios/cameraview/video/encoding/TextureMediaEncoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lcom/otaliastudios/cameraview/video/encoding/TextureMediaEncoder$Frame;
    .locals 2

    .line 37
    new-instance v0, Lcom/otaliastudios/cameraview/video/encoding/TextureMediaEncoder$Frame;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/otaliastudios/cameraview/video/encoding/TextureMediaEncoder$Frame;-><init>(Lcom/otaliastudios/cameraview/video/encoding/TextureMediaEncoder$1;)V

    return-object v0
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/video/encoding/TextureMediaEncoder$1;->create()Lcom/otaliastudios/cameraview/video/encoding/TextureMediaEncoder$Frame;

    move-result-object v0

    return-object v0
.end method
