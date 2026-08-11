.class public Lcom/txdriver/taximeter/state/StatementState;
.super Ljava/lang/Object;
.source "StatementState.java"


# annotations
.annotation runtime Lorg/msgpack/annotation/Message;
.end annotation


# instance fields
.field public distance:D
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x0
    .end annotation
.end field

.field public endTime:J
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x4
    .end annotation
.end field

.field public paidDistance:D
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x7
    .end annotation
.end field

.field public paidTime:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x2
    .end annotation
.end field

.field public previousDistance:D
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x8
    .end annotation
.end field

.field public previousPaidDistance:D
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0xa
    .end annotation
.end field

.field public previousPaidTime:D
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0xb
    .end annotation
.end field

.field public previousTime:D
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x9
    .end annotation
.end field

.field public startTime:J
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x3
    .end annotation
.end field

.field public tariff:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x5
    .end annotation
.end field

.field public time:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x1
    .end annotation
.end field

.field public zone:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x6
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/txdriver/taximeter/Statement;)V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p1}, Lcom/txdriver/taximeter/Statement;->getDistance()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/txdriver/taximeter/state/StatementState;->distance:D

    .line 45
    invoke-virtual {p1}, Lcom/txdriver/taximeter/Statement;->getTime()I

    move-result v0

    iput v0, p0, Lcom/txdriver/taximeter/state/StatementState;->time:I

    .line 46
    iget-wide v0, p1, Lcom/txdriver/taximeter/Statement;->paidTime:D

    double-to-int v0, v0

    iput v0, p0, Lcom/txdriver/taximeter/state/StatementState;->paidTime:I

    .line 47
    invoke-virtual {p1}, Lcom/txdriver/taximeter/Statement;->getStartTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/txdriver/taximeter/state/StatementState;->startTime:J

    .line 48
    invoke-virtual {p1}, Lcom/txdriver/taximeter/Statement;->getEndTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/txdriver/taximeter/state/StatementState;->endTime:J

    .line 49
    invoke-virtual {p1}, Lcom/txdriver/taximeter/Statement;->getTariffZone()Lcom/txdriver/db/TariffZone;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/txdriver/taximeter/Statement;->getTariffZone()Lcom/txdriver/db/TariffZone;

    move-result-object v0

    iget-object v0, v0, Lcom/txdriver/db/TariffZone;->zone:Lcom/txdriver/db/Zone;

    iget v0, v0, Lcom/txdriver/db/Zone;->zoneId:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lcom/txdriver/taximeter/state/StatementState;->zone:I

    .line 50
    invoke-virtual {p1}, Lcom/txdriver/taximeter/Statement;->getTariff()Lcom/txdriver/db/Tariff;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/txdriver/taximeter/Statement;->getTariff()Lcom/txdriver/db/Tariff;

    move-result-object v0

    iget v1, v0, Lcom/txdriver/db/Tariff;->tariffId:I

    :cond_1
    iput v1, p0, Lcom/txdriver/taximeter/state/StatementState;->tariff:I

    .line 51
    iget-wide v0, p1, Lcom/txdriver/taximeter/Statement;->paidDistance:D

    iput-wide v0, p0, Lcom/txdriver/taximeter/state/StatementState;->paidDistance:D

    .line 52
    invoke-virtual {p1}, Lcom/txdriver/taximeter/Statement;->getPreviousDistance()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/txdriver/taximeter/state/StatementState;->previousDistance:D

    .line 53
    invoke-virtual {p1}, Lcom/txdriver/taximeter/Statement;->getPreviousPaidDistance()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/txdriver/taximeter/state/StatementState;->previousPaidDistance:D

    .line 54
    invoke-virtual {p1}, Lcom/txdriver/taximeter/Statement;->getPreviousTime()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/txdriver/taximeter/state/StatementState;->previousTime:D

    .line 55
    invoke-virtual {p1}, Lcom/txdriver/taximeter/Statement;->getPreviousPaidTime()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/txdriver/taximeter/state/StatementState;->previousPaidTime:D

    return-void
.end method


# virtual methods
.method public createStatement(Lcom/txdriver/db/Order;)Lcom/txdriver/taximeter/Statement;
    .locals 3

    .line 59
    new-instance v0, Lcom/txdriver/taximeter/Statement;

    invoke-direct {v0}, Lcom/txdriver/taximeter/Statement;-><init>()V

    .line 60
    iget v1, p0, Lcom/txdriver/taximeter/state/StatementState;->tariff:I

    invoke-static {v1}, Lcom/txdriver/db/Tariff;->getTariff(I)Lcom/txdriver/db/Tariff;

    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Lcom/txdriver/taximeter/Statement;->setTariff(Lcom/txdriver/db/Tariff;)V

    if-eqz v1, :cond_0

    .line 63
    iget v1, v1, Lcom/txdriver/db/Tariff;->tariffId:I

    iget v2, p0, Lcom/txdriver/taximeter/state/StatementState;->zone:I

    invoke-static {v1, v2}, Lcom/txdriver/db/TariffZone;->getTariffZone(II)Lcom/txdriver/db/TariffZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/txdriver/taximeter/Statement;->setTariffZone(Lcom/txdriver/db/TariffZone;)V

    .line 65
    :cond_0
    invoke-virtual {v0, p1}, Lcom/txdriver/taximeter/Statement;->setOrder(Lcom/txdriver/db/Order;)V

    .line 66
    iget-wide v1, p0, Lcom/txdriver/taximeter/state/StatementState;->distance:D

    invoke-virtual {v0, v1, v2}, Lcom/txdriver/taximeter/Statement;->setDistance(D)V

    .line 67
    iget p1, p0, Lcom/txdriver/taximeter/state/StatementState;->time:I

    invoke-virtual {v0, p1}, Lcom/txdriver/taximeter/Statement;->setTime(I)V

    .line 68
    iget p1, p0, Lcom/txdriver/taximeter/state/StatementState;->paidTime:I

    int-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/txdriver/taximeter/Statement;->setPaidTime(D)V

    .line 69
    iget-wide v1, p0, Lcom/txdriver/taximeter/state/StatementState;->startTime:J

    invoke-virtual {v0, v1, v2}, Lcom/txdriver/taximeter/Statement;->setStartTime(J)V

    .line 70
    iget-wide v1, p0, Lcom/txdriver/taximeter/state/StatementState;->endTime:J

    invoke-virtual {v0, v1, v2}, Lcom/txdriver/taximeter/Statement;->setEndTime(J)V

    .line 71
    iget-wide v1, p0, Lcom/txdriver/taximeter/state/StatementState;->paidDistance:D

    invoke-virtual {v0, v1, v2}, Lcom/txdriver/taximeter/Statement;->setPaidDistance(D)V

    .line 72
    iget-wide v1, p0, Lcom/txdriver/taximeter/state/StatementState;->previousDistance:D

    invoke-virtual {v0, v1, v2}, Lcom/txdriver/taximeter/Statement;->setPreviousDistance(D)V

    .line 73
    iget-wide v1, p0, Lcom/txdriver/taximeter/state/StatementState;->previousPaidDistance:D

    invoke-virtual {v0, v1, v2}, Lcom/txdriver/taximeter/Statement;->setPreviousPaidDistance(D)V

    .line 74
    iget-wide v1, p0, Lcom/txdriver/taximeter/state/StatementState;->previousPaidTime:D

    invoke-virtual {v0, v1, v2}, Lcom/txdriver/taximeter/Statement;->setPreviousPaidTime(D)V

    return-object v0
.end method
