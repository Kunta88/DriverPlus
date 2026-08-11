.class public Lcom/otaliastudios/cameraview/filters/TintFilter;
.super Lcom/otaliastudios/cameraview/filter/BaseFilter;
.source "TintFilter.java"

# interfaces
.implements Lcom/otaliastudios/cameraview/filter/OneParameterFilter;


# static fields
.field private static final FRAGMENT_SHADER:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES sTexture;\nuniform vec3 tint;\nvec3 color_ratio;\nvarying vec2 vTextureCoord;\nvoid main() {\n  color_ratio[0] = 0.21;\n  color_ratio[1] = 0.71;\n  color_ratio[2] = 0.07;\n  vec4 color = texture2D(sTexture, vTextureCoord);\n  float avg_color = dot(color_ratio, color.rgb);\n  vec3 new_color = min(0.8 * avg_color + 0.2 * tint, 1.0);\n  gl_FragColor = vec4(new_color.rgb, color.a);\n}\n"


# instance fields
.field private tint:I

.field private tintLocation:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/otaliastudios/cameraview/filter/BaseFilter;-><init>()V

    const/high16 v0, -0x10000

    .line 34
    iput v0, p0, Lcom/otaliastudios/cameraview/filters/TintFilter;->tint:I

    const/4 v0, -0x1

    .line 35
    iput v0, p0, Lcom/otaliastudios/cameraview/filters/TintFilter;->tintLocation:I

    return-void
.end method


# virtual methods
.method public getFragmentShader()Ljava/lang/String;
    .locals 1

    const-string v0, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES sTexture;\nuniform vec3 tint;\nvec3 color_ratio;\nvarying vec2 vTextureCoord;\nvoid main() {\n  color_ratio[0] = 0.21;\n  color_ratio[1] = 0.71;\n  color_ratio[2] = 0.07;\n  vec4 color = texture2D(sTexture, vTextureCoord);\n  float avg_color = dot(color_ratio, color.rgb);\n  vec3 new_color = min(0.8 * avg_color + 0.2 * tint, 1.0);\n  gl_FragColor = vec4(new_color.rgb, color.a);\n}\n"

    return-object v0
.end method

.method public getParameter1()F
    .locals 4

    .line 69
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/filters/TintFilter;->getTint()I

    move-result v0

    .line 70
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

.method public getTint()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/otaliastudios/cameraview/filters/TintFilter;->tint:I

    return v0
.end method

.method public onCreate(I)V
    .locals 1

    .line 82
    invoke-super {p0, p1}, Lcom/otaliastudios/cameraview/filter/BaseFilter;->onCreate(I)V

    const-string v0, "tint"

    .line 83
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/otaliastudios/cameraview/filters/TintFilter;->tintLocation:I

    .line 84
    invoke-static {p1, v0}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlProgramLocation(ILjava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 89
    invoke-super {p0}, Lcom/otaliastudios/cameraview/filter/BaseFilter;->onDestroy()V

    const/4 v0, -0x1

    .line 90
    iput v0, p0, Lcom/otaliastudios/cameraview/filters/TintFilter;->tintLocation:I

    return-void
.end method

.method protected onPreDraw(J[F)V
    .locals 2

    .line 95
    invoke-super {p0, p1, p2, p3}, Lcom/otaliastudios/cameraview/filter/BaseFilter;->onPreDraw(J[F)V

    const/4 p1, 0x3

    new-array p1, p1, [F

    .line 96
    iget p2, p0, Lcom/otaliastudios/cameraview/filters/TintFilter;->tint:I

    .line 97
    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result p2

    int-to-float p2, p2

    const/high16 p3, 0x437f0000    # 255.0f

    div-float/2addr p2, p3

    const/4 v0, 0x0

    aput p2, p1, v0

    iget p2, p0, Lcom/otaliastudios/cameraview/filters/TintFilter;->tint:I

    .line 98
    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, p3

    const/4 v1, 0x1

    aput p2, p1, v1

    iget p2, p0, Lcom/otaliastudios/cameraview/filters/TintFilter;->tint:I

    .line 99
    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, p3

    const/4 p3, 0x2

    aput p2, p1, p3

    .line 101
    iget p2, p0, Lcom/otaliastudios/cameraview/filters/TintFilter;->tintLocation:I

    invoke-static {p2, v1, p1, v0}, Landroid/opengl/GLES20;->glUniform3fv(II[FI)V

    const-string p1, "glUniform3fv"

    .line 102
    invoke-static {p1}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlError(Ljava/lang/String;)V

    return-void
.end method

.method public setParameter1(F)V
    .locals 1

    const v0, 0x4b7fffff    # 1.6777215E7f

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 64
    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/filters/TintFilter;->setTint(I)V

    return-void
.end method

.method public setTint(I)V
    .locals 2

    .line 46
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-static {v0, v1, p1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    iput p1, p0, Lcom/otaliastudios/cameraview/filters/TintFilter;->tint:I

    return-void
.end method
