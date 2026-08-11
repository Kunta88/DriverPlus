.class public Lcom/txdriver/db/CarType;
.super Lcom/activeandroid/Model;
.source "CarType.java"


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "CarTypes"
.end annotation


# instance fields
.field public carTypeId:I
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "AutoTypeId"
    .end annotation
.end field

.field public color:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Color"
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Name"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    return-void
.end method

.method public static deleteAll()V
    .locals 2

    .line 33
    new-instance v0, Lcom/activeandroid/query/Delete;

    invoke-direct {v0}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v1, Lcom/txdriver/db/CarType;

    .line 34
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    return-void
.end method

.method public static getById(I)Lcom/txdriver/db/CarType;
    .locals 3

    .line 26
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/txdriver/db/CarType;

    .line 27
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 28
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "AutoTypeId = ?"

    invoke-virtual {v0, p0, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p0

    .line 29
    invoke-virtual {p0}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object p0

    check-cast p0, Lcom/txdriver/db/CarType;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 41
    :cond_0
    instance-of v1, p1, Lcom/txdriver/db/CarType;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 43
    :cond_1
    check-cast p1, Lcom/txdriver/db/CarType;

    .line 45
    iget v1, p0, Lcom/txdriver/db/CarType;->carTypeId:I

    iget p1, p1, Lcom/txdriver/db/CarType;->carTypeId:I

    if-eq v1, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/txdriver/db/CarType;->carTypeId:I

    mul-int/lit8 v0, v0, 0x1f

    return v0
.end method
