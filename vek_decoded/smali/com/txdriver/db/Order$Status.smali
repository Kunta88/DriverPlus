.class public final enum Lcom/txdriver/db/Order$Status;
.super Ljava/lang/Enum;
.source "Order.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/db/Order;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/txdriver/db/Order$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/txdriver/db/Order$Status;

.field public static final enum ACCEPTED:Lcom/txdriver/db/Order$Status;

.field public static final enum ARRIVED:Lcom/txdriver/db/Order$Status;

.field public static final enum AUTO_ACCEPTING:Lcom/txdriver/db/Order$Status;

.field public static final enum CANCELED:Lcom/txdriver/db/Order$Status;

.field public static final enum DONE:Lcom/txdriver/db/Order$Status;

.field public static final enum NEW:Lcom/txdriver/db/Order$Status;

.field public static final enum ON_ROUTE:Lcom/txdriver/db/Order$Status;

.field public static final enum PERFORMING:Lcom/txdriver/db/Order$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 327
    new-instance v0, Lcom/txdriver/db/Order$Status;

    const-string v1, "NEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/txdriver/db/Order$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txdriver/db/Order$Status;->NEW:Lcom/txdriver/db/Order$Status;

    new-instance v1, Lcom/txdriver/db/Order$Status;

    const-string v3, "ACCEPTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/txdriver/db/Order$Status;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/txdriver/db/Order$Status;->ACCEPTED:Lcom/txdriver/db/Order$Status;

    new-instance v3, Lcom/txdriver/db/Order$Status;

    const-string v5, "PERFORMING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/txdriver/db/Order$Status;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/txdriver/db/Order$Status;->PERFORMING:Lcom/txdriver/db/Order$Status;

    new-instance v5, Lcom/txdriver/db/Order$Status;

    const-string v7, "ON_ROUTE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/txdriver/db/Order$Status;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/txdriver/db/Order$Status;->ON_ROUTE:Lcom/txdriver/db/Order$Status;

    new-instance v7, Lcom/txdriver/db/Order$Status;

    const-string v9, "ARRIVED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/txdriver/db/Order$Status;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/txdriver/db/Order$Status;->ARRIVED:Lcom/txdriver/db/Order$Status;

    new-instance v9, Lcom/txdriver/db/Order$Status;

    const-string v11, "DONE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/txdriver/db/Order$Status;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/txdriver/db/Order$Status;->DONE:Lcom/txdriver/db/Order$Status;

    new-instance v11, Lcom/txdriver/db/Order$Status;

    const-string v13, "CANCELED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/txdriver/db/Order$Status;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/txdriver/db/Order$Status;->CANCELED:Lcom/txdriver/db/Order$Status;

    new-instance v13, Lcom/txdriver/db/Order$Status;

    const-string v15, "AUTO_ACCEPTING"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/txdriver/db/Order$Status;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/txdriver/db/Order$Status;->AUTO_ACCEPTING:Lcom/txdriver/db/Order$Status;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/txdriver/db/Order$Status;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Lcom/txdriver/db/Order$Status;->$VALUES:[Lcom/txdriver/db/Order$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 327
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/txdriver/db/Order$Status;
    .locals 1

    .line 327
    const-class v0, Lcom/txdriver/db/Order$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/txdriver/db/Order$Status;

    return-object p0
.end method

.method public static values()[Lcom/txdriver/db/Order$Status;
    .locals 1

    .line 327
    sget-object v0, Lcom/txdriver/db/Order$Status;->$VALUES:[Lcom/txdriver/db/Order$Status;

    invoke-virtual {v0}, [Lcom/txdriver/db/Order$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/txdriver/db/Order$Status;

    return-object v0
.end method
