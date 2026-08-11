.class final Lcom/txdriver/utils/EventLogger$1;
.super Ljava/lang/Object;
.source "EventLogger.java"

# interfaces
.implements Lcom/txdriver/http/request/PushLogRequest$UploadResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/utils/EventLogger;->pushLogsOnServer(Lcom/txdriver/App;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$log:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/txdriver/utils/EventLogger$1;->val$log:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 51
    iget-object p1, p0, Lcom/txdriver/utils/EventLogger$1;->val$log:Ljava/io/File;

    invoke-static {p1}, Lcom/txdriver/utils/EventLogger;->access$000(Ljava/io/File;)V

    :cond_0
    return-void
.end method
