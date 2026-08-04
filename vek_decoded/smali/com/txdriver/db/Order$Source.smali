.class public final enum Lcom/txdriver/db/Order$Source;
.super Ljava/lang/Enum;
.source "Order.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/db/Order;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Source"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/txdriver/db/Order$Source;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/txdriver/db/Order$Source;

.field public static final enum EXCHANGE:Lcom/txdriver/db/Order$Source;

.field public static final enum GETT:Lcom/txdriver/db/Order$Source;

.field public static final enum MULTI_TAXI:Lcom/txdriver/db/Order$Source;

.field public static final enum NONE:Lcom/txdriver/db/Order$Source;

.field public static final enum OWN:Lcom/txdriver/db/Order$Source;

.field public static final enum RBT:Lcom/txdriver/db/Order$Source;

.field public static final enum SEDI:Lcom/txdriver/db/Order$Source;

.field public static final enum TAXIK:Lcom/txdriver/db/Order$Source;

.field public static final enum UBER:Lcom/txdriver/db/Order$Source;

.field public static final enum UPUP:Lcom/txdriver/db/Order$Source;

.field public static final enum YANDEX:Lcom/txdriver/db/Order$Source;

.field private static final lookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/txdriver/db/Order$Source;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final id:I

.field private final stringRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 332
    new-instance v0, Lcom/txdriver/db/Order$Source;

    const-string v1, "NONE"

    const/4 v2, 0x0

    const v3, 0x7f1000bb

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/txdriver/db/Order$Source;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/txdriver/db/Order$Source;->NONE:Lcom/txdriver/db/Order$Source;

    .line 333
    new-instance v1, Lcom/txdriver/db/Order$Source;

    const-string v4, "OWN"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v5, v3}, Lcom/txdriver/db/Order$Source;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/txdriver/db/Order$Source;->OWN:Lcom/txdriver/db/Order$Source;

    .line 334
    new-instance v3, Lcom/txdriver/db/Order$Source;

    const-string v4, "RBT"

    const/4 v6, 0x2

    const v7, 0x7f1001ed

    invoke-direct {v3, v4, v6, v6, v7}, Lcom/txdriver/db/Order$Source;-><init>(Ljava/lang/String;III)V

    sput-object v3, Lcom/txdriver/db/Order$Source;->RBT:Lcom/txdriver/db/Order$Source;

    .line 335
    new-instance v4, Lcom/txdriver/db/Order$Source;

    const-string v7, "UPUP"

    const/4 v8, 0x3

    const v9, 0x7f10026a

    invoke-direct {v4, v7, v8, v8, v9}, Lcom/txdriver/db/Order$Source;-><init>(Ljava/lang/String;III)V

    sput-object v4, Lcom/txdriver/db/Order$Source;->UPUP:Lcom/txdriver/db/Order$Source;

    .line 336
    new-instance v7, Lcom/txdriver/db/Order$Source;

    const-string v9, "YANDEX"

    const/4 v10, 0x4

    const v11, 0x7f10027f

    invoke-direct {v7, v9, v10, v10, v11}, Lcom/txdriver/db/Order$Source;-><init>(Ljava/lang/String;III)V

    sput-object v7, Lcom/txdriver/db/Order$Source;->YANDEX:Lcom/txdriver/db/Order$Source;

    .line 337
    new-instance v9, Lcom/txdriver/db/Order$Source;

    const-string v11, "UBER"

    const/4 v12, 0x5

    const v13, 0x7f100263

    invoke-direct {v9, v11, v12, v12, v13}, Lcom/txdriver/db/Order$Source;-><init>(Ljava/lang/String;III)V

    sput-object v9, Lcom/txdriver/db/Order$Source;->UBER:Lcom/txdriver/db/Order$Source;

    .line 338
    new-instance v11, Lcom/txdriver/db/Order$Source;

    const-string v13, "GETT"

    const/4 v14, 0x6

    const v15, 0x7f1000e5

    invoke-direct {v11, v13, v14, v14, v15}, Lcom/txdriver/db/Order$Source;-><init>(Ljava/lang/String;III)V

    sput-object v11, Lcom/txdriver/db/Order$Source;->GETT:Lcom/txdriver/db/Order$Source;

    .line 339
    new-instance v13, Lcom/txdriver/db/Order$Source;

    const-string v15, "TAXIK"

    const/4 v14, 0x7

    const v12, 0x7f100256

    invoke-direct {v13, v15, v14, v14, v12}, Lcom/txdriver/db/Order$Source;-><init>(Ljava/lang/String;III)V

    sput-object v13, Lcom/txdriver/db/Order$Source;->TAXIK:Lcom/txdriver/db/Order$Source;

    .line 340
    new-instance v12, Lcom/txdriver/db/Order$Source;

    const-string v15, "SEDI"

    const/16 v14, 0x8

    const v10, 0x7f10020a

    invoke-direct {v12, v15, v14, v14, v10}, Lcom/txdriver/db/Order$Source;-><init>(Ljava/lang/String;III)V

    sput-object v12, Lcom/txdriver/db/Order$Source;->SEDI:Lcom/txdriver/db/Order$Source;

    .line 341
    new-instance v10, Lcom/txdriver/db/Order$Source;

    const-string v15, "EXCHANGE"

    const/16 v14, 0x9

    const v8, 0x7f1000cd

    invoke-direct {v10, v15, v14, v14, v8}, Lcom/txdriver/db/Order$Source;-><init>(Ljava/lang/String;III)V

    sput-object v10, Lcom/txdriver/db/Order$Source;->EXCHANGE:Lcom/txdriver/db/Order$Source;

    .line 342
    new-instance v8, Lcom/txdriver/db/Order$Source;

    const-string v15, "MULTI_TAXI"

    const/16 v14, 0xa

    const v6, 0x7f10015f

    invoke-direct {v8, v15, v14, v14, v6}, Lcom/txdriver/db/Order$Source;-><init>(Ljava/lang/String;III)V

    sput-object v8, Lcom/txdriver/db/Order$Source;->MULTI_TAXI:Lcom/txdriver/db/Order$Source;

    const/16 v6, 0xb

    new-array v6, v6, [Lcom/txdriver/db/Order$Source;

    aput-object v0, v6, v2

    aput-object v1, v6, v5

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v4, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v12, v6, v0

    const/16 v0, 0x9

    aput-object v10, v6, v0

    aput-object v8, v6, v14

    .line 331
    sput-object v6, Lcom/txdriver/db/Order$Source;->$VALUES:[Lcom/txdriver/db/Order$Source;

    .line 344
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/txdriver/db/Order$Source;->lookup:Ljava/util/Map;

    .line 347
    invoke-static {}, Lcom/txdriver/db/Order$Source;->values()[Lcom/txdriver/db/Order$Source;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 348
    sget-object v4, Lcom/txdriver/db/Order$Source;->lookup:Ljava/util/Map;

    iget v5, v3, Lcom/txdriver/db/Order$Source;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 355
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 356
    iput p3, p0, Lcom/txdriver/db/Order$Source;->id:I

    .line 357
    iput p4, p0, Lcom/txdriver/db/Order$Source;->stringRes:I

    return-void
.end method

.method public static get(I)Lcom/txdriver/db/Order$Source;
    .locals 1

    .line 361
    sget-object v0, Lcom/txdriver/db/Order$Source;->lookup:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/txdriver/db/Order$Source;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/txdriver/db/Order$Source;
    .locals 1

    .line 331
    const-class v0, Lcom/txdriver/db/Order$Source;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/txdriver/db/Order$Source;

    return-object p0
.end method

.method public static values()[Lcom/txdriver/db/Order$Source;
    .locals 1

    .line 331
    sget-object v0, Lcom/txdriver/db/Order$Source;->$VALUES:[Lcom/txdriver/db/Order$Source;

    invoke-virtual {v0}, [Lcom/txdriver/db/Order$Source;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/txdriver/db/Order$Source;

    return-object v0
.end method


# virtual methods
.method public getStringRes()I
    .locals 1

    .line 365
    iget v0, p0, Lcom/txdriver/db/Order$Source;->stringRes:I

    return v0
.end method
