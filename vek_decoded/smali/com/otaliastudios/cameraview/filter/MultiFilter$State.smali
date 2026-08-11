.class Lcom/otaliastudios/cameraview/filter/MultiFilter$State;
.super Ljava/lang/Object;
.source "MultiFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/otaliastudios/cameraview/filter/MultiFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "State"
.end annotation


# instance fields
.field isFramebufferCreated:Z

.field isProgramCreated:Z

.field private outputFramebuffer:Lcom/otaliastudios/opengl/texture/GlFramebuffer;

.field private outputTexture:Lcom/otaliastudios/opengl/texture/GlTexture;

.field private programHandle:I

.field size:Lcom/otaliastudios/cameraview/size/Size;

.field private sizeChanged:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/otaliastudios/cameraview/filter/MultiFilter$State;->isProgramCreated:Z

    .line 50
    iput-boolean v0, p0, Lcom/otaliastudios/cameraview/filter/MultiFilter$State;->isFramebufferCreated:Z

    .line 51
    iput-boolean v0, p0, Lcom/otaliastudios/cameraview/filter/MultiFilter$State;->sizeChanged:Z

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/otaliastudios/cameraview/filter/MultiFilter$State;->size:Lcom/otaliastudios/cameraview/size/Size;

    const/4 v1, -0x1

    .line 53
    iput v1, p0, Lcom/otaliastudios/cameraview/filter/MultiFilter$State;->programHandle:I

    .line 54
    iput-object v0, p0, Lcom/otaliastudios/cameraview/filter/MultiFilter$State;->outputFramebuffer:Lcom/otaliastudios/opengl/texture/GlFramebuffer;

    .line 55
    iput-object v0, p0, Lcom/otaliastudios/cameraview/filter/MultiFilter$State;->outputTexture:Lcom/otaliastudios/opengl/texture/GlTexture;

    return-void
.end method

.method static synthetic access$000(Lcom/otaliastudios/cameraview/filter/MultiFilter$State;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/otaliastudios/cameraview/filter/MultiFilter$State;->programHandle:I

    return p0
.end method

.method static synthetic access$002(Lcom/otaliastudios/cameraview/filter/MultiFilter$State;I)I
    .locals 0

    .line 48
    iput p1, p0, Lcom/otaliastudios/cameraview/filter/MultiFilter$State;->programHandle:I

    return p1
.end method

.method static synthetic access$100(Lcom/otaliastudios/cameraview/filter/MultiFilter$State;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/otaliastudios/cameraview/filter/MultiFilter$State;->sizeChanged:Z

    return p0
.end method

.method static synthetic access$102(Lcom/otaliastudios/cameraview/filter/MultiFilter$State;Z)Z
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/otaliastudios/cameraview/filter/MultiFilter$State;->sizeChanged:Z

    return p1
.end method

.method static synthetic access$200(Lcom/otaliastudios/cameraview/filter/MultiFilter$State;)Lcom/otaliastudios/opengl/texture/GlTexture;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/otaliastudios/cameraview/filter/MultiFilter$State;->outputTexture:Lcom/otaliastudios/opengl/texture/GlTexture;

    return-object p0
.end method

.method static synthetic access$202(Lcom/otaliastudios/cameraview/filter/MultiFilter$State;Lcom/otaliastudios/opengl/texture/GlTexture;)Lcom/otaliastudios/opengl/texture/GlTexture;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/otaliastudios/cameraview/filter/MultiFilter$State;->outputTexture:Lcom/otaliastudios/opengl/texture/GlTexture;

    return-object p1
.end method

.method static synthetic access$300(Lcom/otaliastudios/cameraview/filter/MultiFilter$State;)Lcom/otaliastudios/opengl/texture/GlFramebuffer;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/otaliastudios/cameraview/filter/MultiFilter$State;->outputFramebuffer:Lcom/otaliastudios/opengl/texture/GlFramebuffer;

    return-object p0
.end method

.method static synthetic access$302(Lcom/otaliastudios/cameraview/filter/MultiFilter$State;Lcom/otaliastudios/opengl/texture/GlFramebuffer;)Lcom/otaliastudios/opengl/texture/GlFramebuffer;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/otaliastudios/cameraview/filter/MultiFilter$State;->outputFramebuffer:Lcom/otaliastudios/opengl/texture/GlFramebuffer;

    return-object p1
.end method
