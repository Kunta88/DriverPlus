.class public Lcom/txdriver/db/ChatMessage;
.super Lcom/activeandroid/Model;
.source "ChatMessage.java"


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "ChatMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txdriver/db/ChatMessage$Type;
    }
.end annotation


# instance fields
.field public text:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "text"
    .end annotation
.end field

.field public time:Ljava/util/Date;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "MessageTime"
    .end annotation
.end field

.field public type:Lcom/txdriver/db/ChatMessage$Type;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;Lcom/txdriver/db/ChatMessage$Type;)Lcom/txdriver/db/ChatMessage;
    .locals 1

    .line 30
    new-instance v0, Lcom/txdriver/db/ChatMessage;

    invoke-direct {v0}, Lcom/txdriver/db/ChatMessage;-><init>()V

    .line 31
    iput-object p0, v0, Lcom/txdriver/db/ChatMessage;->text:Ljava/lang/String;

    .line 32
    iput-object p1, v0, Lcom/txdriver/db/ChatMessage;->type:Lcom/txdriver/db/ChatMessage$Type;

    .line 33
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    iput-object p0, v0, Lcom/txdriver/db/ChatMessage;->time:Ljava/util/Date;

    .line 34
    invoke-virtual {v0}, Lcom/txdriver/db/ChatMessage;->save()V

    return-object v0
.end method

.method public static getQuery()Lcom/activeandroid/query/From;
    .locals 2

    .line 25
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/txdriver/db/ChatMessage;

    .line 26
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    return-object v0
.end method
