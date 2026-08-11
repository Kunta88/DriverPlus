.class public Lcom/txdriver/socket/handler/QuestionHandler;
.super Lcom/txdriver/socket/handler/AbstractPacketHandler;
.source "QuestionHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/socket/handler/AbstractPacketHandler<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/txdriver/App;)V
    .locals 1

    .line 15
    const-class v0, Ljava/lang/Integer;

    invoke-direct {p0, p1, v0}, Lcom/txdriver/socket/handler/AbstractPacketHandler;-><init>(Lcom/txdriver/App;Ljava/lang/Class;)V

    return-void
.end method

.method private notifyDriver(Lcom/txdriver/db/Question;)V
    .locals 2

    .line 28
    new-instance v0, Lcom/txdriver/ui/activity/InboundQuestionActivity$QuestionActivityRunner;

    iget-object v1, p0, Lcom/txdriver/socket/handler/QuestionHandler;->app:Lcom/txdriver/App;

    invoke-direct {v0, v1, p1}, Lcom/txdriver/ui/activity/InboundQuestionActivity$QuestionActivityRunner;-><init>(Lcom/txdriver/App;Lcom/txdriver/db/Question;)V

    invoke-virtual {p0, v0}, Lcom/txdriver/socket/handler/QuestionHandler;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public handle(Ljava/lang/Integer;)V
    .locals 2

    .line 20
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v0, p1

    invoke-static {v0, v1}, Lcom/txdriver/db/Question;->getById(J)Lcom/txdriver/db/Question;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 22
    iget-object v0, p1, Lcom/txdriver/db/Question;->text:Ljava/lang/String;

    sget-object v1, Lcom/txdriver/db/ChatMessage$Type;->INBOUND:Lcom/txdriver/db/ChatMessage$Type;

    invoke-static {v0, v1}, Lcom/txdriver/db/ChatMessage;->create(Ljava/lang/String;Lcom/txdriver/db/ChatMessage$Type;)Lcom/txdriver/db/ChatMessage;

    .line 23
    invoke-direct {p0, p1}, Lcom/txdriver/socket/handler/QuestionHandler;->notifyDriver(Lcom/txdriver/db/Question;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic handle(Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/txdriver/socket/handler/QuestionHandler;->handle(Ljava/lang/Integer;)V

    return-void
.end method
