.class public Ljavassist/util/proxy/ProxyObjectInputStream;
.super Ljava/io/ObjectInputStream;
.source "ProxyObjectInputStream.java"


# instance fields
.field private loader:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 47
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    iput-object p1, p0, Ljavassist/util/proxy/ProxyObjectInputStream;->loader:Ljava/lang/ClassLoader;

    if-nez p1, :cond_0

    .line 49
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    iput-object p1, p0, Ljavassist/util/proxy/ProxyObjectInputStream;->loader:Ljava/lang/ClassLoader;

    :cond_0
    return-void
.end method


# virtual methods
.method protected readClassDescriptor()Ljava/io/ObjectStreamClass;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 67
    invoke-virtual {p0}, Ljavassist/util/proxy/ProxyObjectInputStream;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    invoke-virtual {p0}, Ljavassist/util/proxy/ProxyObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 70
    iget-object v1, p0, Ljavassist/util/proxy/ProxyObjectInputStream;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 71
    invoke-virtual {p0}, Ljavassist/util/proxy/ProxyObjectInputStream;->readInt()I

    move-result v1

    .line 72
    new-array v2, v1, [Ljava/lang/Class;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    .line 74
    invoke-virtual {p0}, Ljavassist/util/proxy/ProxyObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 75
    iget-object v6, p0, Ljavassist/util/proxy/ProxyObjectInputStream;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v6, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {p0}, Ljavassist/util/proxy/ProxyObjectInputStream;->readInt()I

    move-result v1

    .line 78
    new-array v1, v1, [B

    .line 79
    invoke-virtual {p0, v1}, Ljavassist/util/proxy/ProxyObjectInputStream;->read([B)I

    .line 80
    new-instance v4, Ljavassist/util/proxy/ProxyFactory;

    invoke-direct {v4}, Ljavassist/util/proxy/ProxyFactory;-><init>()V

    const/4 v5, 0x1

    .line 83
    invoke-virtual {v4, v5}, Ljavassist/util/proxy/ProxyFactory;->setUseCache(Z)V

    .line 84
    invoke-virtual {v4, v3}, Ljavassist/util/proxy/ProxyFactory;->setUseWriteReplace(Z)V

    .line 85
    invoke-virtual {v4, v0}, Ljavassist/util/proxy/ProxyFactory;->setSuperclass(Ljava/lang/Class;)V

    .line 86
    invoke-virtual {v4, v2}, Ljavassist/util/proxy/ProxyFactory;->setInterfaces([Ljava/lang/Class;)V

    .line 87
    invoke-virtual {v4, v1}, Ljavassist/util/proxy/ProxyFactory;->createClass([B)Ljava/lang/Class;

    move-result-object v0

    .line 88
    invoke-static {v0}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v0

    return-object v0

    .line 90
    :cond_1
    invoke-super {p0}, Ljava/io/ObjectInputStream;->readClassDescriptor()Ljava/io/ObjectStreamClass;

    move-result-object v0

    return-object v0
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 60
    iput-object p1, p0, Ljavassist/util/proxy/ProxyObjectInputStream;->loader:Ljava/lang/ClassLoader;

    goto :goto_0

    .line 62
    :cond_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    :goto_0
    return-void
.end method
