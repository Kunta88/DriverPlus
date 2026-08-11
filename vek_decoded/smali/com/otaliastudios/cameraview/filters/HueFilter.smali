.class public Lcom/otaliastudios/cameraview/filters/HueFilter;
.super Lcom/otaliastudios/cameraview/filter/BaseFilter;
.source "HueFilter.java"

# interfaces
.implements Lcom/otaliastudios/cameraview/filter/OneParameterFilter;


# static fields
.field private static final FRAGMENT_SHADER:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nuniform float hue;\nvoid main() {\n  vec4 kRGBToYPrime = vec4 (0.299, 0.587, 0.114, 0.0);\n  vec4 kRGBToI = vec4 (0.595716, -0.274453, -0.321263, 0.0);\n  vec4 kRGBToQ = vec4 (0.211456, -0.522591, 0.31135, 0.0);\n  vec4 kYIQToR = vec4 (1.0, 0.9563, 0.6210, 0.0);\n  vec4 kYIQToG = vec4 (1.0, -0.2721, -0.6474, 0.0);\n  vec4 kYIQToB = vec4 (1.0, -1.1070, 1.7046, 0.0);\n  vec4 color = texture2D(sTexture, vTextureCoord);\n  float YPrime = dot(color, kRGBToYPrime);\n  float I = dot(color, kRGBToI);\n  float Q = dot(color, kRGBToQ);\n  float chroma = sqrt (I * I + Q * Q);\n  Q = chroma * sin (hue);\n  I = chroma * cos (hue);\n  vec4 yIQ = vec4 (YPrime, I, Q, 0.0);\n  color.r = dot (yIQ, kYIQToR);\n  color.g = dot (yIQ, kYIQToG);\n  color.b = dot (yIQ, kYIQToB);\n  gl_FragColor = color;\n}\n"


# instance fields
.field private hue:F

.field private hueLocation:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/otaliastudios/cameraview/filter/BaseFilter;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/otaliastudios/cameraview/filters/HueFilter;->hue:F

    const/4 v0, -0x1

    .line 43
    iput v0, p0, Lcom/otaliastudios/cameraview/filters/HueFilter;->hueLocation:I

    return-void
.end method


# virtual methods
.method public getFragmentShader()Ljava/lang/String;
    .locals 1

    const-string v0, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nuniform float hue;\nvoid main() {\n  vec4 kRGBToYPrime = vec4 (0.299, 0.587, 0.114, 0.0);\n  vec4 kRGBToI = vec4 (0.595716, -0.274453, -0.321263, 0.0);\n  vec4 kRGBToQ = vec4 (0.211456, -0.522591, 0.31135, 0.0);\n  vec4 kYIQToR = vec4 (1.0, 0.9563, 0.6210, 0.0);\n  vec4 kYIQToG = vec4 (1.0, -0.2721, -0.6474, 0.0);\n  vec4 kYIQToB = vec4 (1.0, -1.1070, 1.7046, 0.0);\n  vec4 color = texture2D(sTexture, vTextureCoord);\n  float YPrime = dot(color, kRGBToYPrime);\n  float I = dot(color, kRGBToI);\n  float Q = dot(color, kRGBToQ);\n  float chroma = sqrt (I * I + Q * Q);\n  Q = chroma * sin (hue);\n  I = chroma * cos (hue);\n  vec4 yIQ = vec4 (YPrime, I, Q, 0.0);\n  color.r = dot (yIQ, kYIQToR);\n  color.g = dot (yIQ, kYIQToG);\n  color.b = dot (yIQ, kYIQToB);\n  gl_FragColor = color;\n}\n"

    return-object v0
.end method

.method public getHue()F
    .locals 1

    .line 66
    iget v0, p0, Lcom/otaliastudios/cameraview/filters/HueFilter;->hue:F

    return v0
.end method

.method public getParameter1()F
    .locals 2

    .line 76
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/filters/HueFilter;->getHue()F

    move-result v0

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public onCreate(I)V
    .locals 1

    .line 87
    invoke-super {p0, p1}, Lcom/otaliastudios/cameraview/filter/BaseFilter;->onCreate(I)V

    const-string v0, "hue"

    .line 88
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/otaliastudios/cameraview/filters/HueFilter;->hueLocation:I

    .line 89
    invoke-static {p1, v0}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlProgramLocation(ILjava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 94
    invoke-super {p0}, Lcom/otaliastudios/cameraview/filter/BaseFilter;->onDestroy()V

    const/4 v0, -0x1

    .line 95
    iput v0, p0, Lcom/otaliastudios/cameraview/filters/HueFilter;->hueLocation:I

    return-void
.end method

.method protected onPreDraw(J[F)V
    .locals 0

    .line 100
    invoke-super {p0, p1, p2, p3}, Lcom/otaliastudios/cameraview/filter/BaseFilter;->onPreDraw(J[F)V

    .line 102
    iget p1, p0, Lcom/otaliastudios/cameraview/filters/HueFilter;->hue:F

    const/high16 p2, 0x42340000    # 45.0f

    sub-float/2addr p1, p2

    div-float/2addr p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p1, p2

    const/high16 p2, -0x40800000    # -1.0f

    mul-float p1, p1, p2

    .line 103
    iget p2, p0, Lcom/otaliastudios/cameraview/filters/HueFilter;->hueLocation:I

    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const-string p1, "glUniform1f"

    .line 104
    invoke-static {p1}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlError(Ljava/lang/String;)V

    return-void
.end method

.method public setHue(F)V
    .locals 1

    const/high16 v0, 0x43b40000    # 360.0f

    rem-float/2addr p1, v0

    .line 55
    iput p1, p0, Lcom/otaliastudios/cameraview/filters/HueFilter;->hue:F

    return-void
.end method

.method public setParameter1(F)V
    .locals 1

    const/high16 v0, 0x43b40000    # 360.0f

    mul-float p1, p1, v0

    .line 71
    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/filters/HueFilter;->setHue(F)V

    return-void
.end method
