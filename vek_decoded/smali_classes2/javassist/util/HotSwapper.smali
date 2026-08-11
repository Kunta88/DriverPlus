.class public Ljavassist/util/HotSwapper;
.super Ljava/lang/Object;
.source "HotSwapper.java"


# static fields
.field private static final HOST_NAME:Ljava/lang/String; = "localhost"

.field private static final TRIGGER_NAME:Ljava/lang/String;


# instance fields
.field private jvm:Lcom/sun/jdi/VirtualMachine;

.field private newClassFiles:Ljava/util/Map;

.field private request:Lcom/sun/jdi/request/MethodEntryRequest;

.field private trigger:Ljavassist/util/Trigger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 85
    const-class v0, Ljavassist/util/Trigger;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljavassist/util/HotSwapper;->TRIGGER_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/jdi/connect/IllegalConnectorArgumentsException;
        }
    .end annotation

    .line 95
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavassist/util/HotSwapper;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/jdi/connect/IllegalConnectorArgumentsException;
        }
    .end annotation

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 106
    iput-object v0, p0, Ljavassist/util/HotSwapper;->jvm:Lcom/sun/jdi/VirtualMachine;

    .line 107
    iput-object v0, p0, Ljavassist/util/HotSwapper;->request:Lcom/sun/jdi/request/MethodEntryRequest;

    .line 108
    iput-object v0, p0, Ljavassist/util/HotSwapper;->newClassFiles:Ljava/util/Map;

    .line 109
    new-instance v0, Ljavassist/util/Trigger;

    invoke-direct {v0}, Ljavassist/util/Trigger;-><init>()V

    iput-object v0, p0, Ljavassist/util/HotSwapper;->trigger:Ljavassist/util/Trigger;

    const-string v0, "com.sun.jdi.SocketAttach"

    .line 110
    invoke-direct {p0, v0}, Ljavassist/util/HotSwapper;->findConnector(Ljava/lang/String;)Lcom/sun/jdi/connect/Connector;

    move-result-object v0

    check-cast v0, Lcom/sun/jdi/connect/AttachingConnector;

    .line 113
    invoke-interface {v0}, Lcom/sun/jdi/connect/AttachingConnector;->defaultArguments()Ljava/util/Map;

    move-result-object v1

    const-string v2, "hostname"

    .line 114
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/jdi/connect/Connector$Argument;

    const-string v3, "localhost"

    invoke-interface {v2, v3}, Lcom/sun/jdi/connect/Connector$Argument;->setValue(Ljava/lang/String;)V

    const-string v2, "port"

    .line 115
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/jdi/connect/Connector$Argument;

    invoke-interface {v2, p1}, Lcom/sun/jdi/connect/Connector$Argument;->setValue(Ljava/lang/String;)V

    .line 116
    invoke-interface {v0, v1}, Lcom/sun/jdi/connect/AttachingConnector;->attach(Ljava/util/Map;)Lcom/sun/jdi/VirtualMachine;

    move-result-object p1

    iput-object p1, p0, Ljavassist/util/HotSwapper;->jvm:Lcom/sun/jdi/VirtualMachine;

    .line 117
    invoke-interface {p1}, Lcom/sun/jdi/VirtualMachine;->eventRequestManager()Lcom/sun/jdi/request/EventRequestManager;

    move-result-object p1

    .line 118
    sget-object v0, Ljavassist/util/HotSwapper;->TRIGGER_NAME:Ljava/lang/String;

    invoke-static {p1, v0}, Ljavassist/util/HotSwapper;->methodEntryRequests(Lcom/sun/jdi/request/EventRequestManager;Ljava/lang/String;)Lcom/sun/jdi/request/MethodEntryRequest;

    move-result-object p1

    iput-object p1, p0, Ljavassist/util/HotSwapper;->request:Lcom/sun/jdi/request/MethodEntryRequest;

    return-void
.end method

.method private deleteEventRequest(Lcom/sun/jdi/request/EventRequestManager;Lcom/sun/jdi/request/MethodEntryRequest;)V
    .locals 0

    .line 147
    invoke-interface {p1, p2}, Lcom/sun/jdi/request/EventRequestManager;->deleteEventRequest(Lcom/sun/jdi/request/EventRequest;)V

    return-void
.end method

.method private findConnector(Ljava/lang/String;)Lcom/sun/jdi/connect/Connector;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    invoke-static {}, Lcom/sun/jdi/Bootstrap;->virtualMachineManager()Lcom/sun/jdi/VirtualMachineManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sun/jdi/VirtualMachineManager;->allConnectors()Ljava/util/List;

    move-result-object v0

    .line 123
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 124
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 125
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/jdi/connect/Connector;

    .line 126
    invoke-interface {v1}, Lcom/sun/jdi/connect/Connector;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 131
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :goto_0
    throw v0

    :goto_1
    goto :goto_0
.end method

