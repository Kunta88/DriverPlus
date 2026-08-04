.class public Lcom/otaliastudios/cameraview/filters/SharpnessFilter;
.super Lcom/otaliastudios/cameraview/filter/BaseFilter;
.source "SharpnessFilter.java"

# interfaces
.implements Lcom/otaliastudios/cameraview/filter/OneParameterFilter;


# static fields
.field private static final FRAGMENT_SHADER:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES sTexture;\nuniform float scale;\nuniform float stepsizeX;\nuniform float stepsizeY;\nvarying vec2 vTextureCoord;\nvoid main() {\n  vec3 nbr_color = vec3(0.0, 0.0, 0.0);\n  vec2 coord;\n  vec4 color = texture2D(sTexture, vTextureCoord);\n  coord.x = vTextureCoord.x - 0.5 * stepsizeX;\n  coord.y = vTextureCoord.y - stepsizeY;\n  nbr_color += texture2D(sTexture, coord).rgb - color.rgb;\n  coord.x = vTextureCoord.x - stepsizeX;\n  coord.y = vTextureCoord.y + 0.5 * stepsizeY;\n  nbr_color += texture2D(sTexture, coord).rgb - color.rgb;\n  coord.x = vTextureCoord.x + stepsizeX;\n  coord.y = vTextureCoord.y - 0.5 * stepsizeY;\n  nbr_color += texture2D(sTexture, coord).rgb - color.rgb;\n  coord.x = vTextureCoord.x + stepsizeX;\n  coord.y = vTextureCoord.y + 0.5 * stepsizeY;\n  nbr_color += texture2D(sTexture, coord).rgb - color.rgb;\n  gl_FragColor = vec4(color.rgb - 2.0 * scale * nbr_color, color.a);\n}\n"


# instance fields
.field private height:I

.field private scale:F

.field private scaleLocation:I

.field private stepSizeXLocation:I

.field private stepSizeYLocation:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/otaliastudios/cameraview/filter/BaseFilter;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 42
    iput v0, p0, Lcom/otaliastudios/cameraview/filters/SharpnessFilter;->scale:F

    const/4 v0, 0x1

    .line 43
    iput v0, p0, Lcom/otaliastudios/cameraview/filters/SharpnessFilter;->width:I

    .line 44
    iput v0, p0, Lcom/otaliastudios/cameraview/filters/SharpnessFilter;->height:I

    const/4 v0, -0x1

    .line 45
    iput v0, p0, Lcom/otaliastudios/cameraview/filters/SharpnessFilter;->scaleLocation:I

    .line 46
    iput v0, p0, Lcom/otaliastudios/cameraview/filters/SharpnessFilter;->stepSizeXLocation:I

    .line 47
    iput v0, p0, Lcom/otaliastudios/cameraview/filters/SharpnessFilter;->stepSizeYLocation:I

    return-void
.end method


# virtual methods
.method public getFragmentShader()Ljava/lang/String;
    .locals 1

    const-string v0, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES sTexture;\nuniform float scale;\nuniform float stepsizeX;\nuniform float stepsizeY;\nvarying vec2 vTextureCoord;\nvoid main() {\n  vec3 nbr_color = vec3(0.0, 0.0, 0.0);\n  vec2 coord;\n  vec4 color = texture2D(sTexture, vTextureCoord);\n  coord.x = vTextureCoord.x - 0.5 * stepsizeX;\n  coord.y = vTextureCoord.y - stepsizeY;\n  nbr_color += texture2D(sTexture, coord).rgb - color.rgb;\n  coord.x = vTextureCoord.x - stepsizeX;\n  coord.y = vTextureCoord.y + 0.5 * stepsizeY;\n  nbr_color += texture2D(sTexture, coord).rgb - color.rgb;\n  coord.x = vTextureCoord.x + stepsizeX;\n  coord.y = vTextureCoord.y - 0.5 * stepsizeY;\n  nbr_color += texture2D(sTexture, coord).rgb - color.rgb;\n  coord.x = vTextureCoord.x + stepsizeX;\n  coord.y = vTextureCoord.y + 0.5 * stepsizeY;\n  nbr_color += texture2D(sTexture, coord).rgb - color.rgb;\n  gl_FragColor = vec4(color.rgb - 2.0 * scale * nbr_color, color.a);\n}\n"

    return-object v0
