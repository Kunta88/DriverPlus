.class public Lcom/txdriver/json/EmploymentSettings;
.super Ljava/lang/Object;
.source "EmploymentSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/txdriver/json/EmploymentSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public companyInfo:[Lcom/txdriver/json/CompanyInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "employment_settings"
    .end annotation
.end field

.field public phoneMask:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "phone_mask"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lcom/txdriver/json/EmploymentSettings$1;

    invoke-direct {v0}, Lcom/txdriver/json/EmploymentSettings$1;-><init>()V

    sput-object v0, Lcom/txdriver/json/EmploymentSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/txdriver/json/CompanyInfo;

    .line 19
    iput-object v0, p0, Lcom/txdriver/json/EmploymentSettings;->companyInfo:[Lcom/txdriver/json/CompanyInfo;

    .line 20
    const-class v0, Ljava/lang/reflect/Array;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArray(Ljava/lang/ClassLoader;)[Ljava/lang/Object;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/txdriver/json/EmploymentSettings;->phoneMask:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPhoneMask()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/txdriver/json/EmploymentSettings;->phoneMask:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 26
    iget-object p2, p0, Lcom/txdriver/json/EmploymentSettings;->companyInfo:[Lcom/txdriver/json/CompanyInfo;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeArray([Ljava/lang/Object;)V

    .line 27
    iget-object p2, p0, Lcom/txdriver/json/EmploymentSettings;->phoneMask:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
