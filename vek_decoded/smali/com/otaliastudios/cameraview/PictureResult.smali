.class public Lcom/otaliastudios/cameraview/PictureResult;
.super Ljava/lang/Object;
.source "PictureResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/otaliastudios/cameraview/PictureResult$Stub;
    }
.end annotation


# instance fields
.field private final data:[B

.field private final facing:Lcom/otaliastudios/cameraview/controls/Facing;

.field private final format:Lcom/otaliastudios/cameraview/controls/PictureFormat;

.field private final isSnapshot:Z

.field private final location:Landroid/location/Location;

.field private final rotation:I

.field private final size:Lcom/otaliastudios/cameraview/size/Size;


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/PictureResult$Stub;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iget-boolean v0, p1, Lcom/otaliastudios/cameraview/PictureResult$Stub;->isSnapshot:Z

    iput-boolean v0, p0, Lcom/otaliastudios/cameraview/PictureResult;->isSnapshot:Z

    .line 49
    iget-object v0, p1, Lcom/otaliastudios/cameraview/PictureResult$Stub;->location:Landroid/location/Location;

    iput-object v0, p0, Lcom/otaliastudios/cameraview/PictureResult;->location:Landroid/location/Location;

    .line 50
    iget v0, p1, Lcom/otaliastudios/cameraview/PictureResult$Stub;->rotation:I

    iput v0, p0, Lcom/otaliastudios/cameraview/PictureResult;->rotation:I

    .line 51
    iget-object v0, p1, Lcom/otaliastudios/cameraview/PictureResult$Stub;->size:Lcom/otaliastudios/cameraview/size/Size;

    iput-object v0, p0, Lcom/otaliastudios/cameraview/PictureResult;->size:Lcom/otaliastudios/cameraview/size/Size;

    .line 52
    iget-object v0, p1, Lcom/otaliastudios/cameraview/PictureResult$Stub;->facing:Lcom/otaliastudios/cameraview/controls/Facing;

    iput-object v0, p0, Lcom/otaliastudios/cameraview/PictureResult;->facing:Lcom/otaliastudios/cameraview/controls/Facing;

    .line 53
    iget-object v0, p1, Lcom/otaliastudios/cameraview/PictureResult$Stub;->data:[B

    iput-object v0, p0, Lcom/otaliastudios/cameraview/PictureResult;->data:[B

    .line 54
    iget-object p1, p1, Lcom/otaliastudios/cameraview/PictureResult$Stub;->format:Lcom/otaliastudios/cameraview/controls/PictureFormat;

    iput-object p1, p0, Lcom/otaliastudios/cameraview/PictureResult;->format:Lcom/otaliastudios/cameraview/controls/PictureFormat;

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/otaliastudios/cameraview/PictureResult;->data:[B

    return-object v0
.end method

.method public getFacing()Lcom/otaliastudios/cameraview/controls/Facing;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/otaliastudios/cameraview/PictureResult;->facing:Lcom/otaliastudios/cameraview/controls/Facing;

    return-object v0
.end method

.method public getFormat()Lcom/otaliastudios/cameraview/controls/PictureFormat;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/otaliastudios/cameraview/PictureResult;->format:Lcom/otaliastudios/cameraview/controls/PictureFormat;

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/otaliastudios/cameraview/PictureResult;->location:Landroid/location/Location;

    return-object v0
.end method

.method public getRotation()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/otaliastudios/cameraview/PictureResult;->rotation:I

    return v0
.end method

.method public getSize()Lcom/otaliastudios/cameraview/size/Size;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/otaliastudios/cameraview/PictureResult;->size:Lcom/otaliastudios/cameraview/size/Size;

    return-object v0
.end method

.method public isSnapshot()Z
    .locals 1

    .line 63
    iget-boolean v0, p0, Lcom/otaliastudios/cameraview/PictureResult;->isSnapshot:Z

    return v0
.end method

.method public toBitmap(IILcom/otaliastudios/cameraview/BitmapCallback;)V
    .locals 8

    .line 139
    iget-object v0, p0, Lcom/otaliastudios/cameraview/PictureResult;->format:Lcom/otaliastudios/cameraview/controls/PictureFormat;

    sget-object v1, Lcom/otaliastudios/cameraview/controls/PictureFormat;->JPEG:Lcom/otaliastudios/cameraview/controls/PictureFormat;

    if-ne v0, v1, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/PictureResult;->getData()[B

    move-result-object v2

    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iget v6, p0, Lcom/otaliastudios/cameraview/PictureResult;->rotation:I

    move v3, p1

    move v4, p2

    move-object v7, p3

    invoke-static/range {v2 .. v7}, Lcom/otaliastudios/cameraview/CameraUtils;->decodeBitmap([BIILandroid/graphics/BitmapFactory$Options;ILcom/otaliastudios/cameraview/BitmapCallback;)V

    goto :goto_0

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/otaliastudios/cameraview/PictureResult;->format:Lcom/otaliastudios/cameraview/controls/PictureFormat;

    sget-object v1, Lcom/otaliastudios/cameraview/controls/PictureFormat;->DNG:Lcom/otaliastudios/cameraview/controls/PictureFormat;

    if-ne v0, v1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    .line 145
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/PictureResult;->getData()[B

    move-result-object v2

    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iget v6, p0, Lcom/otaliastudios/cameraview/PictureResult;->rotation:I

    move v3, p1

    move v4, p2

    move-object v7, p3

    invoke-static/range {v2 .. v7}, Lcom/otaliastudios/cameraview/CameraUtils;->decodeBitmap([BIILandroid/graphics/BitmapFactory$Options;ILcom/otaliastudios/cameraview/BitmapCallback;)V

    :goto_0
    return-void

    .line 148
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "PictureResult.toBitmap() does not support this picture format: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lcom/otaliastudios/cameraview/PictureResult;->format:Lcom/otaliastudios/cameraview/controls/PictureFormat;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toBitmap(Lcom/otaliastudios/cameraview/BitmapCallback;)V
    .locals 1

    const/4 v0, -0x1

    .line 161
    invoke-virtual {p0, v0, v0, p1}, Lcom/otaliastudios/cameraview/PictureResult;->toBitmap(IILcom/otaliastudios/cameraview/BitmapCallback;)V

    return-void
.end method

.method public toFile(Ljava/io/File;Lcom/otaliastudios/cameraview/FileCallback;)V
    .locals 1

    .line 173
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/PictureResult;->getData()[B

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/otaliastudios/cameraview/CameraUtils;->writeToFile([BLjava/io/File;Lcom/otaliastudios/cameraview/FileCallback;)V

    return-void
.end method
