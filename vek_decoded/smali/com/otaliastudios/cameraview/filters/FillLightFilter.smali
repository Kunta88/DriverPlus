.class public Lcom/otaliastudios/cameraview/filters/FillLightFilter;
.super Lcom/otaliastudios/cameraview/filter/BaseFilter;
.source "FillLightFilter.java"

# interfaces
.implements Lcom/otaliastudios/cameraview/filter/OneParameterFilter;


# static fields
.field private static final FRAGMENT_SHADER:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES sTexture;\nuniform float mult;\nuniform float igamma;\nvarying vec2 vTextureCoord;\nvoid main() {\n  const vec3 color_weights = vec3(0.25, 0.5, 0.25);\n  vec4 color = texture2D(sTexture, vTextureCoord);\n  float lightmask = dot(color.rgb, color_weights);\n  float backmask = (1.0 - lightmask);\n  vec3 ones = vec3(1.0, 1.0, 1.0);\n  vec3 diff = pow(mult * color.rgb, igamma * ones) - color.rgb;\n  diff = min(diff, 1.0);\n  vec3 new_color = min(color.rgb + diff * backmask, 1.0);\n  gl_FragColor = vec4(new_color, color.a);\n}\n"


# instance fields
.field private gammaLocation:I

.field private multiplierLocation:I

.field private strength:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/otaliastudios/cameraview/filter/BaseFilter;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 34
    iput v0, p0, Lcom/otaliastudios/cameraview/filters/FillLightFilter;->strength:F

    const/4 v0, -0x1

    .line 35
    iput v0, p0, Lcom/otaliastudios/cameraview/filters/FillLightFilter;->multiplierLocation:I

    .line 36
    iput v0, p0, Lcom/otaliastudios/cameraview/filters/FillLightFilter;->gammaLocation:I

    return-void
.end method


# virtual methods
.method public getFragmentShader()Ljava/lang/String;
    .locals 1

    const-string v0, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES sTexture;\nuniform float mult;\nuniform float igamma;\nvarying vec2 vTextureCoord;\nvoid main() {\n  const vec3 color_weights = vec3(0.25, 0.5, 0.25);\n  vec4 color = texture2D(sTexture, vTextureCoord);\n  float lightmask = dot(color.rgb, color_weights);\n  float backmask = (1.0 - lightmask);\n  vec3 ones = vec3(1.0, 1.0, 1.0);\n  vec3 diff = pow(mult * color.rgb, igamma * ones) - color.rgb;\n  diff = min(diff, 1.0);\n  vec3 new_color = min(color.rgb + diff * backmask, 1.0);\n  gl_FragColor = vec4(new_color, color.a);\n}\n"

    return-object v0
.end method

.method public getParameter1()F
    .locals 1

    .line 72
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/filters/FillLightFilter;->getStrength()F

    move-result v0

    return v0
.end method

.method public getStrength()F
    .locals 1

    .line 62
    iget v0, p0, Lcom/otaliastudios/cameraview/filters/FillLightFilter;->strength:F

    return v0
.end method

.method public onCreate(I)V
    .locals 2

    .line 83
    invoke-super {p0, p1}, Lcom/otaliastudios/cameraview/filter/BaseFilter;->onCreate(I)V

    const-string v0, "mult"

    .line 84
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/otaliastudios/cameraview/filters/FillLightFilter;->multiplierLocation:I

    .line 85
    invoke-static {v1, v0}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlProgramLocation(ILjava/lang/String;)V

    const-string v0, "igamma"

    .line 86
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/otaliastudios/cameraview/filters/FillLightFilter;->gammaLocation:I

    .line 87
    invoke-static {p1, v0}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlProgramLocation(ILjava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 92
    invoke-super {p0}, Lcom/otaliastudios/cameraview/filter/BaseFilter;->onDestroy()V

    const/4 v0, -0x1

    .line 93
    iput v0, p0, Lcom/otaliastudios/cameraview/filters/FillLightFilter;->multiplierLocation:I

    .line 94
    iput v0, p0, Lcom/otaliastudios/cameraview/filters/FillLightFilter;->gammaLocation:I

    return-void
.end method

.method protected onPreDraw(J[F)V
    .locals 2

    .line 99
    invoke-super {p0, p1, p2, p3}, Lcom/otaliastudios/cameraview/filter/BaseFilter;->onPreDraw(J[F)V

    .line 100
    iget p1, p0, Lcom/otaliastudios/cameraview/filters/FillLightFilter;->strength:F

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float p1, p2, p1

    const p3, 0x3f333333    # 0.7f

    mul-float p1, p1, p3

    const v0, 0x3e99999a    # 0.3f

    add-float/2addr p1, v0

    div-float p1, p2, p1

    .line 102
    iget v1, p0, Lcom/otaliastudios/cameraview/filters/FillLightFilter;->multiplierLocation:I

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const-string v1, "glUniform1f"

    .line 103
    invoke-static {v1}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlError(Ljava/lang/String;)V

    mul-float p3, p3, p1

    add-float/2addr p3, v0

    div-float/2addr p2, p3

    .line 108
    iget p1, p0, Lcom/otaliastudios/cameraview/filters/FillLightFilter;->gammaLocation:I

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 109
    invoke-static {v1}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlError(Ljava/lang/String;)V

    return-void
.end method

.method public setParameter1(F)V
    .locals 0

    .line 67
    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/filters/FillLightFilter;->setStrength(F)V

    return-void
.end method

.method public setStrength(F)V
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

    .line 51
    :cond_1
    iput p1, p0, Lcom/otaliastudios/cameraview/filters/FillLightFilter;->strength:F

    return-void
.end method
