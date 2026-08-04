.class public Lcom/txdriver/taximeter/Taximeter;
.super Ljava/lang/Object;
.source "Taximeter.java"

# interfaces
.implements Lcom/txdriver/location/LocationManager$LocationChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txdriver/taximeter/Taximeter$Status;
    }
.end annotation


# static fields
.field private static final MAX_DISTANCE:F = 300.0f

.field private static final MAX_SPEED:F = 150.0f

.field private static final MIN_ACCURACY:F = 100.0f

.field private static final MIN_DISTANCE:F = 30.0f

.field private static final MIN_STATEMENT_DISTANCE:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "Taximeter"


# instance fields
.field private app:Lcom/txdriver/App;

.field private calcStrategies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/txdriver/db/Tariff$Algorithm;",
            "Lcom/txdriver/taximeter/TaximeterCalcStrategy;",
            ">;"
        }
    .end annotation
.end field

.field private idle:Z

.field private lastLocation:Landroid/location/Location;

.field private lastUpdateTime:J

.field private transient locationBuffer:Lcom/txdriver/taximeter/LocationBuffer;

.field private transient locationManager:Lcom/txdriver/location/LocationManager;

.field private transient statement:Lcom/txdriver/taximeter/Statement;

.field private statements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/txdriver/taximeter/Statement;",
            ">;"
        }
    .end annotation
.end field

.field private status:I

.field private tariff:Lcom/txdriver/db/Tariff;

.field private tariffZone:Lcom/txdriver/db/TariffZone;

.field private transient taximeterUpdateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/txdriver/taximeter/TaximeterUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private transient timer:Ljava/util/Timer;

.field private totalFreeWaitTime:I

.field private transient updatesRequested:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/txdriver/App;Lcom/txdriver/location/LocationManager;)V
    .locals 3

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/txdriver/taximeter/Taximeter;->taximeterUpdateListeners:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/txdriver/taximeter/Taximeter;->statements:Ljava/util/List;

    .line 45
    new-instance v0, Lcom/txdriver/taximeter/LocationBuffer;

    invoke-direct {v0}, Lcom/txdriver/taximeter/LocationBuffer;-><init>()V

    iput-object v0, p0, Lcom/txdriver/taximeter/Taximeter;->locationBuffer:Lcom/txdriver/taximeter/LocationBuffer;

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lcom/txdriver/taximeter/Taximeter;->status:I

    .line 51
    iput v0, p0, Lcom/txdriver/taximeter/Taximeter;->totalFreeWaitTime:I

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/txdriver/taximeter/Taximeter;->calcStrategies:Ljava/util/Map;

    .line 56
    sget-object v1, Lcom/txdriver/db/Tariff$Algorithm;->TIME_AND_DISTANCE:Lcom/txdriver/db/Tariff$Algorithm;

    new-instance v2, Lcom/txdriver/taximeter/TimeAndDistanceCalcStrategy;

    invoke-direct {v2}, Lcom/txdriver/taximeter/TimeAndDistanceCalcStrategy;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lcom/txdriver/taximeter/Taximeter;->calcStrategies:Ljava/util/Map;

    sget-object v1, Lcom/txdriver/db/Tariff$Algorithm;->TIME_OR_DISTANCE:Lcom/txdriver/db/Tariff$Algorithm;

    new-instance v2, Lcom/txdriver/taximeter/TimeOrDistanceCalcStrategy;

    invoke-direct {v2}, Lcom/txdriver/taximeter/TimeOrDistanceCalcStrategy;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lcom/txdriver/taximeter/Taximeter;->calcStrategies:Ljava/util/Map;

    sget-object v1, Lcom/txdriver/db/Tariff$Algorithm;->DISTANCE_OR_MANUAL_TIME:Lcom/txdriver/db/Tariff$Algorithm;

    new-instance v2, Lcom/txdriver/taximeter/DistanceOrManualTimeCalcStrategy;

    invoke-direct {v2}, Lcom/txdriver/taximeter/DistanceOrManualTimeCalcStrategy;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iput-object p1, p0, Lcom/txdriver/taximeter/Taximeter;->app:Lcom/txdriver/App;

    .line 63
    iput-object p2, p0, Lcom/txdriver/taximeter/Taximeter;->locationManager:Lcom/txdriver/location/LocationManager;

    return-void
.end method

