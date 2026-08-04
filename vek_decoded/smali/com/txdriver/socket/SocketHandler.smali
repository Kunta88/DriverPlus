.class public Lcom/txdriver/socket/SocketHandler;
.super Ljava/lang/Object;
.source "SocketHandler.java"

# interfaces
.implements Lcom/txdriver/socket/SocketClientListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "SocketHandler"


# instance fields
.field private app:Lcom/txdriver/App;

.field private final eventBus:Lde/greenrobot/event/EventBus;

.field private executor:Ljava/util/concurrent/ExecutorService;

.field private final handlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Byte;",
            "Lcom/txdriver/socket/handler/AbstractPacketHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final idleHandler:Lcom/txdriver/socket/IdleHandler;

.field private final responseHandler:Lcom/txdriver/socket/ResponseHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/txdriver/App;)V
    .locals 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/txdriver/socket/SocketHandler;->handlers:Ljava/util/Map;

    .line 91
    iput-object p1, p0, Lcom/txdriver/socket/SocketHandler;->app:Lcom/txdriver/App;

    .line 92
    invoke-virtual {p1}, Lcom/txdriver/App;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    iput-object v0, p0, Lcom/txdriver/socket/SocketHandler;->eventBus:Lde/greenrobot/event/EventBus;

    .line 93
    new-instance v0, Lcom/txdriver/socket/IdleHandler;

    invoke-direct {v0, p1}, Lcom/txdriver/socket/IdleHandler;-><init>(Lcom/txdriver/App;)V

    iput-object v0, p0, Lcom/txdriver/socket/SocketHandler;->idleHandler:Lcom/txdriver/socket/IdleHandler;

    .line 94
    new-instance v0, Lcom/txdriver/socket/ResponseHandler;

    invoke-direct {v0, p1}, Lcom/txdriver/socket/ResponseHandler;-><init>(Lcom/txdriver/App;)V

    iput-object v0, p0, Lcom/txdriver/socket/SocketHandler;->responseHandler:Lcom/txdriver/socket/ResponseHandler;

    .line 95
    invoke-direct {p0, p1}, Lcom/txdriver/socket/SocketHandler;->registerPacketHandlers(Lcom/txdriver/App;)V

    return-void
.end method

