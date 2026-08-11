.class Ljavassist/util/proxy/SerializedProxy;
.super Ljava/lang/Object;
.source "SerializedProxy.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private filterSignature:[B

.field private handler:Ljavassist/util/proxy/MethodHandler;

.field private interfaces:[Ljava/lang/String;

.field private superClass:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/Class;[BLjavassist/util/proxy/MethodHandler;)V
    .locals 4

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p2, p0, Ljavassist/util/proxy/SerializedProxy;->filterSignature:[B

    .line 40
    iput-object p3, p0, Ljavassist/util/proxy/SerializedProxy;->handler:Ljavassist/util/proxy/MethodHandler;

    .line 41
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Ljavassist/util/proxy/SerializedProxy;->superClass:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object p1

    .line 43
    array-length p2, p1

    add-int/lit8 p3, p2, -0x1

    .line 44
    new-array p3, p3, [Ljava/lang/String;

    iput-object p3, p0, Ljavassist/util/proxy/SerializedProxy;->interfaces:[Ljava/lang/String;

    .line 45
    const-class p3, Ljavassist/util/proxy/ProxyObject;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    .line 46
    const-class v0, Ljavassist/util/proxy/Proxy;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    .line 48
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 49
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 50
    iget-object v3, p0, Ljavassist/util/proxy/SerializedProxy;->interfaces:[Ljava/lang/String;

    aput-object v2, v3, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 63
    :try_start_0
    new-instance v0, Ljavassist/util/proxy/SerializedProxy$1;

    invoke-direct {v0, p0, p1}, Ljavassist/util/proxy/SerializedProxy$1;-><init>(Ljavassist/util/proxy/SerializedProxy;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 71
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot load the class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method readResolve()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 77
    :try_start_0
    iget-object v0, p0, Ljavassist/util/proxy/SerializedProxy;->interfaces:[Ljava/lang/String;

    array-length v0, v0

    .line 78
    new-array v1, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 80
    iget-object v3, p0, Ljavassist/util/proxy/SerializedProxy;->interfaces:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {p0, v3}, Ljavassist/util/proxy/SerializedProxy;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    :cond_0
    new-instance v0, Ljavassist/util/proxy/ProxyFactory;

    invoke-direct {v0}, Ljavassist/util/proxy/ProxyFactory;-><init>()V

    .line 83
    iget-object v2, p0, Ljavassist/util/proxy/SerializedProxy;->superClass:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljavassist/util/proxy/SerializedProxy;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavassist/util/proxy/ProxyFactory;->setSuperclass(Ljava/lang/Class;)V

    .line 84
    invoke-virtual {v0, v1}, Ljavassist/util/proxy/ProxyFactory;->setInterfaces([Ljava/lang/Class;)V

    .line 85
    iget-object v1, p0, Ljavassist/util/proxy/SerializedProxy;->filterSignature:[B

    invoke-virtual {v0, v1}, Ljavassist/util/proxy/ProxyFactory;->createClass([B)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavassist/util/proxy/Proxy;

    .line 86
    iget-object v1, p0, Ljavassist/util/proxy/SerializedProxy;->handler:Ljavassist/util/proxy/MethodHandler;

    invoke-interface {v0, v1}, Ljavassist/util/proxy/Proxy;->setHandler(Ljavassist/util/proxy/MethodHandler;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 96
    new-instance v1, Ljava/io/InvalidClassException;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    .line 93
    new-instance v1, Ljava/io/InvalidObjectException;

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_2
    move-exception v0

    .line 90
    new-instance v1, Ljava/io/InvalidClassException;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method