.method static synthetic access$000(Lcom/txdriver/taximeter/Taximeter;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/txdriver/taximeter/Taximeter;->onTaximeterUpdate()V

    return-void
.end method

.method static synthetic access$100(Lcom/txdriver/taximeter/Taximeter;D)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/txdriver/taximeter/Taximeter;->addTime(D)V

    return-void
.end method

.method static synthetic access$200(Lcom/txdriver/taximeter/Taximeter;)Lcom/txdriver/App;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/txdriver/taximeter/Taximeter;->app:Lcom/txdriver/App;

    return-object p0
.end method

.method static synthetic access$300(Lcom/txdriver/taximeter/Taximeter;)Ljava/util/List;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/txdriver/taximeter/Taximeter;->taximeterUpdateListeners:Ljava/util/List;

    return-object p0
.end method

.method private addTime(D)V
    .locals 8

    .line 119
    invoke-virtual {p0}, Lcom/txdriver/taximeter/Taximeter;->isPause()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/txdriver/taximeter/Taximeter;->isStatement()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/txdriver/taximeter/Taximeter;->statement:Lcom/txdriver/taximeter/Statement;

    invoke-virtual {v0, p1, p2}, Lcom/txdriver/taximeter/Statement;->addTime(D)V

    .line 121
    iget-object v0, p0, Lcom/txdriver/taximeter/Taximeter;->lastLocation:Landroid/location/Location;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/txdriver/taximeter/Taximeter;->tariff:Lcom/txdriver/db/Tariff;

    invoke-static {v0}, Lcom/txdriver/taximeter/Taximeter;->isTariff(Lcom/txdriver/db/Tariff;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/txdriver/taximeter/Taximeter;->calcStrategies:Ljava/util/Map;

    iget-object v1, p0, Lcom/txdriver/taximeter/Taximeter;->tariff:Lcom/txdriver/db/Tariff;

    iget-object v1, v1, Lcom/txdriver/db/Tariff;->algorithm:Lcom/txdriver/db/Tariff$Algorithm;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/txdriver/taximeter/TaximeterCalcStrategy;

    iget-object v3, p0, Lcom/txdriver/taximeter/Taximeter;->statement:Lcom/txdriver/taximeter/Statement;

    const-wide/16 v6, 0x0

    move-object v2, p0

    move-wide v4, p1

    invoke-interface/range {v1 .. v7}, Lcom/txdriver/taximeter/TaximeterCalcStrategy;->addTime(Lcom/txdriver/taximeter/Taximeter;Lcom/txdriver/taximeter/Statement;DD)V

    :cond_0
    return-void
.end method

.method private declared-synchronized addTime(DD)V
    .locals 8

    monitor-enter p0

    .line 445
    :try_start_0
    invoke-virtual {p0}, Lcom/txdriver/taximeter/Taximeter;->getTime()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-double v0, v0

    cmpl-double v2, p1, v0

    if-lez v2, :cond_0

    .line 446
    monitor-exit p0

    return-void

    .line 448
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/txdriver/taximeter/Taximeter;->isPause()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/txdriver/taximeter/Taximeter;->isStatement()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/txdriver/taximeter/Taximeter;->tariff:Lcom/txdriver/db/Tariff;

    invoke-static {v0}, Lcom/txdriver/taximeter/Taximeter;->isTariff(Lcom/txdriver/db/Tariff;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 449
    iget-object v0, p0, Lcom/txdriver/taximeter/Taximeter;->calcStrategies:Ljava/util/Map;

    iget-object v1, p0, Lcom/txdriver/taximeter/Taximeter;->tariff:Lcom/txdriver/db/Tariff;

    iget-object v1, v1, Lcom/txdriver/db/Tariff;->algorithm:Lcom/txdriver/db/Tariff$Algorithm;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/txdriver/taximeter/TaximeterCalcStrategy;

    iget-object v3, p0, Lcom/txdriver/taximeter/Taximeter;->statement:Lcom/txdriver/taximeter/Statement;

    move-object v2, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-interface/range {v1 .. v7}, Lcom/txdriver/taximeter/TaximeterCalcStrategy;->addTime(Lcom/txdriver/taximeter/Taximeter;Lcom/txdriver/taximeter/Statement;DD)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 451
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private isChangeStatementTariffZone()Z
    .locals 5

    .line 437
    iget-object v0, p0, Lcom/txdriver/taximeter/Taximeter;->statement:Lcom/txdriver/taximeter/Statement;

    invoke-virtual {v0}, Lcom/txdriver/taximeter/Statement;->getDistance()D

    move-result-wide v0

    const-wide/high16 v2, 0x4069000000000000L    # 200.0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isStatement()Z
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/txdriver/taximeter/Taximeter;->statement:Lcom/txdriver/taximeter/Statement;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isTariff(Lcom/txdriver/db/Tariff;)Z
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isTariffZoneChanged()Z
    .locals 2

    .line 441
    invoke-virtual {p0}, Lcom/txdriver/taximeter/Taximeter;->getTariffZone()Lcom/txdriver/db/TariffZone;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/txdriver/taximeter/Taximeter;->getTariffZone()Lcom/txdriver/db/TariffZone;

    move-result-object v0

    iget-object v1, p0, Lcom/txdriver/taximeter/Taximeter;->statement:Lcom/txdriver/taximeter/Statement;

    invoke-virtual {v1}, Lcom/txdriver/taximeter/Statement;->getTariffZone()Lcom/txdriver/db/TariffZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/txdriver/db/TariffZone;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/txdriver/taximeter/Taximeter;->getTariffZone()Lcom/txdriver/db/TariffZone;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/txdriver/taximeter/Taximeter;->statement:Lcom/txdriver/taximeter/Statement;

    invoke-virtual {v0}, Lcom/txdriver/taximeter/Statement;->getTariffZone()Lcom/txdriver/db/TariffZone;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private mergeStatements()V
    .locals 5

    .line 230
    iget-object v0, p0, Lcom/txdriver/taximeter/Taximeter;->statements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 231
    invoke-direct {p0}, Lcom/txdriver/taximeter/Taximeter;->isStatement()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    .line 234
    :cond_0
    iget-object v1, p0, Lcom/txdriver/taximeter/Taximeter;->statements:Ljava/util/List;

    add-int/lit8 v0, v0, -0x2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/txdriver/taximeter/Statement;

    .line 235
    invoke-virtual {v0}, Lcom/txdriver/taximeter/Statement;->getTariff()Lcom/txdriver/db/Tariff;

    move-result-object v1

    invoke-static {v1}, Lcom/txdriver/taximeter/Taximeter;->isTariff(Lcom/txdriver/db/Tariff;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/txdriver/taximeter/Statement;->getTariff()Lcom/txdriver/db/Tariff;

    move-result-object v1

    iget-object v2, p0, Lcom/txdriver/taximeter/Taximeter;->statement:Lcom/txdriver/taximeter/Statement;

    invoke-virtual {v2}, Lcom/txdriver/taximeter/Statement;->getTariff()Lcom/txdriver/db/Tariff;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/txdriver/db/Tariff;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 238
    :cond_1
    iget-object v1, p0, Lcom/txdriver/taximeter/Taximeter;->statement:Lcom/txdriver/taximeter/Statement;

    invoke-virtual {v1}, Lcom/txdriver/taximeter/Statement;->getTariff()Lcom/txdriver/db/Tariff;

    move-result-object v1

    invoke-static {v1}, Lcom/txdriver/taximeter/Taximeter;->isTariff(Lcom/txdriver/db/Tariff;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/txdriver/taximeter/Taximeter;->statement:Lcom/txdriver/taximeter/Statement;

    invoke-virtual {v1}, Lcom/txdriver/taximeter/Statement;->getTariff()Lcom/txdriver/db/Tariff;

    move-result-object v1

    invoke-virtual {v0}, Lcom/txdriver/taximeter/Statement;->getTariff()Lcom/txdriver/db/Tariff;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/txdriver/db/Tariff;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    .line 241
    :cond_2
    invoke-virtual {v0}, Lcom/txdriver/taximeter/Statement;->getTariffZone()Lcom/txdriver/db/TariffZone;

    move-result-object v1

    iget-object v2, p0, Lcom/txdriver/taximeter/Taximeter;->statement:Lcom/txdriver/taximeter/Statement;

    invoke-virtual {v2}, Lcom/txdriver/taximeter/Statement;->getTariffZone()Lcom/txdriver/db/TariffZone;

    move-result-object v2

    if-ne v1, v2, :cond_3

    return-void

    .line 244
    :cond_3
    invoke-virtual {v0}, Lcom/txdriver/taximeter/Statement;->getTariffZone()Lcom/txdriver/db/TariffZone;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/txdriver/taximeter/Statement;->getTariffZone()Lcom/txdriver/db/TariffZone;

    move-result-object v1

    iget-object v2, p0, Lcom/txdriver/taximeter/Taximeter;->statement:Lcom/txdriver/taximeter/Statement;

    invoke-virtual {v2}, Lcom/txdriver/taximeter/Statement;->getTariffZone()Lcom/txdriver/db/TariffZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/txdriver/db/TariffZone;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return-void

    .line 247
    :cond_4
    iget-object v1, p0, Lcom/txdriver/taximeter/Taximeter;->statement:Lcom/txdriver/taximeter/Statement;

    invoke-virtual {v1}, Lcom/txdriver/taximeter/Statement;->getTariffZone()Lcom/txdriver/db/TariffZone;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/txdriver/taximeter/Taximeter;->statement:Lcom/txdriver/taximeter/Statement;

    invoke-virtual {v1}, Lcom/txdriver/taximeter/Statement;->getTariffZone()Lcom/txdriver/db/TariffZone;

    move-result-object v1

    invoke-virtual {v0}, Lcom/txdriver/taximeter/Statement;->getTariffZone()Lcom/txdriver/db/TariffZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/txdriver/db/TariffZone;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return-void

    .line 250
    :cond_5
    invoke-virtual {v0}, Lcom/txdriver/taximeter/Statement;->getDistance()D

    move-result-wide v1

    iget-object v3, p0, Lcom/txdriver/taximeter/Taximeter;->statement:Lcom/txdriver/taximeter/Statement;

    invoke-virtual {v3}, Lcom/txdriver/taximeter/Statement;->getDistance()D

    move-result-wide v3

    add-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/txdriver/taximeter/Statement;->setDistance(D)V

    .line 251
    invoke-virtual {v0}, Lcom/txdriver/taximeter/Statement;->getTime()I

    move-result v1

    iget-object v2, p0, Lcom/txdriver/taximeter/Taximeter;->statement:Lcom/txdriver/taximeter/Statement;

    invoke-virtual {v2}, Lcom/txdriver/taximeter/Statement;->getTime()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/txdriver/taximeter/Statement;->setTime(I)V

    .line 252
    invoke-virtual {v0}, Lcom/txdriver/taximeter/Statement;->getPaidDistance()D

    move-result-wide v1

    iget-object v3, p0, Lcom/txdriver/taximeter/Taximeter;->statement:Lcom/txdriver/taximeter/Statement;

    invoke-virtual {v3}, Lcom/txdriver/taximeter/Statement;->getPaidDistance()D

    move-result-wide v3

    add-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/txdriver/taximeter/Statement;->setPaidDistance(D)V

    .line 253
    invoke-virtual {v0}, Lcom/txdriver/taximeter/Statement;->getPaidTime()I

    move-result v1

    iget-object v2, p0, Lcom/txdriver/taximeter/Taximeter;->statement:Lcom/txdriver/taximeter/Statement;

    invoke-virtual {v2}, Lcom/txdriver/taximeter/Statement;->getPaidTime()I

    move-result v2

    add-int/2addr v1, v2

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/txdriver/taximeter/Statement;->setPaidTime(D)V

    .line 254
    iget-object v1, p0, Lcom/txdriver/taximeter/Taximeter;->statements:Ljava/util/List;

    iget-object v2, p0, Lcom/txdriver/taximeter/Taximeter;->statement:Lcom/txdriver/taximeter/Statement;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 255
    iput-object v0, p0, Lcom/txdriver/taximeter/Taximeter;->statement:Lcom/txdriver/taximeter/Statement;

    :cond_6
    :goto_0
    return-void
.end method

.method private onDistanceChanged(FF)V
    .locals 8

    .line 426
    iget-object v0, p0, Lcom/txdriver/taximeter/Taximeter;->tariff:Lcom/txdriver/db/Tariff;

    invoke-static {v0}, Lcom/txdriver/taximeter/Taximeter;->isTariff(Lcom/txdriver/db/Tariff;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/txdriver/taximeter/Taximeter;->tariff:Lcom/txdriver/db/Tariff;

    invoke-virtual {v0}, Lcom/txdriver/db/Tariff;->getIdleSpeed()F

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x40a00000    # 5.0f

    .line 427
    :goto_0
    invoke-virtual {p0}, Lcom/txdriver/taximeter/Taximeter;->isPause()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/txdriver/taximeter/Taximeter;->tariff:Lcom/txdriver/db/Tariff;

    invoke-static {v1}, Lcom/txdriver/taximeter/Taximeter;->isTariff(Lcom/txdriver/db/Tariff;)Z

    move-result v1

    if-eqz v1, :cond_1

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 428
    invoke-virtual {p0, v0}, Lcom/txdriver/taximeter/Taximeter;->pause(Z)V

    .line 429
    invoke-virtual {p0, v0}, Lcom/txdriver/taximeter/Taximeter;->setIdle(Z)V

    .line 431
    :cond_1
    invoke-virtual {p0}, Lcom/txdriver/taximeter/Taximeter;->isPause()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/txdriver/taximeter/Taximeter;->isStatement()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/txdriver/taximeter/Taximeter;->tariff:Lcom/txdriver/db/Tariff;

    invoke-static {v0}, Lcom/txdriver/taximeter/Taximeter;->isTariff(Lcom/txdriver/db/Tariff;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 432
    iget-object v0, p0, Lcom/txdriver/taximeter/Taximeter;->calcStrategies:Ljava/util/Map;

    iget-object v1, p0, Lcom/txdriver/taximeter/Taximeter;->tariff:Lcom/txdriver/db/Tariff;

    iget-object v1, v1, Lcom/txdriver/db/Tariff;->algorithm:Lcom/txdriver/db/Tariff$Algorithm;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/txdriver/taximeter/TaximeterCalcStrategy;

    iget-object v3, p0, Lcom/txdriver/taximeter/Taximeter;->statement:Lcom/txdriver/taximeter/Statement;

    float-to-double v4, p1

    float-to-double v6, p2

    move-object v2, p0

    invoke-interface/range {v1 .. v7}, Lcom/txdriver/taximeter/TaximeterCalcStrategy;->addDistance(Lcom/txdriver/taximeter/Taximeter;Lcom/txdriver/taximeter/Statement;DD)V

    :cond_2
    return-void
.end method

.method private onTariffChanged(Lcom/txdriver/db/Tariff;)V
    .locals 1

    .line 202
    new-instance v0, Lcom/txdriver/taximeter/Taximeter$3;

    invoke-direct {v0, p0, p1}, Lcom/txdriver/taximeter/Taximeter$3;-><init>(Lcom/txdriver/taximeter/Taximeter;Lcom/txdriver/db/Tariff;)V

    invoke-static {v0}, Lcom/txdriver/utils/Utils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onTariffZoneChanged(Lcom/txdriver/db/TariffZone;)V
    .locals 1

    .line 213
    new-instance v0, Lcom/txdriver/taximeter/Taximeter$4;

    invoke-direct {v0, p0, p1}, Lcom/txdriver/taximeter/Taximeter$4;-><init>(Lcom/txdriver/taximeter/Taximeter;Lcom/txdriver/db/TariffZone;)V

    invoke-static {v0}, Lcom/txdriver/utils/Utils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onTaximeterIdleChanged(Z)V
    .locals 1

    .line 352
    new-instance v0, Lcom/txdriver/taximeter/Taximeter$6;

    invoke-direct {v0, p0, p1}, Lcom/txdriver/taximeter/Taximeter$6;-><init>(Lcom/txdriver/taximeter/Taximeter;Z)V

    invoke-static {v0}, Lcom/txdriver/utils/Utils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onTaximeterStatusChanged(I)V
    .locals 1

    .line 341
    new-instance v0, Lcom/txdriver/taximeter/Taximeter$5;

    invoke-direct {v0, p0, p1}, Lcom/txdriver/taximeter/Taximeter$5;-><init>(Lcom/txdriver/taximeter/Taximeter;I)V

    invoke-static {v0}, Lcom/txdriver/utils/Utils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onTaximeterUpdate()V
    .locals 1

    .line 108
    new-instance v0, Lcom/txdriver/taximeter/Taximeter$2;

    invoke-direct {v0, p0}, Lcom/txdriver/taximeter/Taximeter$2;-><init>(Lcom/txdriver/taximeter/Taximeter;)V

    invoke-static {v0}, Lcom/txdriver/utils/Utils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setEndTime()V
    .locals 1

    .line 267
    invoke-direct {p0}, Lcom/txdriver/taximeter/Taximeter;->isStatement()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/txdriver/taximeter/Taximeter;->statement:Lcom/txdriver/taximeter/Statement;

    invoke-virtual {v0}, Lcom/txdriver/taximeter/Statement;->end()V

    :cond_0
    return-void
.end method

.method private setStartTime()V
    .locals 1

    .line 273
    invoke-direct {p0}, Lcom/txdriver/taximeter/Taximeter;->isStatement()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/txdriver/taximeter/Taximeter;->statement:Lcom/txdriver/taximeter/Statement;

    invoke-virtual {v0}, Lcom/txdriver/taximeter/Statement;->start()V

    :cond_0
    return-void
.end method

.method private stopTimer()V
    .locals 1

    .line 549
    iget-object v0, p0, Lcom/txdriver/taximeter/Taximeter;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 550
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized addStatement(Lcom/txdriver/db/Order;)V
    .locals 2

    monitor-enter p0

    .line 412
    :try_start_0
    invoke-direct {p0}, Lcom/txdriver/taximeter/Taximeter;->setEndTime()V

    .line 413
    new-instance v0, Lcom/txdriver/taximeter/Statement;

    invoke-direct {v0}, Lcom/txdriver/taximeter/Statement;-><init>()V

    iput-object v0, p0, Lcom/txdriver/taximeter/Taximeter;->statement:Lcom/txdriver/taximeter/Statement;

    .line 414
    invoke-virtual {v0, p1}, Lcom/txdriver/taximeter/Statement;->setOrder(Lcom/txdriver/db/Order;)V

    .line 415
    iget-object p1, p0, Lcom/txdriver/taximeter/Taximeter;->statement:Lcom/txdriver/taximeter/Statement;

    invoke-virtual {p0}, Lcom/txdriver/taximeter/Taximeter;->getTariff()Lcom/txdriver/db/Tariff;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/txdriver/taximeter/Statement;->setTariff(Lcom/txdriver/db/Tariff;)V

    .line 416
    iget-object p1, p0, Lcom/txdriver/taximeter/Taximeter;->statement:Lcom/txdriver/taximeter/Statement;

    invoke-virtual {p0}, Lcom/txdriver/taximeter/Taximeter;->getTariffZone()Lcom/txdriver/db/TariffZone;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/txdriver/taximeter/Statement;->setTariffZone(Lcom/txdriver/db/TariffZone;)V

    .line 417
    iget-object p1, p0, Lcom/txdriver/taximeter/Taximeter;->statement:Lcom/txdriver/taximeter/Statement;

    invoke-virtual {p0}, Lcom/txdriver/taximeter/Taximeter;->getDistance()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/txdriver/taximeter/Statement;->setPreviousDistance(D)V

    .line 418
    iget-object p1, p0, Lcom/txdriver/taximeter/Taximeter;->statement:Lcom/txdriver/taximeter/Statement;

    invoke-virtual {p0}, Lcom/txdriver/taximeter/Taximeter;->getPaidDistance()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/txdriver/taximeter/Statement;->setPreviousPaidDistance(D)V

    .line 419
    iget-object p1, p0, Lcom/txdriver/taximeter/Taximeter;->statement:Lcom/txdriver/taximeter/Statement;

    invoke-virtual {p0}, Lcom/txdriver/taximeter/Taximeter;->getTime()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/txdriver/taximeter/Statement;->setPreviousTime(D)V

    .line 420
    iget-object p1, p0, Lcom/txdriver/taximeter/Taximeter;->statement:Lcom/txdriver/taximeter/Statement;

    invoke-virtual {p0}, Lcom/txdriver/taximeter/Taximeter;->getPaidTime()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/txdriver/taximeter/Statement;->setPreviousPaidTime(D)V

    .line 421
    iget-object p1, p0, Lcom/txdriver/taximeter/Taximeter;->statements:Ljava/util/List;

    iget-object v0, p0, Lcom/txdriver/taximeter/Taximeter;->statement:Lcom/txdriver/taximeter/Statement;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    invoke-direct {p0}, Lcom/txdriver/taximeter/Taximeter;->setStartTime()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public addTaximeterUpdateListener(Lcom/txdriver/taximeter/TaximeterUpdateListener;)V
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/txdriver/taximeter/Taximeter;->taximeterUpdateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getApp()Lcom/txdriver/App;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/txdriver/taximeter/Taximeter;->app:Lcom/txdriver/App;

    return-object v0
.end method

.method public getDistance()D
    .locals 5

    .line 455
    iget-object v0, p0, Lcom/txdriver/taximeter/Taximeter;->statements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 456
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 457
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/txdriver/taximeter/Statement;

    .line 458
    invoke-virtual {v3}, Lcom/txdriver/taximeter/Statement;->getDistance()D

    move-result-wide v3

    add-double/2addr v1, v3

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public getDistancePrice()D
    .locals 5

    .line 574
    iget-object v0, p0, Lcom/txdriver/taximeter/Taximeter;->statements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 575
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 576
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/txdriver/taximeter/Statement;

    .line 577
    invoke-virtual {v3}, Lcom/txdriver/taximeter/Statement;->getDistancePrice()D

    move-result-wide v3

    add-double/2addr v1, v3

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public getEndCharge()F
    .locals 2

    .line 513
    iget-object v0, p0, Lcom/txdriver/taximeter/Taximeter;->statements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/txdriver/taximeter/Taximeter;->statements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/txdriver/taximeter/Statement;

    invoke-virtual {v0}, Lcom/txdriver/taximeter/Statement;->getTariffZone()Lcom/txdriver/db/TariffZone;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 514
    iget v0, v0, Lcom/txdriver/db/TariffZone;->endCharge:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getEndTime()J
    .locals 2

    .line 590
    iget-object v0, p0, Lcom/txdriver/taximeter/Taximeter;->statements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/txdriver/taximeter/Taximeter;->statements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/txdriver/taximeter/Statement;

    invoke-virtual {v0}, Lcom/txdriver/taximeter/Statement;->getEndTime()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getLastUpdateTime()J
    .locals 5

    .line 146
    iget-wide v0, p0, Lcom/txdriver/taximeter/Taximeter;->lastUpdateTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method public getMinPrice()D
    .locals 2

    .line 465
    invoke-virtual {p0}, Lcom/txdriver/taximeter/Taximeter;->getTariff()Lcom/txdriver/db/Tariff;

    move-result-object v0

    invoke-static {v0}, Lcom/txdriver/taximeter/Taximeter;->isTariff(Lcom/txdriver/db/Tariff;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    invoke-virtual {p0}, Lcom/txdriver/taximeter/Taximeter;->getTariff()Lcom/txdriver/db/Tariff;

    move-result-object v0

    iget-wide v0, v0, Lcom/txdriver/db/Tariff;->minPrice:D

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getPaidDistance()D
    .locals 5

    .line 531
    iget-object v0, p0, Lcom/txdriver/taximeter/Taximeter;->statements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 532
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 533
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/txdriver/taximeter/Statement;

    .line 534
    invoke-virtual {v3}, Lcom/txdriver/taximeter/Statement;->getPaidDistance()D

    move-result-wide v3

    add-double/2addr v1, v3

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public getPaidTime()I
    .locals 3

    .line 521
    iget-object v0, p0, Lcom/txdriver/taximeter/Taximeter;->statements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 522
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 523
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/txdriver/taximeter/Statement;

    .line 524
    invoke-virtual {v2}, Lcom/txdriver/taximeter/Statement;->getPaidTime()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public getSecondsFromLastUpdate()D
    .locals 4

    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/txdriver/taximeter/Taximeter;->getLastUpdateTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/txdriver/utils/TimeUtils;->millisecondsToSecconds(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getSpeed()I
    .locals 2

    .line 555
    iget-object v0, p0, Lcom/txdriver/taximeter/Taximeter;->locationBuffer:Lcom/txdriver/taximeter/LocationBuffer;

    invoke-virtual {v0}, Lcom/txdriver/taximeter/LocationBuffer;->speed()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x40666666    # 3.6f

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getStartCharge()F
    .locals 2

    .line 504
    iget-object v0, p0, Lcom/txdriver/taximeter/Taximeter;->statements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/txdriver/taximeter/Taximeter;->statements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/txdriver/taximeter/Statement;

    invoke-virtual {v0}, Lcom/txdriver/taximeter/Statement;->getTariffZone()Lcom/txdriver/db/TariffZone;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 505
    iget v0, v0, Lcom/txdriver/db/TariffZone;->startCharge:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getStartTime()J
    .locals 2

    .line 583
    iget-object v0, p0, Lcom/txdriver/taximeter/Taximeter;->statements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/txdriver/taximeter/Taximeter;->statements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/txdriver/taximeter/Statement;

    invoke-virtual {v0}, Lcom/txdriver/taximeter/Statement;->getStartTime()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getStatements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/txdriver/taximeter/Statement;",
            ">;"
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lcom/txdriver/taximeter/Taximeter;->statements:Ljava/util/List;

    return-object v0
.end method

.method public getStatementsPrice(Lcom/txdriver/db/Order;)D
    .locals 5

    .line 492
    iget-object v0, p0, Lcom/txdriver/taximeter/Taximeter;->statements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 493
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 494
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/txdriver/taximeter/Statement;

    .line 495
    invoke-virtual {v3, p1}, Lcom/txdriver/taximeter/Statement;->setOrder(Lcom/txdriver/db/Order;)V

    .line 496
    invoke-virtual {v3}, Lcom/txdriver/taximeter/Statement;->getSum()D

    move-result-wide v3

    add-double/2addr v1, v3

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public getStatus()I
    .locals 1

    .line 162
    iget v0, p0, Lcom/txdriver/taximeter/Taximeter;->status:I

    return v0
.end method

.method public getTariff()Lcom/txdriver/db/Tariff;
    .locals 1

    .line 472
    iget-object v0, p0, Lcom/txdriver/taximeter/Taximeter;->tariff:Lcom/txdriver/db/Tariff;

    return-object v0
.end method

.method public getTariffZone()Lcom/txdriver/db/TariffZone;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/txdriver/taximeter/Taximeter;->tariffZone:Lcom/txdriver/db/TariffZone;

    return-object v0
.end method

.method public getTime()I
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/txdriver/taximeter/Taximeter;->statements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 138
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 139
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/txdriver/taximeter/Statement;

    .line 140
    invoke-virtual {v2}, Lcom/txdriver/taximeter/Statement;->getTime()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public getTimePrice()D
    .locals 5

    .line 564
    iget-object v0, p0, Lcom/txdriver/taximeter/Taximeter;->statements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 565
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 566
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/txdriver/taximeter/Statement;

    .line 567
    invoke-virtual {v3}, Lcom/txdriver/taximeter/Statement;->getTimePrice()D

    move-result-wide v3

    add-double/2addr v1, v3

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public getZonesCharge()F
    .locals 5

    .line 280
    iget-object v0, p0, Lcom/txdriver/taximeter/Taximeter;->statements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 281
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 282
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/txdriver/taximeter/Statement;

    float-to-double v3, v1

    .line 283
    invoke-virtual {v2}, Lcom/txdriver/taximeter/Statement;->getZoneCharge()D

    move-result-wide v1

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v3, v1

    double-to-float v1, v3

    goto :goto_0

    :cond_0
    return v1
.end method

.method public isIdle()Z
    .locals 1

    .line 171
    iget-boolean v0, p0, Lcom/txdriver/taximeter/Taximeter;->idle:Z

    return v0
.end method

.method public isLocation(Landroid/location/Location;)Z
    .locals 1

    .line 408
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result p1

    const/high16 v0, 0x42c80000    # 100.0f

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isPause()Z
    .locals 2

    .line 154
    invoke-virtual {p0}, Lcom/txdriver/taximeter/Taximeter;->getStatus()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 150
    invoke-virtual {p0}, Lcom/txdriver/taximeter/Taximeter;->isPause()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/txdriver/taximeter/Taximeter;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isStarted()Z
    .locals 2

    .line 158
    invoke-virtual {p0}, Lcom/txdriver/taximeter/Taximeter;->getStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 8

    .line 382
    new-instance v0, Lcom/txdriver/location/GPSLocation;

    invoke-direct {v0, p1}, Lcom/txdriver/location/GPSLocation;-><init>(Landroid/location/Location;)V

    .line 383
    invoke-virtual {p0, v0}, Lcom/txdriver/taximeter/Taximeter;->isLocation(Landroid/location/Location;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 384
    iget-object p1, p0, Lcom/txdriver/taximeter/Taximeter;->lastLocation:Landroid/location/Location;

    invoke-static {v0, p1}, Lcom/txdriver/location/LocationUtils;->getDistance(Landroid/location/Location;Landroid/location/Location;)F

    move-result p1

    .line 385
    iget-object v1, p0, Lcom/txdriver/taximeter/Taximeter;->lastLocation:Landroid/location/Location;

    invoke-static {v0, v1}, Lcom/txdriver/location/LocationUtils;->getTime(Landroid/location/Location;Landroid/location/Location;)F

    move-result v1

    .line 386
    iget-object v2, p0, Lcom/txdriver/taximeter/Taximeter;->lastLocation:Landroid/location/Location;

    invoke-static {v0, v2}, Lcom/txdriver/location/LocationUtils;->getSpeed(Landroid/location/Location;Landroid/location/Location;)F

    move-result v2

    const v3, 0x40666666    # 3.6f

    mul-float v2, v2, v3

    .line 387
    sget-object v4, Lcom/txdriver/taximeter/Taximeter;->TAG:Ljava/lang/String;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    const-string v6, "%s distance: %f time: %f speed: %f"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v4, 0x43160000    # 150.0f

    cmpl-float v4, v2, v4

    if-lez v4, :cond_0

    return-void

    .line 391
    :cond_0
    invoke-virtual {v0}, Landroid/location/Location;->hasSpeed()Z

    move-result v4

    if-nez v4, :cond_1

    div-float/2addr v2, v3

    .line 392
    invoke-virtual {v0, v2}, Landroid/location/Location;->setSpeed(F)V

    .line 394
    :cond_1
    invoke-virtual {v0}, Landroid/location/Location;->getSpeed()F

    move-result v2

    mul-float v2, v2, v3

    float-to-double v3, v1

    float-to-double v5, v2

    .line 395
    invoke-direct {p0, v3, v4, v5, v6}, Lcom/txdriver/taximeter/Taximeter;->addTime(DD)V

    .line 396
    iget-object v1, p0, Lcom/txdriver/taximeter/Taximeter;->lastLocation:Landroid/location/Location;

    if-eqz v1, :cond_2

    const/high16 v1, 0x41f00000    # 30.0f

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_3

    .line 397
    :cond_2
    iput-object v0, p0, Lcom/txdriver/taximeter/Taximeter;->lastLocation:Landroid/location/Location;

    .line 398
    invoke-direct {p0, p1, v2}, Lcom/txdriver/taximeter/Taximeter;->onDistanceChanged(FF)V

    .line 400
    :cond_3
    iget-object p1, p0, Lcom/txdriver/taximeter/Taximeter;->lastLocation:Landroid/location/Location;

    if-eqz p1, :cond_4

    .line 401
    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/location/Location;->setTime(J)V

    .line 403
    :cond_4
    iget-object p1, p0, Lcom/txdriver/taximeter/Taximeter;->locationBuffer:Lcom/txdriver/taximeter/LocationBuffer;

    invoke-virtual {p1, v0}, Lcom/txdriver/taximeter/LocationBuffer;->add(Landroid/location/Location;)V

    :cond_5
    return-void
.end method

.method public declared-synchronized pause(Z)V
    .locals 0

    monitor-enter p0

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    .line 331
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/txdriver/taximeter/Taximeter;->setStatus(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 333
    iput-object p1, p0, Lcom/txdriver/taximeter/Taximeter;->lastLocation:Landroid/location/Location;

    const/4 p1, 0x1

    .line 334
    invoke-virtual {p0, p1}, Lcom/txdriver/taximeter/Taximeter;->setStatus(I)V

    .line 336
    :goto_0
    invoke-direct {p0}, Lcom/txdriver/taximeter/Taximeter;->onTaximeterUpdate()V

    .line 337
    iget-object p1, p0, Lcom/txdriver/taximeter/Taximeter;->app:Lcom/txdriver/App;

    invoke-static {p1, p0}, Lcom/txdriver/taximeter/TaximeterHelper;->saveTaximeterState(Lcom/txdriver/App;Lcom/txdriver/taximeter/Taximeter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public removeTaximeterUpdateListener(Lcom/txdriver/taximeter/TaximeterUpdateListener;)V
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/txdriver/taximeter/Taximeter;->taximeterUpdateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public declared-synchronized reset()V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 363
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/txdriver/taximeter/Taximeter;->setStatus(I)V

    .line 364
    iget-object v1, p0, Lcom/txdriver/taximeter/Taximeter;->locationBuffer:Lcom/txdriver/taximeter/LocationBuffer;

    invoke-virtual {v1}, Lcom/txdriver/taximeter/LocationBuffer;->clear()V

    const/4 v1, 0x0

    .line 365
    iput-object v1, p0, Lcom/txdriver/taximeter/Taximeter;->lastLocation:Landroid/location/Location;

    const-wide/16 v2, 0x0

    .line 366
    iput-wide v2, p0, Lcom/txdriver/taximeter/Taximeter;->lastUpdateTime:J

    .line 367
    invoke-virtual {p0, v0}, Lcom/txdriver/taximeter/Taximeter;->setIdle(Z)V

    .line 368
    invoke-virtual {p0, v1, v1}, Lcom/txdriver/taximeter/Taximeter;->setTariffZone(Lcom/txdriver/db/TariffZone;Lcom/txdriver/db/Order;)V

    .line 369
    invoke-virtual {p0, v1, v1}, Lcom/txdriver/taximeter/Taximeter;->setTariff(Lcom/txdriver/db/Tariff;Lcom/txdriver/db/Order;)V

    .line 370
    invoke-virtual {p0}, Lcom/txdriver/taximeter/Taximeter;->resetStatements()V

    .line 371
    iget-object v0, p0, Lcom/txdriver/taximeter/Taximeter;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/txdriver/preferences/Preferences;->saveTaximeterState(Lcom/txdriver/taximeter/state/TaximeterState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resetStatements()V
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/txdriver/taximeter/Taximeter;->statements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 376
    invoke-virtual {p0, v0}, Lcom/txdriver/taximeter/Taximeter;->addStatement(Lcom/txdriver/db/Order;)V

    .line 377
    invoke-direct {p0}, Lcom/txdriver/taximeter/Taximeter;->onTaximeterUpdate()V

    return-void
.end method

.method public declared-synchronized restore()V
    .locals 1

    monitor-enter p0

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/txdriver/taximeter/Taximeter;->app:Lcom/txdriver/App;

    invoke-static {v0, p0}, Lcom/txdriver/taximeter/TaximeterHelper;->restoreTaximeterState(Lcom/txdriver/App;Lcom/txdriver/taximeter/Taximeter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCurrentStatement(Lcom/txdriver/taximeter/Statement;)V
    .locals 0

    monitor-enter p0

    .line 559
    :try_start_0
    iput-object p1, p0, Lcom/txdriver/taximeter/Taximeter;->statement:Lcom/txdriver/taximeter/Statement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 560
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setIdle(Z)V
    .locals 0

    .line 175
    iput-boolean p1, p0, Lcom/txdriver/taximeter/Taximeter;->idle:Z

    .line 176
    invoke-direct {p0, p1}, Lcom/txdriver/taximeter/Taximeter;->onTaximeterIdleChanged(Z)V

    return-void
.end method

.method public setLastUpdateTime()V
    .locals 2

    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/txdriver/taximeter/Taximeter;->lastUpdateTime:J

    return-void
.end method

.method public setStatements(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/txdriver/taximeter/Statement;",
            ">;)V"
        }
    .end annotation

    .line 293
    iput-object p1, p0, Lcom/txdriver/taximeter/Taximeter;->statements:Ljava/util/List;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 166
    iput p1, p0, Lcom/txdriver/taximeter/Taximeter;->status:I

    .line 167
    invoke-direct {p0, p1}, Lcom/txdriver/taximeter/Taximeter;->onTaximeterStatusChanged(I)V

    return-void
.end method

.method public setTariff(Lcom/txdriver/db/Tariff;Lcom/txdriver/db/Order;)V
    .locals 4

    .line 476
    iput-object p1, p0, Lcom/txdriver/taximeter/Taximeter;->tariff:Lcom/txdriver/db/Tariff;

    const/4 p1, 0x0

    .line 480
    invoke-virtual {p0, p1, p2}, Lcom/txdriver/taximeter/Taximeter;->setTariffZone(Lcom/txdriver/db/TariffZone;Lcom/txdriver/db/Order;)V

    .line 481
    invoke-virtual {p0}, Lcom/txdriver/taximeter/Taximeter;->getDistance()D

    move-result-wide v0

    const-wide/high16 v2, 0x4069000000000000L    # 200.0

    cmpl-double p1, v0, v2

    if-gtz p1, :cond_1

    invoke-direct {p0}, Lcom/txdriver/taximeter/Taximeter;->isStatement()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 484
    :cond_0
    iget-object p1, p0, Lcom/txdriver/taximeter/Taximeter;->statement:Lcom/txdriver/taximeter/Statement;

    iget-object p2, p0, Lcom/txdriver/taximeter/Taximeter;->tariff:Lcom/txdriver/db/Tariff;

    invoke-virtual {p1, p2}, Lcom/txdriver/taximeter/Statement;->setTariff(Lcom/txdriver/db/Tariff;)V

    goto :goto_1

    .line 482
    :cond_1
    :goto_0
    invoke-virtual {p0, p2}, Lcom/txdriver/taximeter/Taximeter;->addStatement(Lcom/txdriver/db/Order;)V

    .line 486
    :goto_1
    invoke-direct {p0}, Lcom/txdriver/taximeter/Taximeter;->mergeStatements()V

    .line 487
    const-class p1, Lcom/txdriver/db/Tariff;

    invoke-static {p1}, Lcom/activeandroid/Model;->notifyChanged(Ljava/lang/Class;)V

    return-void
.end method

.method public setTariffAndZone(Lcom/txdriver/db/Tariff;Lcom/txdriver/db/TariffZone;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/txdriver/taximeter/Taximeter;->tariff:Lcom/txdriver/db/Tariff;

    .line 225
    iput-object p2, p0, Lcom/txdriver/taximeter/Taximeter;->tariffZone:Lcom/txdriver/db/TariffZone;

    .line 226
    invoke-direct {p0}, Lcom/txdriver/taximeter/Taximeter;->mergeStatements()V

    return-void
.end method

.method public setTariffZone(Lcom/txdriver/db/TariffZone;Lcom/txdriver/db/Order;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/txdriver/taximeter/Taximeter;->tariffZone:Lcom/txdriver/db/TariffZone;

    .line 185
    iget-object p1, p0, Lcom/txdriver/taximeter/Taximeter;->tariff:Lcom/txdriver/db/Tariff;

    invoke-static {p1}, Lcom/txdriver/taximeter/Taximeter;->isTariff(Lcom/txdriver/db/Tariff;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/txdriver/taximeter/Taximeter;->isStatement()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/txdriver/taximeter/Taximeter;->isTariffZoneChanged()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 188
    :cond_0
    invoke-direct {p0}, Lcom/txdriver/taximeter/Taximeter;->isChangeStatementTariffZone()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 189
    iget-object p1, p0, Lcom/txdriver/taximeter/Taximeter;->statement:Lcom/txdriver/taximeter/Statement;

    invoke-virtual {p0}, Lcom/txdriver/taximeter/Taximeter;->getTariffZone()Lcom/txdriver/db/TariffZone;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/txdriver/taximeter/Statement;->setTariffZone(Lcom/txdriver/db/TariffZone;)V

    goto :goto_0

    .line 191
    :cond_1
    invoke-virtual {p0, p2}, Lcom/txdriver/taximeter/Taximeter;->addStatement(Lcom/txdriver/db/Order;)V

    .line 193
    :goto_0
    invoke-direct {p0}, Lcom/txdriver/taximeter/Taximeter;->mergeStatements()V

    .line 194
    iget-object p1, p0, Lcom/txdriver/taximeter/Taximeter;->tariffZone:Lcom/txdriver/db/TariffZone;

    if-eqz p1, :cond_2

    .line 195
    invoke-direct {p0, p1}, Lcom/txdriver/taximeter/Taximeter;->onTariffZoneChanged(Lcom/txdriver/db/TariffZone;)V

    goto :goto_1

    .line 197
    :cond_2
    iget-object p1, p0, Lcom/txdriver/taximeter/Taximeter;->tariff:Lcom/txdriver/db/Tariff;

    invoke-direct {p0, p1}, Lcom/txdriver/taximeter/Taximeter;->onTariffChanged(Lcom/txdriver/db/Tariff;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public declared-synchronized start(Lcom/txdriver/db/Tariff;Lcom/txdriver/db/Order;)V
    .locals 0

    monitor-enter p0

    .line 305
    :try_start_0
    invoke-virtual {p0}, Lcom/txdriver/taximeter/Taximeter;->stopAndReset()V

    .line 306
    invoke-virtual {p0, p1, p2}, Lcom/txdriver/taximeter/Taximeter;->setTariff(Lcom/txdriver/db/Tariff;Lcom/txdriver/db/Order;)V

    .line 307
    invoke-direct {p0}, Lcom/txdriver/taximeter/Taximeter;->isStatement()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 308
    invoke-virtual {p0}, Lcom/txdriver/taximeter/Taximeter;->startUpdates()V

    .line 309
    invoke-virtual {p0}, Lcom/txdriver/taximeter/Taximeter;->startTimer()V

    const/4 p1, 0x1

    .line 310
    invoke-virtual {p0, p1}, Lcom/txdriver/taximeter/Taximeter;->setStatus(I)V

    .line 311
    invoke-direct {p0}, Lcom/txdriver/taximeter/Taximeter;->setStartTime()V

    .line 312
    invoke-direct {p0}, Lcom/txdriver/taximeter/Taximeter;->onTaximeterUpdate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method startTimer()V
    .locals 6

    .line 84
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/txdriver/taximeter/Taximeter;->timer:Ljava/util/Timer;

    .line 85
    new-instance v1, Lcom/txdriver/taximeter/Taximeter$1;

    invoke-direct {v1, p0}, Lcom/txdriver/taximeter/Taximeter$1;-><init>(Lcom/txdriver/taximeter/Taximeter;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1f4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public startUpdates()V
    .locals 1

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lcom/txdriver/taximeter/Taximeter;->lastLocation:Landroid/location/Location;

    .line 72
    iget-boolean v0, p0, Lcom/txdriver/taximeter/Taximeter;->updatesRequested:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Lcom/txdriver/taximeter/Taximeter;->updatesRequested:Z

    .line 76
    iget-object v0, p0, Lcom/txdriver/taximeter/Taximeter;->locationManager:Lcom/txdriver/location/LocationManager;

    invoke-virtual {v0, p0}, Lcom/txdriver/location/LocationManager;->addLocationChangeListener(Lcom/txdriver/location/LocationManager$LocationChangeListener;)V

    return-void
.end method

.method public declared-synchronized stop()V
    .locals 1

    monitor-enter p0

    .line 317
    :try_start_0
    invoke-virtual {p0}, Lcom/txdriver/taximeter/Taximeter;->stopUpdates()V

    .line 318
    invoke-direct {p0}, Lcom/txdriver/taximeter/Taximeter;->stopTimer()V

    .line 319
    invoke-direct {p0}, Lcom/txdriver/taximeter/Taximeter;->setEndTime()V

    const/4 v0, 0x2

    .line 320
    invoke-virtual {p0, v0}, Lcom/txdriver/taximeter/Taximeter;->setStatus(I)V

    .line 321
    invoke-direct {p0}, Lcom/txdriver/taximeter/Taximeter;->onTaximeterUpdate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopAndReset()V
    .locals 0

    .line 325
    invoke-virtual {p0}, Lcom/txdriver/taximeter/Taximeter;->stop()V

    .line 326
    invoke-virtual {p0}, Lcom/txdriver/taximeter/Taximeter;->reset()V

    return-void
.end method

.method public stopUpdates()V
    .locals 1

    const/4 v0, 0x0

    .line 540
    iput-object v0, p0, Lcom/txdriver/taximeter/Taximeter;->lastLocation:Landroid/location/Location;

    .line 541
    iget-boolean v0, p0, Lcom/txdriver/taximeter/Taximeter;->updatesRequested:Z

    if-nez v0, :cond_0

    return-void

    .line 544
    :cond_0
    iget-object v0, p0, Lcom/txdriver/taximeter/Taximeter;->locationManager:Lcom/txdriver/location/LocationManager;

    invoke-virtual {v0, p0}, Lcom/txdriver/location/LocationManager;->removeLocationChangeListener(Lcom/txdriver/location/LocationManager$LocationChangeListener;)V

    const/4 v0, 0x0

    .line 545
    iput-boolean v0, p0, Lcom/txdriver/taximeter/Taximeter;->updatesRequested:Z

    return-void
.end method
