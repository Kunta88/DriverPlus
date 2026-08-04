.class public Lcom/txdriver/json/CarInfo;
.super Ljava/lang/Object;
.source "CarInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/txdriver/json/CarInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public carColors:[Lcom/txdriver/json/CarColor;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "car_colors"
    .end annotation
.end field

.field public carModels:[Lcom/txdriver/json/CarModel;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "car_models"
    .end annotation
.end field

.field public carTypes:[Lcom/txdriver/json/CarType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "car_type"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lcom/txdriver/json/CarInfo$1;

    invoke-direct {v0}, Lcom/txdriver/json/CarInfo$1;-><init>()V

    sput-object v0, Lcom/txdriver/json/CarInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/txdriver/json/CarColor;

    .line 20
    iput-object v1, p0, Lcom/txdriver/json/CarInfo;->carColors:[Lcom/txdriver/json/CarColor;

    .line 21
    const-class v1, Ljava/lang/reflect/Array;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readArray(Ljava/lang/ClassLoader;)[Ljava/lang/Object;

    new-array v1, v0, [Lcom/txdriver/json/CarModel;

    .line 22
    iput-object v1, p0, Lcom/txdriver/json/CarInfo;->carModels:[Lcom/txdriver/json/CarModel;

    .line 23
    const-class v1, Ljava/lang/reflect/Array;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readArray(Ljava/lang/ClassLoader;)[Ljava/lang/Object;

    new-array v0, v0, [Lcom/txdriver/json/CarType;

    .line 24
    iput-object v0, p0, Lcom/txdriver/json/CarInfo;->carTypes:[Lcom/txdriver/json/CarType;

    .line 25
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
    .locals 0

    .line 47
    iget-object p2, p0, Lcom/txdriver/json/CarInfo;->carColors:[Lcom/txdriver/json/CarColor;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeArray([Ljava/lang/Object;)V

    .line 48
    iget-object p2, p0, Lcom/txdriver/json/CarInfo;->carModels:[Lcom/txdriver/json/CarModel;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeArray([Ljava/lang/Object;)V

    .line 49
    iget-object p2, p0, Lcom/txdriver/json/CarInfo;->carTypes:[Lcom/txdriver/json/CarType;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeArray([Ljava/lang/Object;)V

    return-void
.end method
