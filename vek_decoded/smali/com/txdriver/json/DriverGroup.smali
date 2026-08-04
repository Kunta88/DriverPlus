.class public Lcom/txdriver/json/DriverGroup;
.super Ljava/lang/Object;
.source "DriverGroup.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/txdriver/json/DriverGroup;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private driverGroupId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private driverGroupName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/txdriver/json/DriverGroup$1;

    invoke-direct {v0}, Lcom/txdriver/json/DriverGroup$1;-><init>()V

    sput-object v0, Lcom/txdriver/json/DriverGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/txdriver/json/DriverGroup;->driverGroupId:I

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/txdriver/json/DriverGroup;->driverGroupName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDriverGroupId()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/txdriver/json/DriverGroup;->driverGroupId:I

    return v0
.end method

.method public getDriverGroupName()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/txdriver/json/DriverGroup;->driverGroupName:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 39
    iget p2, p0, Lcom/txdriver/json/DriverGroup;->driverGroupId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    iget-object p2, p0, Lcom/txdriver/json/DriverGroup;->driverGroupName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