.method private static methodEntryRequests(Lcom/sun/jdi/request/EventRequestManager;Ljava/lang/String;)Lcom/sun/jdi/request/MethodEntryRequest;
    .locals 0

    .line 137
    invoke-interface {p0}, Lcom/sun/jdi/request/EventRequestManager;->createMethodEntryRequest()Lcom/sun/jdi/request/MethodEntryRequest;

    move-result-object p0

    .line 138
    invoke-interface {p0, p1}, Lcom/sun/jdi/request/MethodEntryRequest;->addClassFilter(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 139
    invoke-interface {p0, p1}, Lcom/sun/jdi/request/MethodEntryRequest;->setSuspendPolicy(I)V

    return-object p0
.end method

.method private reload2(Ljava/util/Map;Ljava/lang/String;)V
    .locals 3

    .line 195
    iget-object v0, p0, Ljavassist/util/HotSwapper;->trigger:Ljavassist/util/Trigger;

    monitor-enter v0

    .line 196
    :try_start_0
    invoke-direct {p0}, Ljavassist/util/HotSwapper;->startDaemon()V

    .line 197
    iput-object p1, p0, Ljavassist/util/HotSwapper;->newClassFiles:Ljava/util/Map;

    .line 198
    iget-object p1, p0, Ljavassist/util/HotSwapper;->request:Lcom/sun/jdi/request/MethodEntryRequest;

    invoke-interface {p1}, Lcom/sun/jdi/request/MethodEntryRequest;->enable()V

    .line 199
    iget-object p1, p0, Ljavassist/util/HotSwapper;->trigger:Ljavassist/util/Trigger;

    invoke-virtual {p1}, Ljavassist/util/Trigger;->doSwap()V

    .line 200
    iget-object p1, p0, Ljavassist/util/HotSwapper;->request:Lcom/sun/jdi/request/MethodEntryRequest;

    invoke-interface {p1}, Lcom/sun/jdi/request/MethodEntryRequest;->disable()V

    .line 201
    iget-object p1, p0, Ljavassist/util/HotSwapper;->newClassFiles:Ljava/util/Map;

    if-nez p1, :cond_0

    .line 206
    monitor-exit v0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 203
    iput-object p1, p0, Ljavassist/util/HotSwapper;->newClassFiles:Ljava/util/Map;

    .line 204
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to reload: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 206
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private startDaemon()V
    .locals 1

    .line 210
    new-instance v0, Ljavassist/util/HotSwapper$1;

    invoke-direct {v0, p0}, Ljavassist/util/HotSwapper$1;-><init>(Ljavassist/util/HotSwapper;)V

    invoke-virtual {v0}, Ljavassist/util/HotSwapper$1;->start()V

    return-void
.end method

.method private toRefType(Ljava/lang/String;)Lcom/sun/jdi/ReferenceType;
    .locals 3

    .line 187
    iget-object v0, p0, Ljavassist/util/HotSwapper;->jvm:Lcom/sun/jdi/VirtualMachine;

    invoke-interface {v0, p1}, Lcom/sun/jdi/VirtualMachine;->classesByName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 188
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    .line 191
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/jdi/ReferenceType;

    return-object p1

    .line 189
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no such class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method hotswap()V
    .locals 2

    .line 249
    iget-object v0, p0, Ljavassist/util/HotSwapper;->newClassFiles:Ljava/util/Map;

    .line 250
    iget-object v1, p0, Ljavassist/util/HotSwapper;->jvm:Lcom/sun/jdi/VirtualMachine;

    invoke-interface {v1, v0}, Lcom/sun/jdi/VirtualMachine;->redefineClasses(Ljava/util/Map;)V

    const/4 v0, 0x0

    .line 251
    iput-object v0, p0, Ljavassist/util/HotSwapper;->newClassFiles:Ljava/util/Map;

    return-void
.end method

.method public reload(Ljava/lang/String;[B)V
    .locals 2

    .line 157
    invoke-direct {p0, p1}, Ljavassist/util/HotSwapper;->toRefType(Ljava/lang/String;)Lcom/sun/jdi/ReferenceType;

    move-result-object v0

    .line 158
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 159
    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    invoke-direct {p0, v1, p1}, Ljavassist/util/HotSwapper;->reload2(Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public reload(Ljava/util/Map;)V
    .locals 4

    .line 172
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 173
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 174
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 176
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 177
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 178
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 179
    invoke-direct {p0, v2}, Ljavassist/util/HotSwapper;->toRefType(Ljava/lang/String;)Lcom/sun/jdi/ReferenceType;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v2

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 183
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " etc."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Ljavassist/util/HotSwapper;->reload2(Ljava/util/Map;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method waitEvent()Lcom/sun/jdi/event/EventSet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 244
    iget-object v0, p0, Ljavassist/util/HotSwapper;->jvm:Lcom/sun/jdi/VirtualMachine;

    invoke-interface {v0}, Lcom/sun/jdi/VirtualMachine;->eventQueue()Lcom/sun/jdi/event/EventQueue;

    move-result-object v0

    .line 245
    invoke-interface {v0}, Lcom/sun/jdi/event/EventQueue;->remove()Lcom/sun/jdi/event/EventSet;

    move-result-object v0

    return-object v0
.end method
