.class Lcom/txdriver/notification/SoundManager$3;
.super Ljava/lang/Object;
.source "SoundManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/notification/SoundManager;->onCompletion(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/notification/SoundManager;

.field final synthetic val$mp:Landroid/media/MediaPlayer;


# direct methods
.method constructor <init>(Lcom/txdriver/notification/SoundManager;Landroid/media/MediaPlayer;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/txdriver/notification/SoundManager$3;->this$0:Lcom/txdriver/notification/SoundManager;

    iput-object p2, p0, Lcom/txdriver/notification/SoundManager$3;->val$mp:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/txdriver/notification/SoundManager$3;->val$mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method
