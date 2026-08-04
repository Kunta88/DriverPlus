.class public Lcom/otaliastudios/cameraview/filters/DuotoneFilter;
.super Lcom/otaliastudios/cameraview/filter/BaseFilter;
.source "DuotoneFilter.java"

# interfaces
.implements Lcom/otaliastudios/cameraview/filter/TwoParameterFilter;


# static fields
.field private static final FRAGMENT_SHADER:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES sTexture;\nuniform vec3 first;\nuniform vec3 second;\nvarying vec2 vTextureCoord;\nvoid main() {\n  vec4 color = texture2D(sTexture, vTextureCoord);\n  float energy = (color.r + color.g + color.b) * 0.3333;\n  vec3 new_color = (1.0 - energy) * first + energy * second;\n  gl_FragColor = vec4(new_color.rgb, color.a);\n}\n"


# instance fields
.field private mFirstColor:I

.field private mFirstColorLocation:I

.field private mSecondColor:I

.field private mSecondColorLocation:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/otaliastudios/cameraview/filter/BaseFilter;-><init>()V

    const v0, -0xff01

    .line 32
    iput v0, p0, Lcom/otaliastudios/cameraview/filters/DuotoneFilter;->mFirstColor:I

    const/16 v0, -0x100

    .line 33
    iput v0, p0, Lcom/otaliastudios/cameraview/filters/DuotoneFilter;->mSecondColor:I

    const/4 v0, -0x1

    .line 34
    iput v0, p0, Lcom/otaliastudios/cameraview/filters/DuotoneFilter;->mFirstColorLocation:I

    .line 35
    iput v0, p0, Lcom/otaliastudios/cameraview/filters/DuotoneFilter;->mSecondColorLocation:I

    return-void
.end method


# virtual methods
.method public getFirstColor()I
    .locals 1

    .line 83
    iget v0, p0, Lcom/otaliastudios/cameraview/filters/DuotoneFilter;->mFirstColor:I

    return v0
.end method

.method public getFragmentShader()Ljava/lang/String;
    .locals 1

    const-string v0, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES sTexture;\nuniform vec3 first;\nuniform vec3 second;\nvarying vec2 vTextureCoord;\nvoid main() {\n  vec4 color = texture2D(sTexture, vTextureCoord);\n  float energy = (color.r + color.g + color.b) * 0.3333;\n  vec3 new_color = (1.0 - energy) * first + energy * second;\n  gl_FragColor = vec4(new_color.rgb, color.a);\n}\n"

    return-object v0
.end method

