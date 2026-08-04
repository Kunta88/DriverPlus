.class public Lcom/txdriver/ui/activity/DriverInDangerActivity$FinishEvent;
.super Ljava/lang/Object;
.source "DriverInDangerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/ui/activity/DriverInDangerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FinishEvent"
.end annotation


# instance fields
.field private driverData:Lcom/txdriver/socket/data/DriverInDangerData;


# direct methods
.method public constructor <init>(Lcom/txdriver/socket/data/DriverInDangerData;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/txdriver/ui/activity/DriverInDangerActivity$FinishEvent;->driverData:Lcom/txdriver/socket/data/DriverInDangerData;

    return-void
.end method


# virtual methods
.method public getDriverData()Lcom/txdriver/socket/data/DriverInDangerData;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/txdriver/ui/activity/DriverInDangerActivity$FinishEvent;->driverData:Lcom/txdriver/socket/data/DriverInDangerData;

    return-object v0
.end method
