.class public final enum Lcom/txdriver/db/WebApp$Type;
.super Ljava/lang/Enum;
.source "WebApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/db/WebApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/txdriver/db/WebApp$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/txdriver/db/WebApp$Type;

.field public static final enum DRIVER_TAB:Lcom/txdriver/db/WebApp$Type;

.field public static final enum MAIN_MENU:Lcom/txdriver/db/WebApp$Type;

.field public static final enum MAIN_TAB:Lcom/txdriver/db/WebApp$Type;

.field public static final enum ORDER_MENU:Lcom/txdriver/db/WebApp$Type;

.field public static final enum ORDER_TAB:Lcom/txdriver/db/WebApp$Type;

.field private static final lookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/txdriver/db/WebApp$Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private id:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 47
    new-instance v0, Lcom/txdriver/db/WebApp$Type;

    const-string v1, "MAIN_MENU"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/txdriver/db/WebApp$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/txdriver/db/WebApp$Type;->MAIN_MENU:Lcom/txdriver/db/WebApp$Type;

    .line 48
    new-instance v1, Lcom/txdriver/db/WebApp$Type;

    const-string v3, "MAIN_TAB"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/txdriver/db/WebApp$Type;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/txdriver/db/WebApp$Type;->MAIN_TAB:Lcom/txdriver/db/WebApp$Type;

    .line 49
    new-instance v3, Lcom/txdriver/db/WebApp$Type;

    const-string v5, "ORDER_MENU"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/txdriver/db/WebApp$Type;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/txdriver/db/WebApp$Type;->ORDER_MENU:Lcom/txdriver/db/WebApp$Type;

    .line 50
    new-instance v5, Lcom/txdriver/db/WebApp$Type;

    const-string v7, "ORDER_TAB"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/txdriver/db/WebApp$Type;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/txdriver/db/WebApp$Type;->ORDER_TAB:Lcom/txdriver/db/WebApp$Type;

    .line 51
    new-instance v7, Lcom/txdriver/db/WebApp$Type;

    const-string v9, "DRIVER_TAB"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/txdriver/db/WebApp$Type;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/txdriver/db/WebApp$Type;->DRIVER_TAB:Lcom/txdriver/db/WebApp$Type;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/txdriver/db/WebApp$Type;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 46
    sput-object v9, Lcom/txdriver/db/WebApp$Type;->$VALUES:[Lcom/txdriver/db/WebApp$Type;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/txdriver/db/WebApp$Type;->lookup:Ljava/util/Map;

    .line 55
    invoke-static {}, Lcom/txdriver/db/WebApp$Type;->values()[Lcom/txdriver/db/WebApp$Type;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 56
    sget-object v4, Lcom/txdriver/db/WebApp$Type;->lookup:Ljava/util/Map;

    iget v5, v3, Lcom/txdriver/db/WebApp$Type;->id:I

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

    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 64
    iput p3, p0, Lcom/txdriver/db/WebApp$Type;->id:I

    return-void
.end method

.method public static get(I)Lcom/txdriver/db/WebApp$Type;
    .locals 1

    .line 68
    sget-object v0, Lcom/txdriver/db/WebApp$Type;->lookup:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/txdriver/db/WebApp$Type;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/txdriver/db/WebApp$Type;
    .locals 1

    .line 46
    const-class v0, Lcom/txdriver/db/WebApp$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/txdriver/db/WebApp$Type;

    return-object p0
.end method

.method public static values()[Lcom/txdriver/db/WebApp$Type;
    .locals 1

    .line 46
    sget-object v0, Lcom/txdriver/db/WebApp$Type;->$VALUES:[Lcom/txdriver/db/WebApp$Type;

    invoke-virtual {v0}, [Lcom/txdriver/db/WebApp$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/txdriver/db/WebApp$Type;

    return-object v0
.end method
