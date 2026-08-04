.class public final enum Lorg/msgpack/type/ValueType;
.super Ljava/lang/Enum;
.source "ValueType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/msgpack/type/ValueType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/msgpack/type/ValueType;

.field public static final enum ARRAY:Lorg/msgpack/type/ValueType;

.field public static final enum BOOLEAN:Lorg/msgpack/type/ValueType;

.field public static final enum FLOAT:Lorg/msgpack/type/ValueType;

.field public static final enum INTEGER:Lorg/msgpack/type/ValueType;

.field public static final enum MAP:Lorg/msgpack/type/ValueType;

.field public static final enum NIL:Lorg/msgpack/type/ValueType;

.field public static final enum RAW:Lorg/msgpack/type/ValueType;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 21
    new-instance v0, Lorg/msgpack/type/ValueType;

    const-string v1, "NIL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/msgpack/type/ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/msgpack/type/ValueType;->NIL:Lorg/msgpack/type/ValueType;

    new-instance v1, Lorg/msgpack/type/ValueType;

    const-string v3, "BOOLEAN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/msgpack/type/ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/msgpack/type/ValueType;->BOOLEAN:Lorg/msgpack/type/ValueType;

    new-instance v3, Lorg/msgpack/type/ValueType;

    const-string v5, "INTEGER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/msgpack/type/ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/msgpack/type/ValueType;->INTEGER:Lorg/msgpack/type/ValueType;

    new-instance v5, Lorg/msgpack/type/ValueType;

    const-string v7, "FLOAT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/msgpack/type/ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/msgpack/type/ValueType;->FLOAT:Lorg/msgpack/type/ValueType;

    new-instance v7, Lorg/msgpack/type/ValueType;

    const-string v9, "ARRAY"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/msgpack/type/ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/msgpack/type/ValueType;->ARRAY:Lorg/msgpack/type/ValueType;

    new-instance v9, Lorg/msgpack/type/ValueType;

    const-string v11, "MAP"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lorg/msgpack/type/ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/msgpack/type/ValueType;->MAP:Lorg/msgpack/type/ValueType;

    new-instance v11, Lorg/msgpack/type/ValueType;

    const-string v13, "RAW"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lorg/msgpack/type/ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lorg/msgpack/type/ValueType;->RAW:Lorg/msgpack/type/ValueType;

    const/4 v13, 0x7

    new-array v13, v13, [Lorg/msgpack/type/ValueType;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 20
    sput-object v13, Lorg/msgpack/type/ValueType;->$VALUES:[Lorg/msgpack/type/ValueType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/msgpack/type/ValueType;
    .locals 1

    .line 20
    const-class v0, Lorg/msgpack/type/ValueType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/msgpack/type/ValueType;

    return-object p0
.end method

.method public static values()[Lorg/msgpack/type/ValueType;
    .locals 1

    .line 20
    sget-object v0, Lorg/msgpack/type/ValueType;->$VALUES:[Lorg/msgpack/type/ValueType;

    invoke-virtual {v0}, [Lorg/msgpack/type/ValueType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/msgpack/type/ValueType;

    return-object v0
.end method
