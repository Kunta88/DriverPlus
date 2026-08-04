.class public Ljavassist/bytecode/SignatureAttribute;
.super Ljavassist/bytecode/AttributeInfo;
.source "SignatureAttribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/bytecode/SignatureAttribute$TypeVariable;,
        Ljavassist/bytecode/SignatureAttribute$ArrayType;,
        Ljavassist/bytecode/SignatureAttribute$NestedClassType;,
        Ljavassist/bytecode/SignatureAttribute$ClassType;,
        Ljavassist/bytecode/SignatureAttribute$ObjectType;,
        Ljavassist/bytecode/SignatureAttribute$BaseType;,
        Ljavassist/bytecode/SignatureAttribute$Type;,
        Ljavassist/bytecode/SignatureAttribute$TypeArgument;,
        Ljavassist/bytecode/SignatureAttribute$TypeParameter;,
        Ljavassist/bytecode/SignatureAttribute$MethodSignature;,
        Ljavassist/bytecode/SignatureAttribute$ClassSignature;,
        Ljavassist/bytecode/SignatureAttribute$Cursor;
    }
.end annotation


# static fields
.field public static final tag:Ljava/lang/String; = "Signature"


# direct methods
.method constructor <init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2, p3}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    return-void
.end method

.method public constructor <init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;)V
    .locals 2

    const-string v0, "Signature"

    .line 47
    invoke-direct {p0, p1, v0}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p1, p2}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x2

    new-array p2, p2, [B

    ushr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    const/4 v1, 0x0

    aput-byte v0, p2, v1

    int-to-byte p1, p1

    const/4 v0, 0x1

    aput-byte p1, p2, v0

    .line 52
    invoke-virtual {p0, p2}, Ljavassist/bytecode/SignatureAttribute;->set([B)V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljavassist/bytecode/BadBytecode;
    .locals 0

    .line 28
    invoke-static {p0}, Ljavassist/bytecode/SignatureAttribute;->error(Ljava/lang/String;)Ljavassist/bytecode/BadBytecode;

    move-result-object p0

    return-object p0
.end method

.method private static error(Ljava/lang/String;)Ljavassist/bytecode/BadBytecode;
    .locals 3

    .line 827
    new-instance v0, Ljavassist/bytecode/BadBytecode;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad signature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static isNamePart(I)Z
    .locals 1

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3c

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static parseArray(Ljava/lang/String;Ljavassist/bytecode/SignatureAttribute$Cursor;)Ljavassist/bytecode/SignatureAttribute$ObjectType;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 812
    :goto_0
    iget v2, p1, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    add-int/2addr v2, v0

    iput v2, p1, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 815
    :cond_0
    new-instance v0, Ljavassist/bytecode/SignatureAttribute$ArrayType;

    invoke-static {p0, p1}, Ljavassist/bytecode/SignatureAttribute;->parseType(Ljava/lang/String;Ljavassist/bytecode/SignatureAttribute$Cursor;)Ljavassist/bytecode/SignatureAttribute$Type;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljavassist/bytecode/SignatureAttribute$ArrayType;-><init>(ILjavassist/bytecode/SignatureAttribute$Type;)V

    return-object v0
.end method

.method private static parseClassType(Ljava/lang/String;Ljavassist/bytecode/SignatureAttribute$Cursor;)Ljavassist/bytecode/SignatureAttribute$ClassType;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 756
    iget v0, p1, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x4c

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 757
    invoke-static {p0, p1, v0}, Ljavassist/bytecode/SignatureAttribute;->parseClassType2(Ljava/lang/String;Ljavassist/bytecode/SignatureAttribute$Cursor;Ljavassist/bytecode/SignatureAttribute$ClassType;)Ljavassist/bytecode/SignatureAttribute$ClassType;

    move-result-object p0

    return-object p0

    .line 759
    :cond_0
    invoke-static {p0}, Ljavassist/bytecode/SignatureAttribute;->error(Ljava/lang/String;)Ljavassist/bytecode/BadBytecode;

    move-result-object p0

    throw p0
.end method

.method private static parseClassType2(Ljava/lang/String;Ljavassist/bytecode/SignatureAttribute$Cursor;Ljavassist/bytecode/SignatureAttribute$ClassType;)Ljavassist/bytecode/SignatureAttribute$ClassType;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 765
    iget v0, p1, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    .line 768
    :cond_0
    iget v1, p1, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p1, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3c

    const/16 v3, 0x24

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_1

    const/16 v4, 0x3b

    if-ne v1, v4, :cond_0

    .line 770
    :cond_1
    iget v4, p1, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v2, :cond_2

    .line 773
    invoke-static {p0, p1}, Ljavassist/bytecode/SignatureAttribute;->parseTypeArgs(Ljava/lang/String;Ljavassist/bytecode/SignatureAttribute$Cursor;)[Ljavassist/bytecode/SignatureAttribute$TypeArgument;

    move-result-object v1

    .line 774
    iget v2, p1, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    add-int/lit8 v5, v2, 0x1

    iput v5, p1, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    move-object v6, v2

    move v2, v1

    move-object v1, v6

    .line 779
    :goto_0
    invoke-static {p0, v0, v4, v1, p2}, Ljavassist/bytecode/SignatureAttribute$ClassType;->make(Ljava/lang/String;II[Ljavassist/bytecode/SignatureAttribute$TypeArgument;Ljavassist/bytecode/SignatureAttribute$ClassType;)Ljavassist/bytecode/SignatureAttribute$ClassType;

    move-result-object p2

    if-ne v2, v3, :cond_3

    .line 781
    iget v0, p1, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    .line 782
    invoke-static {p0, p1, p2}, Ljavassist/bytecode/SignatureAttribute;->parseClassType2(Ljava/lang/String;Ljavassist/bytecode/SignatureAttribute$Cursor;Ljavassist/bytecode/SignatureAttribute$ClassType;)Ljavassist/bytecode/SignatureAttribute$ClassType;

    move-result-object p0

    return-object p0

    :cond_3
    return-object p2
.end method

.method private static parseMethodSig(Ljava/lang/String;)Ljavassist/bytecode/SignatureAttribute$MethodSignature;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 675
    new-instance v0, Ljavassist/bytecode/SignatureAttribute$Cursor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljavassist/bytecode/SignatureAttribute$Cursor;-><init>(Ljavassist/bytecode/SignatureAttribute$1;)V

    .line 676
    invoke-static {p0, v0}, Ljavassist/bytecode/SignatureAttribute;->parseTypeParams(Ljava/lang/String;Ljavassist/bytecode/SignatureAttribute$Cursor;)[Ljavassist/bytecode/SignatureAttribute$TypeParameter;

    move-result-object v1

    .line 677
    iget v2, v0, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x28

    if-ne v2, v3, :cond_3

    .line 680
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 681
    :goto_0
    iget v3, v0, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x29

    if-eq v3, v4, :cond_0

    .line 682
    invoke-static {p0, v0}, Ljavassist/bytecode/SignatureAttribute;->parseType(Ljava/lang/String;Ljavassist/bytecode/SignatureAttribute$Cursor;)Ljavassist/bytecode/SignatureAttribute$Type;

    move-result-object v3

    .line 683
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 686
    :cond_0
    iget v3, v0, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    .line 687
    invoke-static {p0, v0}, Ljavassist/bytecode/SignatureAttribute;->parseType(Ljava/lang/String;Ljavassist/bytecode/SignatureAttribute$Cursor;)Ljavassist/bytecode/SignatureAttribute$Type;

    move-result-object v3

    .line 688
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 689
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 690
    :goto_1
    iget v6, v0, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    if-ge v6, v4, :cond_2

    iget v6, v0, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x5e

    if-ne v6, v7, :cond_2

    .line 691
    iget v6, v0, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    const/4 v6, 0x0

    .line 692
    invoke-static {p0, v0, v6}, Ljavassist/bytecode/SignatureAttribute;->parseObjectType(Ljava/lang/String;Ljavassist/bytecode/SignatureAttribute$Cursor;Z)Ljavassist/bytecode/SignatureAttribute$ObjectType;

    move-result-object v6

    .line 693
    instance-of v7, v6, Ljavassist/bytecode/SignatureAttribute$ArrayType;

    if-nez v7, :cond_1

    .line 696
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 694
    :cond_1
    invoke-static {p0}, Ljavassist/bytecode/SignatureAttribute;->error(Ljava/lang/String;)Ljavassist/bytecode/BadBytecode;

    move-result-object p0

    throw p0

    .line 699
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljavassist/bytecode/SignatureAttribute$Type;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljavassist/bytecode/SignatureAttribute$Type;

    check-cast p0, [Ljavassist/bytecode/SignatureAttribute$Type;

    .line 700
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljavassist/bytecode/SignatureAttribute$ObjectType;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavassist/bytecode/SignatureAttribute$ObjectType;

    check-cast v0, [Ljavassist/bytecode/SignatureAttribute$ObjectType;

    .line 701
    new-instance v2, Ljavassist/bytecode/SignatureAttribute$MethodSignature;

    invoke-direct {v2, v1, p0, v3, v0}, Ljavassist/bytecode/SignatureAttribute$MethodSignature;-><init>([Ljavassist/bytecode/SignatureAttribute$TypeParameter;[Ljavassist/bytecode/SignatureAttribute$Type;Ljavassist/bytecode/SignatureAttribute$Type;[Ljavassist/bytecode/SignatureAttribute$ObjectType;)V

    return-object v2

    .line 678
    :cond_3
    invoke-static {p0}, Ljavassist/bytecode/SignatureAttribute;->error(Ljava/lang/String;)Ljavassist/bytecode/BadBytecode;

    move-result-object p0

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method private static parseObjectType(Ljava/lang/String;Ljavassist/bytecode/SignatureAttribute$Cursor;Z)Ljavassist/bytecode/SignatureAttribute$ObjectType;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 736
    iget v0, p1, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    .line 737
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x4c

    const/4 v3, 0x0

    if-eq v1, v2, :cond_3

    const/16 v2, 0x54

    if-eq v1, v2, :cond_2

    const/16 v0, 0x5b

    if-eq v1, v0, :cond_1

    if-eqz p2, :cond_0

    return-object v3

    .line 749
    :cond_0
    invoke-static {p0}, Ljavassist/bytecode/SignatureAttribute;->error(Ljava/lang/String;)Ljavassist/bytecode/BadBytecode;

    move-result-object p0

    throw p0

    .line 744
    :cond_1
    invoke-static {p0, p1}, Ljavassist/bytecode/SignatureAttribute;->parseArray(Ljava/lang/String;Ljavassist/bytecode/SignatureAttribute$Cursor;)Ljavassist/bytecode/SignatureAttribute$ObjectType;

    move-result-object p0

    return-object p0

    :cond_2
    const/16 p2, 0x3b

    .line 741
    invoke-virtual {p1, p0, p2}, Ljavassist/bytecode/SignatureAttribute$Cursor;->indexOf(Ljava/lang/String;I)I

    move-result p1

    .line 742
    new-instance p2, Ljavassist/bytecode/SignatureAttribute$TypeVariable;

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p2, p0, v0, p1}, Ljavassist/bytecode/SignatureAttribute$TypeVariable;-><init>(Ljava/lang/String;II)V

    return-object p2

    .line 739
    :cond_3
    invoke-static {p0, p1, v3}, Ljavassist/bytecode/SignatureAttribute;->parseClassType2(Ljava/lang/String;Ljavassist/bytecode/SignatureAttribute$Cursor;Ljavassist/bytecode/SignatureAttribute$ClassType;)Ljavassist/bytecode/SignatureAttribute$ClassType;

    move-result-object p0

    return-object p0
.end method

.method private static parseSig(Ljava/lang/String;)Ljavassist/bytecode/SignatureAttribute$ClassSignature;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;,
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 659
    new-instance v0, Ljavassist/bytecode/SignatureAttribute$Cursor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljavassist/bytecode/SignatureAttribute$Cursor;-><init>(Ljavassist/bytecode/SignatureAttribute$1;)V

    .line 660
    invoke-static {p0, v0}, Ljavassist/bytecode/SignatureAttribute;->parseTypeParams(Ljava/lang/String;Ljavassist/bytecode/SignatureAttribute$Cursor;)[Ljavassist/bytecode/SignatureAttribute$TypeParameter;

    move-result-object v1

    .line 661
    invoke-static {p0, v0}, Ljavassist/bytecode/SignatureAttribute;->parseClassType(Ljava/lang/String;Ljavassist/bytecode/SignatureAttribute$Cursor;)Ljavassist/bytecode/SignatureAttribute$ClassType;

    move-result-object v2

    .line 662
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 663
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 664
    :goto_0
    iget v5, v0, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    if-ge v5, v3, :cond_0

    iget v5, v0, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x4c

    if-ne v5, v6, :cond_0

    .line 665
    invoke-static {p0, v0}, Ljavassist/bytecode/SignatureAttribute;->parseClassType(Ljava/lang/String;Ljavassist/bytecode/SignatureAttribute$Cursor;)Ljavassist/bytecode/SignatureAttribute$ClassType;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 667
    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljavassist/bytecode/SignatureAttribute$ClassType;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljavassist/bytecode/SignatureAttribute$ClassType;

    check-cast p0, [Ljavassist/bytecode/SignatureAttribute$ClassType;

    .line 669
    new-instance v0, Ljavassist/bytecode/SignatureAttribute$ClassSignature;

    invoke-direct {v0, v1, v2, p0}, Ljavassist/bytecode/SignatureAttribute$ClassSignature;-><init>([Ljavassist/bytecode/SignatureAttribute$TypeParameter;Ljavassist/bytecode/SignatureAttribute$ClassType;[Ljavassist/bytecode/SignatureAttribute$ClassType;)V

    return-object v0
.end method

.method private static parseType(Ljava/lang/String;Ljavassist/bytecode/SignatureAttribute$Cursor;)Ljavassist/bytecode/SignatureAttribute$Type;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    const/4 v0, 0x1

    .line 819
    invoke-static {p0, p1, v0}, Ljavassist/bytecode/SignatureAttribute;->parseObjectType(Ljava/lang/String;Ljavassist/bytecode/SignatureAttribute$Cursor;Z)Ljavassist/bytecode/SignatureAttribute$ObjectType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 821
    new-instance v0, Ljavassist/bytecode/SignatureAttribute$BaseType;

    iget v1, p1, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p1, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-direct {v0, p0}, Ljavassist/bytecode/SignatureAttribute$BaseType;-><init>(C)V

    :cond_0
    return-object v0
.end method

.method private static parseTypeArgs(Ljava/lang/String;Ljavassist/bytecode/SignatureAttribute$Cursor;)[Ljavassist/bytecode/SignatureAttribute$TypeArgument;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 789
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 791
    :goto_0
    iget v1, p1, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p1, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3e

    if-eq v1, v2, :cond_2

    const/16 v2, 0x2a

    if-ne v1, v2, :cond_0

    .line 794
    new-instance v1, Ljavassist/bytecode/SignatureAttribute$TypeArgument;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Ljavassist/bytecode/SignatureAttribute$TypeArgument;-><init>(Ljavassist/bytecode/SignatureAttribute$ObjectType;C)V

    goto :goto_1

    :cond_0
    const/16 v2, 0x2b

    if-eq v1, v2, :cond_1

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_1

    const/16 v1, 0x20

    .line 798
    iget v2, p1, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p1, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    .line 801
    :cond_1
    new-instance v2, Ljavassist/bytecode/SignatureAttribute$TypeArgument;

    const/4 v3, 0x0

    invoke-static {p0, p1, v3}, Ljavassist/bytecode/SignatureAttribute;->parseObjectType(Ljava/lang/String;Ljavassist/bytecode/SignatureAttribute$Cursor;Z)Ljavassist/bytecode/SignatureAttribute$ObjectType;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavassist/bytecode/SignatureAttribute$TypeArgument;-><init>(Ljavassist/bytecode/SignatureAttribute$ObjectType;C)V

    move-object v1, v2

    .line 804
    :goto_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 807
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljavassist/bytecode/SignatureAttribute$TypeArgument;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljavassist/bytecode/SignatureAttribute$TypeArgument;

    check-cast p0, [Ljavassist/bytecode/SignatureAttribute$TypeArgument;

    return-object p0
.end method

.method private static parseTypeParams(Ljava/lang/String;Ljavassist/bytecode/SignatureAttribute$Cursor;)[Ljavassist/bytecode/SignatureAttribute$TypeParameter;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 707
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 708
    iget v1, p1, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_2

    .line 709
    iget v1, p1, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p1, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    .line 710
    :goto_0
    iget v1, p1, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x3e

    if-eq v1, v3, :cond_1

    .line 711
    iget v6, p1, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    const/16 v1, 0x3a

    .line 712
    invoke-virtual {p1, p0, v1}, Ljavassist/bytecode/SignatureAttribute$Cursor;->indexOf(Ljava/lang/String;I)I

    move-result v7

    .line 713
    invoke-static {p0, p1, v2}, Ljavassist/bytecode/SignatureAttribute;->parseObjectType(Ljava/lang/String;Ljavassist/bytecode/SignatureAttribute$Cursor;Z)Ljavassist/bytecode/SignatureAttribute$ObjectType;

    move-result-object v8

    .line 714
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 715
    :goto_1
    iget v4, p1, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v1, :cond_0

    .line 716
    iget v4, p1, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    add-int/2addr v4, v2

    iput v4, p1, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    const/4 v4, 0x0

    .line 717
    invoke-static {p0, p1, v4}, Ljavassist/bytecode/SignatureAttribute;->parseObjectType(Ljava/lang/String;Ljavassist/bytecode/SignatureAttribute$Cursor;Z)Ljavassist/bytecode/SignatureAttribute$ObjectType;

    move-result-object v4

    .line 718
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 721
    :cond_0
    new-instance v1, Ljavassist/bytecode/SignatureAttribute$TypeParameter;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljavassist/bytecode/SignatureAttribute$ObjectType;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljavassist/bytecode/SignatureAttribute$ObjectType;

    move-object v9, v3

    check-cast v9, [Ljavassist/bytecode/SignatureAttribute$ObjectType;

    move-object v4, v1

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Ljavassist/bytecode/SignatureAttribute$TypeParameter;-><init>(Ljava/lang/String;IILjavassist/bytecode/SignatureAttribute$ObjectType;[Ljavassist/bytecode/SignatureAttribute$ObjectType;)V

    .line 723
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 726
    :cond_1
    iget p0, p1, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    add-int/2addr p0, v2

    iput p0, p1, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    .line 729
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljavassist/bytecode/SignatureAttribute$TypeParameter;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljavassist/bytecode/SignatureAttribute$TypeParameter;

    check-cast p0, [Ljavassist/bytecode/SignatureAttribute$TypeParameter;

    return-object p0
.end method

.method static renameClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 101
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-static {p0, v0}, Ljavassist/bytecode/SignatureAttribute;->renameClass(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static renameClass(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 8

    if-nez p1, :cond_0

    return-object p0

    .line 109
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x4c

    .line 113
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-gez v1, :cond_1

    goto :goto_3

    .line 117
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v5, v1

    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 121
    :try_start_0
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x3b

    if-eq v6, v7, :cond_4

    .line 122
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v7, 0x3c

    if-ne v6, v7, :cond_2

    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 124
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x3e

    if-eq v6, v7, :cond_3

    .line 125
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 127
    :cond_3
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 133
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 134
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 136
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v5

    :cond_5
    move v1, v5

    goto :goto_0

    :catch_0
    nop

    :goto_3
    if-nez v2, :cond_6

    return-object p0

    .line 147
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-ge v2, p1, :cond_7

    .line 149
    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toClassSignature(Ljava/lang/String;)Ljavassist/bytecode/SignatureAttribute$ClassSignature;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 616
    :try_start_0
    invoke-static {p0}, Ljavassist/bytecode/SignatureAttribute;->parseSig(Ljava/lang/String;)Ljavassist/bytecode/SignatureAttribute$ClassSignature;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 619
    :catch_0
    invoke-static {p0}, Ljavassist/bytecode/SignatureAttribute;->error(Ljava/lang/String;)Ljavassist/bytecode/BadBytecode;

    move-result-object p0

    throw p0
.end method

.method public static toFieldSignature(Ljava/lang/String;)Ljavassist/bytecode/SignatureAttribute$ObjectType;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 649
    :try_start_0
    new-instance v0, Ljavassist/bytecode/SignatureAttribute$Cursor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljavassist/bytecode/SignatureAttribute$Cursor;-><init>(Ljavassist/bytecode/SignatureAttribute$1;)V

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Ljavassist/bytecode/SignatureAttribute;->parseObjectType(Ljava/lang/String;Ljavassist/bytecode/SignatureAttribute$Cursor;Z)Ljavassist/bytecode/SignatureAttribute$ObjectType;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 652
    :catch_0
    invoke-static {p0}, Ljavassist/bytecode/SignatureAttribute;->error(Ljava/lang/String;)Ljavassist/bytecode/BadBytecode;

    move-result-object p0

    throw p0
.end method

.method public static toMethodSignature(Ljava/lang/String;)Ljavassist/bytecode/SignatureAttribute$MethodSignature;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 632
    :try_start_0
    invoke-static {p0}, Ljavassist/bytecode/SignatureAttribute;->parseMethodSig(Ljava/lang/String;)Ljavassist/bytecode/SignatureAttribute$MethodSignature;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 635
    :catch_0
    invoke-static {p0}, Ljavassist/bytecode/SignatureAttribute;->error(Ljava/lang/String;)Ljavassist/bytecode/BadBytecode;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/AttributeInfo;
    .locals 1

    .line 86
    new-instance p2, Ljavassist/bytecode/SignatureAttribute;

    invoke-virtual {p0}, Ljavassist/bytecode/SignatureAttribute;->getSignature()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Ljavassist/bytecode/SignatureAttribute;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;)V

    return-object p2
.end method

.method public getSignature()Ljava/lang/String;
    .locals 3

    .line 62
    invoke-virtual {p0}, Ljavassist/bytecode/SignatureAttribute;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v0

    invoke-virtual {p0}, Ljavassist/bytecode/SignatureAttribute;->get()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v1

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method renameClass(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 90
    invoke-virtual {p0}, Ljavassist/bytecode/SignatureAttribute;->getSignature()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Ljavassist/bytecode/SignatureAttribute;->renameClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 91
    invoke-virtual {p0, p1}, Ljavassist/bytecode/SignatureAttribute;->setSignature(Ljava/lang/String;)V

    return-void
.end method

.method renameClass(Ljava/util/Map;)V
    .locals 1

    .line 95
    invoke-virtual {p0}, Ljavassist/bytecode/SignatureAttribute;->getSignature()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Ljavassist/bytecode/SignatureAttribute;->renameClass(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 96
    invoke-virtual {p0, p1}, Ljavassist/bytecode/SignatureAttribute;->setSignature(Ljava/lang/String;)V

    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 2

    .line 73
    invoke-virtual {p0}, Ljavassist/bytecode/SignatureAttribute;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result p1

    .line 74
    iget-object v0, p0, Ljavassist/bytecode/SignatureAttribute;->info:[B

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    return-void
.end method
