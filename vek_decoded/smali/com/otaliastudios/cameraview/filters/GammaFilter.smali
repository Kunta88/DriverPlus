.class public Lcom/otaliastudios/cameraview/filters/GammaFilter;
.super Lcom/otaliastudios/cameraview/filter/BaseFilter;
.source "GammaFilter.java"

# interfaces
.implements Lcom/otaliastudios/cameraview/filter/OneParameterFilter;


# static fields
.field private static final FRAGMENT_SHADER:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nuniform float gamma;\nvoid main() {\n  vec4 textureColor = texture2D(sTexture, vTextureCoord);\n  gl_FragColor = vec4(pow(textureColor.rgb, vec3(gamma)), textureColor.w);\n}\n"


# instance fields
.field private gamma:F

.field private gammaLocation:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/otaliastudios/cameraview/filter/BaseFilter;-><init>()V

    const/high16 v0, 0x40000000    # 2.0f

    .line 27
    iput v0, p0, Lcom/otaliastudios/cameraview/filters/GammaFilter;->gamma:F

    const/4 v0, -0x1

    .line 28
    iput v0, p0, Lcom/otaliastudios/cameraview/filters/GammaFilter;->gammaLocation:I

    return-void
.end method


# virtual methods
.method public getFragmentShader()Ljava/lang/String;
    .locals 1

    const-string v0, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nuniform float gamma;\nvoid main() {\n  vec4 textureColor = texture2D(sTexture, vTextureCoord);\n  gl_FragColor = vec4(pow(textureColor.rgb, vec3(gamma)), textureColor.w);\n}\n"

    return-object v0
.end method

.method public getGamma()F
    .locals 1

    .line 53
    iget v0, p0, Lcom/otaliastudios/cameraview/filters/GammaFilter;->gamma:F

    return v0
.end method

.method public getParameter1()F
    .locals 2

    .line 63
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/filters/GammaFilter;->getGamma()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public onCreate(I)V
    .locals 1

    .line 74
    invoke-super {p0, p1}, Lcom/otaliastudios/cameraview/filter/BaseFilter;->onCreate(I)V

    const-string v0, "gamma"

    .line 75
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/otaliastudios/cameraview/filters/GammaFilter;->gammaLocation:I

    .line 76
    invoke-static {p1, v0}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlProgramLocation(ILjava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 81
    invoke-super {p0}, Lcom/otaliastudios/cameraview/filter/BaseFilter;->onDestroy()V

    const/4 v0, -0x1

    .line 82
    iput v0, p0, Lcom/otaliastudios/cameraview/filters/GammaFilter;->gammaLocation:I

    return-void
.end method

.method protected onPreDraw(J[F)V
    .locals 0

    .line 87
    invoke-super {p0, p1, p2, p3}, Lcom/otaliastudios/cameraview/filter/BaseFilter;->onPreDraw(J[F)V

    .line 88
    iget p1, p0, Lcom/otaliastudios/cameraview/filters/GammaFilter;->gammaLocation:I

    iget p2, p0, Lcom/otaliastudios/cameraview/filters/GammaFilter;->gamma:F

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const-string p1, "glUniform1f"

    .line 89
    invoke-static {p1}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlError(Ljava/lang/String;)V

    return-void
.end method

.method public setGamma(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const/4 p1, 0x0

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    const/high16 p1, 0x40000000    # 2.0f

    .line 42
    :cond_1
    iput p1, p0, Lcom/otaliastudios/cameraview/filters/GammaFilter;->gamma:F

    return-void
.end method

.method public setParameter1(F)V
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float p1, p1, v0

    .line 58
    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/filters/GammaFilter;->setGamma(F)V

    return-void
.end method
