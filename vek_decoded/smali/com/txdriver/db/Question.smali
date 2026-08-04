.class public Lcom/txdriver/db/Question;
.super Lcom/activeandroid/Model;
.source "Question.java"


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "Questions"
.end annotation


# instance fields
.field public questionId:I
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "QuestionId"
        onUniqueConflict = .enum Lcom/activeandroid/annotation/Column$ConflictAction;->REPLACE:Lcom/activeandroid/annotation/Column$ConflictAction;
        unique = true
    .end annotation
.end field

.field public text:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "QuestionText"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/txdriver/socket/data/QuestionData;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    .line 29
    iget v0, p1, Lcom/txdriver/socket/data/QuestionData;->questionId:I

    iput v0, p0, Lcom/txdriver/db/Question;->questionId:I

    .line 30
    iget-object p1, p1, Lcom/txdriver/socket/data/QuestionData;->text:Ljava/lang/String;

    iput-object p1, p0, Lcom/txdriver/db/Question;->text:Ljava/lang/String;

    return-void
.end method

.method public static deleteAll()V
    .locals 2

    .line 34
    new-instance v0, Lcom/activeandroid/query/Delete;

    invoke-direct {v0}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v1, Lcom/txdriver/db/Question;

    .line 35
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    return-void
.end method

.method public static getById(J)Lcom/txdriver/db/Question;
    .locals 2

    .line 40
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/txdriver/db/Question;

    .line 41
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 42
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v1, p1

    const-string p0, "QuestionId = ?"

    invoke-virtual {v0, p0, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p0

    .line 43
    invoke-virtual {p0}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object p0

    check-cast p0, Lcom/txdriver/db/Question;

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/txdriver/db/Question;->text:Ljava/lang/String;

    return-object v0
.end method
