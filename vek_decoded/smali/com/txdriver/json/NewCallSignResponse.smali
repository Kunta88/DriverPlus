.class public Lcom/txdriver/json/NewCallSignResponse;
.super Ljava/lang/Object;
.source "NewCallSignResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/txdriver/json/NewCallSignResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public newCallSign:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "call_sign"
    .end annotation
.end field

.field public newCallSignPassword:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "password"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/txdriver/json/NewCallSignResponse$1;

    invoke-direct {v0}, Lcom/txdriver/json/NewCallSignResponse$1;-><init>()V

    sput-object v0, Lcom/txdriver/json/NewCallSignResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/txdriver/json/NewCallSignResponse;->newCallSign:I

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/txdriver/json/NewCallSignResponse;->newCallSignPassword:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getNewCallSign()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/txdriver/json/NewCallSignResponse;->newCallSign:I

    return v0
.end method

.method public getNewCallSignPassword()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/txdriver/json/NewCallSignResponse;->newCallSignPassword:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 39
    iget p2, p0, Lcom/txdriver/json/NewCallSignResponse;->newCallSign:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    iget p2, p0, Lcom/txdriver/json/NewCallSignResponse;->newCallSignPassword:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
