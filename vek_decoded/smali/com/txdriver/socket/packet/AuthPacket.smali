.class public Lcom/txdriver/socket/packet/AuthPacket;
.super Lcom/txdriver/socket/packet/ClientPacket;
.source "AuthPacket.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/socket/packet/ClientPacket<",
        "Lcom/txdriver/socket/packet/AuthPacket;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/msgpack/annotation/Message;
.end annotation


# static fields
.field public static final RESULT_CODE_ALREARY_AUTHENTIFICATED:B = 0x3t

.field public static final RESULT_CODE_FAILED:B = 0x2t

.field public static final RESULT_CODE_OK:B = 0x1t


# instance fields
.field public appVersion:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x4
    .end annotation
.end field

.field public confVersion:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x2
    .end annotation
.end field

.field public devId:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x3
    .end annotation
.end field

.field public login:Ljava/lang/String;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x0
    .end annotation
.end field

.field public password:Ljava/lang/String;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x1
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/txdriver/App;)V
    .locals 2

    .line 29
    invoke-direct {p0}, Lcom/txdriver/socket/packet/ClientPacket;-><init>()V

    const/4 v0, 0x1

    .line 26
    iput v0, p0, Lcom/txdriver/socket/packet/AuthPacket;->appVersion:I

    .line 30
    invoke-virtual {p1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/txdriver/preferences/Preferences;->getLogin()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/txdriver/socket/packet/AuthPacket;->login:Ljava/lang/String;

    .line 32
    invoke-virtual {v0}, Lcom/txdriver/preferences/Preferences;->getPassword()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/txdriver/socket/packet/AuthPacket;->password:Ljava/lang/String;

    .line 33
    invoke-static {p1}, Lcom/txdriver/utils/Utils;->getDeviceId(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/txdriver/socket/packet/AuthPacket;->devId:I

    .line 34
    invoke-virtual {v0}, Lcom/txdriver/preferences/Preferences;->getVersion()I

    move-result v0

    iput v0, p0, Lcom/txdriver/socket/packet/AuthPacket;->confVersion:I

    .line 35
    invoke-static {p1}, Lcom/txdriver/utils/Utils;->getApplicationVersion(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/txdriver/socket/packet/AuthPacket;->appVersion:I

    return-void
.end method


# virtual methods
.method public getCode()B
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getData()Lcom/txdriver/socket/packet/AuthPacket;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic getData()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/txdriver/socket/packet/AuthPacket;->getData()Lcom/txdriver/socket/packet/AuthPacket;

    move-result-object v0

    return-object v0
.end method