.method public getParameter1()F
    .locals 4

    .line 106
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/filters/DuotoneFilter;->getFirstColor()I

    move-result v0

    .line 107
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    const/4 v3, 0x0

    invoke-static {v3, v1, v2, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x4b7fffff    # 1.6777215E7f

    div-float/2addr v0, v1

    return v0
.end method

.method public getParameter2()F
    .locals 4

    .line 119
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/filters/DuotoneFilter;->getSecondColor()I

    move-result v0

    .line 120
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    const/4 v3, 0x0

    invoke-static {v3, v1, v2, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x4b7fffff    # 1.6777215E7f

    div-float/2addr v0, v1

    return v0
.end method

.method public getSecondColor()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/otaliastudios/cameraview/filters/DuotoneFilter;->mSecondColor:I

    return v0
.end method

.method public onCreate(I)V
    .locals 2

    .line 132
    invoke-super {p0, p1}, Lcom/otaliastudios/cameraview/filter/BaseFilter;->onCreate(I)V

    const-string v0, "first"

    .line 133
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/otaliastudios/cameraview/filters/DuotoneFilter;->mFirstColorLocation:I

    .line 134
    invoke-static {v1, v0}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlProgramLocation(ILjava/lang/String;)V

    const-string v0, "second"

    .line 135
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/otaliastudios/cameraview/filters/DuotoneFilter;->mSecondColorLocation:I

    .line 136
    invoke-static {p1, v0}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlProgramLocation(ILjava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 160
    invoke-super {p0}, Lcom/otaliastudios/cameraview/filter/BaseFilter;->onDestroy()V

    const/4 v0, -0x1

    .line 161
    iput v0, p0, Lcom/otaliastudios/cameraview/filters/DuotoneFilter;->mFirstColorLocation:I

    .line 162
    iput v0, p0, Lcom/otaliastudios/cameraview/filters/DuotoneFilter;->mSecondColorLocation:I

    return-void
.end method

.method protected onPreDraw(J[F)V
    .locals 4

    .line 141
    invoke-super {p0, p1, p2, p3}, Lcom/otaliastudios/cameraview/filter/BaseFilter;->onPreDraw(J[F)V

    const/4 p1, 0x3

    new-array p2, p1, [F

    .line 142
    iget p3, p0, Lcom/otaliastudios/cameraview/filters/DuotoneFilter;->mFirstColor:I

    .line 143
    invoke-static {p3}, Landroid/graphics/Color;->red(I)I

    move-result p3

    int-to-float p3, p3

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p3, v0

    const/4 v1, 0x0

    aput p3, p2, v1

    iget p3, p0, Lcom/otaliastudios/cameraview/filters/DuotoneFilter;->mFirstColor:I

    .line 144
    invoke-static {p3}, Landroid/graphics/Color;->green(I)I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p3, v0

    const/4 v2, 0x1

    aput p3, p2, v2

    iget p3, p0, Lcom/otaliastudios/cameraview/filters/DuotoneFilter;->mFirstColor:I

    .line 145
    invoke-static {p3}, Landroid/graphics/Color;->blue(I)I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p3, v0

    const/4 v3, 0x2

    aput p3, p2, v3

    new-array p1, p1, [F

    .line 147
    iget p3, p0, Lcom/otaliastudios/cameraview/filters/DuotoneFilter;->mSecondColor:I

    .line 148
    invoke-static {p3}, Landroid/graphics/Color;->red(I)I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p3, v0

    aput p3, p1, v1

    iget p3, p0, Lcom/otaliastudios/cameraview/filters/DuotoneFilter;->mSecondColor:I

    .line 149
    invoke-static {p3}, Landroid/graphics/Color;->green(I)I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p3, v0

    aput p3, p1, v2

    iget p3, p0, Lcom/otaliastudios/cameraview/filters/DuotoneFilter;->mSecondColor:I

    .line 150
    invoke-static {p3}, Landroid/graphics/Color;->blue(I)I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p3, v0

    aput p3, p1, v3

    .line 152
    iget p3, p0, Lcom/otaliastudios/cameraview/filters/DuotoneFilter;->mFirstColorLocation:I

    invoke-static {p3, v2, p2, v1}, Landroid/opengl/GLES20;->glUniform3fv(II[FI)V

    const-string p2, "glUniform3fv"

    .line 153
    invoke-static {p2}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlError(Ljava/lang/String;)V

    .line 154
    iget p3, p0, Lcom/otaliastudios/cameraview/filters/DuotoneFilter;->mSecondColorLocation:I

    invoke-static {p3, v2, p1, v1}, Landroid/opengl/GLES20;->glUniform3fv(II[FI)V

    .line 155
    invoke-static {p2}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlError(Ljava/lang/String;)V

    return-void
.end method

.method public setColors(II)V
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/filters/DuotoneFilter;->setFirstColor(I)V

    .line 47
    invoke-virtual {p0, p2}, Lcom/otaliastudios/cameraview/filters/DuotoneFilter;->setSecondColor(I)V

    return-void
.end method

.method public setFirstColor(I)V
    .locals 2

    .line 59
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-static {v0, v1, p1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    iput p1, p0, Lcom/otaliastudios/cameraview/filters/DuotoneFilter;->mFirstColor:I

    return-void
.end method

.method public setParameter1(F)V
    .locals 1

    const v0, 0x4b7fffff    # 1.6777215E7f

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 101
    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/filters/DuotoneFilter;->setFirstColor(I)V

    return-void
.end method

.method public setParameter2(F)V
    .locals 1

    const v0, 0x4b7fffff    # 1.6777215E7f

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 114
    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/filters/DuotoneFilter;->setSecondColor(I)V

    return-void
.end method

.method public setSecondColor(I)V
    .locals 2

    .line 71
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-static {v0, v1, p1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    iput p1, p0, Lcom/otaliastudios/cameraview/filters/DuotoneFilter;->mSecondColor:I

    return-void
.end method
