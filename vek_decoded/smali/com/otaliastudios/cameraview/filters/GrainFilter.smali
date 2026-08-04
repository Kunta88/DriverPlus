.class public Lcom/otaliastudios/cameraview/filters/GrainFilter;
.super Lcom/otaliastudios/cameraview/filter/BaseFilter;
.source "GrainFilter.java"

# interfaces
.implements Lcom/otaliastudios/cameraview/filter/OneParameterFilter;


# static fields
.field private static final FRAGMENT_SHADER:Ljava/lang/String;

.field private static final RANDOM:Ljava/util/Random;


# instance fields
.field private height:I

.field private stepXLocation:I

.field private stepYLocation:I

.field private strength:F

.field private strengthLocation:I

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 18
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/otaliastudios/cameraview/filters/GrainFilter;->RANDOM:Ljava/util/Random;

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvec2 seed;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES tex_sampler_0;\nuniform samplerExternalOES tex_sampler_1;\nuniform float scale;\nuniform float stepX;\nuniform float stepY;\nfloat rand(vec2 loc) {\n  float theta1 = dot(loc, vec2(0.9898, 0.233));\n  float theta2 = dot(loc, vec2(12.0, 78.0));\n  float value = cos(theta1) * sin(theta2) + sin(theta1) * cos(theta2);\n  float temp = mod(197.0 * value, 1.0) + value;\n  float part1 = mod(220.0 * temp, 1.0) + temp;\n  float part2 = value * 0.5453;\n  float part3 = cos(theta1 + theta2) * 0.43758;\n  float sum = (part1 + part2 + part3);\n  return fract(sum)*scale;\n}\nvoid main() {\n  seed[0] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 41
    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";\n  seed[1] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 42
    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";\n  float noise = texture2D(tex_sampler_1, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "vTextureCoord"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " + vec2(-stepX, -stepY)).r * 0.224;\n  noise += texture2D(tex_sampler_1, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " + vec2(-stepX, stepY)).r * 0.224;\n  noise += texture2D(tex_sampler_1, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " + vec2(stepX, -stepY)).r * 0.224;\n  noise += texture2D(tex_sampler_1, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " + vec2(stepX, stepY)).r * 0.224;\n  noise += 0.4448;\n  noise *= scale;\n  vec4 color = texture2D(tex_sampler_0, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ");\n  float energy = 0.33333 * color.r + 0.33333 * color.g + 0.33333 * color.b;\n  float mask = (1.0 - sqrt(energy));\n  float weight = 1.0 - 1.333 * mask * noise;\n  gl_FragColor = vec4(color.rgb * weight, color.a);\n  gl_FragColor = gl_FragColor+vec4(rand("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " + seed), rand("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " + seed),rand("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " + seed),1);\n}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/otaliastudios/cameraview/filters/GrainFilter;->FRAGMENT_SHADER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Lcom/otaliastudios/cameraview/filter/BaseFilter;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 64
    iput v0, p0, Lcom/otaliastudios/cameraview/filters/GrainFilter;->strength:F

    const/4 v0, 0x1

    .line 65
    iput v0, p0, Lcom/otaliastudios/cameraview/filters/GrainFilter;->width:I

    .line 66
    iput v0, p0, Lcom/otaliastudios/cameraview/filters/GrainFilter;->height:I

    const/4 v0, -0x1

    .line 67
    iput v0, p0, Lcom/otaliastudios/cameraview/filters/GrainFilter;->strengthLocation:I

    .line 68
    iput v0, p0, Lcom/otaliastudios/cameraview/filters/GrainFilter;->stepXLocation:I

    .line 69
    iput v0, p0, Lcom/otaliastudios/cameraview/filters/GrainFilter;->stepYLocation:I

    return-void
.end method


# virtual methods
.method public getFragmentShader()Ljava/lang/String;
    .locals 1

    .line 118
    sget-object v0, Lcom/otaliastudios/cameraview/filters/GrainFilter;->FRAGMENT_SHADER:Ljava/lang/String;

    return-object v0
