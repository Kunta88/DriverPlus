.class Lcom/txdriver/socket/handler/DisconnectHandler$1;
.super Ljava/lang/Object;
.source "DisconnectHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/socket/handler/DisconnectHandler;->handle(Lcom/txdriver/socket/packet/ServerPacket;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/socket/handler/DisconnectHandler;


# direct methods
.method constructor <init>(Lcom/txdriver/socket/handler/DisconnectHandler;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/txdriver/socket/handler/DisconnectHandler$1;->this$0:Lcom/txdriver/socket/handler/DisconnectHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 23
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/txdriver/socket/handler/DisconnectHandler$1;->this$0:Lcom/txdriver/socket/handler/DisconnectHandler;

    iget-object v1, v1, Lcom/txdriver/socket/handler/DisconnectHandler;->app:Lcom/txdriver/App;

    const-class v2, Lcom/txdriver/ui/activity/AuthActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 24
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 25
    iget-object v1, p0, Lcom/txdriver/socket/handler/DisconnectHandler$1;->this$0:Lcom/txdriver/socket/handler/DisconnectHandler;

    iget-object v1, v1, Lcom/txdriver/socket/handler/DisconnectHandler;->app:Lcom/txdriver/App;

    invoke-virtual {v1, v0}, Lcom/txdriver/App;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
