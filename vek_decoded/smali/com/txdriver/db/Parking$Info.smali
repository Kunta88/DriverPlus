.class public Lcom/txdriver/db/Parking$Info;
.super Ljava/lang/Object;
.source "Parking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/db/Parking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Info"
.end annotation


# instance fields
.field private count:I

.field private driverId:I

.field private driverParkings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/txdriver/db/DriverParking;",
            ">;"
        }
    .end annotation
.end field

.field private driversString:Ljava/lang/String;

.field private parked:Z

.field private position:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 152
    iput-object v0, p0, Lcom/txdriver/db/Parking$Info;->driversString:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 152
    iput-object v0, p0, Lcom/txdriver/db/Parking$Info;->driversString:Ljava/lang/String;

    .line 164
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/txdriver/App;

    .line 165
    invoke-virtual {p1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/txdriver/preferences/Preferences;->getLogin()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/txdriver/db/Parking$Info;->driverId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/txdriver/db/DriverParking;",
            ">;)V"
        }
    .end annotation

    .line 159
    invoke-direct {p0, p1}, Lcom/txdriver/db/Parking$Info;-><init>(Landroid/content/Context;)V

    .line 160
    invoke-virtual {p0, p2}, Lcom/txdriver/db/Parking$Info;->setDriverParkings(Ljava/util/List;)V

    return-void
.end method

.method private getDriverStr(Lcom/txdriver/db/DriverParking;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_3

    .line 169
    iget-object v0, p1, Lcom/txdriver/db/DriverParking;->driver:Lcom/txdriver/db/Driver;

    if-nez v0, :cond_0

    goto :goto_0

    .line 172
    :cond_0
    iget-object v0, p1, Lcom/txdriver/db/DriverParking;->driver:Lcom/txdriver/db/Driver;

    iget v0, v0, Lcom/txdriver/db/Driver;->driverId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-direct {p0, p1}, Lcom/txdriver/db/Parking$Info;->isParked(Lcom/txdriver/db/DriverParking;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<u>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</u>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    :cond_1
    iget-object p1, p1, Lcom/txdriver/db/DriverParking;->driver:Lcom/txdriver/db/Driver;

    iget-boolean p1, p1, Lcom/txdriver/db/Driver;->active:Z

    if-nez p1, :cond_2

    .line 177
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<font color=\'#B4B4B4\'>"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "</font>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0

    :cond_3
    :goto_0
    const-string p1, ""

    return-object p1
.end method

.method private isParked(Lcom/txdriver/db/DriverParking;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 183
    iget-object v1, p1, Lcom/txdriver/db/DriverParking;->driver:Lcom/txdriver/db/Driver;

    if-eqz v1, :cond_0

    .line 184
    iget-object p1, p1, Lcom/txdriver/db/DriverParking;->driver:Lcom/txdriver/db/Driver;

    iget p1, p1, Lcom/txdriver/db/Driver;->driverId:I

    iget v1, p0, Lcom/txdriver/db/Parking$Info;->driverId:I

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 192
    iget v0, p0, Lcom/txdriver/db/Parking$Info;->count:I

    return v0
.end method

.method public getDriverParkings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/txdriver/db/DriverParking;",
            ">;"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/txdriver/db/Parking$Info;->driverParkings:Ljava/util/List;

    return-object v0
.end method

.method public getDriversString()Ljava/lang/String;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/txdriver/db/Parking$Info;->driversString:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 245
    iget v0, p0, Lcom/txdriver/db/Parking$Info;->position:I

    return v0
.end method

.method public isParked()Z
    .locals 1

    .line 253
    iget-boolean v0, p0, Lcom/txdriver/db/Parking$Info;->parked:Z

    return v0
.end method

.method public setCount(I)V
    .locals 0

    .line 196
    iput p1, p0, Lcom/txdriver/db/Parking$Info;->count:I

    return-void
.end method

.method public setDriverParkings(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/txdriver/db/DriverParking;",
            ">;)V"
        }
    .end annotation

    .line 204
    iput-object p1, p0, Lcom/txdriver/db/Parking$Info;->driverParkings:Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 208
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 209
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 210
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/txdriver/db/DriverParking;

    .line 212
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    invoke-direct {p0, v2}, Lcom/txdriver/db/Parking$Info;->getDriverStr(Lcom/txdriver/db/DriverParking;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-direct {p0, v2}, Lcom/txdriver/db/Parking$Info;->isParked(Lcom/txdriver/db/DriverParking;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v5, 0x1

    .line 218
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 219
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/txdriver/db/DriverParking;

    const-string v7, ", "

    .line 220
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-direct {p0, v6}, Lcom/txdriver/db/Parking$Info;->getDriverStr(Lcom/txdriver/db/DriverParking;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-direct {p0, v6}, Lcom/txdriver/db/Parking$Info;->isParked(Lcom/txdriver/db/DriverParking;)Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v0, v5, 0x1

    const/4 v2, 0x1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 227
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/txdriver/db/Parking$Info;->setDriversString(Ljava/lang/String;)V

    move p1, v0

    move v0, v2

    goto :goto_2

    :cond_3
    const-string p1, ""

    .line 229
    invoke-virtual {p0, p1}, Lcom/txdriver/db/Parking$Info;->setDriversString(Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 231
    :goto_2
    invoke-virtual {p0, v0}, Lcom/txdriver/db/Parking$Info;->setParked(Z)V

    .line 232
    invoke-virtual {p0, p1}, Lcom/txdriver/db/Parking$Info;->setPosition(I)V

    .line 233
    invoke-virtual {p0, v1}, Lcom/txdriver/db/Parking$Info;->setCount(I)V

    return-void
.end method

.method public setDriversString(Ljava/lang/String;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/txdriver/db/Parking$Info;->driversString:Ljava/lang/String;

    return-void
.end method

.method public setParked(Z)V
    .locals 0

    .line 257
    iput-boolean p1, p0, Lcom/txdriver/db/Parking$Info;->parked:Z

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .line 249
    iput p1, p0, Lcom/txdriver/db/Parking$Info;->position:I

    return-void
.end method
