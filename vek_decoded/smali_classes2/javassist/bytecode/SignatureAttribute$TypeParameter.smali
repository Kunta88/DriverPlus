.class public Ljavassist/bytecode/SignatureAttribute$TypeParameter;
.super Ljava/lang/Object;
.source "SignatureAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/SignatureAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TypeParameter"
.end annotation


# instance fields
.field name:Ljava/lang/String;

.field superClass:Ljavassist/bytecode/SignatureAttribute$ObjectType;

.field superInterfaces:[Ljavassist/bytecode/SignatureAttribute$ObjectType;


# direct methods
.method constructor <init>(Ljava/lang/String;IILjavassist/bytecode/SignatureAttribute$ObjectType;[Ljavassist/bytecode/SignatureAttribute$ObjectType;)V
    .locals 0

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljavassist/bytecode/SignatureAttribute$TypeParameter;->name:Ljava/lang/String;

    .line 297
    iput-object p4, p0, Ljavassist/bytecode/SignatureAttribute$TypeParameter;->superClass:Ljavassist/bytecode/SignatureAttribute$ObjectType;

    .line 298
    iput-object p5, p0, Ljavassist/bytecode/SignatureAttribute$TypeParameter;->superInterfaces:[Ljavassist/bytecode/SignatureAttribute$ObjectType;

    return-void
.end method

.method static toString(Ljava/lang/StringBuffer;[Ljavassist/bytecode/SignatureAttribute$TypeParameter;)V
    .locals 2

    const/16 v0, 0x3c

    .line 346
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    .line 347
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    if-lez v0, :cond_0

    const-string v1, ", "

    .line 349
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 351
    :cond_0
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 p1, 0x3e

    .line 354
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method


# virtual methods
.method public getClassBound()Ljavassist/bytecode/SignatureAttribute$ObjectType;
    .locals 1

    .line 313
    iget-object v0, p0, Ljavassist/bytecode/SignatureAttribute$TypeParameter;->superClass:Ljavassist/bytecode/SignatureAttribute$ObjectType;

    return-object v0
.end method

.method public getInterfaceBound()[Ljavassist/bytecode/SignatureAttribute$ObjectType;
    .locals 1

    .line 320
    iget-object v0, p0, Ljavassist/bytecode/SignatureAttribute$TypeParameter;->superInterfaces:[Ljavassist/bytecode/SignatureAttribute$ObjectType;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 305
    iget-object v0, p0, Ljavassist/bytecode/SignatureAttribute$TypeParameter;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 326
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljavassist/bytecode/SignatureAttribute$TypeParameter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 327
    iget-object v1, p0, Ljavassist/bytecode/SignatureAttribute$TypeParameter;->superClass:Ljavassist/bytecode/SignatureAttribute$ObjectType;

    const-string v2, " extends "

    if-eqz v1, :cond_0

    .line 328
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v3, p0, Ljavassist/bytecode/SignatureAttribute$TypeParameter;->superClass:Ljavassist/bytecode/SignatureAttribute$ObjectType;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 330
    :cond_0
    iget-object v1, p0, Ljavassist/bytecode/SignatureAttribute$TypeParameter;->superInterfaces:[Ljavassist/bytecode/SignatureAttribute$ObjectType;

    array-length v1, v1

    if-lez v1, :cond_3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    if-gtz v3, :cond_2

    .line 333
    iget-object v4, p0, Ljavassist/bytecode/SignatureAttribute$TypeParameter;->superClass:Ljavassist/bytecode/SignatureAttribute$ObjectType;

    if-eqz v4, :cond_1

    goto :goto_1

    .line 336
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_2
    :goto_1
    const-string v4, " & "

    .line 334
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 338
    :goto_2
    iget-object v4, p0, Ljavassist/bytecode/SignatureAttribute$TypeParameter;->superInterfaces:[Ljavassist/bytecode/SignatureAttribute$ObjectType;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 342
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
