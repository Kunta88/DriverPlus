.class final Lcom/txdriver/json/DriverInfo$Earnings$1;
.super Ljava/lang/Object;
.source "DriverInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/json/DriverInfo$Earnings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/txdriver/json/DriverInfo$Earnings;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/txdriver/json/DriverInfo$Earnings;
    .locals 1

    .line 127
    new-instance v0, Lcom/txdriver/json/DriverInfo$Earnings;

    invoke-direct {v0, p1}, Lcom/txdriver/json/DriverInfo$Earnings;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 124
    invoke-virtual {p0, p1}, Lcom/txdriver/json/DriverInfo$Earnings$1;->createFromParcel(Landroid/os/Parcel;)Lcom/txdriver/json/DriverInfo$Earnings;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/txdriver/json/DriverInfo$Earnings;
    .locals 0

    .line 132
    new-array p1, p1, [Lcom/txdriver/json/DriverInfo$Earnings;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 124
    invoke-virtual {p0, p1}, Lcom/txdriver/json/DriverInfo$Earnings$1;->newArray(I)[Lcom/txdriver/json/DriverInfo$Earnings;

    move-result-object p1

    return-object p1
.end method
