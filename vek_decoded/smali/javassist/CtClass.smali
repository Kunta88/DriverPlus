.class public abstract Ljavassist/CtClass;
.super Ljava/lang/Object;
.source "CtClass.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/CtClass$DelayedFileOutputStream;
    }
.end annotation


# static fields
.field public static booleanType:Ljavassist/CtClass; = null

.field public static byteType:Ljavassist/CtClass; = null

.field public static charType:Ljavassist/CtClass; = null

.field public static debugDump:Ljava/lang/String; = null

.field public static doubleType:Ljavassist/CtClass; = null

.field public static floatType:Ljavassist/CtClass; = null

.field public static intType:Ljavassist/CtClass; = null

.field static final javaLangObject:Ljava/lang/String; = "java.lang.Object"

.field public static longType:Ljavassist/CtClass; = null

.field static primitiveTypes:[Ljavassist/CtClass; = null

.field public static shortType:Ljavassist/CtClass; = null

.field public static final version:Ljava/lang/String; = "3.16.1-GA"

.field public static voidType:Ljavassist/CtClass;


# instance fields
.field protected qualifiedName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v0, 0x9

    new-array v0, v0, [Ljavassist/CtClass;

    .line 145
    sput-object v0, Ljavassist/CtClass;->primitiveTypes:[Ljavassist/CtClass;

    .line 147
    new-instance v0, Ljavassist/CtPrimitiveType;

    const-string v2, "boolean"

    const/16 v3, 0x5a

    const-string v4, "java.lang.Boolean"

    const-string v5, "booleanValue"

    const-string v6, "()Z"

    const/16 v7, 0xac

    const/4 v8, 0x4

    const/4 v9, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Ljavassist/CtPrimitiveType;-><init>(Ljava/lang/String;CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    sput-object v0, Ljavassist/CtClass;->booleanType:Ljavassist/CtClass;

    .line 151
    sget-object v1, Ljavassist/CtClass;->primitiveTypes:[Ljavassist/CtClass;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 153
    new-instance v0, Ljavassist/CtPrimitiveType;

    const-string v4, "char"

    const/16 v5, 0x43

    const-string v6, "java.lang.Character"

    const-string v7, "charValue"

    const-string v8, "()C"

    const/16 v9, 0xac

    const/4 v10, 0x5

    const/4 v11, 0x1

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Ljavassist/CtPrimitiveType;-><init>(Ljava/lang/String;CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    sput-object v0, Ljavassist/CtClass;->charType:Ljavassist/CtClass;

    .line 156
    sget-object v1, Ljavassist/CtClass;->primitiveTypes:[Ljavassist/CtClass;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    .line 158
    new-instance v0, Ljavassist/CtPrimitiveType;

    const-string v4, "byte"

    const/16 v5, 0x42

    const-string v6, "java.lang.Byte"

    const-string v7, "byteValue"

    const-string v8, "()B"

    const/16 v10, 0x8

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Ljavassist/CtPrimitiveType;-><init>(Ljava/lang/String;CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    sput-object v0, Ljavassist/CtClass;->byteType:Ljavassist/CtClass;

    .line 161
    sget-object v1, Ljavassist/CtClass;->primitiveTypes:[Ljavassist/CtClass;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    .line 163
    new-instance v0, Ljavassist/CtPrimitiveType;

    const-string v4, "short"

    const/16 v5, 0x53

    const-string v6, "java.lang.Short"

    const-string v7, "shortValue"

    const-string v8, "()S"

    const/16 v10, 0x9

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Ljavassist/CtPrimitiveType;-><init>(Ljava/lang/String;CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    sput-object v0, Ljavassist/CtClass;->shortType:Ljavassist/CtClass;

    .line 166
    sget-object v1, Ljavassist/CtClass;->primitiveTypes:[Ljavassist/CtClass;

    const/4 v2, 0x3

    aput-object v0, v1, v2

    .line 168
    new-instance v0, Ljavassist/CtPrimitiveType;

    const-string v4, "int"

    const/16 v5, 0x49

    const-string v6, "java.lang.Integer"

    const-string v7, "intValue"

    const-string v8, "()I"

    const/16 v10, 0xa

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Ljavassist/CtPrimitiveType;-><init>(Ljava/lang/String;CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    sput-object v0, Ljavassist/CtClass;->intType:Ljavassist/CtClass;

    .line 171
    sget-object v1, Ljavassist/CtClass;->primitiveTypes:[Ljavassist/CtClass;

    const/4 v2, 0x4

    aput-object v0, v1, v2

    .line 173
    new-instance v0, Ljavassist/CtPrimitiveType;

    const-string v4, "long"

    const/16 v5, 0x4a

    const-string v6, "java.lang.Long"

    const-string v7, "longValue"

    const-string v8, "()J"

    const/16 v9, 0xad

    const/16 v10, 0xb

    const/4 v11, 0x2

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Ljavassist/CtPrimitiveType;-><init>(Ljava/lang/String;CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    sput-object v0, Ljavassist/CtClass;->longType:Ljavassist/CtClass;

    .line 176
    sget-object v1, Ljavassist/CtClass;->primitiveTypes:[Ljavassist/CtClass;

    const/4 v2, 0x5

    aput-object v0, v1, v2

    .line 178
    new-instance v0, Ljavassist/CtPrimitiveType;

    const-string v4, "float"

    const/16 v5, 0x46

    const-string v6, "java.lang.Float"

    const-string v7, "floatValue"

    const-string v8, "()F"

    const/16 v9, 0xae

    const/4 v10, 0x6

    const/4 v11, 0x1

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Ljavassist/CtPrimitiveType;-><init>(Ljava/lang/String;CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    sput-object v0, Ljavassist/CtClass;->floatType:Ljavassist/CtClass;

    .line 181
    sget-object v1, Ljavassist/CtClass;->primitiveTypes:[Ljavassist/CtClass;

    const/4 v2, 0x6

    aput-object v0, v1, v2

    .line 183
    new-instance v0, Ljavassist/CtPrimitiveType;

    const-string v4, "double"

    const/16 v5, 0x44

    const-string v6, "java.lang.Double"

    const-string v7, "doubleValue"

    const-string v8, "()D"

    const/16 v9, 0xaf

    const/4 v10, 0x7

    const/4 v11, 0x2

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Ljavassist/CtPrimitiveType;-><init>(Ljava/lang/String;CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    sput-object v0, Ljavassist/CtClass;->doubleType:Ljavassist/CtClass;

    .line 186
    sget-object v1, Ljavassist/CtClass;->primitiveTypes:[Ljavassist/CtClass;

    const/4 v2, 0x7

    aput-object v0, v1, v2

    .line 188
    new-instance v0, Ljavassist/CtPrimitiveType;

    const-string v4, "void"

    const/16 v5, 0x56

    const-string v6, "java.lang.Void"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xb1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Ljavassist/CtPrimitiveType;-><init>(Ljava/lang/String;CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    sput-object v0, Ljavassist/CtClass;->voidType:Ljavassist/CtClass;

    .line 190
    sget-object v1, Ljavassist/CtClass;->primitiveTypes:[Ljavassist/CtClass;

    const/16 v2, 0x8

    aput-object v0, v1, v2

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-object p1, p0, Ljavassist/CtClass;->qualifiedName:Ljava/lang/String;

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1

    .line 81
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "Javassist version 3.16.1-GA"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 82
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "Copyright (C) 1999-2012 Shigeru Chiba. All Rights Reserved."

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addConstructor(Ljavassist/CtConstructor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 925
    invoke-virtual {p0}, Ljavassist/CtClass;->checkModify()V

    return-void
.end method

.method public addField(Ljavassist/CtField;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 965
    check-cast v0, Ljavassist/CtField$Initializer;

    invoke-virtual {p0, p1, v0}, Ljavassist/CtClass;->addField(Ljavassist/CtField;Ljavassist/CtField$Initializer;)V

    return-void
.end method

.method public addField(Ljavassist/CtField;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 1001
    invoke-virtual {p0}, Ljavassist/CtClass;->checkModify()V

    return-void
.end method

.method public addField(Ljavassist/CtField;Ljavassist/CtField$Initializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 1029
    invoke-virtual {p0}, Ljavassist/CtClass;->checkModify()V

    return-void
.end method

.method public addInterface(Ljavassist/CtClass;)V
    .locals 0

    .line 662
    invoke-virtual {p0}, Ljavassist/CtClass;->checkModify()V

    return-void
.end method

.method public addMethod(Ljavassist/CtMethod;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 942
    invoke-virtual {p0}, Ljavassist/CtClass;->checkModify()V

    return-void
.end method

.method checkModify()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 294
    invoke-virtual {p0}, Ljavassist/CtClass;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 295
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " class is frozen"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method compress()V
    .locals 0

    return-void
.end method

.method public debugWriteFile()V
    .locals 1

    const-string v0, "."

    .line 1374
    invoke-virtual {p0, v0}, Ljavassist/CtClass;->debugWriteFile(Ljava/lang/String;)V

    return-void
.end method

.method public debugWriteFile(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 1388
    :try_start_0
    invoke-virtual {p0, v0}, Ljavassist/CtClass;->stopPruning(Z)Z

    move-result v0

    .line 1389
    invoke-virtual {p0, p1}, Ljavassist/CtClass;->writeFile(Ljava/lang/String;)V

    .line 1390
    invoke-virtual {p0}, Ljavassist/CtClass;->defrost()V

    .line 1391
    invoke-virtual {p0, v0}, Ljavassist/CtClass;->stopPruning(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1394
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public defrost()V
    .locals 3

    .line 316
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot defrost "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public detach()V
    .locals 4

    .line 1212
    invoke-virtual {p0}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v0

    .line 1213
    invoke-virtual {p0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavassist/ClassPool;->removeCached(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v1

    if-eq v1, p0, :cond_0

    .line 1215
    invoke-virtual {p0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Ljavassist/ClassPool;->cacheCtClass(Ljava/lang/String;Ljavassist/CtClass;Z)V

    :cond_0
    return-void
.end method

.method protected extendToString(Ljava/lang/StringBuffer;)V
    .locals 1

    .line 215
    invoke-virtual {p0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public freeze()V
    .locals 0

    return-void
.end method

.method public getAccessorMaker()Ljavassist/compiler/AccessorMaker;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getAnnotations()[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public getAttribute(Ljava/lang/String;)[B
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getAvailableAnnotations()[Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public getClassFile()Ljavassist/bytecode/ClassFile;
    .locals 1

    .line 230
    invoke-virtual {p0}, Ljavassist/CtClass;->checkModify()V

    .line 231
    invoke-virtual {p0}, Ljavassist/CtClass;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    return-object v0
.end method

.method public getClassFile2()Ljavassist/bytecode/ClassFile;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getClassInitializer()Ljavassist/CtConstructor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getClassPool()Ljavassist/ClassPool;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getComponentType()Ljavassist/CtClass;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getConstructor(Ljava/lang/String;)Ljavassist/CtConstructor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 799
    new-instance p1, Ljavassist/NotFoundException;

    const-string v0, "no such constructor"

    invoke-direct {p1, v0}, Ljavassist/NotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getConstructors()[Ljavassist/CtConstructor;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljavassist/CtConstructor;

    return-object v0
.end method

.method public getDeclaredBehaviors()[Ljavassist/CtBehavior;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljavassist/CtBehavior;

    return-object v0
.end method

.method public getDeclaredClasses()[Ljavassist/CtClass;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 560
    invoke-virtual {p0}, Ljavassist/CtClass;->getNestedClasses()[Ljavassist/CtClass;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaredConstructor([Ljavassist/CtClass;)Ljavassist/CtConstructor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 819
    invoke-static {p1}, Ljavassist/bytecode/Descriptor;->ofConstructor([Ljavassist/CtClass;)Ljava/lang/String;

    move-result-object p1

    .line 820
    invoke-virtual {p0, p1}, Ljavassist/CtClass;->getConstructor(Ljava/lang/String;)Ljavassist/CtConstructor;

    move-result-object p1

    return-object p1
.end method

.method public getDeclaredConstructors()[Ljavassist/CtConstructor;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljavassist/CtConstructor;

    return-object v0
.end method

.method public getDeclaredField(Ljava/lang/String;)Ljavassist/CtField;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 752
    new-instance v0, Ljavassist/NotFoundException;

    invoke-direct {v0, p1}, Ljavassist/NotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDeclaredField(Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtField;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 768
    new-instance p2, Ljavassist/NotFoundException;

    invoke-direct {p2, p1}, Ljavassist/NotFoundException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getDeclaredFields()[Ljavassist/CtField;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljavassist/CtField;

    return-object v0
.end method

.method public getDeclaredMethod(Ljava/lang/String;)Ljavassist/CtMethod;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 900
    new-instance v0, Ljavassist/NotFoundException;

    invoke-direct {v0, p1}, Ljavassist/NotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDeclaredMethod(Ljava/lang/String;[Ljavassist/CtClass;)Ljavassist/CtMethod;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 887
    new-instance p2, Ljavassist/NotFoundException;

    invoke-direct {p2, p1}, Ljavassist/NotFoundException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getDeclaredMethods()[Ljavassist/CtMethod;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljavassist/CtMethod;

    return-object v0
.end method

.method public getDeclaringClass()Ljavassist/CtClass;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getEnclosingMethod()Ljavassist/CtMethod;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getField(Ljava/lang/String;)Ljavassist/CtField;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 714
    invoke-virtual {p0, p1, v0}, Ljavassist/CtClass;->getField(Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtField;

    move-result-object p1

    return-object p1
.end method

.method public getField(Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtField;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 729
    new-instance p2, Ljavassist/NotFoundException;

    invoke-direct {p2, p1}, Ljavassist/NotFoundException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method getField2(Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtField;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getFields()[Ljavassist/CtField;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljavassist/CtField;

    return-object v0
.end method

.method public getInterfaces()[Ljavassist/CtClass;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljavassist/CtClass;

    return-object v0
.end method

.method public getMethod(Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtMethod;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 861
    new-instance p2, Ljavassist/NotFoundException;

    invoke-direct {p2, p1}, Ljavassist/NotFoundException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getMethods()[Ljavassist/CtMethod;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljavassist/CtMethod;

    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 353
    iget-object v0, p0, Ljavassist/CtClass;->qualifiedName:Ljava/lang/String;

    return-object v0
.end method

.method public getNestedClasses()[Ljavassist/CtClass;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljavassist/CtClass;

    return-object v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 3

    .line 371
    iget-object v0, p0, Ljavassist/CtClass;->qualifiedName:Ljava/lang/String;

    const/16 v1, 0x2e

    .line 372
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-gez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v2, 0x0

    .line 376
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getRefClasses()Ljava/util/Collection;
    .locals 2

    monitor-enter p0

    .line 432
    :try_start_0
    invoke-virtual {p0}, Ljavassist/CtClass;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 434
    new-instance v1, Ljavassist/CtClass$1;

    invoke-direct {v1, p0}, Ljavassist/CtClass$1;-><init>(Ljavassist/CtClass;)V

    .line 447
    invoke-virtual {v0, v1}, Ljavassist/bytecode/ClassFile;->getRefClasses(Ljava/util/Map;)V

    .line 448
    invoke-virtual {v1}, Ljavassist/ClassMap;->values()Ljava/util/Collection;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 451
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getSimpleName()Ljava/lang/String;
    .locals 2

    .line 359
    iget-object v0, p0, Ljavassist/CtClass;->qualifiedName:Ljava/lang/String;

    const/16 v1, 0x2e

    .line 360
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-gez v1, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 364
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuperclass()Ljavassist/CtClass;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 265
    new-instance v0, Ljavassist/NotFoundException;

    invoke-virtual {p0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavassist/NotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasAnnotation(Ljava/lang/Class;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method incGetCounter()V
    .locals 0

    return-void
.end method

.method public instrument(Ljavassist/CodeConverter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 1100
    invoke-virtual {p0}, Ljavassist/CtClass;->checkModify()V

    return-void
.end method

.method public instrument(Ljavassist/expr/ExprEditor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 1114
    invoke-virtual {p0}, Ljavassist/CtClass;->checkModify()V

    return-void
.end method

.method public isAnnotation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isArray()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEnum()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isFrozen()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isInterface()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isModified()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPrimitive()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public makeClassInitializer()Ljavassist/CtConstructor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 913
    new-instance v0, Ljavassist/CannotCompileException;

    const-string v1, "not a class"

    invoke-direct {v0, v1}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected makeFileOutput(Ljava/lang/String;)Ljava/io/DataOutputStream;
    .locals 3

    .line 1352
    invoke-virtual {p0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1353
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-char v1, Ljava/io/File;->separatorChar:C

    const/16 v2, 0x2e

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ".class"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1355
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x0

    .line 1357
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    .line 1358
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1359
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 1362
    :cond_0
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljavassist/CtClass$DelayedFileOutputStream;

    invoke-direct {v2, p1}, Ljavassist/CtClass$DelayedFileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public makeNestedClass(Ljava/lang/String;Z)Ljavassist/CtClass;
    .locals 1

    .line 698
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " is not a class"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public makeUniqueName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1464
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not available in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public prune()V
    .locals 0

    return-void
.end method

.method public rebuildClassFile()V
    .locals 0

    return-void
.end method

.method public removeConstructor(Ljavassist/CtConstructor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 935
    invoke-virtual {p0}, Ljavassist/CtClass;->checkModify()V

    return-void
.end method

.method public removeField(Ljavassist/CtField;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 1039
    invoke-virtual {p0}, Ljavassist/CtClass;->checkModify()V

    return-void
.end method

.method public removeMethod(Ljavassist/CtMethod;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 952
    invoke-virtual {p0}, Ljavassist/CtClass;->checkModify()V

    return-void
.end method

.method public replaceClassName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 398
    invoke-virtual {p0}, Ljavassist/CtClass;->checkModify()V

    return-void
.end method

.method public replaceClassName(Ljavassist/ClassMap;)V
    .locals 0

    .line 419
    invoke-virtual {p0}, Ljavassist/CtClass;->checkModify()V

    return-void
.end method

.method public setAttribute(Ljava/lang/String;[B)V
    .locals 0

    .line 1086
    invoke-virtual {p0}, Ljavassist/CtClass;->checkModify()V

    return-void
.end method

.method public setInterfaces([Ljavassist/CtClass;)V
    .locals 0

    .line 653
    invoke-virtual {p0}, Ljavassist/CtClass;->checkModify()V

    return-void
.end method

.method public setModifiers(I)V
    .locals 0

    .line 586
    invoke-virtual {p0}, Ljavassist/CtClass;->checkModify()V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 385
    invoke-virtual {p0}, Ljavassist/CtClass;->checkModify()V

    if-eqz p1, :cond_0

    .line 387
    iput-object p1, p0, Ljavassist/CtClass;->qualifiedName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setSuperclass(Ljavassist/CtClass;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 631
    invoke-virtual {p0}, Ljavassist/CtClass;->checkModify()V

    return-void
.end method

.method public stopPruning(Z)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public subclassOf(Ljavassist/CtClass;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public subtypeOf(Ljavassist/CtClass;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    if-eq p0, p1, :cond_1

    .line 347
    invoke-virtual {p0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public toBytecode(Ljava/io/DataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1451
    new-instance p1, Ljavassist/CannotCompileException;

    const-string v0, "not a class"

    invoke-direct {p1, v0}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toBytecode()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 1304
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1305
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1307
    :try_start_0
    invoke-virtual {p0, v1}, Ljavassist/CtClass;->toBytecode(Ljava/io/DataOutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1310
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 1313
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    .line 1310
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    throw v0
.end method

.method public toClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 1140
    invoke-virtual {p0}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljavassist/ClassPool;->toClass(Ljavassist/CtClass;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final toClass(Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 1196
    invoke-virtual {p0}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljavassist/ClassPool;->toClass(Ljavassist/CtClass;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public toClass(Ljava/lang/ClassLoader;Ljava/security/ProtectionDomain;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 1177
    invoke-virtual {p0}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v0

    if-nez p1, :cond_0

    .line 1179
    invoke-virtual {v0}, Ljavassist/ClassPool;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 1181
    :cond_0
    invoke-virtual {v0, p0, p1, p2}, Ljavassist/ClassPool;->toClass(Ljavassist/CtClass;Ljava/lang/ClassLoader;Ljava/security/ProtectionDomain;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 201
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "@"

    .line 202
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 203
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "["

    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 205
    invoke-virtual {p0, v0}, Ljavassist/CtClass;->extendToString(Ljava/lang/StringBuffer;)V

    const-string v1, "]"

    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 207
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeFile()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;,
            Ljava/io/IOException;,
            Ljavassist/CannotCompileException;
        }
    .end annotation

    const-string v0, "."

    .line 1327
    invoke-virtual {p0, v0}, Ljavassist/CtClass;->writeFile(Ljava/lang/String;)V

    return-void
.end method

.method public writeFile(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1342
    invoke-virtual {p0, p1}, Ljavassist/CtClass;->makeFileOutput(Ljava/lang/String;)Ljava/io/DataOutputStream;

    move-result-object p1

    .line 1344
    :try_start_0
    invoke-virtual {p0, p1}, Ljavassist/CtClass;->toBytecode(Ljava/io/DataOutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1347
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->close()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Ljava/io/DataOutputStream;->close()V

    throw v0
.end method
