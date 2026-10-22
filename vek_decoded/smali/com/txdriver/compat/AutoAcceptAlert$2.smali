.class Lcom/txdriver/compat/AutoAcceptAlert$2;
.super Ljava/lang/Object;
.source "AutoAcceptAlert.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/compat/AutoAcceptAlert;->deadline(Landroid/media/MediaPlayer;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$expected:Landroid/media/MediaPlayer;


# direct methods
.method constructor <init>(Landroid/media/MediaPlayer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 37
    iput-object p1, p0, Lcom/txdriver/compat/AutoAcceptAlert$2;->val$expected:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/txdriver/compat/AutoAcceptAlert$2;->val$expected:Landroid/media/MediaPlayer;

    # invokes: Lcom/txdriver/compat/AutoAcceptAlert;->finish(Landroid/media/MediaPlayer;)V
    invoke-static {v0}, Lcom/txdriver/compat/AutoAcceptAlert;->access$100(Landroid/media/MediaPlayer;)V

    return-void
.end method
