.class public Lcom/otaliastudios/cameraview/video/encoding/TextureMediaEncoder$Frame;
.super Ljava/lang/Object;
.source "TextureMediaEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/otaliastudios/cameraview/video/encoding/TextureMediaEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Frame"
.end annotation


# instance fields
.field public timestampMillis:J

.field public timestampNanos:J

.field public transform:[F


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 69
    iput-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/TextureMediaEncoder$Frame;->transform:[F

    return-void
.end method

.method synthetic constructor <init>(Lcom/otaliastudios/cameraview/video/encoding/TextureMediaEncoder$1;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/otaliastudios/cameraview/video/encoding/TextureMediaEncoder$Frame;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/otaliastudios/cameraview/video/encoding/TextureMediaEncoder$Frame;)J
    .locals 2

    .line 51
    invoke-direct {p0}, Lcom/otaliastudios/cameraview/video/encoding/TextureMediaEncoder$Frame;->timestampUs()J

    move-result-wide v0

    return-wide v0
.end method

.method private timestampUs()J
    .locals 4

    .line 72
    iget-wide v0, p0, Lcom/otaliastudios/cameraview/video/encoding/TextureMediaEncoder$Frame;->timestampNanos:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method
