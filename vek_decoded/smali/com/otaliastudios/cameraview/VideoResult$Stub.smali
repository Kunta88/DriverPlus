.class public Lcom/otaliastudios/cameraview/VideoResult$Stub;
.super Ljava/lang/Object;
.source "VideoResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/otaliastudios/cameraview/VideoResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Stub"
.end annotation


# instance fields
.field public audio:Lcom/otaliastudios/cameraview/controls/Audio;

.field public audioBitRate:I

.field public audioCodec:Lcom/otaliastudios/cameraview/controls/AudioCodec;

.field public endReason:I

.field public facing:Lcom/otaliastudios/cameraview/controls/Facing;

.field public file:Ljava/io/File;

.field public fileDescriptor:Ljava/io/FileDescriptor;

.field public isSnapshot:Z

.field public location:Landroid/location/Location;

.field public maxDuration:I

.field public maxSize:J

.field public rotation:I

.field public size:Lcom/otaliastudios/cameraview/size/Size;

.field public videoBitRate:I

.field public videoCodec:Lcom/otaliastudios/cameraview/controls/VideoCodec;

.field public videoFrameRate:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
