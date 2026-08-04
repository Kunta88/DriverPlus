.class public abstract Lcom/otaliastudios/cameraview/filter/BaseFilter;
.super Ljava/lang/Object;
.source "BaseFilter.java"

# interfaces
.implements Lcom/otaliastudios/cameraview/filter/Filter;


# static fields
.field protected static final DEFAULT_FRAGMENT_TEXTURE_COORDINATE_NAME:Ljava/lang/String; = "vTextureCoord"

.field protected static final DEFAULT_VERTEX_MVP_MATRIX_NAME:Ljava/lang/String; = "uMVPMatrix"

.field protected static final DEFAULT_VERTEX_POSITION_NAME:Ljava/lang/String; = "aPosition"

.field protected static final DEFAULT_VERTEX_TEXTURE_COORDINATE_NAME:Ljava/lang/String; = "aTextureCoord"

.field protected static final DEFAULT_VERTEX_TRANSFORM_MATRIX_NAME:Ljava/lang/String; = "uTexMatrix"

.field private static final LOG:Lcom/otaliastudios/cameraview/CameraLogger;

.field private static final TAG:Ljava/lang/String; = "BaseFilter"


# instance fields
.field protected fragmentTextureCoordinateName:Ljava/lang/String;

.field program:Lcom/otaliastudios/opengl/program/GlTextureProgram;

.field private programDrawable:Lcom/otaliastudios/opengl/draw/GlDrawable;

.field size:Lcom/otaliastudios/cameraview/size/Size;

.field protected vertexModelViewProjectionMatrixName:Ljava/lang/String;

.field protected vertexPositionName:Ljava/lang/String;

.field protected vertexTextureCoordinateName:Ljava/lang/String;

.field protected vertexTransformMatrixName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-class v0, Lcom/otaliastudios/cameraview/filter/BaseFilter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-static {v0}, Lcom/otaliastudios/cameraview/CameraLogger;->create(Ljava/lang/String;)Lcom/otaliastudios/cameraview/CameraLogger;

    move-result-object v0

    sput-object v0, Lcom/otaliastudios/cameraview/filter/BaseFilter;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Lcom/otaliastudios/cameraview/filter/BaseFilter;->program:Lcom/otaliastudios/opengl/program/GlTextureProgram;

    .line 92
    iput-object v0, p0, Lcom/otaliastudios/cameraview/filter/BaseFilter;->programDrawable:Lcom/otaliastudios/opengl/draw/GlDrawable;

    const-string v0, "aPosition"

    .line 95
    iput-object v0, p0, Lcom/otaliastudios/cameraview/filter/BaseFilter;->vertexPositionName:Ljava/lang/String;

    const-string v0, "aTextureCoord"

    .line 97
    iput-object v0, p0, Lcom/otaliastudios/cameraview/filter/BaseFilter;->vertexTextureCoordinateName:Ljava/lang/String;

    const-string v0, "uMVPMatrix"

    .line 99
    iput-object v0, p0, Lcom/otaliastudios/cameraview/filter/BaseFilter;->vertexModelViewProjectionMatrixName:Ljava/lang/String;

    const-string v0, "uTexMatrix"

    .line 101
    iput-object v0, p0, Lcom/otaliastudios/cameraview/filter/BaseFilter;->vertexTransformMatrixName:Ljava/lang/String;

    const-string v0, "vTextureCoord"

    .line 103
    iput-object v0, p0, Lcom/otaliastudios/cameraview/filter/BaseFilter;->fragmentTextureCoordinateName:Ljava/lang/String;

    return-void
.end method

