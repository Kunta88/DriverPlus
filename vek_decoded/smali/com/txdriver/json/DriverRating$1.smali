.class final Lcom/txdriver/json/DriverRating$1;
.super Ljava/lang/Object;
.source "DriverRating.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/json/DriverRating;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/txdriver/json/DriverRating;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/txdriver/json/DriverRating;
    .locals 1

    .line 17
    new-instance v0, Lcom/txdriver/json/DriverRating;

    invoke-direct {v0, p1}, Lcom/txdriver/json/DriverRating;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/txdriver/json/DriverRating$1;->createFromParcel(Landroid/os/Parcel;)Lcom/txdriver/json/DriverRating;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/txdriver/json/DriverRating;
    .locals 0

    .line 22
    new-array p1, p1, [Lcom/txdriver/json/DriverRating;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/txdriver/json/DriverRating$1;->newArray(I)[Lcom/txdriver/json/DriverRating;

    move-result-object p1

    return-object p1
.end method
