.class Lcom/txdriver/socket/handler/AuthHandler$1;
.super Ljava/lang/Object;
.source "AuthHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/socket/handler/AuthHandler;->handle(Lcom/txdriver/socket/data/AuthData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/socket/handler/AuthHandler;


# direct methods
.method constructor <init>(Lcom/txdriver/socket/handler/AuthHandler;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/txdriver/socket/handler/AuthHandler$1;->this$0:Lcom/txdriver/socket/handler/AuthHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/txdriver/socket/handler/AuthHandler$1;->this$0:Lcom/txdriver/socket/handler/AuthHandler;

    iget-object v0, v0, Lcom/txdriver/socket/handler/AuthHandler;->app:Lcom/txdriver/App;

    iget-object v1, p0, Lcom/txdriver/socket/handler/AuthHandler$1;->this$0:Lcom/txdriver/socket/handler/AuthHandler;

    iget-object v1, v1, Lcom/txdriver/socket/handler/AuthHandler;->app:Lcom/txdriver/App;

    const v2, 0x7f10027c

    invoke-virtual {v1, v2}, Lcom/txdriver/App;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/txdriver/utils/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
