.class public Ljavassist/util/proxy/ProxyObjectOutputStream;
.super Ljava/io/ObjectOutputStream;
.source "ProxyObjectOutputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method protected writeClassDescriptor(Ljava/io/ObjectStreamClass;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v0

    .line 49
    invoke-static {v0}, Ljavassist/util/proxy/ProxyFactory;->isProxyClass(Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const/4 p1, 0x1

    .line 50
    invoke-virtual {p0, p1}, Ljavassist/util/proxy/ProxyObjectOutputStream;->writeBoolean(Z)V

    .line 51
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 52
    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    .line 53
    invoke-static {v0}, Ljavassist/util/proxy/ProxyFactory;->getFilterSignature(Ljava/lang/Class;)[B

    move-result-object v0

    .line 54
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 55
    invoke-virtual {p0, v1}, Ljavassist/util/proxy/ProxyObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 57
    array-length v1, v3

    sub-int/2addr v1, p1

    invoke-virtual {p0, v1}, Ljavassist/util/proxy/ProxyObjectOutputStream;->writeInt(I)V

    .line 58
    :goto_0
    array-length p1, v3

    if-ge v2, p1, :cond_1

    .line 59
    aget-object p1, v3, v2

    .line 60
    const-class v1, Ljavassist/util/proxy/ProxyObject;

    if-eq p1, v1, :cond_0

    const-class v1, Ljavassist/util/proxy/Proxy;

    if-eq p1, v1, :cond_0

    .line 61
    aget-object p1, v3, v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-virtual {p0, p1}, Ljavassist/util/proxy/ProxyObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 65
    :cond_1
    array-length p1, v0

    invoke-virtual {p0, p1}, Ljavassist/util/proxy/ProxyObjectOutputStream;->writeInt(I)V

    .line 66
    invoke-virtual {p0, v0}, Ljavassist/util/proxy/ProxyObjectOutputStream;->write([B)V

    goto :goto_1

    .line 68
    :cond_2
    invoke-virtual {p0, v2}, Ljavassist/util/proxy/ProxyObjectOutputStream;->writeBoolean(Z)V

    .line 69
    invoke-super {p0, p1}, Ljava/io/ObjectOutputStream;->writeClassDescriptor(Ljava/io/ObjectStreamClass;)V

    :goto_1
    return-void
.end method
