.class public final Lcom/otaliastudios/cameraview/filter/SimpleFilter;
.super Lcom/otaliastudios/cameraview/filter/BaseFilter;
.source "SimpleFilter.java"


# instance fields
.field private final fragmentShader:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/otaliastudios/cameraview/filter/BaseFilter;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/otaliastudios/cameraview/filter/SimpleFilter;->fragmentShader:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFragmentShader()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/otaliastudios/cameraview/filter/SimpleFilter;->fragmentShader:Ljava/lang/String;

    return-object v0
.end method

.method protected onCopy()Lcom/otaliastudios/cameraview/filter/BaseFilter;
    .locals 2

    .line 39
    new-instance v0, Lcom/otaliastudios/cameraview/filter/SimpleFilter;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/filter/SimpleFilter;->fragmentShader:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/otaliastudios/cameraview/filter/SimpleFilter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
