.class public Lcom/txdriver/json/FinOperation;
.super Lcom/txdriver/ui/listItemTemplate/ListItem;
.source "FinOperation.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/txdriver/json/FinOperation;",
            ">;"
        }
    .end annotation
.end field

.field public static final OPERATION_ADD:I = 0x2

.field public static final OPERATION_ADVANCE_ADD:I = 0x4

.field public static final OPERATION_ADVANCE_SUB:I = 0x3

.field public static final OPERATION_SUB:I = 0x1


# instance fields
.field public balance:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "balance"
    .end annotation
.end field

.field public comment:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "comment"
    .end annotation
.end field

.field public operationDate:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "operation_date"
    .end annotation
.end field

.field public operationType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "operation_type"
    .end annotation
.end field

.field public sum:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sum"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lcom/txdriver/json/FinOperation$1;

    invoke-direct {v0}, Lcom/txdriver/json/FinOperation$1;-><init>()V

    sput-object v0, Lcom/txdriver/json/FinOperation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/txdriver/ui/listItemTemplate/ListItem;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .line 44
    invoke-direct {p0}, Lcom/txdriver/ui/listItemTemplate/ListItem;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 46
    :cond_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    move-object v0, v2

    :goto_0
    iput-object v0, p0, Lcom/txdriver/json/FinOperation;->operationDate:Ljava/util/Date;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/txdriver/json/FinOperation;->operationType:I

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/txdriver/json/FinOperation;->sum:F

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/txdriver/json/FinOperation;->balance:F

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/txdriver/json/FinOperation;->comment:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBalance()F
    .locals 1

    .line 54
    iget v0, p0, Lcom/txdriver/json/FinOperation;->balance:F

    return v0
.end method

.method public getSum()F
    .locals 2

    .line 58
    iget v0, p0, Lcom/txdriver/json/FinOperation;->operationType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    iget v0, p0, Lcom/txdriver/json/FinOperation;->sum:F

    return v0

    .line 59
    :cond_1
    :goto_0
    iget v0, p0, Lcom/txdriver/json/FinOperation;->sum:F

    const/high16 v1, -0x40800000    # -1.0f

    mul-float v0, v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 71
    iget-object p2, p0, Lcom/txdriver/json/FinOperation;->operationDate:Ljava/util/Date;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 72
    iget p2, p0, Lcom/txdriver/json/FinOperation;->operationType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    iget p2, p0, Lcom/txdriver/json/FinOperation;->sum:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 74
    iget p2, p0, Lcom/txdriver/json/FinOperation;->balance:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 75
    iget-object p2, p0, Lcom/txdriver/json/FinOperation;->comment:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
