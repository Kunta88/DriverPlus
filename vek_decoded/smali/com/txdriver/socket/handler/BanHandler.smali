.class public Lcom/txdriver/socket/handler/BanHandler;
.super Lcom/txdriver/socket/handler/AbstractPacketHandler;
.source "BanHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/socket/handler/AbstractPacketHandler<",
        "Lcom/txdriver/socket/data/BanData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/txdriver/App;)V
    .locals 1

    .line 16
    const-class v0, Lcom/txdriver/socket/data/BanData;

    invoke-direct {p0, p1, v0}, Lcom/txdriver/socket/handler/AbstractPacketHandler;-><init>(Lcom/txdriver/App;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public handle(Lcom/txdriver/socket/data/BanData;)V
    .locals 5

    .line 21
    iget-object v0, p0, Lcom/txdriver/socket/handler/BanHandler;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    iget-boolean v1, p1, Lcom/txdriver/socket/data/BanData;->banned:Z

    invoke-virtual {v0, v1}, Lcom/txdriver/preferences/Preferences;->setBanned(Z)V

    .line 22
    iget-boolean v0, p1, Lcom/txdriver/socket/data/BanData;->banned:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/txdriver/socket/handler/BanHandler;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {p1}, Lcom/txdriver/socket/data/BanData;->getDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/txdriver/preferences/Preferences;->setUnbanDate(Ljava/util/Date;)V

    .line 24
    iget-object v0, p0, Lcom/txdriver/socket/handler/BanHandler;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/txdriver/preferences/Preferences;->setTakeBreak(Z)V

    .line 26
    :cond_0
    iget-boolean v0, p1, Lcom/txdriver/socket/data/BanData;->banned:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const v0, 0x7f100286

    .line 27
    invoke-virtual {p0, v0}, Lcom/txdriver/socket/handler/BanHandler;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    .line 28
    invoke-static {}, Lcom/txdriver/utils/TimeUtils;->getTimeFormat()Ljava/text/DateFormat;

    move-result-object v4

    invoke-virtual {p1}, Lcom/txdriver/socket/data/BanData;->getDate()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v1

    .line 27
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const p1, 0x7f100289

    .line 29
    invoke-virtual {p0, p1}, Lcom/txdriver/socket/handler/BanHandler;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 30
    :goto_0
    iget-object v0, p0, Lcom/txdriver/socket/handler/BanHandler;->app:Lcom/txdriver/App;

    invoke-static {v0, p1}, Lcom/txdriver/utils/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 31
    new-instance p1, Lcom/txdriver/notification/SoundManager;

    iget-object v0, p0, Lcom/txdriver/socket/handler/BanHandler;->app:Lcom/txdriver/App;

    invoke-direct {p1, v0}, Lcom/txdriver/notification/SoundManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v2}, Lcom/txdriver/notification/SoundManager;->playNotificationSound(I)V

    return-void
.end method

.method public bridge synthetic handle(Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p1, Lcom/txdriver/socket/data/BanData;

    invoke-virtual {p0, p1}, Lcom/txdriver/socket/handler/BanHandler;->handle(Lcom/txdriver/socket/data/BanData;)V

    return-void
.end method
