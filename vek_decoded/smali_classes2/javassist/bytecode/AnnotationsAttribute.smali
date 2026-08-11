.class public Ljavassist/bytecode/AnnotationsAttribute;
.super Ljavassist/bytecode/AttributeInfo;
.source "AnnotationsAttribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/bytecode/AnnotationsAttribute$Parser;,
        Ljavassist/bytecode/AnnotationsAttribute$Copier;,
        Ljavassist/bytecode/AnnotationsAttribute$Renamer;,
        Ljavassist/bytecode/AnnotationsAttribute$Walker;
    }
.end annotation


# static fields
.field public static final invisibleTag:Ljava/lang/String; = "RuntimeInvisibleAnnotations"

.field public static final visibleTag:Ljava/lang/String; = "RuntimeVisibleAnnotations"


# direct methods
.method constructor <init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    invoke-direct {p0, p1, p2, p3}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    return-void
.end method

.method public constructor <init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 141
    fill-array-data v0, :array_0

    invoke-direct {p0, p1, p2, v0}, Ljavassist/bytecode/AnnotationsAttribute;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;[B)V

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;[B)V
    .locals 0

    .line 126
    invoke-direct {p0, p1, p2, p3}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;[B)V

    return-void
.end method


# virtual methods
.method public addAnnotation(Ljavassist/bytecode/annotation/Annotation;)V
    .locals 5

    .line 200
    invoke-virtual {p1}, Ljavassist/bytecode/annotation/Annotation;->getTypeName()Ljava/lang/String;

    move-result-object v0

    .line 201
    invoke-virtual {p0}, Ljavassist/bytecode/AnnotationsAttribute;->getAnnotations()[Ljavassist/bytecode/annotation/Annotation;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 202
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 203
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljavassist/bytecode/annotation/Annotation;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 204
    aput-object p1, v1, v3

    .line 205
    invoke-virtual {p0, v1}, Ljavassist/bytecode/AnnotationsAttribute;->setAnnotations([Ljavassist/bytecode/annotation/Annotation;)V

    return-void

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 210
    :cond_1
    array-length v0, v1

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljavassist/bytecode/annotation/Annotation;

    .line 211
    array-length v3, v1

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    array-length v1, v1

    aput-object p1, v0, v1

    .line 213
    invoke-virtual {p0, v0}, Ljavassist/bytecode/AnnotationsAttribute;->setAnnotations([Ljavassist/bytecode/annotation/Annotation;)V

    return-void
.end method

.method public copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/AttributeInfo;
    .locals 3

    .line 164
    new-instance v0, Ljavassist/bytecode/AnnotationsAttribute$Copier;

    iget-object v1, p0, Ljavassist/bytecode/AnnotationsAttribute;->info:[B

    iget-object v2, p0, Ljavassist/bytecode/AnnotationsAttribute;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-direct {v0, v1, v2, p1, p2}, Ljavassist/bytecode/AnnotationsAttribute$Copier;-><init>([BLjavassist/bytecode/ConstPool;Ljavassist/bytecode/ConstPool;Ljava/util/Map;)V

    .line 166
    :try_start_0
    invoke-virtual {v0}, Ljavassist/bytecode/AnnotationsAttribute$Copier;->annotationArray()V

    .line 167
    new-instance p2, Ljavassist/bytecode/AnnotationsAttribute;

    invoke-virtual {p0}, Ljavassist/bytecode/AnnotationsAttribute;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljavassist/bytecode/AnnotationsAttribute$Copier;->close()[B

    move-result-object v0

    invoke-direct {p2, p1, v1, v0}, Ljavassist/bytecode/AnnotationsAttribute;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 170
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getAnnotation(Ljava/lang/String;)Ljavassist/bytecode/annotation/Annotation;
    .locals 3

    .line 184
    invoke-virtual {p0}, Ljavassist/bytecode/AnnotationsAttribute;->getAnnotations()[Ljavassist/bytecode/annotation/Annotation;

    move-result-object v0

    const/4 v1, 0x0

    .line 185
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 186
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljavassist/bytecode/annotation/Annotation;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 187
    aget-object p1, v0, v1

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAnnotations()[Ljavassist/bytecode/annotation/Annotation;
    .locals 3

    .line 227
    :try_start_0
    new-instance v0, Ljavassist/bytecode/AnnotationsAttribute$Parser;

    iget-object v1, p0, Ljavassist/bytecode/AnnotationsAttribute;->info:[B

    iget-object v2, p0, Ljavassist/bytecode/AnnotationsAttribute;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-direct {v0, v1, v2}, Ljavassist/bytecode/AnnotationsAttribute$Parser;-><init>([BLjavassist/bytecode/ConstPool;)V

    invoke-virtual {v0}, Ljavassist/bytecode/AnnotationsAttribute$Parser;->parseAnnotations()[Ljavassist/bytecode/annotation/Annotation;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 230
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method getRefClasses(Ljava/util/Map;)V
    .locals 0

    .line 289
    invoke-virtual {p0, p1}, Ljavassist/bytecode/AnnotationsAttribute;->renameClass(Ljava/util/Map;)V

    return-void
.end method

.method public numAnnotations()I
    .locals 2

    .line 157
    iget-object v0, p0, Ljavassist/bytecode/AnnotationsAttribute;->info:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    return v0
.end method

.method renameClass(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 275
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 276
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    invoke-virtual {p0, v0}, Ljavassist/bytecode/AnnotationsAttribute;->renameClass(Ljava/util/Map;)V

    return-void
.end method

.method renameClass(Ljava/util/Map;)V
    .locals 3

    .line 281
    new-instance v0, Ljavassist/bytecode/AnnotationsAttribute$Renamer;

    iget-object v1, p0, Ljavassist/bytecode/AnnotationsAttribute;->info:[B

    invoke-virtual {p0}, Ljavassist/bytecode/AnnotationsAttribute;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Ljavassist/bytecode/AnnotationsAttribute$Renamer;-><init>([BLjavassist/bytecode/ConstPool;Ljava/util/Map;)V

    .line 283
    :try_start_0
    invoke-virtual {v0}, Ljavassist/bytecode/AnnotationsAttribute$Renamer;->annotationArray()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 285
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setAnnotation(Ljavassist/bytecode/annotation/Annotation;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljavassist/bytecode/annotation/Annotation;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 267
    invoke-virtual {p0, v0}, Ljavassist/bytecode/AnnotationsAttribute;->setAnnotations([Ljavassist/bytecode/annotation/Annotation;)V

    return-void
.end method

.method public setAnnotations([Ljavassist/bytecode/annotation/Annotation;)V
    .locals 5

    .line 242
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 243
    new-instance v1, Ljavassist/bytecode/annotation/AnnotationsWriter;

    iget-object v2, p0, Ljavassist/bytecode/AnnotationsAttribute;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-direct {v1, v0, v2}, Ljavassist/bytecode/annotation/AnnotationsWriter;-><init>(Ljava/io/OutputStream;Ljavassist/bytecode/ConstPool;)V

    .line 245
    :try_start_0
    array-length v2, p1

    .line 246
    invoke-virtual {v1, v2}, Ljavassist/bytecode/annotation/AnnotationsWriter;->numAnnotations(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 248
    aget-object v4, p1, v3

    invoke-virtual {v4, v1}, Ljavassist/bytecode/annotation/Annotation;->write(Ljavassist/bytecode/annotation/AnnotationsWriter;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 250
    :cond_0
    invoke-virtual {v1}, Ljavassist/bytecode/annotation/AnnotationsWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljavassist/bytecode/AnnotationsAttribute;->set([B)V

    return-void

    :catch_0
    move-exception p1

    .line 253
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 295
    invoke-virtual {p0}, Ljavassist/bytecode/AnnotationsAttribute;->getAnnotations()[Ljavassist/bytecode/annotation/Annotation;

    move-result-object v0

    .line 296
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 298
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    add-int/lit8 v3, v2, 0x1

    .line 299
    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljavassist/bytecode/annotation/Annotation;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    array-length v2, v0

    if-eq v3, v2, :cond_0

    const-string v2, ", "

    .line 301
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    move v2, v3

    goto :goto_0

    .line 304
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
