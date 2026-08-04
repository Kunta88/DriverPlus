.class public final enum Lcom/txdriver/db/Order$BankCardPaymentState;
.super Ljava/lang/Enum;
.source "Order.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/db/Order;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BankCardPaymentState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/txdriver/db/Order$BankCardPaymentState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/txdriver/db/Order$BankCardPaymentState;

.field public static final enum FAILED:Lcom/txdriver/db/Order$BankCardPaymentState;

.field public static final enum NEW:Lcom/txdriver/db/Order$BankCardPaymentState;

.field public static final enum PROCESSED:Lcom/txdriver/db/Order$BankCardPaymentState;

.field public static final enum PROCESSING:Lcom/txdriver/db/Order$BankCardPaymentState;

.field private static final lookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/txdriver/db/Order$BankCardPaymentState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 370
    new-instance v0, Lcom/txdriver/db/Order$BankCardPaymentState;

    const-string v1, "NEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/txdriver/db/Order$BankCardPaymentState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/txdriver/db/Order$BankCardPaymentState;->NEW:Lcom/txdriver/db/Order$BankCardPaymentState;

    .line 371
    new-instance v1, Lcom/txdriver/db/Order$BankCardPaymentState;

    const-string v3, "PROCESSING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/txdriver/db/Order$BankCardPaymentState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/txdriver/db/Order$BankCardPaymentState;->PROCESSING:Lcom/txdriver/db/Order$BankCardPaymentState;

    .line 372
    new-instance v3, Lcom/txdriver/db/Order$BankCardPaymentState;

    const-string v5, "PROCESSED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/txdriver/db/Order$BankCardPaymentState;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/txdriver/db/Order$BankCardPaymentState;->PROCESSED:Lcom/txdriver/db/Order$BankCardPaymentState;

    .line 373
    new-instance v5, Lcom/txdriver/db/Order$BankCardPaymentState;

    const-string v7, "FAILED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/txdriver/db/Order$BankCardPaymentState;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/txdriver/db/Order$BankCardPaymentState;->FAILED:Lcom/txdriver/db/Order$BankCardPaymentState;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/txdriver/db/Order$BankCardPaymentState;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 369
    sput-object v7, Lcom/txdriver/db/Order$BankCardPaymentState;->$VALUES:[Lcom/txdriver/db/Order$BankCardPaymentState;

    .line 375
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/txdriver/db/Order$BankCardPaymentState;->lookup:Ljava/util/Map;

    .line 378
    invoke-static {}, Lcom/txdriver/db/Order$BankCardPaymentState;->values()[Lcom/txdriver/db/Order$BankCardPaymentState;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 379
    sget-object v4, Lcom/txdriver/db/Order$BankCardPaymentState;->lookup:Ljava/util/Map;

    iget v5, v3, Lcom/txdriver/db/Order$BankCardPaymentState;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 385
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 386
    iput p3, p0, Lcom/txdriver/db/Order$BankCardPaymentState;->id:I

    return-void
.end method

.method public static get(I)Lcom/txdriver/db/Order$BankCardPaymentState;
    .locals 1

    .line 390
    sget-object v0, Lcom/txdriver/db/Order$BankCardPaymentState;->lookup:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/txdriver/db/Order$BankCardPaymentState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/txdriver/db/Order$BankCardPaymentState;
    .locals 1

    .line 369
    const-class v0, Lcom/txdriver/db/Order$BankCardPaymentState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/txdriver/db/Order$BankCardPaymentState;

    return-object p0
.end method

.method public static values()[Lcom/txdriver/db/Order$BankCardPaymentState;
    .locals 1

    .line 369
    sget-object v0, Lcom/txdriver/db/Order$BankCardPaymentState;->$VALUES:[Lcom/txdriver/db/Order$BankCardPaymentState;

    invoke-virtual {v0}, [Lcom/txdriver/db/Order$BankCardPaymentState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/txdriver/db/Order$BankCardPaymentState;

    return-object v0
.end method
