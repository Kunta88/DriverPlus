.class public final enum Lcom/otaliastudios/cameraview/filter/Filters;
.super Ljava/lang/Enum;
.source "Filters.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/otaliastudios/cameraview/filter/Filters;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/otaliastudios/cameraview/filter/Filters;

.field public static final enum AUTO_FIX:Lcom/otaliastudios/cameraview/filter/Filters;

.field public static final enum BLACK_AND_WHITE:Lcom/otaliastudios/cameraview/filter/Filters;

.field public static final enum BRIGHTNESS:Lcom/otaliastudios/cameraview/filter/Filters;

.field public static final enum CONTRAST:Lcom/otaliastudios/cameraview/filter/Filters;

.field public static final enum CROSS_PROCESS:Lcom/otaliastudios/cameraview/filter/Filters;

.field public static final enum DOCUMENTARY:Lcom/otaliastudios/cameraview/filter/Filters;

.field public static final enum DUOTONE:Lcom/otaliastudios/cameraview/filter/Filters;

.field public static final enum FILL_LIGHT:Lcom/otaliastudios/cameraview/filter/Filters;

.field public static final enum GAMMA:Lcom/otaliastudios/cameraview/filter/Filters;

.field public static final enum GRAIN:Lcom/otaliastudios/cameraview/filter/Filters;

.field public static final enum GRAYSCALE:Lcom/otaliastudios/cameraview/filter/Filters;

.field public static final enum HUE:Lcom/otaliastudios/cameraview/filter/Filters;

.field public static final enum INVERT_COLORS:Lcom/otaliastudios/cameraview/filter/Filters;

.field public static final enum LOMOISH:Lcom/otaliastudios/cameraview/filter/Filters;

.field public static final enum NONE:Lcom/otaliastudios/cameraview/filter/Filters;

.field public static final enum POSTERIZE:Lcom/otaliastudios/cameraview/filter/Filters;

.field public static final enum SATURATION:Lcom/otaliastudios/cameraview/filter/Filters;

.field public static final enum SEPIA:Lcom/otaliastudios/cameraview/filter/Filters;

.field public static final enum SHARPNESS:Lcom/otaliastudios/cameraview/filter/Filters;

.field public static final enum TEMPERATURE:Lcom/otaliastudios/cameraview/filter/Filters;

.field public static final enum TINT:Lcom/otaliastudios/cameraview/filter/Filters;

.field public static final enum VIGNETTE:Lcom/otaliastudios/cameraview/filter/Filters;


