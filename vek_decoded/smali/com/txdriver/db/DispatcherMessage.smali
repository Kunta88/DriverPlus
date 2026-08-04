.class public Lcom/txdriver/db/DispatcherMessage;
.super Lcom/activeandroid/Model;
.source "DispatcherMessage.java"


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "DispatcherMessages"
.end annotation


# instance fields
.field public messageId:I
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "MessageId"
        onUniqueConflict = .enum Lcom/activeandroid/annotation/Column$ConflictAction;->REPLACE:Lcom/activeandroid/annotation/Column$ConflictAction;
        unique = true
    .end annotation
.end field

.field public text:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "MessageText"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/txdriver/socket/data/MessageData;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    .line 24
    iget v0, p1, Lcom/txdriver/socket/data/MessageData;->messageId:I

    iput v0, p0, Lcom/txdriver/db/DispatcherMessage;->messageId:I

    .line 25
    iget-object p1, p1, Lcom/txdriver/socket/data/MessageData;->text:Ljava/lang/String;

    iput-object p1, p0, Lcom/txdriver/db/DispatcherMessage;->text:Ljava/lang/String;

    return-void
.end method

.method public static deleteAll()V
    .locals 2

    .line 29
    new-instance v0, Lcom/activeandroid/query/Delete;

    invoke-direct {v0}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v1, Lcom/txdriver/db/DispatcherMessage;

    .line 30
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    return-void
.end method

.method public static getById(I)Lcom/txdriver/db/DispatcherMessage;
    .locals 3

    .line 35
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/txdriver/db/DispatcherMessage;

    .line 36
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 37
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "MessageId = ?"

    invoke-virtual {v0, p0, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p0

    .line 38
    invoke-virtual {p0}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object p0

    check-cast p0, Lcom/txdriver/db/DispatcherMessage;

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/txdriver/db/DispatcherMessage;->text:Ljava/lang/String;

    return-object v0
.end method
