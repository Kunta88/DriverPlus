.class public Lcom/otaliastudios/cameraview/filters/SaturationFilter;
.super Lcom/otaliastudios/cameraview/filter/BaseFilter;
.source "SaturationFilter.java"

# interfaces
.implements Lcom/otaliastudios/cameraview/filter/OneParameterFilter;


# static fields
.field private static final FRAGMENT_SHADER:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES sTexture;\nuniform float scale;\nuniform vec3 exponents;\nfloat shift;\nvec3 weights;\nvarying vec2 vTextureCoord;\nvoid main() {\n  weights[0] = 0.25;\n  weights[1] = 0.625;\n  weights[2] = 0.125;\n  shift = 0.003921569;\n  vec4 oldcolor = texture2D(sTexture, vTextureCoord);\n  float kv = dot(oldcolor.rgb, weights) + shift;\n  vec3 new_color = scale * oldcolor.rgb + (1.0 - scale) * kv;\n  gl_FragColor = vec4(new_color, oldcolor.a);\n  vec4 color = texture2D(sTexture, vTextureCoord);\n  float de = dot(color.rgb, weights);\n  float inv_de = 1.0 / de;\n  vec3 verynew_color = de * pow(color.rgb * inv_de, exponents);\n  float max_color = max(max(max(verynew_color.r, verynew_color.g), verynew_color.b), 1.0);\n  gl_FragColor = gl_FragColor+vec4(verynew_color / max_color, color.a);\n}\n"


# instance fields
.field private exponentsLocation:I

.field private scale:F

.field private scaleLocation:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/otaliastudios/cameraview/filter/BaseFilter;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 44
    iput v0, p0, Lcom/otaliastudios/cameraview/filters/SaturationFilter;->scale:F

    const/4 v0, -0x1

    .line 45
    iput v0, p0, Lcom/otaliastudios/cameraview/filters/SaturationFilter;->scaleLocation:I

    .line 46
    iput v0, p0, Lcom/otaliastudios/cameraview/filters/SaturationFilter;->exponentsLocation:I

    return-void
.end method


# virtual methods
.method public getFragmentShader()Ljava/lang/String;
    .locals 1

    const-string v0, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES sTexture;\nuniform float scale;\nuniform vec3 exponents;\nfloat shift;\nvec3 weights;\nvarying vec2 vTextureCoord;\nvoid main() {\n  weights[0] = 0.25;\n  weights[1] = 0.625;\n  weights[2] = 0.125;\n  shift = 0.003921569;\n  vec4 oldcolor = texture2D(sTexture, vTextureCoord);\n  float kv = dot(oldcolor.rgb, weights) + shift;\n  vec3 new_color = scale * oldcolor.rgb + (1.0 - scale) * kv;\n  gl_FragColor = vec4(new_color, oldcolor.a);\n  vec4 color = texture2D(sTexture, vTextureCoord);\n  float de = dot(color.rgb, weights);\n  float inv_de = 1.0 / de;\n  vec3 verynew_color = de * pow(color.rgb * inv_de, exponents);\n  float max_color = max(max(max(verynew_color.r, verynew_color.g), verynew_color.b), 1.0);\n  gl_FragColor = gl_FragColor+vec4(verynew_color / max_color, color.a);\n}\n"

    return-object v0
.end method

.method public getParameter1()F
    .locals 2

    .line 83
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/filters/SaturationFilter;->getSaturation()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getSaturation()F
    .locals 1

    .line 73
    iget v0, p0, Lcom/otaliastudios/cameraview/filters/SaturationFilter;->scale:F

    return v0
.end method

.method public onCreate(I)V
    .locals 2

    .line 94
    invoke-super {p0, p1}, Lcom/otaliastudios/cameraview/filter/BaseFilter;->onCreate(I)V

    const-string v0, "scale"

    .line 95
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/otaliastudios/cameraview/filters/SaturationFilter;->scaleLocation:I

    .line 96
    invoke-static {v1, v0}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlProgramLocation(ILjava/lang/String;)V

    const-string v0, "exponents"

    .line 97
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/otaliastudios/cameraview/filters/SaturationFilter;->exponentsLocation:I

    .line 98
    invoke-static {p1, v0}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlProgramLocation(ILjava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 103
    invoke-super {p0}, Lcom/otaliastudios/cameraview/filter/BaseFilter;->onDestroy()V

    const/4 v0, -0x1

    .line 104
    iput v0, p0, Lcom/otaliastudios/cameraview/filters/SaturationFilter;->scaleLocation:I

    .line 105
    iput v0, p0, Lcom/otaliastudios/cameraview/filters/SaturationFilter;->exponentsLocation:I

    return-void
.end method

.method protected onPreDraw(J[F)V
    .locals 4

    .line 110
    invoke-super {p0, p1, p2, p3}, Lcom/otaliastudios/cameraview/filter/BaseFilter;->onPreDraw(J[F)V

    .line 111
    iget p1, p0, Lcom/otaliastudios/cameraview/filters/SaturationFilter;->scale:F

    const-string p2, "glUniform3f"

    const-string p3, "glUniform1f"

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    cmpl-float v2, p1, v1

    if-lez v2, :cond_0

    .line 112
    iget p1, p0, Lcom/otaliastudios/cameraview/filters/SaturationFilter;->scaleLocation:I

    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 113
    invoke-static {p3}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlError(Ljava/lang/String;)V

    .line 114
    iget p1, p0, Lcom/otaliastudios/cameraview/filters/SaturationFilter;->exponentsLocation:I

    const p3, 0x3f666666    # 0.9f

    iget v1, p0, Lcom/otaliastudios/cameraview/filters/SaturationFilter;->scale:F

    mul-float p3, p3, v1

    add-float/2addr p3, v0

    const v2, 0x40066666    # 2.1f

    mul-float v2, v2, v1

    add-float/2addr v2, v0

    const v3, 0x402ccccd    # 2.7f

    mul-float v1, v1, v3

    add-float/2addr v1, v0

    invoke-static {p1, p3, v2, v1}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    .line 119
    invoke-static {p2}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlError(Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :cond_0
    iget v2, p0, Lcom/otaliastudios/cameraview/filters/SaturationFilter;->scaleLocation:I

    add-float/2addr p1, v0

    invoke-static {v2, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 122
    invoke-static {p3}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlError(Ljava/lang/String;)V

    .line 123
    iget p1, p0, Lcom/otaliastudios/cameraview/filters/SaturationFilter;->exponentsLocation:I

    invoke-static {p1, v1, v1, v1}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    .line 124
    invoke-static {p2}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setParameter1(F)V
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float p1, p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    .line 78
    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/filters/SaturationFilter;->setSaturation(F)V

    return-void
.end method

.method public setSaturation(F)V
    .locals 2

    const/high16 v0, -0x40800000    # -1.0f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const/high16 p1, -0x40800000    # -1.0f

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    .line 62
    :cond_1
    iput p1, p0, Lcom/otaliastudios/cameraview/filters/SaturationFilter;->scale:F

    return-void
.end method
