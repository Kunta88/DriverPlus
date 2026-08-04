.class final Lcom/txdriver/json/ArchiveOrder$1;
.super Ljava/lang/Object;
.source "ArchiveOrder.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/json/ArchiveOrder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/txdriver/json/ArchiveOrder;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/txdriver/json/ArchiveOrder;
    .locals 2

    .line 19
    new-instance v0, Lcom/txdriver/json/ArchiveOrder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/txdriver/json/ArchiveOrder;-><init>(Landroid/os/Parcel;Lcom/txdriver/json/ArchiveOrder$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/txdriver/json/ArchiveOrder$1;->createFromParcel(Landroid/os/Parcel;)Lcom/txdriver/json/ArchiveOrder;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/txdriver/json/ArchiveOrder;
    .locals 0

    .line 23
    new-array p1, p1, [Lcom/txdriver/json/ArchiveOrder;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/txdriver/json/ArchiveOrder$1;->newArray(I)[Lcom/txdriver/json/ArchiveOrder;

    move-result-object p1

    return-object p1
.end method
