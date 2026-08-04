.class Lcom/txdriver/notification/SoundManager$2;
.super Ljava/util/TimerTask;
.source "SoundManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/notification/SoundManager;->playNotificationSound(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/notification/SoundManager;


# direct methods
.method constructor <init>(Lcom/txdriver/notification/SoundManager;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/txdriver/notification/SoundManager$2;->this$0:Lcom/txdriver/notification/SoundManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/txdriver/notification/SoundManager$2;->this$0:Lcom/txdriver/notification/SoundManager;

    invoke-virtual {v0}, Lcom/txdriver/notification/SoundManager;->stop()V

    return-void
.end method
