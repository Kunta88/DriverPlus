.class final Lcom/txdriver/socket/data/OrderTariffExtra$1;
.super Ljava/lang/Object;
.source "OrderTariffExtra.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/socket/data/OrderTariffExtra;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/txdriver/socket/data/OrderTariffExtra;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/txdriver/socket/data/OrderTariffExtra;
    .locals 1

    .line 35
    new-instance v0, Lcom/txdriver/socket/data/OrderTariffExtra;

    invoke-direct {v0, p1}, Lcom/txdriver/socket/data/OrderTariffExtra;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/txdriver/socket/data/OrderTariffExtra$1;->createFromParcel(Landroid/os/Parcel;)Lcom/txdriver/socket/data/OrderTariffExtra;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/txdriver/socket/data/OrderTariffExtra;
    .locals 0

    .line 40
    new-array p1, p1, [Lcom/txdriver/socket/data/OrderTariffExtra;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/txdriver/socket/data/OrderTariffExtra$1;->newArray(I)[Lcom/txdriver/socket/data/OrderTariffExtra;

    move-result-object p1

    return-object p1
.end method
