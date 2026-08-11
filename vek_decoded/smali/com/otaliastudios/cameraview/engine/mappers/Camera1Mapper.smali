.class public Lcom/otaliastudios/cameraview/engine/mappers/Camera1Mapper;
.super Ljava/lang/Object;
.source "Camera1Mapper.java"


# static fields
.field private static final FACING:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/otaliastudios/cameraview/controls/Facing;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final FLASH:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/otaliastudios/cameraview/controls/Flash;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final HDR:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/otaliastudios/cameraview/controls/Hdr;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final WB:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/otaliastudios/cameraview/controls/WhiteBalance;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/otaliastudios/cameraview/engine/mappers/Camera1Mapper;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/otaliastudios/cameraview/engine/mappers/Camera1Mapper;->FLASH:Ljava/util/Map;

    .line 34
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/otaliastudios/cameraview/engine/mappers/Camera1Mapper;->WB:Ljava/util/Map;

    .line 35
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/otaliastudios/cameraview/engine/mappers/Camera1Mapper;->FACING:Ljava/util/Map;

    .line 36
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/otaliastudios/cameraview/engine/mappers/Camera1Mapper;->HDR:Ljava/util/Map;

    .line 39
    sget-object v4, Lcom/otaliastudios/cameraview/controls/Flash;->OFF:Lcom/otaliastudios/cameraview/controls/Flash;

    const-string v5, "off"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v4, Lcom/otaliastudios/cameraview/controls/Flash;->ON:Lcom/otaliastudios/cameraview/controls/Flash;

    const-string v5, "on"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v4, Lcom/otaliastudios/cameraview/controls/Flash;->AUTO:Lcom/otaliastudios/cameraview/controls/Flash;

    const-string v5, "auto"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v4, Lcom/otaliastudios/cameraview/controls/Flash;->TORCH:Lcom/otaliastudios/cameraview/controls/Flash;

    const-string v6, "torch"

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/otaliastudios/cameraview/controls/Facing;->BACK:Lcom/otaliastudios/cameraview/controls/Facing;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/otaliastudios/cameraview/controls/Facing;->FRONT:Lcom/otaliastudios/cameraview/controls/Facing;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/otaliastudios/cameraview/controls/WhiteBalance;->AUTO:Lcom/otaliastudios/cameraview/controls/WhiteBalance;

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/otaliastudios/cameraview/controls/WhiteBalance;->INCANDESCENT:Lcom/otaliastudios/cameraview/controls/WhiteBalance;

    const-string v2, "incandescent"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/otaliastudios/cameraview/controls/WhiteBalance;->FLUORESCENT:Lcom/otaliastudios/cameraview/controls/WhiteBalance;

    const-string v2, "fluorescent"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/otaliastudios/cameraview/controls/WhiteBalance;->DAYLIGHT:Lcom/otaliastudios/cameraview/controls/WhiteBalance;

    const-string v2, "daylight"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/otaliastudios/cameraview/controls/WhiteBalance;->CLOUDY:Lcom/otaliastudios/cameraview/controls/WhiteBalance;

    const-string v2, "cloudy-daylight"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/otaliastudios/cameraview/controls/Hdr;->OFF:Lcom/otaliastudios/cameraview/controls/Hdr;

    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "hdr"

    const/16 v2, 0x11

    if-lt v0, v2, :cond_0

    .line 52
    sget-object v0, Lcom/otaliastudios/cameraview/controls/Hdr;->ON:Lcom/otaliastudios/cameraview/controls/Hdr;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 54
    :cond_0
    sget-object v0, Lcom/otaliastudios/cameraview/controls/Hdr;->ON:Lcom/otaliastudios/cameraview/controls/Hdr;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/otaliastudios/cameraview/engine/mappers/Camera1Mapper;
    .locals 1

    .line 27
    sget-object v0, Lcom/otaliastudios/cameraview/engine/mappers/Camera1Mapper;->sInstance:Lcom/otaliastudios/cameraview/engine/mappers/Camera1Mapper;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/otaliastudios/cameraview/engine/mappers/Camera1Mapper;

    invoke-direct {v0}, Lcom/otaliastudios/cameraview/engine/mappers/Camera1Mapper;-><init>()V

    sput-object v0, Lcom/otaliastudios/cameraview/engine/mappers/Camera1Mapper;->sInstance:Lcom/otaliastudios/cameraview/engine/mappers/Camera1Mapper;

    .line 30
    :cond_0
    sget-object v0, Lcom/otaliastudios/cameraview/engine/mappers/Camera1Mapper;->sInstance:Lcom/otaliastudios/cameraview/engine/mappers/Camera1Mapper;

    return-object v0
