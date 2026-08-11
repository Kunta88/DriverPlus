.class public Lcom/otaliastudios/cameraview/engine/offset/Angles;
.super Ljava/lang/Object;
.source "Angles.java"


# static fields
.field private static final LOG:Lcom/otaliastudios/cameraview/CameraLogger;

.field private static final TAG:Ljava/lang/String; = "Angles"


# instance fields
.field mDeviceOrientation:I

.field mDisplayOffset:I

.field private mSensorFacing:Lcom/otaliastudios/cameraview/controls/Facing;

.field mSensorOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lcom/otaliastudios/cameraview/engine/offset/Angles;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-static {v0}, Lcom/otaliastudios/cameraview/CameraLogger;->create(Ljava/lang/String;)Lcom/otaliastudios/cameraview/CameraLogger;

    move-result-object v0

    sput-object v0, Lcom/otaliastudios/cameraview/engine/offset/Angles;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/otaliastudios/cameraview/engine/offset/Angles;->mSensorOffset:I

    .line 30
    iput v0, p0, Lcom/otaliastudios/cameraview/engine/offset/Angles;->mDisplayOffset:I

    .line 31
    iput v0, p0, Lcom/otaliastudios/cameraview/engine/offset/Angles;->mDeviceOrientation:I

    return-void
.end method

