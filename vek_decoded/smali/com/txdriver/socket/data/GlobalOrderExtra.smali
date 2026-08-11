.class public Lcom/txdriver/socket/data/GlobalOrderExtra;
.super Ljava/lang/Object;
.source "GlobalOrderExtra.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CAR_EXTRA:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/txdriver/socket/data/GlobalOrderExtra;",
            ">;"
        }
    .end annotation
.end field

.field public static final DRIVER_EXTRA:I = 0x1


# instance fields
.field public extraType:I

.field public id:I

.field public isSelected:Z

.field public name:Ljava/lang/String;

.field public percent:F

.field public price:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lcom/txdriver/socket/data/GlobalOrderExtra$1;

    invoke-direct {v0}, Lcom/txdriver/socket/data/GlobalOrderExtra$1;-><init>()V

    sput-object v0, Lcom/txdriver/socket/data/GlobalOrderExtra;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;FFZ)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/txdriver/socket/data/GlobalOrderExtra;->extraType:I

    .line 20
    iput p2, p0, Lcom/txdriver/socket/data/GlobalOrderExtra;->id:I

    .line 21
    iput-object p3, p0, Lcom/txdriver/socket/data/GlobalOrderExtra;->name:Ljava/lang/String;

    .line 22
    iput p4, p0, Lcom/txdriver/socket/data/GlobalOrderExtra;->price:F

    .line 23
    iput p5, p0, Lcom/txdriver/socket/data/GlobalOrderExtra;->percent:F

    .line 24
    iput-boolean p6, p0, Lcom/txdriver/socket/data/GlobalOrderExtra;->isSelected:Z

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/txdriver/socket/data/GlobalOrderExtra;->extraType:I

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/txdriver/socket/data/GlobalOrderExtra;->id:I

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/txdriver/socket/data/GlobalOrderExtra;->name:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/txdriver/socket/data/GlobalOrderExtra;->price:F

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/txdriver/socket/data/GlobalOrderExtra;->percent:F

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/txdriver/socket/data/GlobalOrderExtra;->isSelected:Z

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

    .line 55
    iget p2, p0, Lcom/txdriver/socket/data/GlobalOrderExtra;->extraType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    iget p2, p0, Lcom/txdriver/socket/data/GlobalOrderExtra;->id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget-object p2, p0, Lcom/txdriver/socket/data/GlobalOrderExtra;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget p2, p0, Lcom/txdriver/socket/data/GlobalOrderExtra;->price:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 59
    iget p2, p0, Lcom/txdriver/socket/data/GlobalOrderExtra;->percent:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 60
    iget-boolean p2, p0, Lcom/txdriver/socket/data/GlobalOrderExtra;->isSelected:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
