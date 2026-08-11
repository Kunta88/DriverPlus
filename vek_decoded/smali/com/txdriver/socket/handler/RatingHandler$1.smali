.class Lcom/txdriver/socket/handler/RatingHandler$1;
.super Ljava/lang/Object;
.source "RatingHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/socket/handler/RatingHandler;->handle(Lcom/txdriver/socket/data/RatingData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/socket/handler/RatingHandler;

.field final synthetic val$data:Lcom/txdriver/socket/data/RatingData;


# direct methods
.method constructor <init>(Lcom/txdriver/socket/handler/RatingHandler;Lcom/txdriver/socket/data/RatingData;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/txdriver/socket/handler/RatingHandler$1;->this$0:Lcom/txdriver/socket/handler/RatingHandler;

    iput-object p2, p0, Lcom/txdriver/socket/handler/RatingHandler$1;->val$data:Lcom/txdriver/socket/data/RatingData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    iget-object v1, p0, Lcom/txdriver/socket/handler/RatingHandler$1;->val$data:Lcom/txdriver/socket/data/RatingData;

    iget v1, v1, Lcom/txdriver/socket/data/RatingData;->value:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ltz v1, :cond_0

    .line 26
    iget-object v1, p0, Lcom/txdriver/socket/handler/RatingHandler$1;->this$0:Lcom/txdriver/socket/handler/RatingHandler;

    const v4, 0x7f1001e9

    invoke-virtual {v1, v4}, Lcom/txdriver/socket/handler/RatingHandler;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/txdriver/socket/handler/RatingHandler$1;->val$data:Lcom/txdriver/socket/data/RatingData;

    iget v5, v5, Lcom/txdriver/socket/data/RatingData;->rating:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 28
    :cond_0
    iget-object v1, p0, Lcom/txdriver/socket/handler/RatingHandler$1;->this$0:Lcom/txdriver/socket/handler/RatingHandler;

    const v4, 0x7f1001ec

    invoke-virtual {v1, v4}, Lcom/txdriver/socket/handler/RatingHandler;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/txdriver/socket/handler/RatingHandler$1;->val$data:Lcom/txdriver/socket/data/RatingData;

    iget v5, v5, Lcom/txdriver/socket/data/RatingData;->rating:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, "\n"

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget-object v1, p0, Lcom/txdriver/socket/handler/RatingHandler$1;->this$0:Lcom/txdriver/socket/handler/RatingHandler;

    const v4, 0x7f100099

    invoke-virtual {v1, v4}, Lcom/txdriver/socket/handler/RatingHandler;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/txdriver/socket/handler/RatingHandler$1;->val$data:Lcom/txdriver/socket/data/RatingData;

    iget v5, v5, Lcom/txdriver/socket/data/RatingData;->value:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    iget-object v1, p0, Lcom/txdriver/socket/handler/RatingHandler$1;->this$0:Lcom/txdriver/socket/handler/RatingHandler;

    iget-object v1, v1, Lcom/txdriver/socket/handler/RatingHandler;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/txdriver/utils/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 33
    iget-object v1, p0, Lcom/txdriver/socket/handler/RatingHandler$1;->this$0:Lcom/txdriver/socket/handler/RatingHandler;

    iget-object v1, v1, Lcom/txdriver/socket/handler/RatingHandler;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/txdriver/utils/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 34
    new-instance v0, Lcom/txdriver/notification/SoundManager;

    iget-object v1, p0, Lcom/txdriver/socket/handler/RatingHandler$1;->this$0:Lcom/txdriver/socket/handler/RatingHandler;

    iget-object v1, v1, Lcom/txdriver/socket/handler/RatingHandler;->app:Lcom/txdriver/App;

    invoke-direct {v0, v1}, Lcom/txdriver/notification/SoundManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Lcom/txdriver/notification/SoundManager;->playNotificationSound(I)V

    return-void
.end method
