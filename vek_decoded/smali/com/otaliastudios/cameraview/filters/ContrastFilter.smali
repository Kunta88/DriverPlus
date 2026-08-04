.class public Lcom/otaliastudios/cameraview/filters/ContrastFilter;
.super Lcom/otaliastudios/cameraview/filter/BaseFilter;
.source "ContrastFilter.java"

# interfaces
.implements Lcom/otaliastudios/cameraview/filter/OneParameterFilter;


# static fields
.field private static final FRAGMENT_SHADER:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES sTexture;\nuniform float contrast;\nvarying vec2 vTextureCoord;\nvoid main() {\n  vec4 color = texture2D(sTexture, vTextureCoord);\n  color -= 0.5;\n  color *= contrast;\n  color += 0.5;\n  gl_FragColor = color;\n}\n"


# instance fields
.field private contrast:F

.field private contrastLocation:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/otaliastudios/cameraview/filter/BaseFilter;-><init>()V

    const/high16 v0, 0x40000000    # 2.0f

    .line 29
    iput v0, p0, Lcom/otaliastudios/cameraview/filters/ContrastFilter;->contrast:F

    const/4 v0, -0x1

    .line 30
    iput v0, p0, Lcom/otaliastudios/cameraview/filters/ContrastFilter;->contrastLocation:I

    return-void
.end method


# virtual methods
.method public getContrast()F
    .locals 1

    .line 56
    iget v0, p0, Lcom/otaliastudios/cameraview/filters/ContrastFilter;->contrast:F

    return v0
.end method

.method public getFragmentShader()Ljava/lang/String;
    .locals 1

    const-string v0, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES sTexture;\nuniform float contrast;\nvarying vec2 vTextureCoord;\nvoid main() {\n  vec4 color = texture2D(sTexture, vTextureCoord);\n  color -= 0.5;\n  color *= contrast;\n  color += 0.5;\n  gl_FragColor = color;\n}\n"

    return-object v0
.end method

.method public getParameter1()F
    .locals 2

    .line 68
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/filters/ContrastFilter;->getContrast()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    return v0
.end method

.method public onCreate(I)V
    .locals 1

    .line 79
    invoke-super {p0, p1}, Lcom/otaliastudios/cameraview/filter/BaseFilter;->onCreate(I)V

    const-string v0, "contrast"

    .line 80
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/otaliastudios/cameraview/filters/ContrastFilter;->contrastLocation:I

    .line 81
    invoke-static {p1, v0}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlProgramLocation(ILjava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 86
    invoke-super {p0}, Lcom/otaliastudios/cameraview/filter/BaseFilter;->onDestroy()V

    const/4 v0, -0x1

    .line 87
    iput v0, p0, Lcom/otaliastudios/cameraview/filters/ContrastFilter;->contrastLocation:I

    return-void
.end method

.method protected onPreDraw(J[F)V
    .locals 0

    .line 92
    invoke-super {p0, p1, p2, p3}, Lcom/otaliastudios/cameraview/filter/BaseFilter;->onPreDraw(J[F)V

    .line 93
    iget p1, p0, Lcom/otaliastudios/cameraview/filters/ContrastFilter;->contrastLocation:I

    iget p2, p0, Lcom/otaliastudios/cameraview/filters/ContrastFilter;->contrast:F

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const-string p1, "glUniform1f"

    .line 94
    invoke-static {p1}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlError(Ljava/lang/String;)V

    return-void
.end method

.method public setContrast(F)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    const/high16 p1, 0x40000000    # 2.0f

    .line 45
    :cond_1
    iput p1, p0, Lcom/otaliastudios/cameraview/filters/ContrastFilter;->contrast:F

    return-void
.end method

.method public setParameter1(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p1, v0

    .line 62
    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/filters/ContrastFilter;->setContrast(F)V

    return-void
.end method
