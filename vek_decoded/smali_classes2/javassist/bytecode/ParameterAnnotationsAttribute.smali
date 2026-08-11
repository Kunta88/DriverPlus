.class public Ljavassist/bytecode/ParameterAnnotationsAttribute;
.super Ljavassist/bytecode/AttributeInfo;
.source "ParameterAnnotationsAttribute.java"


# static fields
.field public static final invisibleTag:Ljava/lang/String; = "RuntimeInvisibleParameterAnnotations"

.field public static final visibleTag:Ljava/lang/String; = "RuntimeVisibleParameterAnnotations"


# direct methods
.method constructor <init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    invoke-direct {p0, p1, p2, p3}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    return-void
.end method

.method public constructor <init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    .line 85
    invoke-direct {p0, p1, p2, v0}, Ljavassist/bytecode/ParameterAnnotationsAttribute;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;[B)V

    return-void
.end method

.method public constructor <init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;[B)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;[B)V

    return-void
.end method


# virtual methods
.method public copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/AttributeInfo;
    .locals 3

    .line 108
    new-instance v0, Ljavassist/bytecode/AnnotationsAttribute$Copier;

    iget-object v1, p0, Ljavassist/bytecode/ParameterAnnotationsAttribute;->info:[B

    iget-object v2, p0, Ljavassist/bytecode/ParameterAnnotationsAttribute;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-direct {v0, v1, v2, p1, p2}, Ljavassist/bytecode/AnnotationsAttribute$Copier;-><init>([BLjavassist/bytecode/ConstPool;Ljavassist/bytecode/ConstPool;Ljava/util/Map;)V

    .line 110
    :try_start_0
    invoke-virtual {v0}, Ljavassist/bytecode/AnnotationsAttribute$Copier;->parameters()V

    .line 111
    new-instance p2, Ljavassist/bytecode/ParameterAnnotationsAttribute;

    invoke-virtual {p0}, Ljavassist/bytecode/ParameterAnnotationsAttribute;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljavassist/bytecode/AnnotationsAttribute$Copier;->close()[B

    move-result-object v0

    invoke-direct {p2, p1, v1, v0}, Ljavassist/bytecode/ParameterAnnotationsAttribute;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 115
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getAnnotations()[[Ljavassist/bytecode/annotation/Annotation;
    .locals 3

    .line 133
    :try_start_0
    new-instance v0, Ljavassist/bytecode/AnnotationsAttribute$Parser;

    iget-object v1, p0, Ljavassist/bytecode/ParameterAnnotationsAttribute;->info:[B

    iget-object v2, p0, Ljavassist/bytecode/ParameterAnnotationsAttribute;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-direct {v0, v1, v2}, Ljavassist/bytecode/AnnotationsAttribute$Parser;-><init>([BLjavassist/bytecode/ConstPool;)V

    invoke-virtual {v0}, Ljavassist/bytecode/AnnotationsAttribute$Parser;->parseParameters()[[Ljavassist/bytecode/annotation/Annotation;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 136
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getRefClasses(Ljava/util/Map;)V
    .locals 0

    .line 190
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ParameterAnnotationsAttribute;->renameClass(Ljava/util/Map;)V

    return-void
.end method

.method public numParameters()I
    .locals 2

    .line 101
    iget-object v0, p0, Ljavassist/bytecode/ParameterAnnotationsAttribute;->info:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method renameClass(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 176
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 177
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    invoke-virtual {p0, v0}, Ljavassist/bytecode/ParameterAnnotationsAttribute;->renameClass(Ljava/util/Map;)V

    return-void
.end method

.method renameClass(Ljava/util/Map;)V
    .locals 3

    .line 182
    new-instance v0, Ljavassist/bytecode/AnnotationsAttribute$Renamer;

    iget-object v1, p0, Ljavassist/bytecode/ParameterAnnotationsAttribute;->info:[B

    invoke-virtual {p0}, Ljavassist/bytecode/ParameterAnnotationsAttribute;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Ljavassist/bytecode/AnnotationsAttribute$Renamer;-><init>([BLjavassist/bytecode/ConstPool;Ljava/util/Map;)V

    .line 184
    :try_start_0
    invoke-virtual {v0}, Ljavassist/bytecode/AnnotationsAttribute$Renamer;->parameters()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 186
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setAnnotations([[Ljavassist/bytecode/annotation/Annotation;)V
    .locals 8

    .line 150
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 151
    new-instance v1, Ljavassist/bytecode/annotation/AnnotationsWriter;

    iget-object v2, p0, Ljavassist/bytecode/ParameterAnnotationsAttribute;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-direct {v1, v0, v2}, Ljavassist/bytecode/annotation/AnnotationsWriter;-><init>(Ljava/io/OutputStream;Ljavassist/bytecode/ConstPool;)V

    .line 153
    :try_start_0
    array-length v2, p1

    .line 154
    invoke-virtual {v1, v2}, Ljavassist/bytecode/annotation/AnnotationsWriter;->numParameters(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    .line 156
    aget-object v5, p1, v4

    .line 157
    array-length v6, v5

    invoke-virtual {v1, v6}, Ljavassist/bytecode/annotation/AnnotationsWriter;->numAnnotations(I)V

    const/4 v6, 0x0

    .line 158
    :goto_1
    array-length v7, v5

    if-ge v6, v7, :cond_0

    .line 159
    aget-object v7, v5, v6

    invoke-virtual {v7, v1}, Ljavassist/bytecode/annotation/Annotation;->write(Ljavassist/bytecode/annotation/AnnotationsWriter;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 162
    :cond_1
    invoke-virtual {v1}, Ljavassist/bytecode/annotation/AnnotationsWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljavassist/bytecode/ParameterAnnotationsAttribute;->set([B)V

    return-void

    :catch_0
    move-exception p1

    .line 165
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 196
    invoke-virtual {p0}, Ljavassist/bytecode/ParameterAnnotationsAttribute;->getAnnotations()[[Ljavassist/bytecode/annotation/Annotation;

    move-result-object v0

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 199
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_3

    add-int/lit8 v4, v3, 0x1

    .line 200
    aget-object v3, v0, v3

    const/4 v5, 0x0

    .line 202
    :goto_1
    array-length v6, v3

    if-ge v5, v6, :cond_1

    add-int/lit8 v6, v5, 0x1

    .line 203
    aget-object v5, v3, v5

    invoke-virtual {v5}, Ljavassist/bytecode/annotation/Annotation;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    array-length v5, v3

    if-eq v6, v5, :cond_0

    const-string v5, " "

    .line 205
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    move v5, v6

    goto :goto_1

    .line 208
    :cond_1
    array-length v3, v0

    if-eq v4, v3, :cond_2

    const-string v3, ", "

    .line 209
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    move v3, v4

    goto :goto_0

    .line 212
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