.method private registerPacketHandlers(Lcom/txdriver/App;)V
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/txdriver/socket/SocketHandler;->handlers:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Lcom/txdriver/socket/handler/AuthHandler;

    invoke-direct {v2, p1}, Lcom/txdriver/socket/handler/AuthHandler;-><init>(Lcom/txdriver/App;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lcom/txdriver/socket/SocketHandler;->handlers:Ljava/util/Map;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Lcom/txdriver/socket/handler/AcceptOrderHandler;

    invoke-direct {v2, p1}, Lcom/txdriver/socket/handler/AcceptOrderHandler;-><init>(Lcom/txdriver/App;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lcom/txdriver/socket/SocketHandler;->handlers:Ljava/util/Map;

    const/16 v1, 0x22

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Lcom/txdriver/socket/handler/BanHandler;

    invoke-direct {v2, p1}, Lcom/txdriver/socket/handler/BanHandler;-><init>(Lcom/txdriver/App;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lcom/txdriver/socket/SocketHandler;->handlers:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Lcom/txdriver/socket/handler/BroadcastOrderHandler;

    invoke-direct {v2, p1}, Lcom/txdriver/socket/handler/BroadcastOrderHandler;-><init>(Lcom/txdriver/App;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Lcom/txdriver/socket/SocketHandler;->handlers:Ljava/util/Map;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Lcom/txdriver/socket/handler/CancelOrderHandler;

    invoke-direct {v2, p1}, Lcom/txdriver/socket/handler/CancelOrderHandler;-><init>(Lcom/txdriver/App;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Lcom/txdriver/socket/SocketHandler;->handlers:Ljava/util/Map;

    const/16 v1, 0x29

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Lcom/txdriver/socket/handler/CheckUpdateHandler;

    invoke-direct {v2, p1}, Lcom/txdriver/socket/handler/CheckUpdateHandler;-><init>(Lcom/txdriver/App;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v0, p0, Lcom/txdriver/socket/SocketHandler;->handlers:Ljava/util/Map;

    const/16 v1, 0x1d

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Lcom/txdriver/socket/handler/CleanBroadcastOrdersHandler;

    invoke-direct {v2, p1}, Lcom/txdriver/socket/handler/CleanBroadcastOrdersHandler;-><init>(Lcom/txdriver/App;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v0, p0, Lcom/txdriver/socket/SocketHandler;->handlers:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Lcom/txdriver/socket/handler/CloseSessionHandler;

    invoke-direct {v2, p1}, Lcom/txdriver/socket/handler/CloseSessionHandler;-><init>(Lcom/txdriver/App;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lcom/txdriver/socket/SocketHandler;->handlers:Ljava/util/Map;

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Lcom/txdriver/socket/handler/DeleteDriverFromAllParkingsHandler;

    invoke-direct {v2, p1}, Lcom/txdriver/socket/handler/DeleteDriverFromAllParkingsHandler;-><init>(Lcom/txdriver/App;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Lcom/txdriver/socket/SocketHandler;->handlers:Ljava/util/Map;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Lcom/txdriver/socket/handler/DeleteOrderHandler;

    invoke-direct {v2, p1}, Lcom/txdriver/socket/handler/DeleteOrderHandler;-><init>(Lcom/txdriver/App;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lcom/txdriver/socket/SocketHandler;->handlers:Ljava/util/Map;

    const/16 v1, 0x1f

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Lcom/txdriver/socket/handler/DisconnectHandler;

    invoke-direct {v2, p1}, Lcom/txdriver/socket/handler/DisconnectHandler;-><init>(Lcom/txdriver/App;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Lcom/txdriver/socket/SocketHandler;->handlers:Ljava/util/Map;

    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Lcom/txdriver/socket/handler/DriverInDangerHandler;

    invoke-direct {v2, p1}, Lcom/txdriver/socket/handler/DriverInDangerHandler;-><init>(Lcom/txdriver/App;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Lcom/txdriver/socket/SocketHandler;->handlers:Ljava/util/Map;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Lcom/txdriver/socket/handler/DriverLocationHandler;

    invoke-direct {v2, p1}, Lcom/txdriver/socket/handler/DriverLocationHandler;-><init>(Lcom/txdriver/App;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Lcom/txdriver/socket/SocketHandler;->handlers:Ljava/util/Map;

    const/16 v1, 0x28

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Lcom/txdriver/socket/handler/DriversStatesHandler;

    invoke-direct {v2, p1}, Lcom/txdriver/socket/handler/DriversStatesHandler;-><init>(Lcom/txdriver/App;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lcom/txdriver/socket/SocketHandler;->handlers:Ljava/util/Map;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Lcom/txdriver/socket/handler/LeaveAllParkingsHandler;

    invoke-direct {v2, p1}, Lcom/txdriver/socket/handler/LeaveAllParkingsHandler;-><init>(Lcom/txdriver/App;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lcom/txdriver/socket/SocketHandler;->handlers:Ljava/util/Map;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Lcom/txdriver/socket/handler/MessageHandler;

    invoke-direct {v2, p1}, Lcom/txdriver/socket/handler/MessageHandler;-><init>(Lcom/txdriver/App;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lcom/txdriver/socket/SocketHandler;->handlers:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Lcom/txdriver/socket/handler/OpenSessionHandler;

    invoke-direct {v2, p1}, Lcom/txdriver/socket/handler/OpenSessionHandler;-><init>(Lcom/txdriver/App;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lcom/txdriver/socket/SocketHandler;->handlers:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Lcom/txdriver/socket/handler/OrderHandler;

    invoke-direct {v2, p1}, Lcom/txdriver/socket/handler/OrderHandler;-><init>(Lcom/txdriver/App;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lcom/txdriver/socket/SocketHandler;->handlers:Ljava/util/Map;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Lcom/txdriver/socket/handler/OrderDetailsHandler;

    invoke-direct {v2, p1}, Lcom/txdriver/socket/handler/OrderDetailsHandler;-><init>(Lcom/txdriver/App;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Lcom/txdriver/socket/SocketHandler;->handlers:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Lcom/txdriver/socket/handler/ParkingsQueuesHandler;

    invoke-direct {v2, p1}, Lcom/txdriver/socket/handler/ParkingsQueuesHandler;-><init>(Lcom/txdriver/App;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Lcom/txdriver/socket/SocketHandler;->handlers:Ljava/util/Map;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Lcom/txdriver/socket/handler/QuestionHandler;

    invoke-direct {v2, p1}, Lcom/txdriver/socket/handler/QuestionHandler;-><init>(Lcom/txdriver/App;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Lcom/txdriver/socket/SocketHandler;->handlers:Ljava/util/Map;

    const/16 v1, 0x2e

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Lcom/txdriver/socket/handler/RatingHandler;

    invoke-direct {v2, p1}, Lcom/txdriver/socket/handler/RatingHandler;-><init>(Lcom/txdriver/App;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v0, p0, Lcom/txdriver/socket/SocketHandler;->handlers:Ljava/util/Map;

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Lcom/txdriver/socket/handler/ReservedOrdersHandler;

    invoke-direct {v2, p1}, Lcom/txdriver/socket/handler/ReservedOrdersHandler;-><init>(Lcom/txdriver/App;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v0, p0, Lcom/txdriver/socket/SocketHandler;->handlers:Ljava/util/Map;

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Lcom/txdriver/socket/handler/SessionOpenedHandler;

    invoke-direct {v2, p1}, Lcom/txdriver/socket/handler/SessionOpenedHandler;-><init>(Lcom/txdriver/App;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v0, p0, Lcom/txdriver/socket/SocketHandler;->handlers:Ljava/util/Map;

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Lcom/txdriver/socket/handler/CurrentOrderHandler;

    invoke-direct {v2, p1}, Lcom/txdriver/socket/handler/CurrentOrderHandler;-><init>(Lcom/txdriver/App;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lcom/txdriver/socket/SocketHandler;->handlers:Ljava/util/Map;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Lcom/txdriver/socket/handler/SosHandler;

    invoke-direct {v2, p1}, Lcom/txdriver/socket/handler/SosHandler;-><init>(Lcom/txdriver/App;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v0, p0, Lcom/txdriver/socket/SocketHandler;->handlers:Ljava/util/Map;

    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Lcom/txdriver/socket/handler/BreakHandler;

    invoke-direct {v2, p1}, Lcom/txdriver/socket/handler/BreakHandler;-><init>(Lcom/txdriver/App;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Lcom/txdriver/socket/SocketHandler;->handlers:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Lcom/txdriver/socket/handler/ConfigHandler;

    invoke-direct {v2, p1}, Lcom/txdriver/socket/handler/ConfigHandler;-><init>(Lcom/txdriver/App;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v0, p0, Lcom/txdriver/socket/SocketHandler;->handlers:Ljava/util/Map;

    const/16 v1, 0x46

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Lcom/txdriver/socket/handler/AddTariffHandler;

    invoke-direct {v2, p1}, Lcom/txdriver/socket/handler/AddTariffHandler;-><init>(Lcom/txdriver/App;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Lcom/txdriver/socket/SocketHandler;->handlers:Ljava/util/Map;

    const/16 v1, 0x47

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Lcom/txdriver/socket/handler/LoadAudioFileHandler;

    invoke-direct {v2, p1}, Lcom/txdriver/socket/handler/LoadAudioFileHandler;-><init>(Lcom/txdriver/App;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Lcom/txdriver/socket/SocketHandler;->handlers:Ljava/util/Map;

    const/16 v1, 0x48

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Lcom/txdriver/socket/handler/PlayAudioFilesHandler;

    invoke-direct {v2, p1}, Lcom/txdriver/socket/handler/PlayAudioFilesHandler;-><init>(Lcom/txdriver/App;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v0, p0, Lcom/txdriver/socket/SocketHandler;->handlers:Ljava/util/Map;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Lcom/txdriver/socket/handler/TakeParkingHandler;

    invoke-direct {v2, p1}, Lcom/txdriver/socket/handler/TakeParkingHandler;-><init>(Lcom/txdriver/App;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v0, p0, Lcom/txdriver/socket/SocketHandler;->handlers:Ljava/util/Map;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Lcom/txdriver/socket/handler/OrderStateHandler;

    invoke-direct {v2, p1}, Lcom/txdriver/socket/handler/OrderStateHandler;-><init>(Lcom/txdriver/App;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Lcom/txdriver/socket/SocketHandler;->handlers:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Lcom/txdriver/socket/handler/ParkingUpdateHandler;

    invoke-direct {v2, p1}, Lcom/txdriver/socket/handler/ParkingUpdateHandler;-><init>(Lcom/txdriver/App;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Lcom/txdriver/socket/SocketHandler;->handlers:Ljava/util/Map;

    const/16 v1, 0x2a

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Lcom/txdriver/socket/handler/TariffZoneHandler;

    invoke-direct {v2, p1}, Lcom/txdriver/socket/handler/TariffZoneHandler;-><init>(Lcom/txdriver/App;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v0, p0, Lcom/txdriver/socket/SocketHandler;->handlers:Ljava/util/Map;

    const/16 v1, 0x2f

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Lcom/txdriver/socket/handler/UpdateOrderHandler;

    invoke-direct {v2, p1}, Lcom/txdriver/socket/handler/UpdateOrderHandler;-><init>(Lcom/txdriver/App;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lcom/txdriver/socket/SocketHandler;->handlers:Ljava/util/Map;

    const/16 v1, 0x30

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Lcom/txdriver/socket/handler/RestoreOrderHandler;

    invoke-direct {v2, p1}, Lcom/txdriver/socket/handler/RestoreOrderHandler;-><init>(Lcom/txdriver/App;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v0, p0, Lcom/txdriver/socket/SocketHandler;->handlers:Ljava/util/Map;

    const/16 v1, 0x32

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Lcom/txdriver/socket/handler/IllegitimateOrderHandler;

    invoke-direct {v2, p1}, Lcom/txdriver/socket/handler/IllegitimateOrderHandler;-><init>(Lcom/txdriver/App;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v0, p0, Lcom/txdriver/socket/SocketHandler;->handlers:Ljava/util/Map;

    const/16 v1, 0x33

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Lcom/txdriver/socket/handler/UpUpOrderHandler;

    invoke-direct {v2, p1}, Lcom/txdriver/socket/handler/UpUpOrderHandler;-><init>(Lcom/txdriver/App;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v0, p0, Lcom/txdriver/socket/SocketHandler;->handlers:Ljava/util/Map;

    const/16 v1, 0x34

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Lcom/txdriver/socket/handler/AcceptExternalOrderHandler;

    invoke-direct {v2, p1}, Lcom/txdriver/socket/handler/AcceptExternalOrderHandler;-><init>(Lcom/txdriver/App;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v0, p0, Lcom/txdriver/socket/SocketHandler;->handlers:Ljava/util/Map;

    const/16 v1, 0x35

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Lcom/txdriver/socket/handler/UpUpOrderAcceptedHandler;

    invoke-direct {v2, p1}, Lcom/txdriver/socket/handler/UpUpOrderAcceptedHandler;-><init>(Lcom/txdriver/App;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Lcom/txdriver/socket/SocketHandler;->handlers:Ljava/util/Map;

    const/16 v1, 0x37

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Lcom/txdriver/socket/handler/DeleteOrderHandler;

    invoke-direct {v2, p1}, Lcom/txdriver/socket/handler/DeleteOrderHandler;-><init>(Lcom/txdriver/App;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v0, p0, Lcom/txdriver/socket/SocketHandler;->handlers:Ljava/util/Map;

    const/16 v1, 0x36

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Lcom/txdriver/socket/handler/UpUpTariffHandler;

    invoke-direct {v2, p1}, Lcom/txdriver/socket/handler/UpUpTariffHandler;-><init>(Lcom/txdriver/App;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v0, p0, Lcom/txdriver/socket/SocketHandler;->handlers:Ljava/util/Map;

    const/16 v1, 0x38

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Lcom/txdriver/socket/handler/RbtOrderHandler;

    invoke-direct {v2, p1}, Lcom/txdriver/socket/handler/RbtOrderHandler;-><init>(Lcom/txdriver/App;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v0, p0, Lcom/txdriver/socket/SocketHandler;->handlers:Ljava/util/Map;

    const/16 v1, 0x39

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Lcom/txdriver/socket/handler/AcceptExternalOrderHandler;

    invoke-direct {v2, p1}, Lcom/txdriver/socket/handler/AcceptExternalOrderHandler;-><init>(Lcom/txdriver/App;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v0, p0, Lcom/txdriver/socket/SocketHandler;->handlers:Ljava/util/Map;

    const/16 v1, 0x3a

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Lcom/txdriver/socket/handler/RbtOrderAcceptedHandler;

    invoke-direct {v2, p1}, Lcom/txdriver/socket/handler/RbtOrderAcceptedHandler;-><init>(Lcom/txdriver/App;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v0, p0, Lcom/txdriver/socket/SocketHandler;->handlers:Ljava/util/Map;

    const/16 v1, 0x3c

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Lcom/txdriver/socket/handler/DeleteOrderHandler;

    invoke-direct {v2, p1}, Lcom/txdriver/socket/handler/DeleteOrderHandler;-><init>(Lcom/txdriver/App;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v0, p0, Lcom/txdriver/socket/SocketHandler;->handlers:Ljava/util/Map;

    const/16 v1, 0x3b

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Lcom/txdriver/socket/handler/RbtTariffHandler;

    invoke-direct {v2, p1}, Lcom/txdriver/socket/handler/RbtTariffHandler;-><init>(Lcom/txdriver/App;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v0, p0, Lcom/txdriver/socket/SocketHandler;->handlers:Ljava/util/Map;

    const/16 v1, 0x24

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Lcom/txdriver/socket/handler/ExchangeOrderHandler;

    invoke-direct {v2, p1}, Lcom/txdriver/socket/handler/ExchangeOrderHandler;-><init>(Lcom/txdriver/App;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v0, p0, Lcom/txdriver/socket/SocketHandler;->handlers:Ljava/util/Map;

    const/16 v1, 0x26

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Lcom/txdriver/socket/handler/DeleteOrderHandler;

    invoke-direct {v2, p1}, Lcom/txdriver/socket/handler/DeleteOrderHandler;-><init>(Lcom/txdriver/App;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v0, p0, Lcom/txdriver/socket/SocketHandler;->handlers:Ljava/util/Map;

    const/16 v1, 0x25

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Lcom/txdriver/socket/handler/AcceptExchangeOrderHandler;

    invoke-direct {v2, p1}, Lcom/txdriver/socket/handler/AcceptExchangeOrderHandler;-><init>(Lcom/txdriver/App;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v0, p0, Lcom/txdriver/socket/SocketHandler;->handlers:Ljava/util/Map;

    const/16 v1, 0x27

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Lcom/txdriver/socket/handler/ExchangeTariffHandler;

    invoke-direct {v2, p1}, Lcom/txdriver/socket/handler/ExchangeTariffHandler;-><init>(Lcom/txdriver/App;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v0, p0, Lcom/txdriver/socket/SocketHandler;->handlers:Ljava/util/Map;

    const/16 v1, 0x3d

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Lcom/txdriver/socket/handler/TransferHandler;

    invoke-direct {v2, p1}, Lcom/txdriver/socket/handler/TransferHandler;-><init>(Lcom/txdriver/App;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v0, p0, Lcom/txdriver/socket/SocketHandler;->handlers:Ljava/util/Map;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Lcom/txdriver/socket/handler/PullTaximeterStateHandler;

    invoke-direct {v2, p1}, Lcom/txdriver/socket/handler/PullTaximeterStateHandler;-><init>(Lcom/txdriver/App;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v0, p0, Lcom/txdriver/socket/SocketHandler;->handlers:Ljava/util/Map;

    const/16 v1, 0x3e

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Lcom/txdriver/socket/handler/BankCardPaymentStateHandler;

    invoke-direct {v2, p1}, Lcom/txdriver/socket/handler/BankCardPaymentStateHandler;-><init>(Lcom/txdriver/App;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v0, p0, Lcom/txdriver/socket/SocketHandler;->handlers:Ljava/util/Map;

    const/16 v1, 0x3f

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Lcom/txdriver/socket/handler/QrCodesHandler;

    invoke-direct {v2, p1}, Lcom/txdriver/socket/handler/QrCodesHandler;-><init>(Lcom/txdriver/App;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v0, p0, Lcom/txdriver/socket/SocketHandler;->handlers:Ljava/util/Map;

    const/16 v1, 0x40

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Lcom/txdriver/socket/handler/NotificationHandler;

    invoke-direct {v2, p1}, Lcom/txdriver/socket/handler/NotificationHandler;-><init>(Lcom/txdriver/App;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v0, p0, Lcom/txdriver/socket/SocketHandler;->handlers:Ljava/util/Map;

    const/16 v1, 0x41

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Lcom/txdriver/socket/handler/MultiTaxiOrderHandler;

    invoke-direct {v2, p1}, Lcom/txdriver/socket/handler/MultiTaxiOrderHandler;-><init>(Lcom/txdriver/App;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v0, p0, Lcom/txdriver/socket/SocketHandler;->handlers:Ljava/util/Map;

    const/16 v1, 0x42

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Lcom/txdriver/socket/handler/AcceptExternalOrderHandler;

    invoke-direct {v2, p1}, Lcom/txdriver/socket/handler/AcceptExternalOrderHandler;-><init>(Lcom/txdriver/App;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v0, p0, Lcom/txdriver/socket/SocketHandler;->handlers:Ljava/util/Map;

    const/16 v1, 0x43

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Lcom/txdriver/socket/handler/MultiTaxiOrderAcceptedHandler;

    invoke-direct {v2, p1}, Lcom/txdriver/socket/handler/MultiTaxiOrderAcceptedHandler;-><init>(Lcom/txdriver/App;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v0, p0, Lcom/txdriver/socket/SocketHandler;->handlers:Ljava/util/Map;

    const/16 v1, 0x44

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Lcom/txdriver/socket/handler/DeleteOrderHandler;

    invoke-direct {v2, p1}, Lcom/txdriver/socket/handler/DeleteOrderHandler;-><init>(Lcom/txdriver/App;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v0, p0, Lcom/txdriver/socket/SocketHandler;->handlers:Ljava/util/Map;

    const/16 v1, 0x45

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Lcom/txdriver/socket/handler/MultiTaxiTariffHandler;

    invoke-direct {v2, p1}, Lcom/txdriver/socket/handler/MultiTaxiTariffHandler;-><init>(Lcom/txdriver/App;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object v0, p0, Lcom/txdriver/socket/SocketHandler;->handlers:Ljava/util/Map;

    const/16 v1, 0x4a

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Lcom/txdriver/socket/handler/CallToDispatcherHandler;

    invoke-direct {v2, p1}, Lcom/txdriver/socket/handler/CallToDispatcherHandler;-><init>(Lcom/txdriver/App;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v0, p0, Lcom/txdriver/socket/SocketHandler;->handlers:Ljava/util/Map;

    const/16 v1, 0x4c

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Lcom/txdriver/socket/handler/GetAvailableExtrasHandler;

    invoke-direct {v2, p1}, Lcom/txdriver/socket/handler/GetAvailableExtrasHandler;-><init>(Lcom/txdriver/App;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v0, p0, Lcom/txdriver/socket/SocketHandler;->handlers:Ljava/util/Map;

    const/16 v1, 0x4d

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Lcom/txdriver/socket/handler/DownloadAutoInformFileHandler;

    invoke-direct {v2, p1}, Lcom/txdriver/socket/handler/DownloadAutoInformFileHandler;-><init>(Lcom/txdriver/App;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onConnected(Lcom/txdriver/socket/Client;)V
    .locals 3

    .line 206
    sget-object v0, Lcom/txdriver/socket/SocketHandler;->TAG:Ljava/lang/String;

    const-string v1, "Connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/txdriver/socket/SocketHandler;->executor:Ljava/util/concurrent/ExecutorService;

    .line 208
    iget-object v0, p0, Lcom/txdriver/socket/SocketHandler;->idleHandler:Lcom/txdriver/socket/IdleHandler;

    invoke-virtual {v0, p1}, Lcom/txdriver/socket/IdleHandler;->onConnected(Lcom/txdriver/socket/Client;)V

    .line 209
    iget-object v0, p0, Lcom/txdriver/socket/SocketHandler;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/txdriver/socket/SocketEvents$ConnectionStateEvent;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/txdriver/socket/SocketEvents$ConnectionStateEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->postSticky(Ljava/lang/Object;)V

    .line 210
    new-instance v0, Lcom/txdriver/socket/packet/AuthPacket;

    iget-object v1, p0, Lcom/txdriver/socket/SocketHandler;->app:Lcom/txdriver/App;

    invoke-direct {v0, v1}, Lcom/txdriver/socket/packet/AuthPacket;-><init>(Lcom/txdriver/App;)V

    invoke-virtual {p1, v0}, Lcom/txdriver/socket/Client;->send(Lcom/txdriver/socket/Packet;)V

    .line 211
    invoke-static {}, Lcom/txdriver/db/Order;->deleteBroadcastOrders()V

    .line 212
    iget-object p1, p0, Lcom/txdriver/socket/SocketHandler;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/txdriver/preferences/Preferences;->reset()V

    return-void
.end method

.method public onConnecting(Lcom/txdriver/socket/Client;)V
    .locals 2

    .line 200
    sget-object p1, Lcom/txdriver/socket/SocketHandler;->TAG:Ljava/lang/String;

    const-string v0, "Connecting"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object p1, p0, Lcom/txdriver/socket/SocketHandler;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v0, Lcom/txdriver/socket/SocketEvents$ConnectionStateEvent;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/txdriver/socket/SocketEvents$ConnectionStateEvent;-><init>(I)V

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->postSticky(Ljava/lang/Object;)V

    return-void
.end method

.method public onDisconnected(Lcom/txdriver/socket/Client;)V
    .locals 2

    .line 217
    sget-object v0, Lcom/txdriver/socket/SocketHandler;->TAG:Ljava/lang/String;

    const-string v1, "Disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v0, p0, Lcom/txdriver/socket/SocketHandler;->executor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 219
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/txdriver/socket/SocketHandler;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    const-class v1, Lcom/txdriver/socket/SocketEvents$AuthEvent;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->removeStickyEvent(Ljava/lang/Class;)Ljava/lang/Object;

    .line 222
    iget-object v0, p0, Lcom/txdriver/socket/SocketHandler;->idleHandler:Lcom/txdriver/socket/IdleHandler;

    invoke-virtual {v0, p1}, Lcom/txdriver/socket/IdleHandler;->onDisconnected(Lcom/txdriver/socket/Client;)V

    .line 223
    iget-object p1, p0, Lcom/txdriver/socket/SocketHandler;->responseHandler:Lcom/txdriver/socket/ResponseHandler;

    invoke-virtual {p1}, Lcom/txdriver/socket/ResponseHandler;->onDisconnected()V

    .line 224
    iget-object p1, p0, Lcom/txdriver/socket/SocketHandler;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v0, Lcom/txdriver/socket/SocketEvents$ConnectionStateEvent;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/txdriver/socket/SocketEvents$ConnectionStateEvent;-><init>(I)V

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->postSticky(Ljava/lang/Object;)V

    return-void
.end method

.method public onExceptionCaught(Lcom/txdriver/socket/Client;Ljava/lang/Throwable;)V
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/txdriver/socket/SocketHandler;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/txdriver/socket/SocketEvents$ExceptionEvent;

    invoke-direct {v1, p2}, Lcom/txdriver/socket/SocketEvents$ExceptionEvent;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 230
    invoke-virtual {p1}, Lcom/txdriver/socket/Client;->reconn()V

    return-void
.end method

.method public onRead(Lcom/txdriver/socket/Client;Lcom/txdriver/socket/Packet;)V
    .locals 3

    .line 168
    check-cast p2, Lcom/txdriver/socket/packet/ServerPacket;

    .line 169
    sget-object p1, Lcom/txdriver/socket/SocketHandler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Read:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/txdriver/socket/packet/ServerPacket;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v0, p0, Lcom/txdriver/socket/SocketHandler;->responseHandler:Lcom/txdriver/socket/ResponseHandler;

    invoke-virtual {v0, p2}, Lcom/txdriver/socket/ResponseHandler;->onRead(Lcom/txdriver/socket/packet/ServerPacket;)V

    .line 171
    iget-object v0, p0, Lcom/txdriver/socket/SocketHandler;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/txdriver/socket/SocketEvents$PacketReadEvent;

    invoke-direct {v1, p2}, Lcom/txdriver/socket/SocketEvents$PacketReadEvent;-><init>(Lcom/txdriver/socket/Packet;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 172
    iget-object v0, p0, Lcom/txdriver/socket/SocketHandler;->handlers:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/txdriver/socket/packet/ServerPacket;->getCode()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/txdriver/socket/handler/AbstractPacketHandler;

    if-eqz v0, :cond_0

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Execute handler: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object p1, p0, Lcom/txdriver/socket/SocketHandler;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/txdriver/socket/SocketHandler$1;

    invoke-direct {v1, p0, v0, p2}, Lcom/txdriver/socket/SocketHandler$1;-><init>(Lcom/txdriver/socket/SocketHandler;Lcom/txdriver/socket/handler/AbstractPacketHandler;Lcom/txdriver/socket/packet/ServerPacket;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 181
    :cond_0
    invoke-virtual {p2}, Lcom/txdriver/socket/packet/ServerPacket;->getCode()B

    move-result p1

    const/16 v0, 0x7f

    if-eq p1, v0, :cond_1

    .line 182
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Packet handler not found. Packet Code:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/txdriver/socket/packet/ServerPacket;->getCode()B

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method public onRead(Lcom/txdriver/socket/Client;Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 188
    iget-object p2, p0, Lcom/txdriver/socket/SocketHandler;->idleHandler:Lcom/txdriver/socket/IdleHandler;

    invoke-virtual {p2, p1}, Lcom/txdriver/socket/IdleHandler;->onRead(Lcom/txdriver/socket/Client;)V

    return-void
.end method

.method public onWrite(Lcom/txdriver/socket/Client;Lcom/txdriver/socket/Packet;)V
    .locals 3

    .line 193
    sget-object v0, Lcom/txdriver/socket/SocketHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Write:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v0, p0, Lcom/txdriver/socket/SocketHandler;->idleHandler:Lcom/txdriver/socket/IdleHandler;

    invoke-virtual {v0, p1}, Lcom/txdriver/socket/IdleHandler;->onWrite(Lcom/txdriver/socket/Client;)V

    .line 195
    iget-object p1, p0, Lcom/txdriver/socket/SocketHandler;->responseHandler:Lcom/txdriver/socket/ResponseHandler;

    check-cast p2, Lcom/txdriver/socket/packet/ClientPacket;

    invoke-virtual {p1, p2}, Lcom/txdriver/socket/ResponseHandler;->onWrite(Lcom/txdriver/socket/packet/ClientPacket;)V

    return-void
.end method
