.class public Lcom/txdriver/location/GPSLocation;
.super Landroid/location/Location;
.source "GPSLocation.java"


# instance fields
.field private time:J


# direct methods
.method public constructor <init>(Landroid/location/Location;)V
    .locals 2

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/txdriver/location/GPSLocation;-><init>(Landroid/location/Location;J)V

    return-void
.end method

.method public constructor <init>(Landroid/location/Location;J)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 19
    iput-wide p2, p0, Lcom/txdriver/location/GPSLocation;->time:J

    return-void
.end method


# virtual methods
.method public getTime()J
    .locals 2

    .line 24
    iget-wide v0, p0, Lcom/txdriver/location/GPSLocation;->time:J

    return-wide v0
.end method

.method public setTime(J)V
    .locals 0

    .line 29
    iput-wide p1, p0, Lcom/txdriver/location/GPSLocation;->time:J

    return-void
.end method
