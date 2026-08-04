.class public Ljavassist/tools/rmi/AppletServer;
.super Ljavassist/tools/web/Webserver;
.source "AppletServer.java"


# static fields
.field private static final okHeader:[B


# instance fields
.field private exportedNames:Ljava/util/Hashtable;

.field private exportedObjects:Ljava/util/Vector;

.field private stubGen:Ljavassist/tools/rmi/StubGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "HTTP/1.0 200 OK\r\n\r\n"

    .line 43
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Ljavassist/tools/rmi/AppletServer;->okHeader:[B

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavassist/NotFoundException;,
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 65
    invoke-static {}, Ljavassist/ClassPool;->getDefault()Ljavassist/ClassPool;

    move-result-object v0

    new-instance v1, Ljavassist/tools/rmi/StubGenerator;

    invoke-direct {v1}, Ljavassist/tools/rmi/StubGenerator;-><init>()V

    invoke-direct {p0, v0, v1, p1}, Ljavassist/tools/rmi/AppletServer;-><init>(Ljavassist/ClassPool;Ljavassist/tools/rmi/StubGenerator;I)V

    return-void
.end method

.method public constructor <init>(ILjavassist/ClassPool;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavassist/NotFoundException;,
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 77
    new-instance v0, Ljavassist/ClassPool;

    invoke-direct {v0, p2}, Ljavassist/ClassPool;-><init>(Ljavassist/ClassPool;)V

    new-instance p2, Ljavassist/tools/rmi/StubGenerator;

    invoke-direct {p2}, Ljavassist/tools/rmi/StubGenerator;-><init>()V

    invoke-direct {p0, v0, p2, p1}, Ljavassist/tools/rmi/AppletServer;-><init>(Ljavassist/ClassPool;Ljavassist/tools/rmi/StubGenerator;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavassist/NotFoundException;,
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 54
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Ljavassist/tools/rmi/AppletServer;-><init>(I)V

    return-void
.end method

.method private constructor <init>(Ljavassist/ClassPool;Ljavassist/tools/rmi/StubGenerator;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavassist/NotFoundException;,
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 83
    invoke-direct {p0, p3}, Ljavassist/tools/web/Webserver;-><init>(I)V

    .line 84
    new-instance p3, Ljava/util/Hashtable;

    invoke-direct {p3}, Ljava/util/Hashtable;-><init>()V

    iput-object p3, p0, Ljavassist/tools/rmi/AppletServer;->exportedNames:Ljava/util/Hashtable;

    .line 85
    new-instance p3, Ljava/util/Vector;

    invoke-direct {p3}, Ljava/util/Vector;-><init>()V

    iput-object p3, p0, Ljavassist/tools/rmi/AppletServer;->exportedObjects:Ljava/util/Vector;

    .line 86
    iput-object p2, p0, Ljavassist/tools/rmi/AppletServer;->stubGen:Ljavassist/tools/rmi/StubGenerator;

    .line 87
    invoke-virtual {p0, p1, p2}, Ljavassist/tools/rmi/AppletServer;->addTranslator(Ljavassist/ClassPool;Ljavassist/Translator;)V

    return-void
.end method

.method private convertRvalue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 215
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 216
    iget-object v2, p0, Ljavassist/tools/rmi/AppletServer;->stubGen:Ljavassist/tools/rmi/StubGenerator;

    invoke-virtual {v2, v1}, Ljavassist/tools/rmi/StubGenerator;->isProxyClass(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 217
    new-instance v2, Ljavassist/tools/rmi/RemoteRef;

    invoke-virtual {p0, v0, p1}, Ljavassist/tools/rmi/AppletServer;->exportObject(Ljava/lang/String;Ljava/lang/Object;)I

    move-result p1

    invoke-direct {v2, p1, v1}, Ljavassist/tools/rmi/RemoteRef;-><init>(ILjava/lang/String;)V

    return-object v2

    :cond_1
    return-object p1
.end method

.method private lookupName(Ljava/lang/String;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 225
    new-instance p1, Ljava/io/ObjectInputStream;

    invoke-direct {p1, p2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 226
    invoke-static {p1}, Ljava/io/DataInputStream;->readUTF(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object p2

    .line 227
    iget-object v0, p0, Ljavassist/tools/rmi/AppletServer;->exportedNames:Ljava/util/Hashtable;

    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavassist/tools/rmi/ExportedObject;

    .line 228
    sget-object v1, Ljavassist/tools/rmi/AppletServer;->okHeader:[B

    invoke-virtual {p3, v1}, Ljava/io/OutputStream;->write([B)V

    .line 229
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, p3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    if-nez v0, :cond_0

    .line 231
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "not found."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljavassist/tools/rmi/AppletServer;->logging2(Ljava/lang/String;)V

    const/4 p2, -0x1

    .line 232
    invoke-virtual {v1, p2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    const-string p2, "error"

    .line 233
    invoke-virtual {v1, p2}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_0

    .line 236
    :cond_0
    invoke-virtual {p0, p2}, Ljavassist/tools/rmi/AppletServer;->logging2(Ljava/lang/String;)V

    .line 237
    iget p2, v0, Ljavassist/tools/rmi/ExportedObject;->identifier:I

    invoke-virtual {v1, p2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 238
    iget-object p2, v0, Ljavassist/tools/rmi/ExportedObject;->object:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 241
    :goto_0
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    .line 242
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 243
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->close()V

    return-void
.end method

.method private processRMI(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    new-instance v0, Ljava/io/ObjectInputStream;

    invoke-direct {v0, p1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 150
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readInt()I

    move-result p1

    .line 151
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    const/4 v2, 0x0

    .line 155
    :try_start_0
    iget-object v3, p0, Ljavassist/tools/rmi/AppletServer;->exportedObjects:Ljava/util/Vector;

    invoke-virtual {v3, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavassist/tools/rmi/ExportedObject;

    .line 157
    invoke-direct {p0, v0}, Ljavassist/tools/rmi/AppletServer;->readParameters(Ljava/io/ObjectInputStream;)[Ljava/lang/Object;

    move-result-object v3

    .line 158
    iget-object v4, p1, Ljavassist/tools/rmi/ExportedObject;->methods:[Ljava/lang/reflect/Method;

    aget-object v1, v4, v1

    iget-object p1, p1, Ljavassist/tools/rmi/ExportedObject;->object:Ljava/lang/Object;

    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavassist/tools/rmi/AppletServer;->convertRvalue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 163
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljavassist/tools/rmi/AppletServer;->logging2(Ljava/lang/String;)V

    move-object v5, v2

    move-object v2, p1

    move-object p1, v5

    .line 166
    :goto_0
    sget-object v1, Ljavassist/tools/rmi/AppletServer;->okHeader:[B

    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write([B)V

    .line 167
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, p2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    if-eqz v2, :cond_0

    const/4 p1, 0x0

    .line 169
    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 170
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/4 p2, 0x1

    .line 174
    :try_start_1
    invoke-virtual {v1, p2}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 175
    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/NotSerializableException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/InvalidClassException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 181
    invoke-virtual {p1}, Ljava/io/InvalidClassException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljavassist/tools/rmi/AppletServer;->logging2(Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception p1

    .line 178
    invoke-virtual {p1}, Ljava/io/NotSerializableException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljavassist/tools/rmi/AppletServer;->logging2(Ljava/lang/String;)V

    .line 184
    :goto_1
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    .line 185
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 186
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V

    return-void
.end method

.method private readParameters(Ljava/io/ObjectInputStream;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 192
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 193
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 195
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 196
    instance-of v4, v3, Ljavassist/tools/rmi/RemoteRef;

    if-eqz v4, :cond_0

    .line 197
    check-cast v3, Ljavassist/tools/rmi/RemoteRef;

    .line 198
    iget-object v4, p0, Ljavassist/tools/rmi/AppletServer;->exportedObjects:Ljava/util/Vector;

    iget v3, v3, Ljavassist/tools/rmi/RemoteRef;->oid:I

    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavassist/tools/rmi/ExportedObject;

    .line 200
    iget-object v3, v3, Ljavassist/tools/rmi/ExportedObject;->object:Ljava/lang/Object;

    .line 203
    :cond_0
    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method


# virtual methods
.method public doReply(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavassist/tools/web/BadHttpRequest;
        }
    .end annotation

    const-string v0, "POST /rmi "

    .line 137
    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-direct {p0, p1, p2}, Ljavassist/tools/rmi/AppletServer;->processRMI(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_0
    const-string v0, "POST /lookup "

    .line 139
    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    invoke-direct {p0, p3, p1, p2}, Ljavassist/tools/rmi/AppletServer;->lookupName(Ljava/lang/String;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    goto :goto_0

    .line 142
    :cond_1
    invoke-super {p0, p1, p2, p3}, Ljavassist/tools/web/Webserver;->doReply(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public declared-synchronized exportObject(Ljava/lang/String;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    monitor-enter p0

    .line 112
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 113
    new-instance v1, Ljavassist/tools/rmi/ExportedObject;

    invoke-direct {v1}, Ljavassist/tools/rmi/ExportedObject;-><init>()V

    .line 114
    iput-object p2, v1, Ljavassist/tools/rmi/ExportedObject;->object:Ljava/lang/Object;

    .line 115
    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object p2

    iput-object p2, v1, Ljavassist/tools/rmi/ExportedObject;->methods:[Ljava/lang/reflect/Method;

    .line 116
    iget-object p2, p0, Ljavassist/tools/rmi/AppletServer;->exportedObjects:Ljava/util/Vector;

    invoke-virtual {p2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 117
    iget-object p2, p0, Ljavassist/tools/rmi/AppletServer;->exportedObjects:Ljava/util/Vector;

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    iput p2, v1, Ljavassist/tools/rmi/ExportedObject;->identifier:I

    if-eqz p1, :cond_0

    .line 119
    iget-object p2, p0, Ljavassist/tools/rmi/AppletServer;->exportedNames:Ljava/util/Hashtable;

    invoke-virtual {p2, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :cond_0
    :try_start_1
    iget-object p1, p0, Ljavassist/tools/rmi/AppletServer;->stubGen:Ljavassist/tools/rmi/StubGenerator;

    invoke-virtual {p1, v0}, Ljavassist/tools/rmi/StubGenerator;->makeProxyClass(Ljava/lang/Class;)Z
    :try_end_1
    .catch Ljavassist/NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    :try_start_2
    iget p1, v1, Ljavassist/tools/rmi/ExportedObject;->identifier:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    :catch_0
    move-exception p1

    .line 125
    :try_start_3
    new-instance p2, Ljavassist/CannotCompileException;

    invoke-direct {p2, p1}, Ljavassist/CannotCompileException;-><init>(Ljavassist/NotFoundException;)V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public run()V
    .locals 0

    .line 94
    invoke-super {p0}, Ljavassist/tools/web/Webserver;->run()V

    return-void
.end method
