.class public interface abstract Lcom/txdriver/socket/data/OrderData;
.super Ljava/lang/Object;
.source "OrderData.java"


# virtual methods
.method public abstract getAddress()Ljava/lang/String;
.end method

.method public abstract getCarExtras()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCarType()I
.end method

.method public abstract getDate()Ljava/util/Date;
.end method

.method public abstract getDestinationAddress()Ljava/lang/String;
.end method

.method public abstract getDestinationParkingId()Ljava/lang/Integer;
.end method

.method public abstract getDiscountAmount()F
.end method

.method public abstract getDiscountPercent()F
.end method

.method public abstract getDistance()I
.end method

.method public abstract getDriverExtras()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLat()D
.end method

.method public abstract getLng()D
.end method

.method public abstract getMarkupAmount()F
.end method

.method public abstract getMarkupPercent()F
.end method

.method public abstract getNote()Ljava/lang/String;
.end method

.method public abstract getOrderId()I
.end method

.method public abstract getOrderType()I
.end method

.method public abstract getParkingId()I
.end method

.method public abstract getPaymentTypes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPrice()D
.end method

.method public abstract getSellerName()Ljava/lang/String;
.end method

.method public abstract getSource()Lcom/txdriver/db/Order$Source;
.end method

.method public abstract getTime()I
.end method

.method public abstract isAcceptable()Z
.end method