.end method

.method private reverseLookup(Ljava/util/Map;Ljava/lang/Object;)Lcom/otaliastudios/cameraview/controls/Control;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/otaliastudios/cameraview/controls/Control;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TC;TT;>;TT;)TC;"
        }
    .end annotation

    .line 105
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/otaliastudios/cameraview/controls/Control;

    .line 106
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public mapFacing(Lcom/otaliastudios/cameraview/controls/Facing;)I
    .locals 1

    .line 68
    sget-object v0, Lcom/otaliastudios/cameraview/engine/mappers/Camera1Mapper;->FACING:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public mapFlash(Lcom/otaliastudios/cameraview/controls/Flash;)Ljava/lang/String;
    .locals 1

    .line 63
    sget-object v0, Lcom/otaliastudios/cameraview/engine/mappers/Camera1Mapper;->FLASH:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public mapHdr(Lcom/otaliastudios/cameraview/controls/Hdr;)Ljava/lang/String;
    .locals 1

    .line 80
    sget-object v0, Lcom/otaliastudios/cameraview/engine/mappers/Camera1Mapper;->HDR:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public mapWhiteBalance(Lcom/otaliastudios/cameraview/controls/WhiteBalance;)Ljava/lang/String;
    .locals 1

    .line 74
    sget-object v0, Lcom/otaliastudios/cameraview/engine/mappers/Camera1Mapper;->WB:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public unmapFacing(I)Lcom/otaliastudios/cameraview/controls/Facing;
    .locals 1

    .line 90
    sget-object v0, Lcom/otaliastudios/cameraview/engine/mappers/Camera1Mapper;->FACING:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/otaliastudios/cameraview/engine/mappers/Camera1Mapper;->reverseLookup(Ljava/util/Map;Ljava/lang/Object;)Lcom/otaliastudios/cameraview/controls/Control;

    move-result-object p1

    check-cast p1, Lcom/otaliastudios/cameraview/controls/Facing;

    return-object p1
.end method

.method public unmapFlash(Ljava/lang/String;)Lcom/otaliastudios/cameraview/controls/Flash;
    .locals 1

    .line 85
    sget-object v0, Lcom/otaliastudios/cameraview/engine/mappers/Camera1Mapper;->FLASH:Ljava/util/Map;

    invoke-direct {p0, v0, p1}, Lcom/otaliastudios/cameraview/engine/mappers/Camera1Mapper;->reverseLookup(Ljava/util/Map;Ljava/lang/Object;)Lcom/otaliastudios/cameraview/controls/Control;

    move-result-object p1

    check-cast p1, Lcom/otaliastudios/cameraview/controls/Flash;

    return-object p1
.end method

.method public unmapHdr(Ljava/lang/String;)Lcom/otaliastudios/cameraview/controls/Hdr;
    .locals 1

    .line 100
    sget-object v0, Lcom/otaliastudios/cameraview/engine/mappers/Camera1Mapper;->HDR:Ljava/util/Map;

    invoke-direct {p0, v0, p1}, Lcom/otaliastudios/cameraview/engine/mappers/Camera1Mapper;->reverseLookup(Ljava/util/Map;Ljava/lang/Object;)Lcom/otaliastudios/cameraview/controls/Control;

    move-result-object p1

    check-cast p1, Lcom/otaliastudios/cameraview/controls/Hdr;

    return-object p1
.end method

.method public unmapWhiteBalance(Ljava/lang/String;)Lcom/otaliastudios/cameraview/controls/WhiteBalance;
    .locals 1

    .line 95
    sget-object v0, Lcom/otaliastudios/cameraview/engine/mappers/Camera1Mapper;->WB:Ljava/util/Map;

    invoke-direct {p0, v0, p1}, Lcom/otaliastudios/cameraview/engine/mappers/Camera1Mapper;->reverseLookup(Ljava/util/Map;Ljava/lang/Object;)Lcom/otaliastudios/cameraview/controls/Control;

    move-result-object p1

    check-cast p1, Lcom/otaliastudios/cameraview/controls/WhiteBalance;

    return-object p1
.end method
