.class public Lcom/txdriver/db/Answer;
.super Lcom/activeandroid/Model;
.source "Answer.java"


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "Answers"
.end annotation


# instance fields
.field public answerId:I
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "AnswerId"
    .end annotation
.end field

.field public question:Lcom/txdriver/db/Question;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Question"
        onDelete = .enum Lcom/activeandroid/annotation/Column$ForeignKeyAction;->CASCADE:Lcom/activeandroid/annotation/Column$ForeignKeyAction;
    .end annotation
.end field

.field public text:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "AnswerText"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/txdriver/socket/data/AnswerData;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    .line 27
    iget v0, p1, Lcom/txdriver/socket/data/AnswerData;->answerId:I

    iput v0, p0, Lcom/txdriver/db/Answer;->answerId:I

    .line 28
    iget-object p1, p1, Lcom/txdriver/socket/data/AnswerData;->text:Ljava/lang/String;

    iput-object p1, p0, Lcom/txdriver/db/Answer;->text:Ljava/lang/String;

    return-void
.end method

.method public static deleteAll()V
    .locals 2

    .line 32
    new-instance v0, Lcom/activeandroid/query/Delete;

    invoke-direct {v0}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v1, Lcom/txdriver/db/Answer;

    .line 33
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/txdriver/db/Answer;->text:Ljava/lang/String;

    return-object v0
.end method
