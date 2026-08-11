.class public final enum Lcom/otaliastudios/cameraview/controls/Preview;
.super Ljava/lang/Enum;
.source "Preview.java"

# interfaces
.implements Lcom/otaliastudios/cameraview/controls/Control;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/otaliastudios/cameraview/controls/Preview;",
        ">;",
        "Lcom/otaliastudios/cameraview/controls/Control;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/otaliastudios/cameraview/controls/Preview;

.field static final DEFAULT:Lcom/otaliastudios/cameraview/controls/Preview;

.field public static final enum GL_SURFACE:Lcom/otaliastudios/cameraview/controls/Preview;

.field public static final enum SURFACE:Lcom/otaliastudios/cameraview/controls/Preview;

.field public static final enum TEXTURE:Lcom/otaliastudios/cameraview/controls/Preview;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 20
    new-instance v0, Lcom/otaliastudios/cameraview/controls/Preview;

    const-string v1, "SURFACE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/otaliastudios/cameraview/controls/Preview;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/otaliastudios/cameraview/controls/Preview;->SURFACE:Lcom/otaliastudios/cameraview/controls/Preview;

    .line 27
    new-instance v1, Lcom/otaliastudios/cameraview/controls/Preview;

    const-string v3, "TEXTURE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/otaliastudios/cameraview/controls/Preview;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/otaliastudios/cameraview/controls/Preview;->TEXTURE:Lcom/otaliastudios/cameraview/controls/Preview;

    .line 35
    new-instance v3, Lcom/otaliastudios/cameraview/controls/Preview;

    const-string v5, "GL_SURFACE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/otaliastudios/cameraview/controls/Preview;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/otaliastudios/cameraview/controls/Preview;->GL_SURFACE:Lcom/otaliastudios/cameraview/controls/Preview;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/otaliastudios/cameraview/controls/Preview;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 14
    sput-object v5, Lcom/otaliastudios/cameraview/controls/Preview;->$VALUES:[Lcom/otaliastudios/cameraview/controls/Preview;

    .line 37
    sput-object v3, Lcom/otaliastudios/cameraview/controls/Preview;->DEFAULT:Lcom/otaliastudios/cameraview/controls/Preview;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput p3, p0, Lcom/otaliastudios/cameraview/controls/Preview;->value:I

    return-void
.end method

.method static fromValue(I)Lcom/otaliastudios/cameraview/controls/Preview;
    .locals 5

    .line 51
    invoke-static {}, Lcom/otaliastudios/cameraview/controls/Preview;->values()[Lcom/otaliastudios/cameraview/controls/Preview;

    move-result-object v0

    .line 52
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 53
    invoke-virtual {v3}, Lcom/otaliastudios/cameraview/controls/Preview;->value()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 57
    :cond_1
    sget-object p0, Lcom/otaliastudios/cameraview/controls/Preview;->DEFAULT:Lcom/otaliastudios/cameraview/controls/Preview;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/otaliastudios/cameraview/controls/Preview;
    .locals 1

    .line 14
    const-class v0, Lcom/otaliastudios/cameraview/controls/Preview;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/otaliastudios/cameraview/controls/Preview;

    return-object p0
.end method

.method public static values()[Lcom/otaliastudios/cameraview/controls/Preview;
    .locals 1

    .line 14
    sget-object v0, Lcom/otaliastudios/cameraview/controls/Preview;->$VALUES:[Lcom/otaliastudios/cameraview/controls/Preview;

    invoke-virtual {v0}, [Lcom/otaliastudios/cameraview/controls/Preview;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/otaliastudios/cameraview/controls/Preview;

    return-object v0
.end method


# virtual methods
.method value()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/otaliastudios/cameraview/controls/Preview;->value:I

    return v0
.end method