.method private absoluteOffset(Lcom/otaliastudios/cameraview/engine/offset/Reference;Lcom/otaliastudios/cameraview/engine/offset/Reference;)I
    .locals 2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 97
    :cond_0
    sget-object v0, Lcom/otaliastudios/cameraview/engine/offset/Reference;->BASE:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    if-ne p2, v0, :cond_1

    .line 98
    invoke-direct {p0, p2, p1}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->absoluteOffset(Lcom/otaliastudios/cameraview/engine/offset/Reference;Lcom/otaliastudios/cameraview/engine/offset/Reference;)I

    move-result p1

    rsub-int p1, p1, 0x168

    invoke-direct {p0, p1}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->sanitizeOutput(I)I

    move-result p1

    return p1

    .line 99
    :cond_1
    sget-object v0, Lcom/otaliastudios/cameraview/engine/offset/Reference;->BASE:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    if-ne p1, v0, :cond_5

    .line 100
    sget-object p1, Lcom/otaliastudios/cameraview/engine/offset/Angles$1;->$SwitchMap$com$otaliastudios$cameraview$engine$offset$Reference:[I

    invoke-virtual {p2}, Lcom/otaliastudios/cameraview/engine/offset/Reference;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 103
    iget p1, p0, Lcom/otaliastudios/cameraview/engine/offset/Angles;->mSensorOffset:I

    rsub-int p1, p1, 0x168

    invoke-direct {p0, p1}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->sanitizeOutput(I)I

    move-result p1

    return p1

    .line 104
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown reference: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 102
    :cond_3
    iget p1, p0, Lcom/otaliastudios/cameraview/engine/offset/Angles;->mDeviceOrientation:I

    invoke-direct {p0, p1}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->sanitizeOutput(I)I

    move-result p1

    return p1

    .line 101
    :cond_4
    iget p1, p0, Lcom/otaliastudios/cameraview/engine/offset/Angles;->mDisplayOffset:I

    rsub-int p1, p1, 0x168

    invoke-direct {p0, p1}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->sanitizeOutput(I)I

    move-result p1

    return p1

    .line 107
    :cond_5
    sget-object v0, Lcom/otaliastudios/cameraview/engine/offset/Reference;->BASE:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    .line 108
    invoke-direct {p0, v0, p2}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->absoluteOffset(Lcom/otaliastudios/cameraview/engine/offset/Reference;Lcom/otaliastudios/cameraview/engine/offset/Reference;)I

    move-result p2

    sget-object v0, Lcom/otaliastudios/cameraview/engine/offset/Reference;->BASE:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    .line 109
    invoke-direct {p0, v0, p1}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->absoluteOffset(Lcom/otaliastudios/cameraview/engine/offset/Reference;Lcom/otaliastudios/cameraview/engine/offset/Reference;)I

    move-result p1

    sub-int/2addr p2, p1

    .line 107
    invoke-direct {p0, p2}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->sanitizeOutput(I)I

    move-result p1

    return p1
.end method

.method private print()V
    .locals 4

    .line 71
    sget-object v0, Lcom/otaliastudios/cameraview/engine/offset/Angles;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Angles changed:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "sensorOffset:"

    aput-object v3, v1, v2

    iget v2, p0, Lcom/otaliastudios/cameraview/engine/offset/Angles;->mSensorOffset:I

    .line 72
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/4 v2, 0x3

    const-string v3, "displayOffset:"

    aput-object v3, v1, v2

    iget v2, p0, Lcom/otaliastudios/cameraview/engine/offset/Angles;->mDisplayOffset:I

    .line 73
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const/4 v2, 0x5

    const-string v3, "deviceOrientation:"

    aput-object v3, v1, v2

    iget v2, p0, Lcom/otaliastudios/cameraview/engine/offset/Angles;->mDeviceOrientation:I

    .line 74
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 71
    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    return-void
.end method

.method private sanitizeInput(I)V
    .locals 3

    if-eqz p1, :cond_1

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This value is not sanitized: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private sanitizeOutput(I)I
    .locals 0

    add-int/lit16 p1, p1, 0x168

    .line 133
    rem-int/lit16 p1, p1, 0x168

    return p1
.end method


# virtual methods
.method public flip(Lcom/otaliastudios/cameraview/engine/offset/Reference;Lcom/otaliastudios/cameraview/engine/offset/Reference;)Z
    .locals 1

    .line 120
    sget-object v0, Lcom/otaliastudios/cameraview/engine/offset/Axis;->ABSOLUTE:Lcom/otaliastudios/cameraview/engine/offset/Axis;

    invoke-virtual {p0, p1, p2, v0}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->offset(Lcom/otaliastudios/cameraview/engine/offset/Reference;Lcom/otaliastudios/cameraview/engine/offset/Reference;Lcom/otaliastudios/cameraview/engine/offset/Axis;)I

    move-result p1

    rem-int/lit16 p1, p1, 0xb4

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public offset(Lcom/otaliastudios/cameraview/engine/offset/Reference;Lcom/otaliastudios/cameraview/engine/offset/Reference;Lcom/otaliastudios/cameraview/engine/offset/Axis;)I
    .locals 0

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->absoluteOffset(Lcom/otaliastudios/cameraview/engine/offset/Reference;Lcom/otaliastudios/cameraview/engine/offset/Reference;)I

    move-result p1

    .line 86
    sget-object p2, Lcom/otaliastudios/cameraview/engine/offset/Axis;->RELATIVE_TO_SENSOR:Lcom/otaliastudios/cameraview/engine/offset/Axis;

    if-ne p3, p2, :cond_0

    .line 87
    iget-object p2, p0, Lcom/otaliastudios/cameraview/engine/offset/Angles;->mSensorFacing:Lcom/otaliastudios/cameraview/controls/Facing;

    sget-object p3, Lcom/otaliastudios/cameraview/controls/Facing;->FRONT:Lcom/otaliastudios/cameraview/controls/Facing;

    if-ne p2, p3, :cond_0

    rsub-int p1, p1, 0x168

    .line 88
    invoke-direct {p0, p1}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->sanitizeOutput(I)I

    move-result p1

    :cond_0
    return p1
.end method

.method public setDeviceOrientation(I)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->sanitizeInput(I)V

    .line 66
    iput p1, p0, Lcom/otaliastudios/cameraview/engine/offset/Angles;->mDeviceOrientation:I

    .line 67
    invoke-direct {p0}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->print()V

    return-void
.end method

.method public setDisplayOffset(I)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->sanitizeInput(I)V

    .line 56
    iput p1, p0, Lcom/otaliastudios/cameraview/engine/offset/Angles;->mDisplayOffset:I

    .line 57
    invoke-direct {p0}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->print()V

    return-void
.end method

.method public setSensorOffset(Lcom/otaliastudios/cameraview/controls/Facing;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p2}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->sanitizeInput(I)V

    .line 42
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/offset/Angles;->mSensorFacing:Lcom/otaliastudios/cameraview/controls/Facing;

    .line 43
    iput p2, p0, Lcom/otaliastudios/cameraview/engine/offset/Angles;->mSensorOffset:I

    .line 44
    sget-object p2, Lcom/otaliastudios/cameraview/controls/Facing;->FRONT:Lcom/otaliastudios/cameraview/controls/Facing;

    if-ne p1, p2, :cond_0

    .line 45
    iget p1, p0, Lcom/otaliastudios/cameraview/engine/offset/Angles;->mSensorOffset:I

    rsub-int p1, p1, 0x168

    invoke-direct {p0, p1}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->sanitizeOutput(I)I

    move-result p1

    iput p1, p0, Lcom/otaliastudios/cameraview/engine/offset/Angles;->mSensorOffset:I

    .line 47
    :cond_0
    invoke-direct {p0}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->print()V

    return-void
.end method
