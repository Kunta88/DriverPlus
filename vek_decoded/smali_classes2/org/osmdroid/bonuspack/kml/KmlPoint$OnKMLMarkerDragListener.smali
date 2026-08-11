.class public Lorg/osmdroid/bonuspack/kml/KmlPoint$OnKMLMarkerDragListener;
.super Ljava/lang/Object;
.source "KmlPoint.java"

# interfaces
.implements Lorg/osmdroid/views/overlay/Marker$OnMarkerDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/bonuspack/kml/KmlPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnKMLMarkerDragListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/osmdroid/bonuspack/kml/KmlPoint;


# direct methods
.method public constructor <init>(Lorg/osmdroid/bonuspack/kml/KmlPoint;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlPoint$OnKMLMarkerDragListener;->this$0:Lorg/osmdroid/bonuspack/kml/KmlPoint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMarkerDrag(Lorg/osmdroid/views/overlay/Marker;)V
    .locals 0

    return-void
.end method

.method public onMarkerDragEnd(Lorg/osmdroid/views/overlay/Marker;)V
    .locals 2

    .line 62
    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/Marker;->getRelatedObject()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    instance-of v1, v0, Lorg/osmdroid/bonuspack/kml/KmlPoint;

    if-eqz v1, :cond_0

    .line 64
    check-cast v0, Lorg/osmdroid/bonuspack/kml/KmlPoint;

    .line 65
    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/Marker;->getPosition()Lorg/osmdroid/util/GeoPoint;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/osmdroid/bonuspack/kml/KmlPoint;->setPosition(Lorg/osmdroid/util/GeoPoint;)V

    :cond_0
    return-void
.end method

.method public onMarkerDragStart(Lorg/osmdroid/views/overlay/Marker;)V
    .locals 0

    return-void
.end method
