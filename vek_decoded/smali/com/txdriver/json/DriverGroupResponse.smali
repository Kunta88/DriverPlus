.class public Lcom/txdriver/json/DriverGroupResponse;
.super Ljava/lang/Object;
.source "DriverGroupResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/txdriver/json/DriverGroupResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public driverGroups:[Lcom/txdriver/json/DriverGroup;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "driver_groups"
    .end annotation
.end field

.field public driverRate:Lcom/txdriver/json/DriverRate;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "driver_rates"
    .end annotation
.end field

.field private id:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcom/txdriver/json/DriverGroupResponse$1;

    invoke-direct {v0}, Lcom/txdriver/json/DriverGroupResponse$1;-><init>()V

    sput-object v0, Lcom/txdriver/json/DriverGroupResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/txdriver/json/DriverGroupResponse;->id:I

    .line 21
    const-class v0, Lcom/txdriver/json/DriverRate;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/txdriver/json/DriverRate;

    iput-object v0, p0, Lcom/txdriver/json/DriverGroupResponse;->driverRate:Lcom/txdriver/json/DriverRate;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/txdriver/json/DriverGroup;

    .line 22
    iput-object v0, p0, Lcom/txdriver/json/DriverGroupResponse;->driverGroups:[Lcom/txdriver/json/DriverGroup;

    .line 23
    const-class v0, Ljava/lang/reflect/Array;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArray(Ljava/lang/ClassLoader;)[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 45
    iget v0, p0, Lcom/txdriver/json/DriverGroupResponse;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    iget-object v0, p0, Lcom/txdriver/json/DriverGroupResponse;->driverRate:Lcom/txdriver/json/DriverRate;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 47
    iget-object p2, p0, Lcom/txdriver/json/DriverGroupResponse;->driverGroups:[Lcom/txdriver/json/DriverGroup;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeArray([Ljava/lang/Object;)V

    return-void
.end method
