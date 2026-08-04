.class public final Ljavassist/CtPrimitiveType;
.super Ljavassist/CtClass;
.source "CtPrimitiveType.java"


# instance fields
.field private arrayType:I

.field private dataSize:I

.field private descriptor:C

.field private getMethodName:Ljava/lang/String;

.field private mDescriptor:Ljava/lang/String;

.field private returnOp:I

.field private wrapperName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Ljavassist/CtClass;-><init>(Ljava/lang/String;)V

    .line 36
    iput-char p2, p0, Ljavassist/CtPrimitiveType;->descriptor:C

    .line 37
    iput-object p3, p0, Ljavassist/CtPrimitiveType;->wrapperName:Ljava/lang/String;

    .line 38
    iput-object p4, p0, Ljavassist/CtPrimitiveType;->getMethodName:Ljava/lang/String;

    .line 39
    iput-object p5, p0, Ljavassist/CtPrimitiveType;->mDescriptor:Ljava/lang/String;

    .line 40
    iput p6, p0, Ljavassist/CtPrimitiveType;->returnOp:I

    .line 41
    iput p7, p0, Ljavassist/CtPrimitiveType;->arrayType:I

    .line 42
    iput p8, p0, Ljavassist/CtPrimitiveType;->dataSize:I

    return-void
.end method


# virtual methods
.method public getArrayType()I
    .locals 1

    .line 104
    iget v0, p0, Ljavassist/CtPrimitiveType;->arrayType:I

    return v0
.end method

.method public getDataSize()I
    .locals 1

    .line 111
    iget v0, p0, Ljavassist/CtPrimitiveType;->dataSize:I

    return v0
.end method

.method public getDescriptor()C
    .locals 1

    .line 66
    iget-char v0, p0, Ljavassist/CtPrimitiveType;->descriptor:C

    return v0
.end method

.method public getGetMethodDescriptor()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Ljavassist/CtPrimitiveType;->mDescriptor:Ljava/lang/String;

    return-object v0
.end method

.method public getGetMethodName()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Ljavassist/CtPrimitiveType;->getMethodName:Ljava/lang/String;

    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    const/16 v0, 0x11

    return v0
.end method

.method public getReturnOp()I
    .locals 1

    .line 96
    iget v0, p0, Ljavassist/CtPrimitiveType;->returnOp:I

    return v0
.end method

.method public getWrapperName()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Ljavassist/CtPrimitiveType;->wrapperName:Ljava/lang/String;

    return-object v0
.end method

.method public isPrimitive()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