.method private static createDefaultFragmentShader(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";\nuniform samplerExternalOES sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ");\n}\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static createDefaultVertexShader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uniform mat4 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";\nuniform mat4 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";\nattribute vec4 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";\nvarying vec2 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";\nvoid main() {\n    gl_Position = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " * "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, ";\n    "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " = ("

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ").xy;\n}\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy()Lcom/otaliastudios/cameraview/filter/BaseFilter;
    .locals 3

    .line 184
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/filter/BaseFilter;->onCopy()Lcom/otaliastudios/cameraview/filter/BaseFilter;

    move-result-object v0

    .line 185
    iget-object v1, p0, Lcom/otaliastudios/cameraview/filter/BaseFilter;->size:Lcom/otaliastudios/cameraview/size/Size;

    if-eqz v1, :cond_0

    .line 186
    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/size/Size;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/otaliastudios/cameraview/filter/BaseFilter;->size:Lcom/otaliastudios/cameraview/size/Size;

    invoke-virtual {v2}, Lcom/otaliastudios/cameraview/size/Size;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/otaliastudios/cameraview/filter/BaseFilter;->setSize(II)V

    .line 188
    :cond_0
    instance-of v1, p0, Lcom/otaliastudios/cameraview/filter/OneParameterFilter;

    if-eqz v1, :cond_1

    .line 189
    move-object v1, v0

    check-cast v1, Lcom/otaliastudios/cameraview/filter/OneParameterFilter;

    move-object v2, p0

    check-cast v2, Lcom/otaliastudios/cameraview/filter/OneParameterFilter;

    invoke-interface {v2}, Lcom/otaliastudios/cameraview/filter/OneParameterFilter;->getParameter1()F

    move-result v2

    invoke-interface {v1, v2}, Lcom/otaliastudios/cameraview/filter/OneParameterFilter;->setParameter1(F)V

    .line 191
    :cond_1
    instance-of v1, p0, Lcom/otaliastudios/cameraview/filter/TwoParameterFilter;

    if-eqz v1, :cond_2

    .line 192
    move-object v1, v0

    check-cast v1, Lcom/otaliastudios/cameraview/filter/TwoParameterFilter;

    move-object v2, p0

    check-cast v2, Lcom/otaliastudios/cameraview/filter/TwoParameterFilter;

    invoke-interface {v2}, Lcom/otaliastudios/cameraview/filter/TwoParameterFilter;->getParameter2()F

    move-result v2

    invoke-interface {v1, v2}, Lcom/otaliastudios/cameraview/filter/TwoParameterFilter;->setParameter2(F)V

    :cond_2
    return-object v0
.end method

.method public bridge synthetic copy()Lcom/otaliastudios/cameraview/filter/Filter;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/filter/BaseFilter;->copy()Lcom/otaliastudios/cameraview/filter/BaseFilter;

    move-result-object v0

    return-object v0
.end method

.method protected createDefaultFragmentShader()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/otaliastudios/cameraview/filter/BaseFilter;->fragmentTextureCoordinateName:Ljava/lang/String;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/filter/BaseFilter;->createDefaultFragmentShader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected createDefaultVertexShader()Ljava/lang/String;
    .locals 5

    .line 109
    iget-object v0, p0, Lcom/otaliastudios/cameraview/filter/BaseFilter;->vertexPositionName:Ljava/lang/String;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/filter/BaseFilter;->vertexTextureCoordinateName:Ljava/lang/String;

    iget-object v2, p0, Lcom/otaliastudios/cameraview/filter/BaseFilter;->vertexModelViewProjectionMatrixName:Ljava/lang/String;

    iget-object v3, p0, Lcom/otaliastudios/cameraview/filter/BaseFilter;->vertexTransformMatrixName:Ljava/lang/String;

    iget-object v4, p0, Lcom/otaliastudios/cameraview/filter/BaseFilter;->fragmentTextureCoordinateName:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/otaliastudios/cameraview/filter/BaseFilter;->createDefaultVertexShader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public draw(J[F)V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/otaliastudios/cameraview/filter/BaseFilter;->program:Lcom/otaliastudios/opengl/program/GlTextureProgram;

    if-nez v0, :cond_0

    .line 157
    sget-object p1, Lcom/otaliastudios/cameraview/filter/BaseFilter;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "Filter.draw() called after destroying the filter. This can happen rarely because of threading."

    aput-object v0, p2, p3

    invoke-virtual {p1, p2}, Lcom/otaliastudios/cameraview/CameraLogger;->w([Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0

    .line 160
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/otaliastudios/cameraview/filter/BaseFilter;->onPreDraw(J[F)V

    .line 161
    invoke-virtual {p0, p1, p2}, Lcom/otaliastudios/cameraview/filter/BaseFilter;->onDraw(J)V

    .line 162
    invoke-virtual {p0, p1, p2}, Lcom/otaliastudios/cameraview/filter/BaseFilter;->onPostDraw(J)V

    :goto_0
    return-void
.end method

.method public getVertexShader()Ljava/lang/String;
    .locals 1

    .line 146
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/filter/BaseFilter;->createDefaultVertexShader()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCopy()Lcom/otaliastudios/cameraview/filter/BaseFilter;
    .locals 3

    const-string v0, "Filters should have a public no-arguments constructor."

    .line 200
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/otaliastudios/cameraview/filter/BaseFilter;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    .line 204
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v1

    .line 202
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public onCreate(I)V
    .locals 7

    .line 124
    new-instance v6, Lcom/otaliastudios/opengl/program/GlTextureProgram;

    iget-object v2, p0, Lcom/otaliastudios/cameraview/filter/BaseFilter;->vertexPositionName:Ljava/lang/String;

    iget-object v3, p0, Lcom/otaliastudios/cameraview/filter/BaseFilter;->vertexModelViewProjectionMatrixName:Ljava/lang/String;

    iget-object v4, p0, Lcom/otaliastudios/cameraview/filter/BaseFilter;->vertexTextureCoordinateName:Ljava/lang/String;

    iget-object v5, p0, Lcom/otaliastudios/cameraview/filter/BaseFilter;->vertexTransformMatrixName:Ljava/lang/String;

    move-object v0, v6

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/otaliastudios/opengl/program/GlTextureProgram;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/otaliastudios/cameraview/filter/BaseFilter;->program:Lcom/otaliastudios/opengl/program/GlTextureProgram;

    .line 129
    new-instance p1, Lcom/otaliastudios/opengl/draw/GlRect;

    invoke-direct {p1}, Lcom/otaliastudios/opengl/draw/GlRect;-><init>()V

    iput-object p1, p0, Lcom/otaliastudios/cameraview/filter/BaseFilter;->programDrawable:Lcom/otaliastudios/opengl/draw/GlDrawable;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/otaliastudios/cameraview/filter/BaseFilter;->program:Lcom/otaliastudios/opengl/program/GlTextureProgram;

    invoke-virtual {v0}, Lcom/otaliastudios/opengl/program/GlTextureProgram;->release()V

    const/4 v0, 0x0

    .line 139
    iput-object v0, p0, Lcom/otaliastudios/cameraview/filter/BaseFilter;->program:Lcom/otaliastudios/opengl/program/GlTextureProgram;

    .line 140
    iput-object v0, p0, Lcom/otaliastudios/cameraview/filter/BaseFilter;->programDrawable:Lcom/otaliastudios/opengl/draw/GlDrawable;

    return-void
.end method

.method protected onDraw(J)V
    .locals 0

    .line 173
    iget-object p1, p0, Lcom/otaliastudios/cameraview/filter/BaseFilter;->program:Lcom/otaliastudios/opengl/program/GlTextureProgram;

    iget-object p2, p0, Lcom/otaliastudios/cameraview/filter/BaseFilter;->programDrawable:Lcom/otaliastudios/opengl/draw/GlDrawable;

    invoke-virtual {p1, p2}, Lcom/otaliastudios/opengl/program/GlTextureProgram;->onDraw(Lcom/otaliastudios/opengl/draw/GlDrawable;)V

    return-void
.end method

.method protected onPostDraw(J)V
    .locals 0

    .line 178
    iget-object p1, p0, Lcom/otaliastudios/cameraview/filter/BaseFilter;->program:Lcom/otaliastudios/opengl/program/GlTextureProgram;

    iget-object p2, p0, Lcom/otaliastudios/cameraview/filter/BaseFilter;->programDrawable:Lcom/otaliastudios/opengl/draw/GlDrawable;

    invoke-virtual {p1, p2}, Lcom/otaliastudios/opengl/program/GlTextureProgram;->onPostDraw(Lcom/otaliastudios/opengl/draw/GlDrawable;)V

    return-void
.end method

.method protected onPreDraw(J[F)V
    .locals 0

    .line 167
    iget-object p1, p0, Lcom/otaliastudios/cameraview/filter/BaseFilter;->program:Lcom/otaliastudios/opengl/program/GlTextureProgram;

    invoke-virtual {p1, p3}, Lcom/otaliastudios/opengl/program/GlTextureProgram;->setTextureTransform([F)V

    .line 168
    iget-object p1, p0, Lcom/otaliastudios/cameraview/filter/BaseFilter;->program:Lcom/otaliastudios/opengl/program/GlTextureProgram;

    iget-object p2, p0, Lcom/otaliastudios/cameraview/filter/BaseFilter;->programDrawable:Lcom/otaliastudios/opengl/draw/GlDrawable;

    invoke-virtual {p2}, Lcom/otaliastudios/opengl/draw/GlDrawable;->getModelMatrix()[F

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/otaliastudios/opengl/program/GlTextureProgram;->onPreDraw(Lcom/otaliastudios/opengl/draw/GlDrawable;[F)V

    return-void
.end method

.method public setSize(II)V
    .locals 1

    .line 151
    new-instance v0, Lcom/otaliastudios/cameraview/size/Size;

    invoke-direct {v0, p1, p2}, Lcom/otaliastudios/cameraview/size/Size;-><init>(II)V

    iput-object v0, p0, Lcom/otaliastudios/cameraview/filter/BaseFilter;->size:Lcom/otaliastudios/cameraview/size/Size;

    return-void
.end method
