.class public final Lcom/otaliastudios/opengl/program/GlShader;
.super Ljava/lang/Object;
.source "GlShader.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/otaliastudios/opengl/program/GlShader$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGlShader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GlShader.kt\ncom/otaliastudios/opengl/program/GlShader\n+ 2 gl.kt\ncom/otaliastudios/opengl/internal/GlKt\n*L\n1#1,30:1\n79#2:31\n*E\n*S KotlinDebug\n*F\n+ 1 GlShader.kt\ncom/otaliastudios/opengl/program/GlShader\n*L\n11#1:31\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\u0017\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0008J\u0006\u0010\u000c\u001a\u00020\rR\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\n\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/otaliastudios/opengl/program/GlShader;",
        "",
        "type",
        "",
        "source",
        "",
        "(ILjava/lang/String;)V",
        "id",
        "(II)V",
        "getId",
        "()I",
        "getType",
        "release",
        "",
        "Companion",
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
.field private static final Companion:Lcom/otaliastudios/opengl/program/GlShader$Companion;


# instance fields
.field private final id:I

.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/otaliastudios/opengl/program/GlShader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/otaliastudios/opengl/program/GlShader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/otaliastudios/opengl/program/GlShader;->Companion:Lcom/otaliastudios/opengl/program/GlShader$Companion;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/otaliastudios/opengl/program/GlShader;->type:I

    iput p2, p0, Lcom/otaliastudios/opengl/program/GlShader;->id:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sget-object v0, Lcom/otaliastudios/opengl/program/GlShader;->Companion:Lcom/otaliastudios/opengl/program/GlShader$Companion;

    invoke-static {v0, p1, p2}, Lcom/otaliastudios/opengl/program/GlShader$Companion;->access$compile(Lcom/otaliastudios/opengl/program/GlShader$Companion;ILjava/lang/String;)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/otaliastudios/opengl/program/GlShader;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final getId()I
    .locals 1

    .line 6
    iget v0, p0, Lcom/otaliastudios/opengl/program/GlShader;->id:I

    return v0
.end method

.method public final getType()I
    .locals 1

    .line 6
    iget v0, p0, Lcom/otaliastudios/opengl/program/GlShader;->type:I

    return v0
.end method

.method public final release()V
    .locals 1

    .line 11
    iget v0, p0, Lcom/otaliastudios/opengl/program/GlShader;->id:I

    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    .line 31
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    return-void
.end method