# instance fields
.field private filterClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/otaliastudios/cameraview/filter/Filter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 36
    new-instance v0, Lcom/otaliastudios/cameraview/filter/Filters;

    const-class v1, Lcom/otaliastudios/cameraview/filter/NoFilter;

    const-string v2, "NONE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/otaliastudios/cameraview/filter/Filters;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/otaliastudios/cameraview/filter/Filters;->NONE:Lcom/otaliastudios/cameraview/filter/Filters;

    .line 39
    new-instance v1, Lcom/otaliastudios/cameraview/filter/Filters;

    const-class v2, Lcom/otaliastudios/cameraview/filters/AutoFixFilter;

    const-string v4, "AUTO_FIX"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/otaliastudios/cameraview/filter/Filters;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v1, Lcom/otaliastudios/cameraview/filter/Filters;->AUTO_FIX:Lcom/otaliastudios/cameraview/filter/Filters;

    .line 42
    new-instance v2, Lcom/otaliastudios/cameraview/filter/Filters;

    const-class v4, Lcom/otaliastudios/cameraview/filters/BlackAndWhiteFilter;

    const-string v6, "BLACK_AND_WHITE"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/otaliastudios/cameraview/filter/Filters;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v2, Lcom/otaliastudios/cameraview/filter/Filters;->BLACK_AND_WHITE:Lcom/otaliastudios/cameraview/filter/Filters;

    .line 45
    new-instance v4, Lcom/otaliastudios/cameraview/filter/Filters;

    const-class v6, Lcom/otaliastudios/cameraview/filters/BrightnessFilter;

    const-string v8, "BRIGHTNESS"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/otaliastudios/cameraview/filter/Filters;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v4, Lcom/otaliastudios/cameraview/filter/Filters;->BRIGHTNESS:Lcom/otaliastudios/cameraview/filter/Filters;

    .line 48
    new-instance v6, Lcom/otaliastudios/cameraview/filter/Filters;

    const-class v8, Lcom/otaliastudios/cameraview/filters/ContrastFilter;

    const-string v10, "CONTRAST"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lcom/otaliastudios/cameraview/filter/Filters;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v6, Lcom/otaliastudios/cameraview/filter/Filters;->CONTRAST:Lcom/otaliastudios/cameraview/filter/Filters;

    .line 51
    new-instance v8, Lcom/otaliastudios/cameraview/filter/Filters;

    const-class v10, Lcom/otaliastudios/cameraview/filters/CrossProcessFilter;

    const-string v12, "CROSS_PROCESS"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lcom/otaliastudios/cameraview/filter/Filters;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v8, Lcom/otaliastudios/cameraview/filter/Filters;->CROSS_PROCESS:Lcom/otaliastudios/cameraview/filter/Filters;

    .line 54
    new-instance v10, Lcom/otaliastudios/cameraview/filter/Filters;

    const-class v12, Lcom/otaliastudios/cameraview/filters/DocumentaryFilter;

    const-string v14, "DOCUMENTARY"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lcom/otaliastudios/cameraview/filter/Filters;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v10, Lcom/otaliastudios/cameraview/filter/Filters;->DOCUMENTARY:Lcom/otaliastudios/cameraview/filter/Filters;

    .line 57
    new-instance v12, Lcom/otaliastudios/cameraview/filter/Filters;

    const-class v14, Lcom/otaliastudios/cameraview/filters/DuotoneFilter;

    const-string v15, "DUOTONE"

    const/4 v13, 0x7

    invoke-direct {v12, v15, v13, v14}, Lcom/otaliastudios/cameraview/filter/Filters;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v12, Lcom/otaliastudios/cameraview/filter/Filters;->DUOTONE:Lcom/otaliastudios/cameraview/filter/Filters;

    .line 60
    new-instance v14, Lcom/otaliastudios/cameraview/filter/Filters;

    const-class v15, Lcom/otaliastudios/cameraview/filters/FillLightFilter;

    const-string v13, "FILL_LIGHT"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v11, v15}, Lcom/otaliastudios/cameraview/filter/Filters;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v14, Lcom/otaliastudios/cameraview/filter/Filters;->FILL_LIGHT:Lcom/otaliastudios/cameraview/filter/Filters;

    .line 63
    new-instance v13, Lcom/otaliastudios/cameraview/filter/Filters;

    const-class v15, Lcom/otaliastudios/cameraview/filters/GammaFilter;

    const-string v11, "GAMMA"

    const/16 v9, 0x9

    invoke-direct {v13, v11, v9, v15}, Lcom/otaliastudios/cameraview/filter/Filters;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v13, Lcom/otaliastudios/cameraview/filter/Filters;->GAMMA:Lcom/otaliastudios/cameraview/filter/Filters;

    .line 66
    new-instance v11, Lcom/otaliastudios/cameraview/filter/Filters;

    const-class v15, Lcom/otaliastudios/cameraview/filters/GrainFilter;

    const-string v9, "GRAIN"

    const/16 v7, 0xa

    invoke-direct {v11, v9, v7, v15}, Lcom/otaliastudios/cameraview/filter/Filters;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v11, Lcom/otaliastudios/cameraview/filter/Filters;->GRAIN:Lcom/otaliastudios/cameraview/filter/Filters;

    .line 69
    new-instance v9, Lcom/otaliastudios/cameraview/filter/Filters;

    const-class v15, Lcom/otaliastudios/cameraview/filters/GrayscaleFilter;

    const-string v7, "GRAYSCALE"

    const/16 v5, 0xb

    invoke-direct {v9, v7, v5, v15}, Lcom/otaliastudios/cameraview/filter/Filters;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v9, Lcom/otaliastudios/cameraview/filter/Filters;->GRAYSCALE:Lcom/otaliastudios/cameraview/filter/Filters;

    .line 72
    new-instance v7, Lcom/otaliastudios/cameraview/filter/Filters;

    const-class v15, Lcom/otaliastudios/cameraview/filters/HueFilter;

    const-string v5, "HUE"

    const/16 v3, 0xc

    invoke-direct {v7, v5, v3, v15}, Lcom/otaliastudios/cameraview/filter/Filters;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v7, Lcom/otaliastudios/cameraview/filter/Filters;->HUE:Lcom/otaliastudios/cameraview/filter/Filters;

    .line 75
    new-instance v5, Lcom/otaliastudios/cameraview/filter/Filters;

    const-class v15, Lcom/otaliastudios/cameraview/filters/InvertColorsFilter;

    const-string v3, "INVERT_COLORS"

    move-object/from16 v16, v7

    const/16 v7, 0xd

    invoke-direct {v5, v3, v7, v15}, Lcom/otaliastudios/cameraview/filter/Filters;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v5, Lcom/otaliastudios/cameraview/filter/Filters;->INVERT_COLORS:Lcom/otaliastudios/cameraview/filter/Filters;

    .line 78
    new-instance v3, Lcom/otaliastudios/cameraview/filter/Filters;

    const-class v15, Lcom/otaliastudios/cameraview/filters/LomoishFilter;

    const-string v7, "LOMOISH"

    move-object/from16 v17, v5

    const/16 v5, 0xe

    invoke-direct {v3, v7, v5, v15}, Lcom/otaliastudios/cameraview/filter/Filters;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v3, Lcom/otaliastudios/cameraview/filter/Filters;->LOMOISH:Lcom/otaliastudios/cameraview/filter/Filters;

    .line 81
    new-instance v7, Lcom/otaliastudios/cameraview/filter/Filters;

    const-class v15, Lcom/otaliastudios/cameraview/filters/PosterizeFilter;

    const-string v5, "POSTERIZE"

    move-object/from16 v18, v3

    const/16 v3, 0xf

    invoke-direct {v7, v5, v3, v15}, Lcom/otaliastudios/cameraview/filter/Filters;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v7, Lcom/otaliastudios/cameraview/filter/Filters;->POSTERIZE:Lcom/otaliastudios/cameraview/filter/Filters;

    .line 84
    new-instance v5, Lcom/otaliastudios/cameraview/filter/Filters;

    const-class v15, Lcom/otaliastudios/cameraview/filters/SaturationFilter;

    const-string v3, "SATURATION"

    move-object/from16 v19, v7

    const/16 v7, 0x10

    invoke-direct {v5, v3, v7, v15}, Lcom/otaliastudios/cameraview/filter/Filters;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v5, Lcom/otaliastudios/cameraview/filter/Filters;->SATURATION:Lcom/otaliastudios/cameraview/filter/Filters;

    .line 87
    new-instance v3, Lcom/otaliastudios/cameraview/filter/Filters;

    const-class v15, Lcom/otaliastudios/cameraview/filters/SepiaFilter;

    const-string v7, "SEPIA"

    move-object/from16 v20, v5

    const/16 v5, 0x11

    invoke-direct {v3, v7, v5, v15}, Lcom/otaliastudios/cameraview/filter/Filters;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v3, Lcom/otaliastudios/cameraview/filter/Filters;->SEPIA:Lcom/otaliastudios/cameraview/filter/Filters;

    .line 90
    new-instance v7, Lcom/otaliastudios/cameraview/filter/Filters;

    const-class v15, Lcom/otaliastudios/cameraview/filters/SharpnessFilter;

    const-string v5, "SHARPNESS"

    move-object/from16 v21, v3

    const/16 v3, 0x12

    invoke-direct {v7, v5, v3, v15}, Lcom/otaliastudios/cameraview/filter/Filters;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v7, Lcom/otaliastudios/cameraview/filter/Filters;->SHARPNESS:Lcom/otaliastudios/cameraview/filter/Filters;

    .line 93
    new-instance v5, Lcom/otaliastudios/cameraview/filter/Filters;

    const-class v15, Lcom/otaliastudios/cameraview/filters/TemperatureFilter;

    const-string v3, "TEMPERATURE"

    move-object/from16 v22, v7

    const/16 v7, 0x13

    invoke-direct {v5, v3, v7, v15}, Lcom/otaliastudios/cameraview/filter/Filters;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v5, Lcom/otaliastudios/cameraview/filter/Filters;->TEMPERATURE:Lcom/otaliastudios/cameraview/filter/Filters;

    .line 96
    new-instance v3, Lcom/otaliastudios/cameraview/filter/Filters;

    const-class v15, Lcom/otaliastudios/cameraview/filters/TintFilter;

    const-string v7, "TINT"

    move-object/from16 v23, v5

    const/16 v5, 0x14

    invoke-direct {v3, v7, v5, v15}, Lcom/otaliastudios/cameraview/filter/Filters;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v3, Lcom/otaliastudios/cameraview/filter/Filters;->TINT:Lcom/otaliastudios/cameraview/filter/Filters;

    .line 99
    new-instance v7, Lcom/otaliastudios/cameraview/filter/Filters;

    const-class v15, Lcom/otaliastudios/cameraview/filters/VignetteFilter;

    const-string v5, "VIGNETTE"

    move-object/from16 v24, v3

    const/16 v3, 0x15

    invoke-direct {v7, v5, v3, v15}, Lcom/otaliastudios/cameraview/filter/Filters;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v7, Lcom/otaliastudios/cameraview/filter/Filters;->VIGNETTE:Lcom/otaliastudios/cameraview/filter/Filters;

    const/16 v5, 0x16

    new-array v5, v5, [Lcom/otaliastudios/cameraview/filter/Filters;

    const/4 v15, 0x0

    aput-object v0, v5, v15

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v4, v5, v0

    const/4 v0, 0x4

    aput-object v6, v5, v0

    const/4 v0, 0x5

    aput-object v8, v5, v0

    const/4 v0, 0x6

    aput-object v10, v5, v0

    const/4 v0, 0x7

    aput-object v12, v5, v0

    const/16 v0, 0x8

    aput-object v14, v5, v0

    const/16 v0, 0x9

    aput-object v13, v5, v0

    const/16 v0, 0xa

    aput-object v11, v5, v0

    const/16 v0, 0xb

    aput-object v9, v5, v0

    const/16 v0, 0xc

    aput-object v16, v5, v0

    const/16 v0, 0xd

    aput-object v17, v5, v0

    const/16 v0, 0xe

    aput-object v18, v5, v0

    const/16 v0, 0xf

    aput-object v19, v5, v0

    const/16 v0, 0x10

    aput-object v20, v5, v0

    const/16 v0, 0x11

    aput-object v21, v5, v0

    const/16 v0, 0x12

    aput-object v22, v5, v0

    const/16 v0, 0x13

    aput-object v23, v5, v0

    const/16 v0, 0x14

    aput-object v24, v5, v0

    aput-object v7, v5, v3

    .line 33
    sput-object v5, Lcom/otaliastudios/cameraview/filter/Filters;->$VALUES:[Lcom/otaliastudios/cameraview/filter/Filters;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/otaliastudios/cameraview/filter/Filter;",
            ">;)V"
        }
    .end annotation

    .line 103
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 104
    iput-object p3, p0, Lcom/otaliastudios/cameraview/filter/Filters;->filterClass:Ljava/lang/Class;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/otaliastudios/cameraview/filter/Filters;
    .locals 1

    .line 33
    const-class v0, Lcom/otaliastudios/cameraview/filter/Filters;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/otaliastudios/cameraview/filter/Filters;

    return-object p0
.end method

.method public static values()[Lcom/otaliastudios/cameraview/filter/Filters;
    .locals 1

    .line 33
    sget-object v0, Lcom/otaliastudios/cameraview/filter/Filters;->$VALUES:[Lcom/otaliastudios/cameraview/filter/Filters;

    invoke-virtual {v0}, [Lcom/otaliastudios/cameraview/filter/Filters;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/otaliastudios/cameraview/filter/Filters;

    return-object v0
.end method


# virtual methods
.method public newInstance()Lcom/otaliastudios/cameraview/filter/Filter;
    .locals 1

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/otaliastudios/cameraview/filter/Filters;->filterClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/otaliastudios/cameraview/filter/Filter;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 118
    :catch_0
    new-instance v0, Lcom/otaliastudios/cameraview/filter/NoFilter;

    invoke-direct {v0}, Lcom/otaliastudios/cameraview/filter/NoFilter;-><init>()V

    return-object v0

    .line 116
    :catch_1
    new-instance v0, Lcom/otaliastudios/cameraview/filter/NoFilter;

    invoke-direct {v0}, Lcom/otaliastudios/cameraview/filter/NoFilter;-><init>()V

    return-object v0
.end method
