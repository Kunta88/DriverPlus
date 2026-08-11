.class Lcom/txdriver/socket/ResponseHandler$1;
.super Ljava/lang/Object;
.source "ResponseHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/socket/ResponseHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/socket/ResponseHandler;


# direct methods
.method constructor <init>(Lcom/txdriver/socket/ResponseHandler;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/txdriver/socket/ResponseHandler$1;->this$0:Lcom/txdriver/socket/ResponseHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/txdriver/socket/ResponseHandler$1;->this$0:Lcom/txdriver/socket/ResponseHandler;

    invoke-static {v0}, Lcom/txdriver/socket/ResponseHandler;->access$000(Lcom/txdriver/socket/ResponseHandler;)V

    return-void
.end method
