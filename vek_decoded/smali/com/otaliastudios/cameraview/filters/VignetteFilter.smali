.class public Lcom/otaliastudios/cameraview/filters/VignetteFilter;
.super Lcom/otaliastudios/cameraview/filter/BaseFilter;
.source "VignetteFilter.java"

# interfaces
.implements Lcom/otaliastudios/cameraview/filter/TwoParameterFilter;


# static fields
.field private static final FRAGMENT_SHADER:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES sTexture;\nuniform float range;\nuniform float inv_max_dist;\nuniform float shade;\nuniform vec2 scale;\nvarying vec2 vTextureCoord;\nvoid main() {\n  const float slope = 20.0;\n  vec2 coord = vTextureCoord - vec2(0.5, 0.5);\n  float dist = length(coord * scale);\n  float lumen = shade / (1.0 + exp((dist * inv_max_dist - range) * slope)) + (1.0 - shade);\n  vec4 color = texture2D(sTexture, vTextureCoord);\n  gl_FragColor = vec4(color.rgb * lumen, color.a);\n}\n"


# instance fields
.field private mHeight:I

.field private mMaxDistLocation:I

.field private mRangeLocation:I

.field private mScale:F

.field private mScaleLocation:I

.field private mShade:F

.field private mShadeLocation:I

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/otaliastudios/cameraview/filter/BaseFilter;-><init>()V

    const v0, 0x3f59999a    # 0.85f

    .line 35
    iput v0, p0, Lcom/otaliastudios/cameraview/filters/VignetteFilter;->mScale:F

    const/high16 v0, 0x3f000000    # 0.5f

    .line 36
    iput v0, p0, Lcom/otaliastudios/cameraview/filters/VignetteFilter;->mShade:F

    const/4 v0, 0x1

    .line 37
    iput v0, p0, Lcom/otaliastudios/cameraview/filters/VignetteFilter;->mWidth:I

    .line 38
    iput v0, p0, Lcom/otaliastudios/cameraview/filters/VignetteFilter;->mHeight:I

    const/4 v0, -0x1

    .line 40
    iput v0, p0, Lcom/otaliastudios/cameraview/filters/VignetteFilter;->mRangeLocation:I

    .line 41
    iput v0, p0, Lcom/otaliastudios/cameraview/filters/VignetteFilter;->mMaxDistLocation:I

    .line 42
    iput v0, p0, Lcom/otaliastudios/cameraview/filters/VignetteFilter;->mShadeLocation:I

    .line 43
    iput v0, p0, Lcom/otaliastudios/cameraview/filters/VignetteFilter;->mScaleLocation:I

    return-void
.end method


# virtual methods
.method public getFragmentShader()Ljava/lang/String;
    .locals 1

    const-string v0, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES sTexture;\nuniform float range;\nuniform float inv_max_dist;\nuniform float shade;\nuniform vec2 scale;\nvarying vec2 vTextureCoord;\nvoid main() {\n  const float slope = 20.0;\n  vec2 coord = vTextureCoord - vec2(0.5, 0.5);\n  float dist = length(coord * scale);\n  float lumen = shade / (1.0 + exp((dist * inv_max_dist - range) * slope)) + (1.0 - shade);\n  vec4 color = texture2D(sTexture, vTextureCoord);\n  gl_FragColor = vec4(color.rgb * lumen, color.a);\n}\n"

    return-object v0
.end method

.method public getParameter1()F
    .locals 1

    .line 106
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/filters/VignetteFilter;->getVignetteScale()F

    move-result v0

    return v0
.end method

.method public getParameter2()F
    .locals 1

    .line 116
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/filters/VignetteFilter;->getVignetteShade()F

    move-result v0

    return v0
.end method

.method public getVignetteScale()F
    .locals 1

    .line 84
    iget v0, p0, Lcom/otaliastudios/cameraview/filters/VignetteFilter;->mScale:F

    return v0
.end method

.method public getVignetteShade()F
    .locals 1

    .line 95
    iget v0, p0, Lcom/otaliastudios/cameraview/filters/VignetteFilter;->mShade:F

    return v0
.end method

