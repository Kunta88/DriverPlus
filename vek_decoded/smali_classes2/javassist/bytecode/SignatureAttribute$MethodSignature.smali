.class public Ljavassist/bytecode/SignatureAttribute$MethodSignature;
.super Ljava/lang/Object;
.source "SignatureAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/SignatureAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MethodSignature"
.end annotation


# instance fields
.field exceptions:[Ljavassist/bytecode/SignatureAttribute$ObjectType;

.field params:[Ljavassist/bytecode/SignatureAttribute$Type;

.field retType:Ljavassist/bytecode/SignatureAttribute$Type;

.field typeParams:[Ljavassist/bytecode/SignatureAttribute$TypeParameter;


# direct methods
.method constructor <init>([Ljavassist/bytecode/SignatureAttribute$TypeParameter;[Ljavassist/bytecode/SignatureAttribute$Type;Ljavassist/bytecode/SignatureAttribute$Type;[Ljavassist/bytecode/SignatureAttribute$ObjectType;)V
    .locals 0

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    iput-object p1, p0, Ljavassist/bytecode/SignatureAttribute$MethodSignature;->typeParams:[Ljavassist/bytecode/SignatureAttribute$TypeParameter;

    .line 235
    iput-object p2, p0, Ljavassist/bytecode/SignatureAttribute$MethodSignature;->params:[Ljavassist/bytecode/SignatureAttribute$Type;

    .line 236
    iput-object p3, p0, Ljavassist/bytecode/SignatureAttribute$MethodSignature;->retType:Ljavassist/bytecode/SignatureAttribute$Type;

    .line 237
    iput-object p4, p0, Ljavassist/bytecode/SignatureAttribute$MethodSignature;->exceptions:[Ljavassist/bytecode/SignatureAttribute$ObjectType;

    return-void
.end method


# virtual methods
.method public getExceptionTypes()[Ljavassist/bytecode/SignatureAttribute$ObjectType;
    .locals 1

    .line 265
    iget-object v0, p0, Ljavassist/bytecode/SignatureAttribute$MethodSignature;->exceptions:[Ljavassist/bytecode/SignatureAttribute$ObjectType;

    return-object v0
.end method

.method public getParameterTypes()[Ljavassist/bytecode/SignatureAttribute$Type;
    .locals 1

    .line 252
    iget-object v0, p0, Ljavassist/bytecode/SignatureAttribute$MethodSignature;->params:[Ljavassist/bytecode/SignatureAttribute$Type;

    return-object v0
.end method

.method public getReturnType()Ljavassist/bytecode/SignatureAttribute$Type;
    .locals 1

    .line 257
    iget-object v0, p0, Ljavassist/bytecode/SignatureAttribute$MethodSignature;->retType:Ljavassist/bytecode/SignatureAttribute$Type;

    return-object v0
.end method

.method public getTypeParameters()[Ljavassist/bytecode/SignatureAttribute$TypeParameter;
    .locals 1

    .line 245
    iget-object v0, p0, Ljavassist/bytecode/SignatureAttribute$MethodSignature;->typeParams:[Ljavassist/bytecode/SignatureAttribute$TypeParameter;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 271
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 273
    iget-object v1, p0, Ljavassist/bytecode/SignatureAttribute$MethodSignature;->typeParams:[Ljavassist/bytecode/SignatureAttribute$TypeParameter;

    invoke-static {v0, v1}, Ljavassist/bytecode/SignatureAttribute$TypeParameter;->toString(Ljava/lang/StringBuffer;[Ljavassist/bytecode/SignatureAttribute$TypeParameter;)V

    const-string v1, " ("

    .line 274
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 275
    iget-object v1, p0, Ljavassist/bytecode/SignatureAttribute$MethodSignature;->params:[Ljavassist/bytecode/SignatureAttribute$Type;

    invoke-static {v0, v1}, Ljavassist/bytecode/SignatureAttribute$Type;->toString(Ljava/lang/StringBuffer;[Ljavassist/bytecode/SignatureAttribute$Type;)V

    const-string v1, ") "

    .line 276
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 277
    iget-object v1, p0, Ljavassist/bytecode/SignatureAttribute$MethodSignature;->retType:Ljavassist/bytecode/SignatureAttribute$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 278
    iget-object v1, p0, Ljavassist/bytecode/SignatureAttribute$MethodSignature;->exceptions:[Ljavassist/bytecode/SignatureAttribute$ObjectType;

    array-length v1, v1

    if-lez v1, :cond_0

    const-string v1, " throws "

    .line 279
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 280
    iget-object v1, p0, Ljavassist/bytecode/SignatureAttribute$MethodSignature;->exceptions:[Ljavassist/bytecode/SignatureAttribute$ObjectType;

    invoke-static {v0, v1}, Ljavassist/bytecode/SignatureAttribute$Type;->toString(Ljava/lang/StringBuffer;[Ljavassist/bytecode/SignatureAttribute$Type;)V

    .line 283
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
