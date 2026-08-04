.class public Lorg/msgpack/template/builder/beans/EventSetDescriptor;
.super Lorg/msgpack/template/builder/beans/FeatureDescriptor;
.source "EventSetDescriptor.java"


# instance fields
.field private addListenerMethod:Ljava/lang/reflect/Method;

.field private getListenerMethod:Ljava/lang/reflect/Method;

.field private inDefaultEventSet:Z

.field private listenerMethodDescriptors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/msgpack/template/builder/beans/MethodDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private listenerMethods:[Ljava/lang/reflect/Method;

.field private listenerType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private removeListenerMethod:Ljava/lang/reflect/Method;

.field private unicast:Z


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/msgpack/template/builder/beans/IntrospectionException;
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Lorg/msgpack/template/builder/beans/FeatureDescriptor;-><init>()V

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->inDefaultEventSet:Z

    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 47
    invoke-virtual {p0, p2}, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->setName(Ljava/lang/String;)V

    .line 48
    iput-object p3, p0, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->listenerType:Ljava/lang/Class;

    .line 50
    invoke-direct {p0, p4}, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->findListenerMethodByName(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p3

    .line 51
    invoke-static {p2, p3}, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->checkEventType(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 52
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->listenerMethodDescriptors:Ljava/util/ArrayList;

    .line 53
    new-instance p4, Lorg/msgpack/template/builder/beans/MethodDescriptor;

    invoke-direct {p4, p3}, Lorg/msgpack/template/builder/beans/MethodDescriptor;-><init>(Ljava/lang/reflect/Method;)V

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "add"

    const-string p3, ""

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->findMethodByPrefix(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p2

    iput-object p2, p0, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->addListenerMethod:Ljava/lang/reflect/Method;

    const-string p2, "remove"

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->findMethodByPrefix(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p2

    iput-object p2, p0, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->removeListenerMethod:Ljava/lang/reflect/Method;

    .line 57
    iget-object p3, p0, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->addListenerMethod:Ljava/lang/reflect/Method;

    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    const-string p2, "get"

    const-string p3, "s"

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->findMethodByPrefix(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->getListenerMethod:Ljava/lang/reflect/Method;

    .line 62
    iget-object p1, p0, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->addListenerMethod:Ljava/lang/reflect/Method;

    invoke-static {p1}, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->isUnicastByDefault(Ljava/lang/reflect/Method;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->unicast:Z

    return-void

    .line 58
    :cond_0
    new-instance p1, Lorg/msgpack/template/builder/beans/IntrospectionException;

    const-string p2, "custom.beans.38"

    invoke-static {p2}, Lorg/apache/harmony/beans/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/msgpack/template/builder/beans/IntrospectionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/msgpack/template/builder/beans/IntrospectionException;
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 69
    invoke-direct/range {v0 .. v7}, Lorg/msgpack/template/builder/beans/EventSetDescriptor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/msgpack/template/builder/beans/IntrospectionException;
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Lorg/msgpack/template/builder/beans/FeatureDescriptor;-><init>()V

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->inDefaultEventSet:Z

    .line 79
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 82
    invoke-virtual {p0, p2}, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->setName(Ljava/lang/String;)V

    .line 83
    iput-object p3, p0, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->listenerType:Ljava/lang/Class;

    .line 85
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->listenerMethodDescriptors:Ljava/util/ArrayList;

    .line 86
    array-length p2, p4

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_0

    aget-object v0, p4, p3

    .line 87
    invoke-direct {p0, v0}, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->findListenerMethodByName(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->listenerMethodDescriptors:Ljava/util/ArrayList;

    new-instance v2, Lorg/msgpack/template/builder/beans/MethodDescriptor;

    invoke-direct {v2, v0}, Lorg/msgpack/template/builder/beans/MethodDescriptor;-><init>(Ljava/lang/reflect/Method;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    if-eqz p5, :cond_1

    .line 94
    invoke-direct {p0, p1, p5}, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->findAddRemoveListenerMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p2

    iput-object p2, p0, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->addListenerMethod:Ljava/lang/reflect/Method;

    :cond_1
    if-eqz p6, :cond_2

    .line 98
    invoke-direct {p0, p1, p6}, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->findAddRemoveListenerMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p2

    iput-object p2, p0, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->removeListenerMethod:Ljava/lang/reflect/Method;

    :cond_2
    if-eqz p7, :cond_3

    .line 102
    invoke-direct {p0, p1, p7}, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->findGetListenerMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->getListenerMethod:Ljava/lang/reflect/Method;

    .line 105
    :cond_3
    iget-object p1, p0, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->addListenerMethod:Ljava/lang/reflect/Method;

    invoke-static {p1}, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->isUnicastByDefault(Ljava/lang/reflect/Method;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->unicast:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/msgpack/template/builder/beans/IntrospectionException;
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 134
    invoke-direct/range {v0 .. v6}, Lorg/msgpack/template/builder/beans/EventSetDescriptor;-><init>(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/msgpack/template/builder/beans/IntrospectionException;
        }
    .end annotation

    .line 141
    invoke-direct {p0}, Lorg/msgpack/template/builder/beans/FeatureDescriptor;-><init>()V

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->inDefaultEventSet:Z

    .line 143
    invoke-virtual {p0, p1}, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->setName(Ljava/lang/String;)V

    .line 144
    iput-object p2, p0, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->listenerType:Ljava/lang/Class;

    .line 146
    iput-object p3, p0, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->listenerMethods:[Ljava/lang/reflect/Method;

    if-eqz p3, :cond_0

    .line 148
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->listenerMethodDescriptors:Ljava/util/ArrayList;

    .line 150
    array-length p1, p3

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    aget-object v0, p3, p2

    .line 154
    iget-object v1, p0, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->listenerMethodDescriptors:Ljava/util/ArrayList;

    new-instance v2, Lorg/msgpack/template/builder/beans/MethodDescriptor;

    invoke-direct {v2, v0}, Lorg/msgpack/template/builder/beans/MethodDescriptor;-><init>(Ljava/lang/reflect/Method;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 160
    :cond_0
    iput-object p4, p0, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->addListenerMethod:Ljava/lang/reflect/Method;

    .line 161
    iput-object p5, p0, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->removeListenerMethod:Ljava/lang/reflect/Method;

    .line 162
    iput-object p6, p0, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->getListenerMethod:Ljava/lang/reflect/Method;

    .line 163
    invoke-static {p4}, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->isUnicastByDefault(Ljava/lang/reflect/Method;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->unicast:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;[Lorg/msgpack/template/builder/beans/MethodDescriptor;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;[",
            "Lorg/msgpack/template/builder/beans/MethodDescriptor;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/msgpack/template/builder/beans/IntrospectionException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    .line 171
    invoke-direct/range {v0 .. v6}, Lorg/msgpack/template/builder/beans/EventSetDescriptor;-><init>(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    if-eqz p3, :cond_0

    .line 175
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->listenerMethodDescriptors:Ljava/util/ArrayList;

    .line 177
    array-length p1, p3

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    aget-object p4, p3, p2

    .line 178
    iget-object p5, p0, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->listenerMethodDescriptors:Ljava/util/ArrayList;

    invoke-virtual {p5, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static checkEventType(Ljava/lang/String;Ljava/lang/reflect/Method;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/msgpack/template/builder/beans/IntrospectionException;
        }
    .end annotation

    .line 213
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 215
    invoke-static {p0}, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->prepareEventTypeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 217
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 218
    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->extractShortClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 222
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 224
    :cond_1
    new-instance v0, Lorg/msgpack/template/builder/beans/IntrospectionException;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "custom.beans.51"

    invoke-static {v1, p1, p0}, Lorg/apache/harmony/beans/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/msgpack/template/builder/beans/IntrospectionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkNotNull(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    return-void

    .line 197
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "custom.beans.52"

    invoke-static {p2}, Lorg/apache/harmony/beans/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 194
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "custom.beans.54"

    invoke-static {p2}, Lorg/apache/harmony/beans/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 191
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "custom.beans.53"

    invoke-static {p2}, Lorg/apache/harmony/beans/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 188
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "custom.beans.0C"

    invoke-static {p2}, Lorg/apache/harmony/beans/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static extractShortClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x24

    .line 234
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x2e

    .line 235
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 236
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private findAddRemoveListenerMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/msgpack/template/builder/beans/IntrospectionException;
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 322
    iget-object v2, p0, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->listenerType:Ljava/lang/Class;

    aput-object v2, v0, v1

    invoke-virtual {p1, p2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 327
    :catch_0
    new-instance p1, Lorg/msgpack/template/builder/beans/IntrospectionException;

    iget-object v0, p0, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->listenerType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "custom.beans.31"

    invoke-static {v1, p2, v0}, Lorg/apache/harmony/beans/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/msgpack/template/builder/beans/IntrospectionException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 324
    :catch_1
    invoke-direct {p0, p1, p2}, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->findAddRemoveListnerMethodWithLessCheck(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p1

    return-object p1
.end method

.method private findAddRemoveListnerMethodWithLessCheck(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/msgpack/template/builder/beans/IntrospectionException;
        }
    .end annotation

    .line 335
    invoke-virtual {p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object p1

    .line 337
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 338
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 339
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    .line 340
    array-length v3, v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    return-object v2

    .line 347
    :cond_2
    new-instance p1, Lorg/msgpack/template/builder/beans/IntrospectionException;

    iget-object v0, p0, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->listenerType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "custom.beans.31"

    invoke-static {v1, p2, v0}, Lorg/apache/harmony/beans/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/msgpack/template/builder/beans/IntrospectionException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private findGetListenerMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    .line 363
    invoke-virtual {p1, p2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private findListenerMethodByName(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/msgpack/template/builder/beans/IntrospectionException;
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->listenerType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 112
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 113
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 114
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    .line 115
    array-length v6, v5

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    aget-object v5, v5, v2

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Event"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_2

    return-object v4

    .line 124
    :cond_2
    new-instance v0, Lorg/msgpack/template/builder/beans/IntrospectionException;

    iget-object v1, p0, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->listenerType:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "custom.beans.31"

    invoke-static {v2, p1, v1}, Lorg/apache/harmony/beans/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/msgpack/template/builder/beans/IntrospectionException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method private findMethodByPrefix(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 372
    iget-object v0, p0, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->listenerType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 373
    iget-object v1, p0, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->listenerType:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 374
    iget-object v1, p0, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->listenerType:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 377
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "get"

    .line 379
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    new-array p2, v1, [Ljava/lang/Class;

    .line 380
    invoke-virtual {p1, p3, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 385
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object p1

    .line 386
    :goto_0
    array-length p2, p1

    if-ge v1, p2, :cond_3

    .line 387
    aget-object p2, p1, v1

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 388
    aget-object p2, p1, v1

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p2

    .line 389
    array-length p2, p2

    if-ne p2, v2, :cond_2

    .line 390
    aget-object p1, p1, v1

    return-object p1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    :cond_3
    return-object v0
.end method

.method private static isUnicastByDefault(Ljava/lang/reflect/Method;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 399
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object p0

    .line 400
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 401
    const-class v4, Ljava/util/TooManyListenersException;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static prepareEventTypeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_0

    .line 242
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 243
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 246
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string p0, "Event"

    .line 250
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getAddListenerMethod()Ljava/lang/reflect/Method;
    .locals 1

    .line 284
    iget-object v0, p0, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->addListenerMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getGetListenerMethod()Ljava/lang/reflect/Method;
    .locals 1

    .line 280
    iget-object v0, p0, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->getListenerMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getListenerMethodDescriptors()[Lorg/msgpack/template/builder/beans/MethodDescriptor;
    .locals 2

    .line 271
    iget-object v0, p0, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->listenerMethodDescriptors:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [Lorg/msgpack/template/builder/beans/MethodDescriptor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/msgpack/template/builder/beans/MethodDescriptor;

    :goto_0
    return-object v0
.end method

.method public getListenerMethods()[Ljava/lang/reflect/Method;
    .locals 5

    .line 255
    iget-object v0, p0, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->listenerMethods:[Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    return-object v0

    .line 259
    :cond_0
    iget-object v0, p0, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->listenerMethodDescriptors:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 260
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/reflect/Method;

    iput-object v0, p0, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->listenerMethods:[Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    .line 262
    iget-object v1, p0, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->listenerMethodDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/msgpack/template/builder/beans/MethodDescriptor;

    .line 263
    iget-object v3, p0, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->listenerMethods:[Ljava/lang/reflect/Method;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v2}, Lorg/msgpack/template/builder/beans/MethodDescriptor;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    aput-object v2, v3, v0

    move v0, v4

    goto :goto_0

    .line 265
    :cond_1
    iget-object v0, p0, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->listenerMethods:[Ljava/lang/reflect/Method;

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getListenerType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 288
    iget-object v0, p0, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->listenerType:Ljava/lang/Class;

    return-object v0
.end method

.method public getRemoveListenerMethod()Ljava/lang/reflect/Method;
    .locals 1

    .line 276
    iget-object v0, p0, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->removeListenerMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public isInDefaultEventSet()Z
    .locals 1

    .line 304
    iget-boolean v0, p0, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->inDefaultEventSet:Z

    return v0
.end method

.method public isUnicast()Z
    .locals 1

    .line 300
    iget-boolean v0, p0, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->unicast:Z

    return v0
.end method

.method merge(Lorg/msgpack/template/builder/beans/EventSetDescriptor;)V
    .locals 1

    .line 410
    invoke-super {p0, p1}, Lorg/msgpack/template/builder/beans/FeatureDescriptor;->merge(Lorg/msgpack/template/builder/beans/FeatureDescriptor;)V

    .line 411
    iget-object v0, p0, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->addListenerMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 412
    iget-object v0, p1, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->addListenerMethod:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->addListenerMethod:Ljava/lang/reflect/Method;

    .line 414
    :cond_0
    iget-object v0, p0, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->getListenerMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    .line 415
    iget-object v0, p1, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->getListenerMethod:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->getListenerMethod:Ljava/lang/reflect/Method;

    .line 417
    :cond_1
    iget-object v0, p0, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->listenerMethodDescriptors:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 418
    iget-object v0, p1, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->listenerMethodDescriptors:Ljava/util/ArrayList;

    iput-object v0, p0, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->listenerMethodDescriptors:Ljava/util/ArrayList;

    .line 420
    :cond_2
    iget-object v0, p0, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->listenerMethods:[Ljava/lang/reflect/Method;

    if-nez v0, :cond_3

    .line 421
    iget-object v0, p1, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->listenerMethods:[Ljava/lang/reflect/Method;

    iput-object v0, p0, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->listenerMethods:[Ljava/lang/reflect/Method;

    .line 423
    :cond_3
    iget-object v0, p0, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->listenerType:Ljava/lang/Class;

    if-nez v0, :cond_4

    .line 424
    iget-object v0, p1, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->listenerType:Ljava/lang/Class;

    iput-object v0, p0, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->listenerType:Ljava/lang/Class;

    .line 427
    :cond_4
    iget-object v0, p0, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->removeListenerMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_5

    .line 428
    iget-object v0, p1, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->removeListenerMethod:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->removeListenerMethod:Ljava/lang/reflect/Method;

    .line 430
    :cond_5
    iget-boolean v0, p0, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->inDefaultEventSet:Z

    iget-boolean p1, p1, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->inDefaultEventSet:Z

    and-int/2addr p1, v0

    iput-boolean p1, p0, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->inDefaultEventSet:Z

    return-void
.end method

.method public setInDefaultEventSet(Z)V
    .locals 0

    .line 296
    iput-boolean p1, p0, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->inDefaultEventSet:Z

    return-void
.end method

.method public setUnicast(Z)V
    .locals 0

    .line 292
    iput-boolean p1, p0, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->unicast:Z

    return-void
.end method
