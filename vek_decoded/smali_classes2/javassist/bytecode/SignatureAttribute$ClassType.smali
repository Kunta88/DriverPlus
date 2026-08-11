.class public Ljavassist/bytecode/SignatureAttribute$ClassType;
.super Ljavassist/bytecode/SignatureAttribute$ObjectType;
.source "SignatureAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/SignatureAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClassType"
.end annotation


# instance fields
.field arguments:[Ljavassist/bytecode/SignatureAttribute$TypeArgument;

.field name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;II[Ljavassist/bytecode/SignatureAttribute$TypeArgument;)V
    .locals 0

    .line 474
    invoke-direct {p0}, Ljavassist/bytecode/SignatureAttribute$ObjectType;-><init>()V

    .line 475
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x2f

    const/16 p3, 0x2e

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljavassist/bytecode/SignatureAttribute$ClassType;->name:Ljava/lang/String;

    .line 476
    iput-object p4, p0, Ljavassist/bytecode/SignatureAttribute$ClassType;->arguments:[Ljavassist/bytecode/SignatureAttribute$TypeArgument;

    return-void
.end method

.method static make(Ljava/lang/String;II[Ljavassist/bytecode/SignatureAttribute$TypeArgument;Ljavassist/bytecode/SignatureAttribute$ClassType;)Ljavassist/bytecode/SignatureAttribute$ClassType;
    .locals 7

    if-nez p4, :cond_0

    .line 469
    new-instance p4, Ljavassist/bytecode/SignatureAttribute$ClassType;

    invoke-direct {p4, p0, p1, p2, p3}, Ljavassist/bytecode/SignatureAttribute$ClassType;-><init>(Ljava/lang/String;II[Ljavassist/bytecode/SignatureAttribute$TypeArgument;)V

    return-object p4

    .line 471
    :cond_0
    new-instance v6, Ljavassist/bytecode/SignatureAttribute$NestedClassType;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Ljavassist/bytecode/SignatureAttribute$NestedClassType;-><init>(Ljava/lang/String;II[Ljavassist/bytecode/SignatureAttribute$TypeArgument;Ljavassist/bytecode/SignatureAttribute$ClassType;)V

    return-object v6
.end method


# virtual methods
.method public getDeclaringClass()Ljavassist/bytecode/SignatureAttribute$ClassType;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 483
    iget-object v0, p0, Ljavassist/bytecode/SignatureAttribute$ClassType;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeArguments()[Ljavassist/bytecode/SignatureAttribute$TypeArgument;
    .locals 1

    .line 491
    iget-object v0, p0, Ljavassist/bytecode/SignatureAttribute$ClassType;->arguments:[Ljavassist/bytecode/SignatureAttribute$TypeArgument;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 505
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 506
    invoke-virtual {p0}, Ljavassist/bytecode/SignatureAttribute$ClassType;->getDeclaringClass()Ljavassist/bytecode/SignatureAttribute$ClassType;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 508
    invoke-virtual {v1}, Ljavassist/bytecode/SignatureAttribute$ClassType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 510
    :cond_0
    iget-object v1, p0, Ljavassist/bytecode/SignatureAttribute$ClassType;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 511
    iget-object v1, p0, Ljavassist/bytecode/SignatureAttribute$ClassType;->arguments:[Ljavassist/bytecode/SignatureAttribute$TypeArgument;

    if-eqz v1, :cond_3

    const/16 v1, 0x3c

    .line 512
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 513
    iget-object v1, p0, Ljavassist/bytecode/SignatureAttribute$ClassType;->arguments:[Ljavassist/bytecode/SignatureAttribute$TypeArgument;

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    if-lez v2, :cond_1

    const-string v3, ", "

    .line 516
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 518
    :cond_1
    iget-object v3, p0, Ljavassist/bytecode/SignatureAttribute$ClassType;->arguments:[Ljavassist/bytecode/SignatureAttribute$TypeArgument;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljavassist/bytecode/SignatureAttribute$TypeArgument;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/16 v1, 0x3e

    .line 521
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 524
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