.end method

.method public getParameter1()F
    .locals 1

    .line 112
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/filters/GrainFilter;->getStrength()F

    move-result v0

    return v0
.end method

.method public getStrength()F
    .locals 1

    .line 102
    iget v0, p0, Lcom/otaliastudios/cameraview/filters/GrainFilter;->strength:F

    return v0
.end method

.method public onCreate(I)V
    .locals 2

    .line 123
    invoke-super {p0, p1}, Lcom/otaliastudios/cameraview/filter/BaseFilter;->onCreate(I)V

    const-string v0, "scale"

    .line 124
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/otaliastudios/cameraview/filters/GrainFilter;->strengthLocation:I

    .line 125
    invoke-static {v1, v0}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlProgramLocation(ILjava/lang/String;)V

    const-string v0, "stepX"

    .line 126
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/otaliastudios/cameraview/filters/GrainFilter;->stepXLocation:I

    .line 127
    invoke-static {v1, v0}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlProgramLocation(ILjava/lang/String;)V

    const-string v0, "stepY"

    .line 128
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/otaliastudios/cameraview/filters/GrainFilter;->stepYLocation:I

    .line 129
    invoke-static {p1, v0}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlProgramLocation(ILjava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 134
    invoke-super {p0}, Lcom/otaliastudios/cameraview/filter/BaseFilter;->onDestroy()V

    const/4 v0, -0x1

    .line 135
    iput v0, p0, Lcom/otaliastudios/cameraview/filters/GrainFilter;->strengthLocation:I

    .line 136
    iput v0, p0, Lcom/otaliastudios/cameraview/filters/GrainFilter;->stepXLocation:I

    .line 137
    iput v0, p0, Lcom/otaliastudios/cameraview/filters/GrainFilter;->stepYLocation:I

    return-void
.end method

.method protected onPreDraw(J[F)V
    .locals 1

    .line 142
    invoke-super {p0, p1, p2, p3}, Lcom/otaliastudios/cameraview/filter/BaseFilter;->onPreDraw(J[F)V

    .line 143
    iget p1, p0, Lcom/otaliastudios/cameraview/filters/GrainFilter;->strengthLocation:I

    iget p2, p0, Lcom/otaliastudios/cameraview/filters/GrainFilter;->strength:F

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const-string p1, "glUniform1f"

    .line 144
    invoke-static {p1}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlError(Ljava/lang/String;)V

    .line 145
    iget p2, p0, Lcom/otaliastudios/cameraview/filters/GrainFilter;->stepXLocation:I

    iget p3, p0, Lcom/otaliastudios/cameraview/filters/GrainFilter;->width:I

    int-to-float p3, p3

    const/high16 v0, 0x3f000000    # 0.5f

    div-float p3, v0, p3

    invoke-static {p2, p3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 146
    invoke-static {p1}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlError(Ljava/lang/String;)V

    .line 147
    iget p2, p0, Lcom/otaliastudios/cameraview/filters/GrainFilter;->stepYLocation:I

    iget p3, p0, Lcom/otaliastudios/cameraview/filters/GrainFilter;->height:I

    int-to-float p3, p3

    div-float/2addr v0, p3

    invoke-static {p2, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 148
    invoke-static {p1}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlError(Ljava/lang/String;)V

    return-void
.end method

.method public setParameter1(F)V
    .locals 0

    .line 107
    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/filters/GrainFilter;->setStrength(F)V

    return-void
.end method

.method public setSize(II)V
    .locals 0

    .line 75
    invoke-super {p0, p1, p2}, Lcom/otaliastudios/cameraview/filter/BaseFilter;->setSize(II)V

    .line 76
    iput p1, p0, Lcom/otaliastudios/cameraview/filters/GrainFilter;->width:I

    .line 77
    iput p2, p0, Lcom/otaliastudios/cameraview/filters/GrainFilter;->height:I

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

    .line 91
    :cond_1
    iput p1, p0, Lcom/otaliastudios/cameraview/filters/GrainFilter;->strength:F

    return-void
.end method
