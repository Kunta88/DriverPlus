.class Lcom/otaliastudios/cameraview/engine/Camera1Engine$10;
.super Ljava/lang/Object;
.source "Camera1Engine.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/engine/Camera1Engine;->sortRanges(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "[I>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/engine/Camera1Engine;


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/engine/Camera1Engine;)V
    .locals 0

    .line 797
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$10;->this$0:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 797
    check-cast p1, [I

    check-cast p2, [I

    invoke-virtual {p0, p1, p2}, Lcom/otaliastudios/cameraview/engine/Camera1Engine$10;->compare([I[I)I

    move-result p1

    return p1
.end method

.method public compare([I[I)I
    .locals 3

    const/4 v0, 0x1

    .line 800
    aget v1, p2, v0

    const/4 v2, 0x0

    aget p2, p2, v2

    sub-int/2addr v1, p2

    aget p2, p1, v0

    aget p1, p1, v2

    sub-int/2addr p2, p1

    sub-int/2addr v1, p2

    return v1
.end method