.end method

.method public getParameter1()F
    .locals 1

    .line 90
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/filters/SharpnessFilter;->getSharpness()F

    move-result v0

    return v0
.end method

.method public getSharpness()F
    .locals 1

    .line 80
    iget v0, p0, Lcom/otaliastudios/cameraview/filters/SharpnessFilter;->scale:F

    return v0
.end method

.method public onCreate(I)V
    .locals 2

    .line 101
    invoke-super {p0, p1}, Lcom/otaliastudios/cameraview/filter/BaseFilter;->onCreate(I)V

    const-string v0, "scale"

    .line 102
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/otaliastudios/cameraview/filters/SharpnessFilter;->scaleLocation:I

    .line 103
    invoke-static {v1, v0}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlProgramLocation(ILjava/lang/String;)V

    const-string v0, "stepsizeX"

    .line 104
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/otaliastudios/cameraview/filters/SharpnessFilter;->stepSizeXLocation:I

    .line 105
    invoke-static {v1, v0}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlProgramLocation(ILjava/lang/String;)V

    const-string v0, "stepsizeY"

    .line 106
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/otaliastudios/cameraview/filters/SharpnessFilter;->stepSizeYLocation:I

    .line 107
    invoke-static {p1, v0}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlProgramLocation(ILjava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 112
    invoke-super {p0}, Lcom/otaliastudios/cameraview/filter/BaseFilter;->onDestroy()V

    const/4 v0, -0x1

    .line 113
    iput v0, p0, Lcom/otaliastudios/cameraview/filters/SharpnessFilter;->scaleLocation:I

    .line 114
    iput v0, p0, Lcom/otaliastudios/cameraview/filters/SharpnessFilter;->stepSizeXLocation:I

    .line 115
    iput v0, p0, Lcom/otaliastudios/cameraview/filters/SharpnessFilter;->stepSizeYLocation:I

    return-void
.end method

.method protected onPreDraw(J[F)V
    .locals 1

    .line 120
    invoke-super {p0, p1, p2, p3}, Lcom/otaliastudios/cameraview/filter/BaseFilter;->onPreDraw(J[F)V

    .line 121
    iget p1, p0, Lcom/otaliastudios/cameraview/filters/SharpnessFilter;->scaleLocation:I

    iget p2, p0, Lcom/otaliastudios/cameraview/filters/SharpnessFilter;->scale:F

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const-string p1, "glUniform1f"

    .line 122
    invoke-static {p1}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlError(Ljava/lang/String;)V

    .line 123
    iget p2, p0, Lcom/otaliastudios/cameraview/filters/SharpnessFilter;->stepSizeXLocation:I

    iget p3, p0, Lcom/otaliastudios/cameraview/filters/SharpnessFilter;->width:I

    int-to-float p3, p3

    const/high16 v0, 0x3f800000    # 1.0f

    div-float p3, v0, p3

    invoke-static {p2, p3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 124
    invoke-static {p1}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlError(Ljava/lang/String;)V

    .line 125
    iget p2, p0, Lcom/otaliastudios/cameraview/filters/SharpnessFilter;->stepSizeYLocation:I

    iget p3, p0, Lcom/otaliastudios/cameraview/filters/SharpnessFilter;->height:I

    int-to-float p3, p3

    div-float/2addr v0, p3

    invoke-static {p2, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 126
    invoke-static {p1}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlError(Ljava/lang/String;)V

    return-void
.end method

.method public setParameter1(F)V
    .locals 0

    .line 85
    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/filters/SharpnessFilter;->setSharpness(F)V

    return-void
.end method

.method public setSharpness(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const/4 p1, 0x0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    .line 69
    :cond_1
    iput p1, p0, Lcom/otaliastudios/cameraview/filters/SharpnessFilter;->scale:F

    return-void
.end method

.method public setSize(II)V
    .locals 0

    .line 53
    invoke-super {p0, p1, p2}, Lcom/otaliastudios/cameraview/filter/BaseFilter;->setSize(II)V

    .line 54
    iput p1, p0, Lcom/otaliastudios/cameraview/filters/SharpnessFilter;->width:I

    .line 55
    iput p2, p0, Lcom/otaliastudios/cameraview/filters/SharpnessFilter;->height:I

    return-void
.end method
