.class public interface abstract Lorg/osmdroid/bonuspack/kml/KmlFeature$Styler;
.super Ljava/lang/Object;
.source "KmlFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/bonuspack/kml/KmlFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Styler"
.end annotation


# virtual methods
.method public abstract onFeature(Lorg/osmdroid/views/overlay/Overlay;Lorg/osmdroid/bonuspack/kml/KmlFeature;)V
.end method

.method public abstract onLineString(Lorg/osmdroid/views/overlay/Polyline;Lorg/osmdroid/bonuspack/kml/KmlPlacemark;Lorg/osmdroid/bonuspack/kml/KmlLineString;)V
.end method

.method public abstract onPoint(Lorg/osmdroid/views/overlay/Marker;Lorg/osmdroid/bonuspack/kml/KmlPlacemark;Lorg/osmdroid/bonuspack/kml/KmlPoint;)V
.end method

.method public abstract onPolygon(Lorg/osmdroid/views/overlay/Polygon;Lorg/osmdroid/bonuspack/kml/KmlPlacemark;Lorg/osmdroid/bonuspack/kml/KmlPolygon;)V
.end method

.method public abstract onTrack(Lorg/osmdroid/views/overlay/Polyline;Lorg/osmdroid/bonuspack/kml/KmlPlacemark;Lorg/osmdroid/bonuspack/kml/KmlTrack;)V
.end method
