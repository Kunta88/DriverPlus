.class public final enum Lcom/txdriver/db/Order$Kind;
.super Ljava/lang/Enum;
.source "Order.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/db/Order;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Kind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/txdriver/db/Order$Kind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/txdriver/db/Order$Kind;

.field public static final enum BROADCAST:Lcom/txdriver/db/Order$Kind;

.field public static final enum NONE:Lcom/txdriver/db/Order$Kind;

.field public static final enum RESERVED:Lcom/txdriver/db/Order$Kind;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 329
    new-instance v0, Lcom/txdriver/db/Order$Kind;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/txdriver/db/Order$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txdriver/db/Order$Kind;->NONE:Lcom/txdriver/db/Order$Kind;

    new-instance v1, Lcom/txdriver/db/Order$Kind;

    const-string v3, "BROADCAST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/txdriver/db/Order$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/txdriver/db/Order$Kind;->BROADCAST:Lcom/txdriver/db/Order$Kind;

    new-instance v3, Lcom/txdriver/db/Order$Kind;

    const-string v5, "RESERVED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/txdriver/db/Order$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/txdriver/db/Order$Kind;->RESERVED:Lcom/txdriver/db/Order$Kind;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/txdriver/db/Order$Kind;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/txdriver/db/Order$Kind;->$VALUES:[Lcom/txdriver/db/Order$Kind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 329
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/txdriver/db/Order$Kind;
    .locals 1

    .line 329
    const-class v0, Lcom/txdriver/db/Order$Kind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/txdriver/db/Order$Kind;

    return-object p0
.end method

.method public static values()[Lcom/txdriver/db/Order$Kind;
    .locals 1

    .line 329
    sget-object v0, Lcom/txdriver/db/Order$Kind;->$VALUES:[Lcom/txdriver/db/Order$Kind;

    invoke-virtual {v0}, [Lcom/txdriver/db/Order$Kind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/txdriver/db/Order$Kind;

    return-object v0
.end method