.method public onCreate(I)V
    .locals 2

    .line 127
    invoke-super {p0, p1}, Lcom/otaliastudios/cameraview/filter/BaseFilter;->onCreate(I)V

    const-string v0, "range"

    .line 128
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/otaliastudios/cameraview/filters/VignetteFilter;->mRangeLocation:I

    .line 129
    invoke-static {v1, v0}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlProgramLocation(ILjava/lang/String;)V

    const-string v0, "inv_max_dist"

    .line 130
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/otaliastudios/cameraview/filters/VignetteFilter;->mMaxDistLocation:I

    .line 131
    invoke-static {v1, v0}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlProgramLocation(ILjava/lang/String;)V

    const-string v0, "shade"

    .line 132
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/otaliastudios/cameraview/filters/VignetteFilter;->mShadeLocation:I

    .line 133
    invoke-static {v1, v0}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlProgramLocation(ILjava/lang/String;)V

    const-string v0, "scale"

    .line 134
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/otaliastudios/cameraview/filters/VignetteFilter;->mScaleLocation:I

    .line 135
    invoke-static {p1, v0}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlProgramLocation(ILjava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 140
    invoke-super {p0}, Lcom/otaliastudios/cameraview/filter/BaseFilter;->onDestroy()V

    const/4 v0, -0x1

    .line 141
    iput v0, p0, Lcom/otaliastudios/cameraview/filters/VignetteFilter;->mRangeLocation:I

    .line 142
    iput v0, p0, Lcom/otaliastudios/cameraview/filters/VignetteFilter;->mMaxDistLocation:I

    .line 143
    iput v0, p0, Lcom/otaliastudios/cameraview/filters/VignetteFilter;->mShadeLocation:I

    .line 144
    iput v0, p0, Lcom/otaliastudios/cameraview/filters/VignetteFilter;->mScaleLocation:I

    return-void
.end method

.method protected onPreDraw(J[F)V
    .locals 3

    .line 149
    invoke-super {p0, p1, p2, p3}, Lcom/otaliastudios/cameraview/filter/BaseFilter;->onPreDraw(J[F)V

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 151
    iget p2, p0, Lcom/otaliastudios/cameraview/filters/VignetteFilter;->mWidth:I

    iget p3, p0, Lcom/otaliastudios/cameraview/filters/VignetteFilter;->mHeight:I

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le p2, p3, :cond_0

    aput v0, p1, v2

    int-to-float p3, p3

    int-to-float p2, p2

    div-float/2addr p3, p2

    aput p3, p1, v1

    goto :goto_0

    :cond_0
    int-to-float p2, p2

    int-to-float p3, p3

    div-float/2addr p2, p3

    aput p2, p1, v2

    aput v0, p1, v1

    .line 158
    :goto_0
    iget p2, p0, Lcom/otaliastudios/cameraview/filters/VignetteFilter;->mScaleLocation:I

    invoke-static {p2, v1, p1, v2}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    const-string p2, "glUniform2fv"

    .line 159
    invoke-static {p2}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlError(Ljava/lang/String;)V

    .line 161
    aget p2, p1, v2

    aget p3, p1, v2

    mul-float p2, p2, p3

    aget p3, p1, v1

    aget p1, p1, v1

    mul-float p3, p3, p1

    add-float/2addr p2, p3

    float-to-double p1, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    const/high16 p2, 0x3f000000    # 0.5f

    mul-float p1, p1, p2

    .line 162
    iget p2, p0, Lcom/otaliastudios/cameraview/filters/VignetteFilter;->mMaxDistLocation:I

    div-float/2addr v0, p1

    invoke-static {p2, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const-string p1, "glUniform1f"

    .line 163
    invoke-static {p1}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlError(Ljava/lang/String;)V

    .line 165
    iget p2, p0, Lcom/otaliastudios/cameraview/filters/VignetteFilter;->mShadeLocation:I

    iget p3, p0, Lcom/otaliastudios/cameraview/filters/VignetteFilter;->mShade:F

    invoke-static {p2, p3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 166
    invoke-static {p1}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlError(Ljava/lang/String;)V

    const p2, 0x3fa66666    # 1.3f

    .line 171
    iget p3, p0, Lcom/otaliastudios/cameraview/filters/VignetteFilter;->mScale:F

    float-to-double v0, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p3, v0

    const v0, 0x3f333333    # 0.7f

    mul-float p3, p3, v0

    sub-float/2addr p2, p3

    .line 172
    iget p3, p0, Lcom/otaliastudios/cameraview/filters/VignetteFilter;->mRangeLocation:I

    invoke-static {p3, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 173
    invoke-static {p1}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlError(Ljava/lang/String;)V

    return-void
.end method

.method public setParameter1(F)V
    .locals 0

    .line 101
    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/filters/VignetteFilter;->setVignetteScale(F)V

    return-void
.end method

.method public setParameter2(F)V
    .locals 0

    .line 111
    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/filters/VignetteFilter;->setVignetteShade(F)V

    return-void
.end method

.method public setSize(II)V
    .locals 0

    .line 49
    invoke-super {p0, p1, p2}, Lcom/otaliastudios/cameraview/filter/BaseFilter;->setSize(II)V

    .line 50
    iput p1, p0, Lcom/otaliastudios/cameraview/filters/VignetteFilter;->mWidth:I

    .line 51
    iput p2, p0, Lcom/otaliastudios/cameraview/filters/VignetteFilter;->mHeight:I

    return-void
.end method

.method public setVignetteScale(F)V
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

    .line 62
    :cond_1
    iput p1, p0, Lcom/otaliastudios/cameraview/filters/VignetteFilter;->mScale:F

    return-void
.end method

.method public setVignetteShade(F)V
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

    .line 73
    :cond_1
    iput p1, p0, Lcom/otaliastudios/cameraview/filters/VignetteFilter;->mShade:F

    return-void
.end method
