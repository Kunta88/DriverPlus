.class Lcom/txdriver/helpers/DownloadHelper$2;
.super Ljava/util/TimerTask;
.source "DownloadHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/helpers/DownloadHelper;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/helpers/DownloadHelper;


# direct methods
.method constructor <init>(Lcom/txdriver/helpers/DownloadHelper;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/txdriver/helpers/DownloadHelper$2;->this$0:Lcom/txdriver/helpers/DownloadHelper;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/txdriver/helpers/DownloadHelper$2;->this$0:Lcom/txdriver/helpers/DownloadHelper;

    invoke-static {v0}, Lcom/txdriver/helpers/DownloadHelper;->access$200(Lcom/txdriver/helpers/DownloadHelper;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 55
    iget-object v1, p0, Lcom/txdriver/helpers/DownloadHelper$2;->this$0:Lcom/txdriver/helpers/DownloadHelper;

    invoke-static {v1}, Lcom/txdriver/helpers/DownloadHelper;->access$300(Lcom/txdriver/helpers/DownloadHelper;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "DownloadHelper - Timer"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
