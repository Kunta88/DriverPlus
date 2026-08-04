.class public interface abstract Lcom/txdriver/taximeter/TaximeterUpdateListener;
.super Ljava/lang/Object;
.source "TaximeterUpdateListener.java"


# virtual methods
.method public abstract onIdleChanged(Z)V
.end method

.method public abstract onStatusChanged(I)V
.end method

.method public abstract onTariffChanged(Lcom/txdriver/db/Tariff;)V
.end method

.method public abstract onTariffZoneChanged(Lcom/txdriver/db/TariffZone;)V
.end method

.method public abstract onTaximeterUpdate(Lcom/txdriver/taximeter/Taximeter;)V
.end method
