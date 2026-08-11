.class final Lcom/txdriver/json/CarInfo$1;
.super Ljava/lang/Object;
.source "CarInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/json/CarInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/txdriver/json/CarInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/txdriver/json/CarInfo;
    .locals 1

    .line 31
    new-instance v0, Lcom/txdriver/json/CarInfo;

    invoke-direct {v0, p1}, Lcom/txdriver/json/CarInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/txdriver/json/CarInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/txdriver/json/CarInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/txdriver/json/CarInfo;
    .locals 0

    .line 36
    new-array p1, p1, [Lcom/txdriver/json/CarInfo;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/txdriver/json/CarInfo$1;->newArray(I)[Lcom/txdriver/json/CarInfo;

    move-result-object p1

    return-object p1
.end method
