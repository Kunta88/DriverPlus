.class public Lcom/txdriver/json/DriverLocation;
.super Ljava/lang/Object;
.source "DriverLocation.java"


# instance fields
.field public callSign:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "call_sign"
    .end annotation
.end field

.field public free:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "free"
    .end annotation
.end field

.field public transient location:Lorg/osmdroid/util/GeoPoint;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
