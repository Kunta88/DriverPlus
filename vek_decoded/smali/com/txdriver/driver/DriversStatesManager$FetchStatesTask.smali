.class Lcom/txdriver/driver/DriversStatesManager$FetchStatesTask;
.super Ljava/util/TimerTask;
.source "DriversStatesManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/driver/DriversStatesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FetchStatesTask"
.end annotation


# static fields
.field private static final DRIVER_READY_STATE:I = 0x1


# instance fields
.field private app:Lcom/txdriver/App;


# direct methods
.method constructor <init>(Lcom/txdriver/App;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/txdriver/driver/DriversStatesManager$FetchStatesTask;->app:Lcom/txdriver/App;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 60
    new-instance v0, Lcom/txdriver/http/request/DriversStatesRequest;

    iget-object v1, p0, Lcom/txdriver/driver/DriversStatesManager$FetchStatesTask;->app:Lcom/txdriver/App;

    invoke-direct {v0, v1}, Lcom/txdriver/http/request/DriversStatesRequest;-><init>(Lcom/txdriver/App;)V

    .line 62
    :try_start_0
    invoke-virtual {v0}, Lcom/txdriver/http/request/DriversStatesRequest;->request()Ljava/util/List;

    move-result-object v0

    .line 63
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txdriver/json/DriverState;

    .line 64
    iget v2, v1, Lcom/txdriver/json/DriverState;->callSign:I

    iget v1, v1, Lcom/txdriver/json/DriverState;->state:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-static {v2, v3}, Lcom/txdriver/db/Driver;->updateStatus(IZ)V

    goto :goto_0

    .line 66
    :cond_1
    invoke-static {}, Lcom/txdriver/db/DriverParking;->notifyChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 68
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method
