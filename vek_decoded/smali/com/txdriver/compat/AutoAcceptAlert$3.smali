.class Lcom/txdriver/compat/AutoAcceptAlert$3;
.super Ljava/lang/Object;
.source "AutoAcceptAlert.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/compat/AutoAcceptAlert;->begin(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lcom/txdriver/compat/AutoAcceptAlert$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 5

    .line 55
    # getter for: Lcom/txdriver/compat/AutoAcceptAlert;->player:Landroid/media/MediaPlayer;
    invoke-static {}, Lcom/txdriver/compat/AutoAcceptAlert;->access$200()Landroid/media/MediaPlayer;

    move-result-object v0

    if-eq v0, p1, :cond_7

    return-void

    .line 57
    :cond_7
    :try_start_7
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 58
    iget-object v0, p0, Lcom/txdriver/compat/AutoAcceptAlert$3;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/txdriver/compat/AlertAudio;->vibrateAutoAccept(Landroid/content/Context;)V

    .line 59
    const-wide/16 v0, 0x1770

    # invokes: Lcom/txdriver/compat/AutoAcceptAlert;->deadline(Landroid/media/MediaPlayer;J)V
    invoke-static {p1, v0, v1}, Lcom/txdriver/compat/AutoAcceptAlert;->access$300(Landroid/media/MediaPlayer;J)V
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_14} :catch_15

    .line 63
    goto :goto_20

    .line 60
    :catch_15
    move-exception v0

    .line 61
    const-string v1, "AutoAcceptAlert"

    const-string v2, "Cannot start auto-accept alert"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    # invokes: Lcom/txdriver/compat/AutoAcceptAlert;->finish(Landroid/media/MediaPlayer;)V
    invoke-static {p1}, Lcom/txdriver/compat/AutoAcceptAlert;->access$100(Landroid/media/MediaPlayer;)V

    .line 64
    :goto_20
    return-void
.end method
