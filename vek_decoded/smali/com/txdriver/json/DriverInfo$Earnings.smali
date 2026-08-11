.class public Lcom/txdriver/json/DriverInfo$Earnings;
.super Ljava/lang/Object;
.source "DriverInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/json/DriverInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Earnings"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/txdriver/json/DriverInfo$Earnings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public last30Days:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "last_30_days"
    .end annotation
.end field

.field public lastMonth:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "last_month"
    .end annotation
.end field

.field public month:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "month"
    .end annotation
.end field

.field public session:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "session"
    .end annotation
.end field

.field public week:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "week"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 124
    new-instance v0, Lcom/txdriver/json/DriverInfo$Earnings$1;

    invoke-direct {v0}, Lcom/txdriver/json/DriverInfo$Earnings$1;-><init>()V

    sput-object v0, Lcom/txdriver/json/DriverInfo$Earnings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/txdriver/json/DriverInfo$Earnings;->session:F

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/txdriver/json/DriverInfo$Earnings;->week:F

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/txdriver/json/DriverInfo$Earnings;->last30Days:F

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/txdriver/json/DriverInfo$Earnings;->month:F

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/txdriver/json/DriverInfo$Earnings;->lastMonth:F

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 156
    iget p2, p0, Lcom/txdriver/json/DriverInfo$Earnings;->session:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 157
    iget p2, p0, Lcom/txdriver/json/DriverInfo$Earnings;->week:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 158
    iget p2, p0, Lcom/txdriver/json/DriverInfo$Earnings;->last30Days:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 159
    iget p2, p0, Lcom/txdriver/json/DriverInfo$Earnings;->month:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 160
    iget p2, p0, Lcom/txdriver/json/DriverInfo$Earnings;->lastMonth:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
