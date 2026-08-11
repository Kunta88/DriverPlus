.class public Lorg/msgpack/MessagePack;
.super Ljava/lang/Object;
.source "MessagePack.java"


# static fields
.field private static final globalMessagePack:Lorg/msgpack/MessagePack;


# instance fields
.field private registry:Lorg/msgpack/template/TemplateRegistry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 657
    new-instance v0, Lorg/msgpack/MessagePack;

    invoke-direct {v0}, Lorg/msgpack/MessagePack;-><init>()V

    sput-object v0, Lorg/msgpack/MessagePack;->globalMessagePack:Lorg/msgpack/MessagePack;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lorg/msgpack/template/TemplateRegistry;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/msgpack/template/TemplateRegistry;-><init>(Lorg/msgpack/template/TemplateRegistry;)V

    iput-object v0, p0, Lorg/msgpack/MessagePack;->registry:Lorg/msgpack/template/TemplateRegistry;

    return-void
.end method

.method public constructor <init>(Lorg/msgpack/MessagePack;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lorg/msgpack/template/TemplateRegistry;

    iget-object p1, p1, Lorg/msgpack/MessagePack;->registry:Lorg/msgpack/template/TemplateRegistry;

    invoke-direct {v0, p1}, Lorg/msgpack/template/TemplateRegistry;-><init>(Lorg/msgpack/template/TemplateRegistry;)V

    iput-object v0, p0, Lorg/msgpack/MessagePack;->registry:Lorg/msgpack/template/TemplateRegistry;

    return-void
.end method

.method protected constructor <init>(Lorg/msgpack/template/TemplateRegistry;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lorg/msgpack/MessagePack;->registry:Lorg/msgpack/template/TemplateRegistry;

    return-void
.end method

.method public static pack(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 682
    sget-object v0, Lorg/msgpack/MessagePack;->globalMessagePack:Lorg/msgpack/MessagePack;

    invoke-virtual {v0, p0, p1}, Lorg/msgpack/MessagePack;->write(Ljava/io/OutputStream;Ljava/lang/Object;)V

    return-void
.end method

.method public static pack(Ljava/io/OutputStream;Ljava/lang/Object;Lorg/msgpack/template/Template;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/OutputStream;",
            "TT;",
            "Lorg/msgpack/template/Template<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 712
    sget-object v0, Lorg/msgpack/MessagePack;->globalMessagePack:Lorg/msgpack/MessagePack;

    invoke-virtual {v0, p0, p1, p2}, Lorg/msgpack/MessagePack;->write(Ljava/io/OutputStream;Ljava/lang/Object;Lorg/msgpack/template/Template;)V

    return-void
.end method

.method public static pack(Ljava/lang/Object;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 669
    sget-object v0, Lorg/msgpack/MessagePack;->globalMessagePack:Lorg/msgpack/MessagePack;

    invoke-virtual {v0, p0}, Lorg/msgpack/MessagePack;->write(Ljava/lang/Object;)[B

    move-result-object p0

    return-object p0
.end method

.method public static pack(Ljava/lang/Object;Lorg/msgpack/template/Template;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lorg/msgpack/template/Template<",
            "TT;>;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 696
    sget-object v0, Lorg/msgpack/MessagePack;->globalMessagePack:Lorg/msgpack/MessagePack;

    invoke-virtual {v0, p0, p1}, Lorg/msgpack/MessagePack;->write(Ljava/lang/Object;Lorg/msgpack/template/Template;)[B

    move-result-object p0

    return-object p0
.end method

.method public static unpack(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 821
    sget-object v0, Lorg/msgpack/MessagePack;->globalMessagePack:Lorg/msgpack/MessagePack;

    invoke-virtual {v0, p0, p1}, Lorg/msgpack/MessagePack;->read(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static unpack(Ljava/io/InputStream;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 835
    sget-object v0, Lorg/msgpack/MessagePack;->globalMessagePack:Lorg/msgpack/MessagePack;

    invoke-virtual {v0, p0, p1}, Lorg/msgpack/MessagePack;->read(Ljava/io/InputStream;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static unpack(Ljava/io/InputStream;Lorg/msgpack/template/Template;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Lorg/msgpack/template/Template<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/msgpack/MessageTypeException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 791
    new-instance v0, Lorg/msgpack/unpacker/MessagePackUnpacker;

    sget-object v1, Lorg/msgpack/MessagePack;->globalMessagePack:Lorg/msgpack/MessagePack;

    invoke-direct {v0, v1, p0}, Lorg/msgpack/unpacker/MessagePackUnpacker;-><init>(Lorg/msgpack/MessagePack;Ljava/io/InputStream;)V

    const/4 p0, 0x0

    invoke-interface {p1, v0, p0}, Lorg/msgpack/template/Template;->read(Lorg/msgpack/unpacker/Unpacker;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static unpack(Ljava/io/InputStream;Lorg/msgpack/template/Template;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Lorg/msgpack/template/Template<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/msgpack/MessageTypeException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 806
    new-instance v0, Lorg/msgpack/unpacker/MessagePackUnpacker;

    sget-object v1, Lorg/msgpack/MessagePack;->globalMessagePack:Lorg/msgpack/MessagePack;

    invoke-direct {v0, v1, p0}, Lorg/msgpack/unpacker/MessagePackUnpacker;-><init>(Lorg/msgpack/MessagePack;Ljava/io/InputStream;)V

    invoke-interface {p1, v0, p2}, Lorg/msgpack/template/Template;->read(Lorg/msgpack/unpacker/Unpacker;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static unpack([BLjava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 751
    sget-object v0, Lorg/msgpack/MessagePack;->globalMessagePack:Lorg/msgpack/MessagePack;

    invoke-virtual {v0, p0, p1}, Lorg/msgpack/MessagePack;->read([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static unpack([BLjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([BTT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 764
    sget-object v0, Lorg/msgpack/MessagePack;->globalMessagePack:Lorg/msgpack/MessagePack;

    invoke-virtual {v0, p0, p1}, Lorg/msgpack/MessagePack;->read([BLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static unpack([BLorg/msgpack/template/Template;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Lorg/msgpack/template/Template<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 730
    new-instance v0, Lorg/msgpack/unpacker/MessagePackBufferUnpacker;

    sget-object v1, Lorg/msgpack/MessagePack;->globalMessagePack:Lorg/msgpack/MessagePack;

    invoke-direct {v0, v1}, Lorg/msgpack/unpacker/MessagePackBufferUnpacker;-><init>(Lorg/msgpack/MessagePack;)V

    invoke-virtual {v0, p0}, Lorg/msgpack/unpacker/MessagePackBufferUnpacker;->wrap([B)Lorg/msgpack/unpacker/MessagePackBufferUnpacker;

    move-result-object p0

    const/4 v0, 0x0

    .line 731
    invoke-interface {p1, p0, v0}, Lorg/msgpack/template/Template;->read(Lorg/msgpack/unpacker/Unpacker;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static unpack([BLorg/msgpack/template/Template;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Lorg/msgpack/template/Template<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 736
    new-instance v0, Lorg/msgpack/unpacker/MessagePackBufferUnpacker;

    sget-object v1, Lorg/msgpack/MessagePack;->globalMessagePack:Lorg/msgpack/MessagePack;

    invoke-direct {v0, v1}, Lorg/msgpack/unpacker/MessagePackBufferUnpacker;-><init>(Lorg/msgpack/MessagePack;)V

    invoke-virtual {v0, p0}, Lorg/msgpack/unpacker/MessagePackBufferUnpacker;->wrap([B)Lorg/msgpack/unpacker/MessagePackBufferUnpacker;

    move-result-object p0

    .line 737
    invoke-interface {p1, p0, p2}, Lorg/msgpack/template/Template;->read(Lorg/msgpack/unpacker/Unpacker;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static unpack(Ljava/io/InputStream;)Lorg/msgpack/type/Value;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 777
    sget-object v0, Lorg/msgpack/MessagePack;->globalMessagePack:Lorg/msgpack/MessagePack;

    invoke-virtual {v0, p0}, Lorg/msgpack/MessagePack;->read(Ljava/io/InputStream;)Lorg/msgpack/type/Value;

    move-result-object p0

    return-object p0
.end method

.method public static unpack([B)Lorg/msgpack/type/Value;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 725
    sget-object v0, Lorg/msgpack/MessagePack;->globalMessagePack:Lorg/msgpack/MessagePack;

    invoke-virtual {v0, p0}, Lorg/msgpack/MessagePack;->read([B)Lorg/msgpack/type/Value;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public convert(Lorg/msgpack/type/Value;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/msgpack/type/Value;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 556
    iget-object v0, p0, Lorg/msgpack/MessagePack;->registry:Lorg/msgpack/template/TemplateRegistry;

    invoke-virtual {v0, p2}, Lorg/msgpack/template/TemplateRegistry;->lookup(Ljava/lang/reflect/Type;)Lorg/msgpack/template/Template;

    move-result-object p2

    .line 557
    new-instance v0, Lorg/msgpack/unpacker/Converter;

    invoke-direct {v0, p0, p1}, Lorg/msgpack/unpacker/Converter;-><init>(Lorg/msgpack/MessagePack;Lorg/msgpack/type/Value;)V

    const/4 p1, 0x0

    invoke-interface {p2, v0, p1}, Lorg/msgpack/template/Template;->read(Lorg/msgpack/unpacker/Unpacker;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public convert(Lorg/msgpack/type/Value;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/msgpack/type/Value;",
            "TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 541
    iget-object v0, p0, Lorg/msgpack/MessagePack;->registry:Lorg/msgpack/template/TemplateRegistry;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/msgpack/template/TemplateRegistry;->lookup(Ljava/lang/reflect/Type;)Lorg/msgpack/template/Template;

    move-result-object v0

    .line 542
    new-instance v1, Lorg/msgpack/unpacker/Converter;

    invoke-direct {v1, p0, p1}, Lorg/msgpack/unpacker/Converter;-><init>(Lorg/msgpack/MessagePack;Lorg/msgpack/type/Value;)V

    invoke-interface {v0, v1, p2}, Lorg/msgpack/template/Template;->read(Lorg/msgpack/unpacker/Unpacker;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public convert(Lorg/msgpack/type/Value;Lorg/msgpack/template/Template;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/msgpack/type/Value;",
            "Lorg/msgpack/template/Template<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 570
    new-instance v0, Lorg/msgpack/unpacker/Converter;

    invoke-direct {v0, p0, p1}, Lorg/msgpack/unpacker/Converter;-><init>(Lorg/msgpack/MessagePack;Lorg/msgpack/type/Value;)V

    const/4 p1, 0x0

    invoke-interface {p2, v0, p1}, Lorg/msgpack/template/Template;->read(Lorg/msgpack/unpacker/Unpacker;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public createBufferPacker()Lorg/msgpack/packer/BufferPacker;
    .locals 1

    .line 105
    new-instance v0, Lorg/msgpack/packer/MessagePackBufferPacker;

    invoke-direct {v0, p0}, Lorg/msgpack/packer/MessagePackBufferPacker;-><init>(Lorg/msgpack/MessagePack;)V

    return-object v0
.end method

.method public createBufferPacker(I)Lorg/msgpack/packer/BufferPacker;
    .locals 1

    .line 117
    new-instance v0, Lorg/msgpack/packer/MessagePackBufferPacker;

    invoke-direct {v0, p0, p1}, Lorg/msgpack/packer/MessagePackBufferPacker;-><init>(Lorg/msgpack/MessagePack;I)V

    return-object v0
.end method

.method public createBufferUnpacker()Lorg/msgpack/unpacker/BufferUnpacker;
    .locals 1

    .line 140
    new-instance v0, Lorg/msgpack/unpacker/MessagePackBufferUnpacker;

    invoke-direct {v0, p0}, Lorg/msgpack/unpacker/MessagePackBufferUnpacker;-><init>(Lorg/msgpack/MessagePack;)V

    return-object v0
.end method

.method public createBufferUnpacker(Ljava/nio/ByteBuffer;)Lorg/msgpack/unpacker/BufferUnpacker;
    .locals 1

    .line 177
    invoke-virtual {p0}, Lorg/msgpack/MessagePack;->createBufferUnpacker()Lorg/msgpack/unpacker/BufferUnpacker;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/msgpack/unpacker/BufferUnpacker;->wrap(Ljava/nio/ByteBuffer;)Lorg/msgpack/unpacker/BufferUnpacker;

    move-result-object p1

    return-object p1
.end method

.method public createBufferUnpacker([B)Lorg/msgpack/unpacker/BufferUnpacker;
    .locals 1

    .line 152
    invoke-virtual {p0}, Lorg/msgpack/MessagePack;->createBufferUnpacker()Lorg/msgpack/unpacker/BufferUnpacker;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/msgpack/unpacker/BufferUnpacker;->wrap([B)Lorg/msgpack/unpacker/BufferUnpacker;

    move-result-object p1

    return-object p1
.end method

.method public createBufferUnpacker([BII)Lorg/msgpack/unpacker/BufferUnpacker;
    .locals 1

    .line 165
    invoke-virtual {p0}, Lorg/msgpack/MessagePack;->createBufferUnpacker()Lorg/msgpack/unpacker/BufferUnpacker;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/msgpack/unpacker/BufferUnpacker;->wrap([BII)Lorg/msgpack/unpacker/BufferUnpacker;

    move-result-object p1

    return-object p1
.end method

.method public createPacker(Ljava/io/OutputStream;)Lorg/msgpack/packer/Packer;
    .locals 1

    .line 95
    new-instance v0, Lorg/msgpack/packer/MessagePackPacker;

    invoke-direct {v0, p0, p1}, Lorg/msgpack/packer/MessagePackPacker;-><init>(Lorg/msgpack/MessagePack;Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public createUnpacker(Ljava/io/InputStream;)Lorg/msgpack/unpacker/Unpacker;
    .locals 1

    .line 130
    new-instance v0, Lorg/msgpack/unpacker/MessagePackUnpacker;

    invoke-direct {v0, p0, p1}, Lorg/msgpack/unpacker/MessagePackUnpacker;-><init>(Lorg/msgpack/MessagePack;Ljava/io/InputStream;)V

    return-object v0
.end method

.method public lookup(Ljava/lang/Class;)Lorg/msgpack/template/Template;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lorg/msgpack/template/Template<",
            "TT;>;"
        }
    .end annotation

    .line 650
    iget-object v0, p0, Lorg/msgpack/MessagePack;->registry:Lorg/msgpack/template/TemplateRegistry;

    invoke-virtual {v0, p1}, Lorg/msgpack/template/TemplateRegistry;->lookup(Ljava/lang/reflect/Type;)Lorg/msgpack/template/Template;

    move-result-object p1

    return-object p1
.end method

.method public lookup(Ljava/lang/reflect/Type;)Lorg/msgpack/template/Template;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lorg/msgpack/template/Template<",
            "*>;"
        }
    .end annotation

    .line 654
    iget-object v0, p0, Lorg/msgpack/MessagePack;->registry:Lorg/msgpack/template/TemplateRegistry;

    invoke-virtual {v0, p1}, Lorg/msgpack/template/TemplateRegistry;->lookup(Ljava/lang/reflect/Type;)Lorg/msgpack/template/Template;

    move-result-object p1

    return-object p1
.end method

.method public read(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 510
    iget-object v0, p0, Lorg/msgpack/MessagePack;->registry:Lorg/msgpack/template/TemplateRegistry;

    invoke-virtual {v0, p2}, Lorg/msgpack/template/TemplateRegistry;->lookup(Ljava/lang/reflect/Type;)Lorg/msgpack/template/Template;

    move-result-object p2

    const/4 v0, 0x0

    .line 511
    invoke-virtual {p0, p1, v0, p2}, Lorg/msgpack/MessagePack;->read(Ljava/io/InputStream;Ljava/lang/Object;Lorg/msgpack/template/Template;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public read(Ljava/io/InputStream;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 481
    iget-object v0, p0, Lorg/msgpack/MessagePack;->registry:Lorg/msgpack/template/TemplateRegistry;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/msgpack/template/TemplateRegistry;->lookup(Ljava/lang/reflect/Type;)Lorg/msgpack/template/Template;

    move-result-object v0

    .line 482
    invoke-virtual {p0, p1, p2, v0}, Lorg/msgpack/MessagePack;->read(Ljava/io/InputStream;Ljava/lang/Object;Lorg/msgpack/template/Template;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public read(Ljava/io/InputStream;Ljava/lang/Object;Lorg/msgpack/template/Template;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "TT;",
            "Lorg/msgpack/template/Template<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 526
    invoke-virtual {p0, p1}, Lorg/msgpack/MessagePack;->createUnpacker(Ljava/io/InputStream;)Lorg/msgpack/unpacker/Unpacker;

    move-result-object p1

    .line 527
    invoke-interface {p3, p1, p2}, Lorg/msgpack/template/Template;->read(Lorg/msgpack/unpacker/Unpacker;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public read(Ljava/io/InputStream;Lorg/msgpack/template/Template;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Lorg/msgpack/template/Template<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 496
    invoke-virtual {p0, p1, v0, p2}, Lorg/msgpack/MessagePack;->read(Ljava/io/InputStream;Ljava/lang/Object;Lorg/msgpack/template/Template;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public read(Ljava/nio/ByteBuffer;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 449
    iget-object v0, p0, Lorg/msgpack/MessagePack;->registry:Lorg/msgpack/template/TemplateRegistry;

    invoke-virtual {v0, p2}, Lorg/msgpack/template/TemplateRegistry;->lookup(Ljava/lang/reflect/Type;)Lorg/msgpack/template/Template;

    move-result-object p2

    const/4 v0, 0x0

    .line 450
    invoke-virtual {p0, p1, v0, p2}, Lorg/msgpack/MessagePack;->read(Ljava/nio/ByteBuffer;Ljava/lang/Object;Lorg/msgpack/template/Template;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public read(Ljava/nio/ByteBuffer;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/nio/ByteBuffer;",
            "TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 420
    iget-object v0, p0, Lorg/msgpack/MessagePack;->registry:Lorg/msgpack/template/TemplateRegistry;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/msgpack/template/TemplateRegistry;->lookup(Ljava/lang/reflect/Type;)Lorg/msgpack/template/Template;

    move-result-object v0

    .line 421
    invoke-virtual {p0, p1, p2, v0}, Lorg/msgpack/MessagePack;->read(Ljava/nio/ByteBuffer;Ljava/lang/Object;Lorg/msgpack/template/Template;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public read(Ljava/nio/ByteBuffer;Ljava/lang/Object;Lorg/msgpack/template/Template;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/nio/ByteBuffer;",
            "TT;",
            "Lorg/msgpack/template/Template<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 465
    invoke-virtual {p0, p1}, Lorg/msgpack/MessagePack;->createBufferUnpacker(Ljava/nio/ByteBuffer;)Lorg/msgpack/unpacker/BufferUnpacker;

    move-result-object p1

    .line 466
    invoke-interface {p3, p1, p2}, Lorg/msgpack/template/Template;->read(Lorg/msgpack/unpacker/Unpacker;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public read(Ljava/nio/ByteBuffer;Lorg/msgpack/template/Template;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/nio/ByteBuffer;",
            "Lorg/msgpack/template/Template<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 435
    invoke-virtual {p0, p1, v0, p2}, Lorg/msgpack/MessagePack;->read(Ljava/nio/ByteBuffer;Ljava/lang/Object;Lorg/msgpack/template/Template;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public read([BIILjava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([BII",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 403
    iget-object v0, p0, Lorg/msgpack/MessagePack;->registry:Lorg/msgpack/template/TemplateRegistry;

    invoke-virtual {v0, p4}, Lorg/msgpack/template/TemplateRegistry;->lookup(Ljava/lang/reflect/Type;)Lorg/msgpack/template/Template;

    move-result-object p4

    .line 404
    invoke-virtual {p0, p1, p2, p3}, Lorg/msgpack/MessagePack;->createBufferUnpacker([BII)Lorg/msgpack/unpacker/BufferUnpacker;

    move-result-object p1

    const/4 p2, 0x0

    .line 405
    invoke-interface {p4, p1, p2}, Lorg/msgpack/template/Template;->read(Lorg/msgpack/unpacker/Unpacker;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public read([BLjava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 370
    iget-object v0, p0, Lorg/msgpack/MessagePack;->registry:Lorg/msgpack/template/TemplateRegistry;

    invoke-virtual {v0, p2}, Lorg/msgpack/template/TemplateRegistry;->lookup(Ljava/lang/reflect/Type;)Lorg/msgpack/template/Template;

    move-result-object p2

    const/4 v0, 0x0

    .line 371
    invoke-virtual {p0, p1, v0, p2}, Lorg/msgpack/MessagePack;->read([BLjava/lang/Object;Lorg/msgpack/template/Template;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public read([BLjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([BTT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 339
    iget-object v0, p0, Lorg/msgpack/MessagePack;->registry:Lorg/msgpack/template/TemplateRegistry;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/msgpack/template/TemplateRegistry;->lookup(Ljava/lang/reflect/Type;)Lorg/msgpack/template/Template;

    move-result-object v0

    .line 340
    invoke-virtual {p0, p1, p2, v0}, Lorg/msgpack/MessagePack;->read([BLjava/lang/Object;Lorg/msgpack/template/Template;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public read([BLjava/lang/Object;Lorg/msgpack/template/Template;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([BTT;",
            "Lorg/msgpack/template/Template<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 387
    invoke-virtual {p0, p1}, Lorg/msgpack/MessagePack;->createBufferUnpacker([B)Lorg/msgpack/unpacker/BufferUnpacker;

    move-result-object p1

    .line 388
    invoke-interface {p3, p1, p2}, Lorg/msgpack/template/Template;->read(Lorg/msgpack/unpacker/Unpacker;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public read([BLorg/msgpack/template/Template;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Lorg/msgpack/template/Template<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 355
    invoke-virtual {p0, p1, v0, p2}, Lorg/msgpack/MessagePack;->read([BLjava/lang/Object;Lorg/msgpack/template/Template;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public read(Ljava/io/InputStream;)Lorg/msgpack/type/Value;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 324
    invoke-virtual {p0, p1}, Lorg/msgpack/MessagePack;->createUnpacker(Ljava/io/InputStream;)Lorg/msgpack/unpacker/Unpacker;

    move-result-object p1

    invoke-interface {p1}, Lorg/msgpack/unpacker/Unpacker;->readValue()Lorg/msgpack/type/Value;

    move-result-object p1

    return-object p1
.end method

.method public read(Ljava/nio/ByteBuffer;)Lorg/msgpack/type/Value;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    invoke-virtual {p0, p1}, Lorg/msgpack/MessagePack;->createBufferUnpacker(Ljava/nio/ByteBuffer;)Lorg/msgpack/unpacker/BufferUnpacker;

    move-result-object p1

    invoke-interface {p1}, Lorg/msgpack/unpacker/BufferUnpacker;->readValue()Lorg/msgpack/type/Value;

    move-result-object p1

    return-object p1
.end method

.method public read([B)Lorg/msgpack/type/Value;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/msgpack/MessagePack;->read([BII)Lorg/msgpack/type/Value;

    move-result-object p1

    return-object p1
.end method

.method public read([BII)Lorg/msgpack/type/Value;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 297
    invoke-virtual {p0, p1, p2, p3}, Lorg/msgpack/MessagePack;->createBufferUnpacker([BII)Lorg/msgpack/unpacker/BufferUnpacker;

    move-result-object p1

    invoke-interface {p1}, Lorg/msgpack/unpacker/BufferUnpacker;->readValue()Lorg/msgpack/type/Value;

    move-result-object p1

    return-object p1
.end method

.method public register(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 602
    iget-object v0, p0, Lorg/msgpack/MessagePack;->registry:Lorg/msgpack/template/TemplateRegistry;

    invoke-virtual {v0, p1}, Lorg/msgpack/template/TemplateRegistry;->register(Ljava/lang/Class;)V

    return-void
.end method

.method public register(Ljava/lang/Class;Lorg/msgpack/template/Template;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lorg/msgpack/template/Template<",
            "TT;>;)V"
        }
    .end annotation

    .line 615
    iget-object v0, p0, Lorg/msgpack/MessagePack;->registry:Lorg/msgpack/template/TemplateRegistry;

    invoke-virtual {v0, p1, p2}, Lorg/msgpack/template/TemplateRegistry;->register(Ljava/lang/reflect/Type;Lorg/msgpack/template/Template;)V

    return-void
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/msgpack/MessagePack;->registry:Lorg/msgpack/template/TemplateRegistry;

    invoke-virtual {v0, p1}, Lorg/msgpack/template/TemplateRegistry;->setClassLoader(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public unconvert(Ljava/lang/Object;)Lorg/msgpack/type/Value;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lorg/msgpack/type/Value;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 582
    new-instance v0, Lorg/msgpack/packer/Unconverter;

    invoke-direct {v0, p0}, Lorg/msgpack/packer/Unconverter;-><init>(Lorg/msgpack/MessagePack;)V

    if-nez p1, :cond_0

    .line 584
    invoke-virtual {v0}, Lorg/msgpack/packer/Unconverter;->writeNil()Lorg/msgpack/packer/Packer;

    goto :goto_0

    .line 587
    :cond_0
    iget-object v1, p0, Lorg/msgpack/MessagePack;->registry:Lorg/msgpack/template/TemplateRegistry;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/msgpack/template/TemplateRegistry;->lookup(Ljava/lang/reflect/Type;)Lorg/msgpack/template/Template;

    move-result-object v1

    .line 588
    invoke-interface {v1, v0, p1}, Lorg/msgpack/template/Template;->write(Lorg/msgpack/packer/Packer;Ljava/lang/Object;)V

    .line 590
    :goto_0
    invoke-virtual {v0}, Lorg/msgpack/packer/Unconverter;->getResult()Lorg/msgpack/type/Value;

    move-result-object p1

    return-object p1
.end method

.method public unregister()V
    .locals 1

    .line 637
    iget-object v0, p0, Lorg/msgpack/MessagePack;->registry:Lorg/msgpack/template/TemplateRegistry;

    invoke-virtual {v0}, Lorg/msgpack/template/TemplateRegistry;->unregister()V

    return-void
.end method

.method public unregister(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 627
    iget-object v0, p0, Lorg/msgpack/MessagePack;->registry:Lorg/msgpack/template/TemplateRegistry;

    invoke-virtual {v0, p1}, Lorg/msgpack/template/TemplateRegistry;->unregister(Ljava/lang/reflect/Type;)Z

    move-result p1

    return p1
.end method

.method public write(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/OutputStream;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 228
    invoke-virtual {p0, p1}, Lorg/msgpack/MessagePack;->createPacker(Ljava/io/OutputStream;)Lorg/msgpack/packer/Packer;

    move-result-object p1

    if-nez p2, :cond_0

    .line 230
    invoke-interface {p1}, Lorg/msgpack/packer/Packer;->writeNil()Lorg/msgpack/packer/Packer;

    goto :goto_0

    .line 233
    :cond_0
    iget-object v0, p0, Lorg/msgpack/MessagePack;->registry:Lorg/msgpack/template/TemplateRegistry;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/msgpack/template/TemplateRegistry;->lookup(Ljava/lang/reflect/Type;)Lorg/msgpack/template/Template;

    move-result-object v0

    .line 234
    invoke-interface {v0, p1, p2}, Lorg/msgpack/template/Template;->write(Lorg/msgpack/packer/Packer;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public write(Ljava/io/OutputStream;Ljava/lang/Object;Lorg/msgpack/template/Template;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/OutputStream;",
            "TT;",
            "Lorg/msgpack/template/Template<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 252
    invoke-virtual {p0, p1}, Lorg/msgpack/MessagePack;->createPacker(Ljava/io/OutputStream;)Lorg/msgpack/packer/Packer;

    move-result-object p1

    .line 253
    invoke-interface {p3, p1, p2}, Lorg/msgpack/template/Template;->write(Lorg/msgpack/packer/Packer;Ljava/lang/Object;)V

    return-void
.end method

.method public write(Ljava/lang/Object;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    invoke-virtual {p0}, Lorg/msgpack/MessagePack;->createBufferPacker()Lorg/msgpack/packer/BufferPacker;

    move-result-object v0

    if-nez p1, :cond_0

    .line 192
    invoke-interface {v0}, Lorg/msgpack/packer/BufferPacker;->writeNil()Lorg/msgpack/packer/Packer;

    goto :goto_0

    .line 195
    :cond_0
    iget-object v1, p0, Lorg/msgpack/MessagePack;->registry:Lorg/msgpack/template/TemplateRegistry;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/msgpack/template/TemplateRegistry;->lookup(Ljava/lang/reflect/Type;)Lorg/msgpack/template/Template;

    move-result-object v1

    .line 196
    invoke-interface {v1, v0, p1}, Lorg/msgpack/template/Template;->write(Lorg/msgpack/packer/Packer;Ljava/lang/Object;)V

    .line 198
    :goto_0
    invoke-interface {v0}, Lorg/msgpack/packer/BufferPacker;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public write(Ljava/lang/Object;Lorg/msgpack/template/Template;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lorg/msgpack/template/Template<",
            "TT;>;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    invoke-virtual {p0}, Lorg/msgpack/MessagePack;->createBufferPacker()Lorg/msgpack/packer/BufferPacker;

    move-result-object v0

    .line 213
    invoke-interface {p2, v0, p1}, Lorg/msgpack/template/Template;->write(Lorg/msgpack/packer/Packer;Ljava/lang/Object;)V

    .line 214
    invoke-interface {v0}, Lorg/msgpack/packer/BufferPacker;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public write(Lorg/msgpack/type/Value;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    invoke-virtual {p0}, Lorg/msgpack/MessagePack;->createBufferPacker()Lorg/msgpack/packer/BufferPacker;

    move-result-object v0

    .line 268
    invoke-interface {v0, p1}, Lorg/msgpack/packer/BufferPacker;->write(Lorg/msgpack/type/Value;)Lorg/msgpack/packer/Packer;

    .line 269
    invoke-interface {v0}, Lorg/msgpack/packer/BufferPacker;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method
