.class Lcom/txdriver/socket/Client$1;
.super Ljava/lang/Object;
.source "Client.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/socket/Client;->reconn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/socket/Client;


# direct methods
.method constructor <init>(Lcom/txdriver/socket/Client;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/txdriver/socket/Client$1;->this$0:Lcom/txdriver/socket/Client;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 68
    iget-object v0, p0, Lcom/txdriver/socket/Client$1;->this$0:Lcom/txdriver/socket/Client;

    invoke-virtual {v0}, Lcom/txdriver/socket/Client;->close()V

    .line 69
    iget-object v0, p0, Lcom/txdriver/socket/Client$1;->this$0:Lcom/txdriver/socket/Client;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/txdriver/socket/Client;->access$002(Lcom/txdriver/socket/Client;I)I

    .line 70
    iget-object v0, p0, Lcom/txdriver/socket/Client$1;->this$0:Lcom/txdriver/socket/Client;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/txdriver/socket/Client$Connection;

    iget-object v3, p0, Lcom/txdriver/socket/Client$1;->this$0:Lcom/txdriver/socket/Client;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/txdriver/socket/Client$Connection;-><init>(Lcom/txdriver/socket/Client;Lcom/txdriver/socket/Client$1;)V

    const-string v3, "Connection"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/txdriver/socket/Client;->access$102(Lcom/txdriver/socket/Client;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 71
    iget-object v0, p0, Lcom/txdriver/socket/Client$1;->this$0:Lcom/txdriver/socket/Client;

    invoke-static {v0}, Lcom/txdriver/socket/Client;->access$100(Lcom/txdriver/socket/Client;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
