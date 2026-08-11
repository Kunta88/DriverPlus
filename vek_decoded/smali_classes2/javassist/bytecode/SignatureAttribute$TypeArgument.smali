.class public Ljavassist/bytecode/SignatureAttribute$TypeArgument;
.super Ljava/lang/Object;
.source "SignatureAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/SignatureAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TypeArgument"
.end annotation


# instance fields
.field arg:Ljavassist/bytecode/SignatureAttribute$ObjectType;

.field wildcard:C


# direct methods
.method constructor <init>(Ljavassist/bytecode/SignatureAttribute$ObjectType;C)V
    .locals 0

    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    iput-object p1, p0, Ljavassist/bytecode/SignatureAttribute$TypeArgument;->arg:Ljavassist/bytecode/SignatureAttribute$ObjectType;

    .line 367
    iput-char p2, p0, Ljavassist/bytecode/SignatureAttribute$TypeArgument;->wildcard:C

    return-void
.end method


# virtual methods
.method public getKind()C
    .locals 1

    .line 376
    iget-char v0, p0, Ljavassist/bytecode/SignatureAttribute$TypeArgument;->wildcard:C

    return v0
.end method

.method public getType()Ljavassist/bytecode/SignatureAttribute$ObjectType;
    .locals 1

    .line 391
    iget-object v0, p0, Ljavassist/bytecode/SignatureAttribute$TypeArgument;->arg:Ljavassist/bytecode/SignatureAttribute$ObjectType;

    return-object v0
.end method

.method public isWildcard()Z
    .locals 2

    .line 382
    iget-char v0, p0, Ljavassist/bytecode/SignatureAttribute$TypeArgument;->wildcard:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 397
    iget-char v0, p0, Ljavassist/bytecode/SignatureAttribute$TypeArgument;->wildcard:C

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_0

    const-string v0, "?"

    return-object v0

    .line 400
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/SignatureAttribute$TypeArgument;->arg:Ljavassist/bytecode/SignatureAttribute$ObjectType;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 401
    iget-char v1, p0, Ljavassist/bytecode/SignatureAttribute$TypeArgument;->wildcard:C

    const/16 v2, 0x20

    if-ne v1, v2, :cond_1

    return-object v0

    :cond_1
    const/16 v2, 0x2b

    if-ne v1, v2, :cond_2

    .line 404
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "? extends "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 406
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "? super "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
