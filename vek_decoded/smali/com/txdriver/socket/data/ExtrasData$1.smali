.class final Lcom/txdriver/socket/data/ExtrasData$1;
.super Ljava/lang/Object;
.source "ExtrasData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/socket/data/ExtrasData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/txdriver/socket/data/ExtrasData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/txdriver/socket/data/ExtrasData;
    .locals 1

    .line 29
    new-instance v0, Lcom/txdriver/socket/data/ExtrasData;

    invoke-direct {v0, p1}, Lcom/txdriver/socket/data/ExtrasData;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/txdriver/socket/data/ExtrasData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/txdriver/socket/data/ExtrasData;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/txdriver/socket/data/ExtrasData;
    .locals 0

    .line 34
    new-array p1, p1, [Lcom/txdriver/socket/data/ExtrasData;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/txdriver/socket/data/ExtrasData$1;->newArray(I)[Lcom/txdriver/socket/data/ExtrasData;

    move-result-object p1

    return-object p1
.end method
