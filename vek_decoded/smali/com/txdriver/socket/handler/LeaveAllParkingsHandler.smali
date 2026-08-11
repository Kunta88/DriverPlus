.class public Lcom/txdriver/socket/handler/LeaveAllParkingsHandler;
.super Lcom/txdriver/socket/handler/AbstractPacketHandler;
.source "LeaveAllParkingsHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/socket/handler/AbstractPacketHandler<",
        "Ljava/lang/Byte;",
        ">;"
    }
.end annotation


# static fields
.field private static final RESULT_ERROR:B = 0x2t

.field private static final RESULT_OK:B = 0x1t


# direct methods
.method public constructor <init>(Lcom/txdriver/App;)V
    .locals 1

    .line 20
    const-class v0, Ljava/lang/Byte;

    invoke-direct {p0, p1, v0}, Lcom/txdriver/socket/handler/AbstractPacketHandler;-><init>(Lcom/txdriver/App;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public handle(Ljava/lang/Byte;)V
    .locals 1

    .line 25
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    iget-object p1, p0, Lcom/txdriver/socket/handler/LeaveAllParkingsHandler;->app:Lcom/txdriver/App;

    const v0, 0x7f100264

    invoke-virtual {p0, v0}, Lcom/txdriver/socket/handler/LeaveAllParkingsHandler;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/txdriver/utils/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 27
    :cond_1
    iget-object p1, p0, Lcom/txdriver/socket/handler/LeaveAllParkingsHandler;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/txdriver/preferences/Preferences;->getLogin()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/txdriver/db/DriverParking;->deleteDriver(I)V

    :goto_0
    return-void
.end method

.method public bridge synthetic handle(Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p0, p1}, Lcom/txdriver/socket/handler/LeaveAllParkingsHandler;->handle(Ljava/lang/Byte;)V

    return-void
.end method
