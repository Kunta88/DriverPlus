.class final Lorg/osmdroid/bonuspack/routing/Road$1;
.super Ljava/lang/Object;
.source "Road.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/bonuspack/routing/Road;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/osmdroid/bonuspack/routing/Road;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 201
    invoke-virtual {p0, p1}, Lorg/osmdroid/bonuspack/routing/Road$1;->createFromParcel(Landroid/os/Parcel;)Lorg/osmdroid/bonuspack/routing/Road;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/osmdroid/bonuspack/routing/Road;
    .locals 2

    .line 203
    new-instance v0, Lorg/osmdroid/bonuspack/routing/Road;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/osmdroid/bonuspack/routing/Road;-><init>(Landroid/os/Parcel;Lorg/osmdroid/bonuspack/routing/Road$1;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 201
    invoke-virtual {p0, p1}, Lorg/osmdroid/bonuspack/routing/Road$1;->newArray(I)[Lorg/osmdroid/bonuspack/routing/Road;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lorg/osmdroid/bonuspack/routing/Road;
    .locals 0

    .line 206
    new-array p1, p1, [Lorg/osmdroid/bonuspack/routing/Road;

    return-object p1
.end method
