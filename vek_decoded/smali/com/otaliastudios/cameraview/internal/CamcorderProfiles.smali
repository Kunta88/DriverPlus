.class public Lcom/otaliastudios/cameraview/internal/CamcorderProfiles;
.super Ljava/lang/Object;
.source "CamcorderProfiles.java"


# static fields
.field private static final LOG:Lcom/otaliastudios/cameraview/CameraLogger;

.field private static final TAG:Ljava/lang/String; = "CamcorderProfiles"

.field private static sizeToProfileMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/otaliastudios/cameraview/size/Size;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 24
    const-class v0, Lcom/otaliastudios/cameraview/internal/CamcorderProfiles;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-static {v0}, Lcom/otaliastudios/cameraview/CameraLogger;->create(Ljava/lang/String;)Lcom/otaliastudios/cameraview/CameraLogger;

    move-result-object v0

    sput-object v0, Lcom/otaliastudios/cameraview/internal/CamcorderProfiles;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/otaliastudios/cameraview/internal/CamcorderProfiles;->sizeToProfileMap:Ljava/util/Map;

    .line 31
    new-instance v1, Lcom/otaliastudios/cameraview/size/Size;

    const/16 v2, 0xb0

    const/16 v3, 0x90

    invoke-direct {v1, v2, v3}, Lcom/otaliastudios/cameraview/size/Size;-><init>(II)V

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/otaliastudios/cameraview/internal/CamcorderProfiles;->sizeToProfileMap:Ljava/util/Map;

    new-instance v1, Lcom/otaliastudios/cameraview/size/Size;

    const/16 v2, 0x140

    const/16 v3, 0xf0

    invoke-direct {v1, v2, v3}, Lcom/otaliastudios/cameraview/size/Size;-><init>(II)V

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/otaliastudios/cameraview/internal/CamcorderProfiles;->sizeToProfileMap:Ljava/util/Map;

    new-instance v1, Lcom/otaliastudios/cameraview/size/Size;

    const/16 v2, 0x160

    const/16 v3, 0x120

    invoke-direct {v1, v2, v3}, Lcom/otaliastudios/cameraview/size/Size;-><init>(II)V

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/otaliastudios/cameraview/internal/CamcorderProfiles;->sizeToProfileMap:Ljava/util/Map;

    new-instance v1, Lcom/otaliastudios/cameraview/size/Size;

    const/16 v2, 0x2d0

    const/16 v3, 0x1e0

    invoke-direct {v1, v2, v3}, Lcom/otaliastudios/cameraview/size/Size;-><init>(II)V

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/otaliastudios/cameraview/internal/CamcorderProfiles;->sizeToProfileMap:Ljava/util/Map;

    new-instance v1, Lcom/otaliastudios/cameraview/size/Size;

    const/16 v3, 0x500

    invoke-direct {v1, v3, v2}, Lcom/otaliastudios/cameraview/size/Size;-><init>(II)V

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/otaliastudios/cameraview/internal/CamcorderProfiles;->sizeToProfileMap:Ljava/util/Map;

    new-instance v1, Lcom/otaliastudios/cameraview/size/Size;

    const/16 v2, 0x780

    const/16 v3, 0x438

    invoke-direct {v1, v2, v3}, Lcom/otaliastudios/cameraview/size/Size;-><init>(II)V

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 38
    sget-object v0, Lcom/otaliastudios/cameraview/internal/CamcorderProfiles;->sizeToProfileMap:Ljava/util/Map;

    new-instance v1, Lcom/otaliastudios/cameraview/size/Size;

    const/16 v2, 0xf00

    const/16 v3, 0x870

    invoke-direct {v1, v2, v3}, Lcom/otaliastudios/cameraview/size/Size;-><init>(II)V

    const/16 v2, 0x8

    .line 39
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 38
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(ILcom/otaliastudios/cameraview/size/Size;)Landroid/media/CamcorderProfile;
    .locals 4

    .line 76
    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/size/Size;->getWidth()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/size/Size;->getHeight()I

    move-result p1

    int-to-long v2, p1

    mul-long v0, v0, v2

    .line 77
    new-instance p1, Ljava/util/ArrayList;

    sget-object v2, Lcom/otaliastudios/cameraview/internal/CamcorderProfiles;->sizeToProfileMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 78
    new-instance v2, Lcom/otaliastudios/cameraview/internal/CamcorderProfiles$1;

    invoke-direct {v2, v0, v1}, Lcom/otaliastudios/cameraview/internal/CamcorderProfiles$1;-><init>(J)V

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 87
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 88
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/otaliastudios/cameraview/size/Size;

    .line 90
    sget-object v1, Lcom/otaliastudios/cameraview/internal/CamcorderProfiles;->sizeToProfileMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 91
    invoke-static {p0, v0}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    invoke-static {p0, v0}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object p0

    return-object p0

    .line 96
    :cond_1
    invoke-static {p0, v1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object p0

    return-object p0
.end method

.method public static get(Ljava/lang/String;Lcom/otaliastudios/cameraview/size/Size;)Landroid/media/CamcorderProfile;
    .locals 3

    .line 57
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 58
    invoke-static {v0, p1}, Lcom/otaliastudios/cameraview/internal/CamcorderProfiles;->get(ILcom/otaliastudios/cameraview/size/Size;)Landroid/media/CamcorderProfile;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 60
    :catch_0
    sget-object p1, Lcom/otaliastudios/cameraview/internal/CamcorderProfiles;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "NumberFormatException for Camera2 id:"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lcom/otaliastudios/cameraview/CameraLogger;->w([Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    invoke-static {v2}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object p0

    return-object p0
.end method
