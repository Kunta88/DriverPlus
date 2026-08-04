.class public Lcom/txdriver/service/ServiceConnection;
.super Ljava/lang/Object;
.source "ServiceConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field private static final TAG:Ljava/lang/String; = "ServiceConnection"


# instance fields
.field private mBound:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/txdriver/service/ServiceConnection;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public bindService()V
    .locals 3

    .line 54
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/txdriver/service/ServiceConnection;->mContext:Landroid/content/Context;

    const-class v2, Lcom/txdriver/service/MainService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    iget-object v1, p0, Lcom/txdriver/service/ServiceConnection;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public isBound()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lcom/txdriver/service/ServiceConnection;->mBound:Z

    return v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 25
    sget-object p1, Lcom/txdriver/service/ServiceConnection;->TAG:Ljava/lang/String;

    const-string v0, "[onServiceConnected]"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    check-cast p2, Lcom/txdriver/service/MainService$LocalBinder;

    .line 27
    invoke-virtual {p2}, Lcom/txdriver/service/MainService$LocalBinder;->getService()Lcom/txdriver/service/MainService;

    const/4 p1, 0x1

    .line 28
    iput-boolean p1, p0, Lcom/txdriver/service/ServiceConnection;->mBound:Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 33
    sget-object p1, Lcom/txdriver/service/ServiceConnection;->TAG:Ljava/lang/String;

    const-string v0, "[onServiceDisconnected]"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Lcom/txdriver/service/ServiceConnection;->mBound:Z

    return-void
.end method

.method public setBound(Z)V
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/txdriver/service/ServiceConnection;->mBound:Z

    return-void
.end method

.method public unbindService()V
    .locals 2

    .line 38
    invoke-virtual {p0}, Lcom/txdriver/service/ServiceConnection;->isBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    sget-object v0, Lcom/txdriver/service/ServiceConnection;->TAG:Ljava/lang/String;

    const-string v1, "[unbindService]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object v0, p0, Lcom/txdriver/service/ServiceConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 41
    invoke-virtual {p0, v0}, Lcom/txdriver/service/ServiceConnection;->setBound(Z)V

    :cond_0
    return-void
.end method
