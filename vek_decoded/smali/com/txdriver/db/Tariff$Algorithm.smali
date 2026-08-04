.class public final enum Lcom/txdriver/db/Tariff$Algorithm;
.super Ljava/lang/Enum;
.source "Tariff.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/db/Tariff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Algorithm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/txdriver/db/Tariff$Algorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/txdriver/db/Tariff$Algorithm;

.field public static final enum DISTANCE_OR_MANUAL_TIME:Lcom/txdriver/db/Tariff$Algorithm;

.field public static final enum TIME_AND_DISTANCE:Lcom/txdriver/db/Tariff$Algorithm;

.field public static final enum TIME_OR_DISTANCE:Lcom/txdriver/db/Tariff$Algorithm;

.field private static final lookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/txdriver/db/Tariff$Algorithm;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 272
    new-instance v0, Lcom/txdriver/db/Tariff$Algorithm;

    const-string v1, "TIME_AND_DISTANCE"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/txdriver/db/Tariff$Algorithm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/txdriver/db/Tariff$Algorithm;->TIME_AND_DISTANCE:Lcom/txdriver/db/Tariff$Algorithm;

    new-instance v1, Lcom/txdriver/db/Tariff$Algorithm;

    const-string v4, "TIME_OR_DISTANCE"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v5}, Lcom/txdriver/db/Tariff$Algorithm;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/txdriver/db/Tariff$Algorithm;->TIME_OR_DISTANCE:Lcom/txdriver/db/Tariff$Algorithm;

    new-instance v4, Lcom/txdriver/db/Tariff$Algorithm;

    const-string v6, "DISTANCE_OR_MANUAL_TIME"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v3, v7}, Lcom/txdriver/db/Tariff$Algorithm;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/txdriver/db/Tariff$Algorithm;->DISTANCE_OR_MANUAL_TIME:Lcom/txdriver/db/Tariff$Algorithm;

    new-array v6, v7, [Lcom/txdriver/db/Tariff$Algorithm;

    aput-object v0, v6, v2

    aput-object v1, v6, v5

    aput-object v4, v6, v3

    .line 271
    sput-object v6, Lcom/txdriver/db/Tariff$Algorithm;->$VALUES:[Lcom/txdriver/db/Tariff$Algorithm;

    .line 274
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/txdriver/db/Tariff$Algorithm;->lookup:Ljava/util/Map;

    .line 277
    invoke-static {}, Lcom/txdriver/db/Tariff$Algorithm;->values()[Lcom/txdriver/db/Tariff$Algorithm;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 278
    sget-object v4, Lcom/txdriver/db/Tariff$Algorithm;->lookup:Ljava/util/Map;

    iget v5, v3, Lcom/txdriver/db/Tariff$Algorithm;->id:I

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

    .line 284
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 285
    iput p3, p0, Lcom/txdriver/db/Tariff$Algorithm;->id:I

    return-void
.end method

.method public static get(I)Lcom/txdriver/db/Tariff$Algorithm;
    .locals 1

    .line 289
    sget-object v0, Lcom/txdriver/db/Tariff$Algorithm;->lookup:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/txdriver/db/Tariff$Algorithm;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/txdriver/db/Tariff$Algorithm;
    .locals 1

    .line 271
    const-class v0, Lcom/txdriver/db/Tariff$Algorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/txdriver/db/Tariff$Algorithm;

    return-object p0
.end method

.method public static values()[Lcom/txdriver/db/Tariff$Algorithm;
    .locals 1

    .line 271
    sget-object v0, Lcom/txdriver/db/Tariff$Algorithm;->$VALUES:[Lcom/txdriver/db/Tariff$Algorithm;

    invoke-virtual {v0}, [Lcom/txdriver/db/Tariff$Algorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/txdriver/db/Tariff$Algorithm;

    return-object v0
.end method
