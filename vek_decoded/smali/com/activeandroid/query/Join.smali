.class public final Lcom/activeandroid/query/Join;
.super Ljava/lang/Object;
.source "Join.java"

# interfaces
.implements Lcom/activeandroid/query/Sqlable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/activeandroid/query/Join$JoinType;
    }
.end annotation


# instance fields
.field private mAlias:Ljava/lang/String;

.field private mFrom:Lcom/activeandroid/query/From;

.field private mJoinType:Lcom/activeandroid/query/Join$JoinType;

.field private mOn:Ljava/lang/String;

.field private mType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/activeandroid/Model;",
            ">;"
        }
    .end annotation
.end field

.field private mUsing:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/activeandroid/query/From;Ljava/lang/Class;Lcom/activeandroid/query/Join$JoinType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/activeandroid/query/From;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/activeandroid/Model;",
            ">;",
            "Lcom/activeandroid/query/Join$JoinType;",
            ")V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/activeandroid/query/Join;->mFrom:Lcom/activeandroid/query/From;

    .line 38
    iput-object p2, p0, Lcom/activeandroid/query/Join;->mType:Ljava/lang/Class;

    .line 39
    iput-object p3, p0, Lcom/activeandroid/query/Join;->mJoinType:Lcom/activeandroid/query/Join$JoinType;

    return-void
.end method


# virtual methods
.method public as(Ljava/lang/String;)Lcom/activeandroid/query/Join;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/activeandroid/query/Join;->mAlias:Ljava/lang/String;

    return-object p0
.end method

.method public on(Ljava/lang/String;)Lcom/activeandroid/query/From;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/activeandroid/query/Join;->mOn:Ljava/lang/String;

    .line 49
    iget-object p1, p0, Lcom/activeandroid/query/Join;->mFrom:Lcom/activeandroid/query/From;

    return-object p1
.end method

.method public varargs on(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/activeandroid/query/Join;->mOn:Ljava/lang/String;

    .line 54
    iget-object p1, p0, Lcom/activeandroid/query/Join;->mFrom:Lcom/activeandroid/query/From;

    invoke-virtual {p1, p2}, Lcom/activeandroid/query/From;->addArguments([Ljava/lang/Object;)V

    .line 55
    iget-object p1, p0, Lcom/activeandroid/query/Join;->mFrom:Lcom/activeandroid/query/From;

    return-object p1
.end method

.method public toSql()Ljava/lang/String;
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/activeandroid/query/Join;->mJoinType:Lcom/activeandroid/query/Join$JoinType;

    const-string v1, " "

    const-string v2, ""

    if-eqz v0, :cond_0

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/activeandroid/query/Join;->mJoinType:Lcom/activeandroid/query/Join$JoinType;

    invoke-virtual {v2}, Lcom/activeandroid/query/Join$JoinType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "JOIN "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/activeandroid/query/Join;->mType:Ljava/lang/Class;

    invoke-static {v2}, Lcom/activeandroid/Cache;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    iget-object v2, p0, Lcom/activeandroid/query/Join;->mAlias:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "AS "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/activeandroid/query/Join;->mAlias:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    :cond_1
    iget-object v2, p0, Lcom/activeandroid/query/Join;->mOn:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "ON "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/activeandroid/query/Join;->mOn:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 80
    :cond_2
    iget-object v1, p0, Lcom/activeandroid/query/Join;->mUsing:[Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "USING ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/activeandroid/query/Join;->mUsing:[Ljava/lang/String;

    const-string v2, ", "

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_0
    return-object v0
.end method

.method public varargs using([Ljava/lang/String;)Lcom/activeandroid/query/From;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/activeandroid/query/Join;->mUsing:[Ljava/lang/String;

    .line 60
    iget-object p1, p0, Lcom/activeandroid/query/Join;->mFrom:Lcom/activeandroid/query/From;

    return-object p1
.end method
