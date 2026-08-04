.class public Lcom/txdriver/db/WebApp;
.super Lcom/activeandroid/Model;
.source "WebApp.java"


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "WebApps"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txdriver/db/WebApp$Type;
    }
.end annotation


# instance fields
.field public name:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Name"
    .end annotation
.end field

.field public type:Lcom/txdriver/db/WebApp$Type;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Type"
    .end annotation
.end field

.field public url:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Url"
    .end annotation
.end field

.field public webAppId:I
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "WebAppId"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/txdriver/db/WebApp$Type;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    .line 32
    iput p1, p0, Lcom/txdriver/db/WebApp;->webAppId:I

    .line 33
    iput-object p2, p0, Lcom/txdriver/db/WebApp;->name:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/txdriver/db/WebApp;->url:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lcom/txdriver/db/WebApp;->type:Lcom/txdriver/db/WebApp$Type;

    return-void
.end method

.method public static deleteAll()V
    .locals 2

    .line 43
    new-instance v0, Lcom/activeandroid/query/Delete;

    invoke-direct {v0}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v1, Lcom/txdriver/db/WebApp;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    return-void
.end method

.method public static getByTypeQuery(Lcom/txdriver/db/WebApp$Type;)Lcom/activeandroid/query/From;
    .locals 3

    .line 39
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/txdriver/db/WebApp;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "Type = ?"

    invoke-virtual {v0, p0, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p0

    return-object p0
.end method
