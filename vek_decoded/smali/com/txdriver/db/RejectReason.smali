.class public Lcom/txdriver/db/RejectReason;
.super Lcom/activeandroid/Model;
.source "RejectReason.java"


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "RejectReasons"
.end annotation


# static fields
.field public static final REJECT_REASON_DRIVER:I = -0x1

.field public static final REJECT_REASON_REASIGNED:I = -0x3

.field public static final REJECT_REASON_TIMEOUT:I = -0x2


# instance fields
.field public reasonId:I
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "ReasonId"
    .end annotation
.end field

.field public reasonText:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "ReasonText"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/txdriver/socket/data/RejectReasonData;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    .line 29
    iget v0, p1, Lcom/txdriver/socket/data/RejectReasonData;->reasonId:I

    iput v0, p0, Lcom/txdriver/db/RejectReason;->reasonId:I

    .line 30
    iget-object p1, p1, Lcom/txdriver/socket/data/RejectReasonData;->reasonText:Ljava/lang/String;

    iput-object p1, p0, Lcom/txdriver/db/RejectReason;->reasonText:Ljava/lang/String;

    return-void
.end method

.method public static deleteAll()V
    .locals 2

    .line 34
    new-instance v0, Lcom/activeandroid/query/Delete;

    invoke-direct {v0}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v1, Lcom/txdriver/db/RejectReason;

    .line 35
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    return-void
.end method

.method public static getByReasonId(I)Lcom/txdriver/db/RejectReason;
    .locals 3

    .line 40
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/txdriver/db/RejectReason;

    .line 41
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 42
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "ReasonId = ?"

    invoke-virtual {v0, p0, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p0

    .line 43
    invoke-virtual {p0}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object p0

    check-cast p0, Lcom/txdriver/db/RejectReason;

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/txdriver/db/RejectReason;->reasonText:Ljava/lang/String;

    return-object v0
.end method
