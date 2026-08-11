.class public Lcom/txdriver/json/CompanyInfo;
.super Ljava/lang/Object;
.source "CompanyInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/txdriver/json/CompanyInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private companyId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "company_id"
    .end annotation
.end field

.field private companyLogo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "company_logo"
    .end annotation
.end field

.field private companyName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lcom/txdriver/json/CompanyInfo$1;

    invoke-direct {v0}, Lcom/txdriver/json/CompanyInfo$1;-><init>()V

    sput-object v0, Lcom/txdriver/json/CompanyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/txdriver/json/CompanyInfo;->companyId:I

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/txdriver/json/CompanyInfo;->companyLogo:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/txdriver/json/CompanyInfo;->companyName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCompanyId()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/txdriver/json/CompanyInfo;->companyId:I

    return v0
.end method

.method public getCompanyLogo()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/txdriver/json/CompanyInfo;->companyLogo:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanyName()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/txdriver/json/CompanyInfo;->companyName:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 42
    iget p2, p0, Lcom/txdriver/json/CompanyInfo;->companyId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget-object p2, p0, Lcom/txdriver/json/CompanyInfo;->companyLogo:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    iget-object p2, p0, Lcom/txdriver/json/CompanyInfo;->companyName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
