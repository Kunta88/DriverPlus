.class public final Lcom/otaliastudios/opengl/program/GlProgramLocation;
.super Ljava/lang/Object;
.source "GlProgramLocation.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/otaliastudios/opengl/program/GlProgramLocation$Type;,
        Lcom/otaliastudios/opengl/program/GlProgramLocation$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGlProgramLocation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GlProgramLocation.kt\ncom/otaliastudios/opengl/program/GlProgramLocation\n+ 2 gl.kt\ncom/otaliastudios/opengl/internal/GlKt\n*L\n1#1,33:1\n95#2:34\n96#2:35\n*E\n*S KotlinDebug\n*F\n+ 1 GlProgramLocation.kt\ncom/otaliastudios/opengl/program/GlProgramLocation\n*L\n21#1:34\n22#1:35\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 \u00122\u00020\u0001:\u0002\u0012\u0013B\u001f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u001c\u0010\u000b\u001a\u00020\u000cX\u0080\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\n\n\u0002\u0010\u000f\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0010\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000e\u0082\u0002\u0008\n\u0002\u0008\u0019\n\u0002\u0008!\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/otaliastudios/opengl/program/GlProgramLocation;",
        "",
        "program",
        "",
        "type",
        "Lcom/otaliastudios/opengl/program/GlProgramLocation$Type;",
        "name",
        "",
        "(ILcom/otaliastudios/opengl/program/GlProgramLocation$Type;Ljava/lang/String;)V",
        "getName",
        "()Ljava/lang/String;",
        "uvalue",
        "Lkotlin/UInt;",
        "getUvalue-pVg5ArA$egloo_metadata_release",
        "()I",
        "I",
        "value",
        "getValue",
        "Companion",
        "Type",
        "egloo-metadata_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/otaliastudios/opengl/program/GlProgramLocation$Companion;


# instance fields
.field private final name:Ljava/lang/String;

.field private final uvalue:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/otaliastudios/opengl/program/GlProgramLocation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/otaliastudios/opengl/program/GlProgramLocation$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/otaliastudios/opengl/program/GlProgramLocation;->Companion:Lcom/otaliastudios/opengl/program/GlProgramLocation$Companion;

    return-void
.end method

.method private constructor <init>(ILcom/otaliastudios/opengl/program/GlProgramLocation$Type;Ljava/lang/String;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/otaliastudios/opengl/program/GlProgramLocation;->name:Ljava/lang/String;

    .line 20
    sget-object v0, Lcom/otaliastudios/opengl/program/GlProgramLocation$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Lcom/otaliastudios/opengl/program/GlProgramLocation$Type;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 22
    invoke-static {p1}, Lkotlin/UInt;->constructor-impl(I)I

    move-result p1

    .line 35
    invoke-static {p1, p3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 21
    :cond_1
    invoke-static {p1}, Lkotlin/UInt;->constructor-impl(I)I

    move-result p1

    .line 34
    invoke-static {p1, p3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    .line 20
    :goto_0
    iput p1, p0, Lcom/otaliastudios/opengl/program/GlProgramLocation;->value:I

    .line 24
    invoke-static {p1, p3}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlProgramLocation(ILjava/lang/String;)V

    .line 27
    invoke-static {p1}, Lkotlin/UInt;->constructor-impl(I)I

    move-result p1

    iput p1, p0, Lcom/otaliastudios/opengl/program/GlProgramLocation;->uvalue:I

    return-void
.end method

.method public synthetic constructor <init>(ILcom/otaliastudios/opengl/program/GlProgramLocation$Type;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2, p3}, Lcom/otaliastudios/opengl/program/GlProgramLocation;-><init>(ILcom/otaliastudios/opengl/program/GlProgramLocation$Type;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/otaliastudios/opengl/program/GlProgramLocation;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getUvalue-pVg5ArA$egloo_metadata_release()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/otaliastudios/opengl/program/GlProgramLocation;->uvalue:I

    return v0
.end method

.method public final getValue()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/otaliastudios/opengl/program/GlProgramLocation;->value:I

    return v0
.end method
