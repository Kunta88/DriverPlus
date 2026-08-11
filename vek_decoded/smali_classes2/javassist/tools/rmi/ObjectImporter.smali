.class public Ljavassist/tools/rmi/ObjectImporter;
.super Ljava/lang/Object;
.source "ObjectImporter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final proxyConstructorParamTypes:[Ljava/lang/Class;


# instance fields
.field private final endofline:[B

.field protected lookupCommand:[B

.field private orgPort:I

.field private orgServername:Ljava/lang/String;

.field private port:I

.field protected rmiCommand:[B

.field private servername:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 186
    const-class v2, Ljavassist/tools/rmi/ObjectImporter;

    aput-object v2, v0, v1

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Ljavassist/tools/rmi/ObjectImporter;->proxyConstructorParamTypes:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/applet/Applet;)V
    .locals 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 76
    fill-array-data v0, :array_0

    iput-object v0, p0, Ljavassist/tools/rmi/ObjectImporter;->endofline:[B

    const-string v0, "POST /lookup HTTP/1.0"

    .line 80
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Ljavassist/tools/rmi/ObjectImporter;->lookupCommand:[B

    const-string v0, "POST /rmi HTTP/1.0"

    .line 81
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Ljavassist/tools/rmi/ObjectImporter;->rmiCommand:[B

    .line 92
    invoke-virtual {p1}, Ljava/applet/Applet;->getCodeBase()Ljava/net/URL;

    move-result-object p1

    .line 93
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavassist/tools/rmi/ObjectImporter;->servername:Ljava/lang/String;

    iput-object v0, p0, Ljavassist/tools/rmi/ObjectImporter;->orgServername:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result p1

    iput p1, p0, Ljavassist/tools/rmi/ObjectImporter;->port:I

    iput p1, p0, Ljavassist/tools/rmi/ObjectImporter;->orgPort:I

    return-void

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 76
    fill-array-data v0, :array_0

    iput-object v0, p0, Ljavassist/tools/rmi/ObjectImporter;->endofline:[B

    const-string v0, "POST /lookup HTTP/1.0"

    .line 80
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Ljavassist/tools/rmi/ObjectImporter;->lookupCommand:[B

    const-string v0, "POST /rmi HTTP/1.0"

    .line 81
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Ljavassist/tools/rmi/ObjectImporter;->rmiCommand:[B

    .line 111
    iput-object p1, p0, Ljavassist/tools/rmi/ObjectImporter;->servername:Ljava/lang/String;

    iput-object p1, p0, Ljavassist/tools/rmi/ObjectImporter;->orgServername:Ljava/lang/String;

    .line 112
    iput p2, p0, Ljavassist/tools/rmi/ObjectImporter;->port:I

    iput p2, p0, Ljavassist/tools/rmi/ObjectImporter;->orgPort:I

    return-void

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method private createProxy(ILjava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 190
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    .line 191
    sget-object v0, Ljavassist/tools/rmi/ObjectImporter;->proxyConstructorParamTypes:[Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 192
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    const/4 p1, 0x1

    aput-object v1, v0, p1

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private skipHeader(Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    const/4 v0, 0x0

    .line 279
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-ltz v1, :cond_1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 282
    :cond_1
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    if-gtz v0, :cond_0

    return-void
.end method

.method private writeParameters(Ljava/io/ObjectOutputStream;[Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 289
    array-length v0, p2

    .line 290
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 292
    aget-object v2, p2, v1

    instance-of v2, v2, Ljavassist/tools/rmi/Proxy;

    if-eqz v2, :cond_0

    .line 293
    aget-object v2, p2, v1

    check-cast v2, Ljavassist/tools/rmi/Proxy;

    .line 294
    new-instance v3, Ljavassist/tools/rmi/RemoteRef;

    invoke-interface {v2}, Ljavassist/tools/rmi/Proxy;->_getObjectId()I

    move-result v2

    invoke-direct {v3, v2}, Ljavassist/tools/rmi/RemoteRef;-><init>(I)V

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_1

    .line 297
    :cond_0
    aget-object v2, p2, v1

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public call(II[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/tools/rmi/RemoteException;
        }
    .end annotation

    .line 225
    :try_start_0
    new-instance v0, Ljava/net/Socket;

    iget-object v1, p0, Ljavassist/tools/rmi/ObjectImporter;->servername:Ljava/lang/String;

    iget v2, p0, Ljavassist/tools/rmi/ObjectImporter;->port:I

    invoke-direct {v0, v1, v2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    .line 226
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 228
    iget-object v2, p0, Ljavassist/tools/rmi/ObjectImporter;->rmiCommand:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 229
    iget-object v2, p0, Ljavassist/tools/rmi/ObjectImporter;->endofline:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 230
    iget-object v2, p0, Ljavassist/tools/rmi/ObjectImporter;->endofline:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 232
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 233
    invoke-virtual {v2, p1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 234
    invoke-virtual {v2, p2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 235
    invoke-direct {p0, v2, p3}, Ljavassist/tools/rmi/ObjectImporter;->writeParameters(Ljava/io/ObjectOutputStream;[Ljava/lang/Object;)V

    .line 236
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V

    .line 238
    new-instance p1, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 239
    invoke-direct {p0, p1}, Ljavassist/tools/rmi/ObjectImporter;->skipHeader(Ljava/io/InputStream;)V

    .line 240
    new-instance p2, Ljava/io/ObjectInputStream;

    invoke-direct {p2, p1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 241
    invoke-virtual {p2}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    .line 245
    invoke-virtual {p2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    move-object v1, p3

    move-object p3, v3

    goto :goto_0

    .line 247
    :cond_0
    invoke-virtual {p2}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    .line 249
    :goto_0
    invoke-virtual {p2}, Ljava/io/ObjectInputStream;->close()V

    .line 250
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    .line 251
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 253
    instance-of p2, p3, Ljavassist/tools/rmi/RemoteRef;

    if-eqz p2, :cond_1

    .line 254
    check-cast p3, Ljavassist/tools/rmi/RemoteRef;

    .line 255
    iget p2, p3, Ljavassist/tools/rmi/RemoteRef;->oid:I

    iget-object p3, p3, Ljavassist/tools/rmi/RemoteRef;->classname:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Ljavassist/tools/rmi/ObjectImporter;->createProxy(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    if-eqz p1, :cond_2

    return-object p3

    .line 271
    :cond_2
    new-instance p1, Ljavassist/tools/rmi/RemoteException;

    invoke-direct {p1, v1}, Ljavassist/tools/rmi/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    .line 265
    new-instance p2, Ljavassist/tools/rmi/RemoteException;

    invoke-direct {p2, p1}, Ljavassist/tools/rmi/RemoteException;-><init>(Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p1

    .line 262
    new-instance p2, Ljavassist/tools/rmi/RemoteException;

    invoke-direct {p2, p1}, Ljavassist/tools/rmi/RemoteException;-><init>(Ljava/lang/Exception;)V

    throw p2

    :catch_2
    move-exception p1

    .line 259
    new-instance p2, Ljavassist/tools/rmi/RemoteException;

    invoke-direct {p2, p1}, Ljavassist/tools/rmi/RemoteException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public getObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 124
    :try_start_0
    invoke-virtual {p0, p1}, Ljavassist/tools/rmi/ObjectImporter;->lookupObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljavassist/tools/rmi/ObjectNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public lookupObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/tools/rmi/ObjectNotFoundException;
        }
    .end annotation

    .line 156
    :try_start_0
    new-instance v0, Ljava/net/Socket;

    iget-object v1, p0, Ljavassist/tools/rmi/ObjectImporter;->servername:Ljava/lang/String;

    iget v2, p0, Ljavassist/tools/rmi/ObjectImporter;->port:I

    invoke-direct {v0, v1, v2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    .line 157
    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 158
    iget-object v2, p0, Ljavassist/tools/rmi/ObjectImporter;->lookupCommand:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 159
    iget-object v2, p0, Ljavassist/tools/rmi/ObjectImporter;->endofline:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 160
    iget-object v2, p0, Ljavassist/tools/rmi/ObjectImporter;->endofline:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 162
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 163
    invoke-virtual {v2, p1}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V

    .line 166
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 167
    invoke-direct {p0, v1}, Ljavassist/tools/rmi/ObjectImporter;->skipHeader(Ljava/io/InputStream;)V

    .line 168
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 169
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    .line 170
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    .line 171
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 172
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    .line 173
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    if-ltz v1, :cond_0

    .line 176
    invoke-direct {p0, v1, v4}, Ljavassist/tools/rmi/ObjectImporter;->createProxy(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 183
    :cond_0
    new-instance v0, Ljavassist/tools/rmi/ObjectNotFoundException;

    invoke-direct {v0, p1}, Ljavassist/tools/rmi/ObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    .line 179
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 180
    new-instance v1, Ljavassist/tools/rmi/ObjectNotFoundException;

    invoke-direct {v1, p1, v0}, Ljavassist/tools/rmi/ObjectNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public setHttpProxy(Ljava/lang/String;I)V
    .locals 3

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "POST http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljavassist/tools/rmi/ObjectImporter;->orgServername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljavassist/tools/rmi/ObjectImporter;->orgPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/lookup HTTP/1.0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 138
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iput-object v1, p0, Ljavassist/tools/rmi/ObjectImporter;->lookupCommand:[B

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/rmi HTTP/1.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Ljavassist/tools/rmi/ObjectImporter;->rmiCommand:[B

    .line 141
    iput-object p1, p0, Ljavassist/tools/rmi/ObjectImporter;->servername:Ljava/lang/String;

    .line 142
    iput p2, p0, Ljavassist/tools/rmi/ObjectImporter;->port:I

    return-void
.end method
