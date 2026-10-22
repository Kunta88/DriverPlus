.class Lcom/txdriver/compat/AutoAcceptAlert$4;
.super Ljava/lang/Object;
.source "AutoAcceptAlert.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/compat/AutoAcceptAlert;->begin(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 5

    .line 68
    const-string p2, "Auto-accept playback failed"

    const/4 p3, 0x0

    const-string v0, "AutoAcceptAlert"

    invoke-static {v0, p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    # invokes: Lcom/txdriver/compat/AutoAcceptAlert;->finish(Landroid/media/MediaPlayer;)V
    invoke-static {p1}, Lcom/txdriver/compat/AutoAcceptAlert;->access$100(Landroid/media/MediaPlayer;)V

    .line 70
    const/4 p1, 0x1

    return p1
.end method
