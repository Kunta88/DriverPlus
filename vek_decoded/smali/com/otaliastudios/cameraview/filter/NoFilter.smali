.class public final Lcom/otaliastudios/cameraview/filter/NoFilter;
.super Lcom/otaliastudios/cameraview/filter/BaseFilter;
.source "NoFilter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/otaliastudios/cameraview/filter/BaseFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public getFragmentShader()Ljava/lang/String;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/filter/NoFilter;->createDefaultFragmentShader()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
