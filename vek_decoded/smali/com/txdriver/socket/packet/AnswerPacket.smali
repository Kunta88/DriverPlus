.class public Lcom/txdriver/socket/packet/AnswerPacket;
.super Lcom/txdriver/socket/packet/ClientPacket;
.source "AnswerPacket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txdriver/socket/packet/AnswerPacket$AnswerData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/socket/packet/ClientPacket<",
        "Lcom/txdriver/socket/packet/AnswerPacket$AnswerData;",
        ">;"
    }
.end annotation


# instance fields
.field private final data:Lcom/txdriver/socket/packet/AnswerPacket$AnswerData;

.field private final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/txdriver/db/Question;Lcom/txdriver/db/Answer;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/txdriver/socket/packet/ClientPacket;-><init>()V

    .line 21
    new-instance v0, Lcom/txdriver/socket/packet/AnswerPacket$AnswerData;

    invoke-direct {v0}, Lcom/txdriver/socket/packet/AnswerPacket$AnswerData;-><init>()V

    iput-object v0, p0, Lcom/txdriver/socket/packet/AnswerPacket;->data:Lcom/txdriver/socket/packet/AnswerPacket$AnswerData;

    .line 22
    iget p1, p1, Lcom/txdriver/db/Question;->questionId:I

    iput p1, v0, Lcom/txdriver/socket/packet/AnswerPacket$AnswerData;->questionId:I

    .line 23
    iget p1, p2, Lcom/txdriver/db/Answer;->answerId:I

    iput p1, v0, Lcom/txdriver/socket/packet/AnswerPacket$AnswerData;->answerId:I

    .line 24
    iget-object p1, p2, Lcom/txdriver/db/Answer;->text:Ljava/lang/String;

    iput-object p1, p0, Lcom/txdriver/socket/packet/AnswerPacket;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCode()B
    .locals 1

    const/16 v0, 0x15

    return v0
.end method

.method public getData()Lcom/txdriver/socket/packet/AnswerPacket$AnswerData;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/txdriver/socket/packet/AnswerPacket;->data:Lcom/txdriver/socket/packet/AnswerPacket$AnswerData;

    return-object v0
.end method

.method public bridge synthetic getData()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/txdriver/socket/packet/AnswerPacket;->getData()Lcom/txdriver/socket/packet/AnswerPacket$AnswerData;

    move-result-object v0

    return-object v0
.end method

.method public onWrite()V
    .locals 2

    .line 39
    invoke-super {p0}, Lcom/txdriver/socket/packet/ClientPacket;->onWrite()V

    .line 40
    iget-object v0, p0, Lcom/txdriver/socket/packet/AnswerPacket;->text:Ljava/lang/String;

    sget-object v1, Lcom/txdriver/db/ChatMessage$Type;->OUTGOING:Lcom/txdriver/db/ChatMessage$Type;

    invoke-static {v0, v1}, Lcom/txdriver/db/ChatMessage;->create(Ljava/lang/String;Lcom/txdriver/db/ChatMessage$Type;)Lcom/txdriver/db/ChatMessage;

    return-void
.end method
