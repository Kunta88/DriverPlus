.class public Lcom/txdriver/json/RegistrationReferrerResponse;
.super Ljava/lang/Object;
.source "RegistrationReferrerResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/txdriver/json/RegistrationReferrerResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field referrerId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "driver_id"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lcom/txdriver/json/RegistrationReferrerResponse$1;

    invoke-direct {v0}, Lcom/txdriver/json/RegistrationReferrerResponse$1;-><init>()V

    sput-object v0, Lcom/txdriver/json/RegistrationReferrerResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/txdriver/json/RegistrationReferrerResponse;->referrerId:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getReferrerId()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/txdriver/json/RegistrationReferrerResponse;->referrerId:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 36
    iget p2, p0, Lcom/txdriver/json/RegistrationReferrerResponse;->referrerId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
