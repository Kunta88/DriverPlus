.class public final Ljavassist/bytecode/ClassFile;
.super Ljava/lang/Object;
.source "ClassFile.java"


# static fields
.field public static final JAVA_1:I = 0x2d

.field public static final JAVA_2:I = 0x2e

.field public static final JAVA_3:I = 0x2f

.field public static final JAVA_4:I = 0x30

.field public static final JAVA_5:I = 0x31

.field public static final JAVA_6:I = 0x32

.field public static final JAVA_7:I = 0x33

.field public static MAJOR_VERSION:I = 0x2f


# instance fields
.field accessFlags:I

.field attributes:Ljava/util/ArrayList;

.field cachedInterfaces:[Ljava/lang/String;

.field cachedSuperclass:Ljava/lang/String;

.field constPool:Ljavassist/bytecode/ConstPool;

.field fields:Ljava/util/ArrayList;

.field interfaces:[I

.field major:I

.field methods:Ljava/util/ArrayList;

.field minor:I

.field superClass:I

.field thisClass:I

.field thisclassname:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "java.lang.StringBuilder"

    .line 102
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const/16 v0, 0x31

    .line 103
    sput v0, Ljavassist/bytecode/ClassFile;->MAJOR_VERSION:I

    const-string v0, "java.util.zip.DeflaterInputStream"

    .line 104
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const/16 v0, 0x32

    .line 105
    sput v0, Ljavassist/bytecode/ClassFile;->MAJOR_VERSION:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public constructor <init>(Ljava/io/DataInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    invoke-direct {p0, p1}, Ljavassist/bytecode/ClassFile;->read(Ljava/io/DataInputStream;)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    sget v0, Ljavassist/bytecode/ClassFile;->MAJOR_VERSION:I

    iput v0, p0, Ljavassist/bytecode/ClassFile;->major:I

    const/4 v0, 0x0

    .line 129
    iput v0, p0, Ljavassist/bytecode/ClassFile;->minor:I

    .line 130
    new-instance v0, Ljavassist/bytecode/ConstPool;

    invoke-direct {v0, p2}, Ljavassist/bytecode/ConstPool;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljavassist/bytecode/ClassFile;->constPool:Ljavassist/bytecode/ConstPool;

    .line 131
    invoke-virtual {v0}, Ljavassist/bytecode/ConstPool;->getThisClassInfo()I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/ClassFile;->thisClass:I

    if-eqz p1, :cond_0

    const/16 p1, 0x600

    .line 133
    iput p1, p0, Ljavassist/bytecode/ClassFile;->accessFlags:I

    goto :goto_0

    :cond_0
    const/16 p1, 0x20

    .line 135
    iput p1, p0, Ljavassist/bytecode/ClassFile;->accessFlags:I

    .line 137
    :goto_0
    invoke-direct {p0, p3}, Ljavassist/bytecode/ClassFile;->initSuperclass(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 138
    iput-object p1, p0, Ljavassist/bytecode/ClassFile;->interfaces:[I

    .line 139
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ljavassist/bytecode/ClassFile;->fields:Ljava/util/ArrayList;

    .line 140
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ljavassist/bytecode/ClassFile;->methods:Ljava/util/ArrayList;

    .line 141
    iput-object p2, p0, Ljavassist/bytecode/ClassFile;->thisclassname:Ljava/lang/String;

    .line 143
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ljavassist/bytecode/ClassFile;->attributes:Ljava/util/ArrayList;

    .line 144
    new-instance p2, Ljavassist/bytecode/SourceFileAttribute;

    iget-object p3, p0, Ljavassist/bytecode/ClassFile;->constPool:Ljavassist/bytecode/ConstPool;

    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->thisclassname:Ljava/lang/String;

    invoke-static {v0}, Ljavassist/bytecode/ClassFile;->getSourcefileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p3, v0}, Ljavassist/bytecode/SourceFileAttribute;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private compact0()Ljavassist/bytecode/ConstPool;
    .locals 6

    .line 193
    new-instance v0, Ljavassist/bytecode/ConstPool;

    iget-object v1, p0, Ljavassist/bytecode/ClassFile;->thisclassname:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljavassist/bytecode/ConstPool;-><init>(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v0}, Ljavassist/bytecode/ConstPool;->getThisClassInfo()I

    move-result v1

    iput v1, p0, Ljavassist/bytecode/ClassFile;->thisClass:I

    .line 195
    invoke-virtual {p0}, Ljavassist/bytecode/ClassFile;->getSuperclass()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 197
    invoke-virtual {p0}, Ljavassist/bytecode/ClassFile;->getSuperclass()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Ljavassist/bytecode/ClassFile;->superClass:I

    .line 199
    :cond_0
    iget-object v1, p0, Ljavassist/bytecode/ClassFile;->interfaces:[I

    if-eqz v1, :cond_1

    .line 200
    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 202
    iget-object v3, p0, Ljavassist/bytecode/ClassFile;->interfaces:[I

    iget-object v4, p0, Ljavassist/bytecode/ClassFile;->constPool:Ljavassist/bytecode/ConstPool;

    aget v5, v3, v2

    invoke-virtual {v4, v5}, Ljavassist/bytecode/ConstPool;->getClassInfo(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static getSourcefileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x2e

    .line 160
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 162
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 164
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ".java"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initSuperclass(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 150
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/ClassFile;->superClass:I

    .line 151
    iput-object p1, p0, Ljavassist/bytecode/ClassFile;->cachedSuperclass:Ljava/lang/String;

    goto :goto_0

    .line 154
    :cond_0
    iget-object p1, p0, Ljavassist/bytecode/ClassFile;->constPool:Ljavassist/bytecode/ConstPool;

    const-string v0, "java.lang.Object"

    invoke-virtual {p1, v0}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ljavassist/bytecode/ClassFile;->superClass:I

    .line 155
    iput-object v0, p0, Ljavassist/bytecode/ClassFile;->cachedSuperclass:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private static isDuplicated(Ljavassist/bytecode/MethodInfo;Ljava/lang/String;Ljava/lang/String;Ljavassist/bytecode/MethodInfo;Ljava/util/ListIterator;)Z
    .locals 2

    .line 678
    invoke-virtual {p3}, Ljavassist/bytecode/MethodInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 681
    :cond_0
    invoke-virtual {p3}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object p1

    .line 682
    invoke-static {p1, p2}, Ljavassist/bytecode/Descriptor;->eqParamTypes(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 685
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_3

    .line 686
    invoke-static {p3}, Ljavassist/bytecode/ClassFile;->notBridgeMethod(Ljavassist/bytecode/MethodInfo;)Z

    move-result p0

    if-eqz p0, :cond_2

    return p2

    .line 689
    :cond_2
    invoke-interface {p4}, Ljava/util/ListIterator;->remove()V

    return v0

    .line 694
    :cond_3
    invoke-static {p3}, Ljavassist/bytecode/ClassFile;->notBridgeMethod(Ljavassist/bytecode/MethodInfo;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {p0}, Ljavassist/bytecode/ClassFile;->notBridgeMethod(Ljavassist/bytecode/MethodInfo;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    :cond_4
    return v0
.end method

.method private static notBridgeMethod(Ljavassist/bytecode/MethodInfo;)Z
    .locals 0

    .line 700
    invoke-virtual {p0}, Ljavassist/bytecode/MethodInfo;->getAccessFlags()I

    move-result p0

    and-int/lit8 p0, p0, 0x40

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private read(Ljava/io/DataInputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 764
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    const v1, -0x35014542    # -8346975.0f

    if-ne v0, v1, :cond_5

    .line 768
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/ClassFile;->minor:I

    .line 769
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/ClassFile;->major:I

    .line 770
    new-instance v0, Ljavassist/bytecode/ConstPool;

    invoke-direct {v0, p1}, Ljavassist/bytecode/ConstPool;-><init>(Ljava/io/DataInputStream;)V

    iput-object v0, p0, Ljavassist/bytecode/ClassFile;->constPool:Ljavassist/bytecode/ConstPool;

    .line 771
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/ClassFile;->accessFlags:I

    .line 772
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/ClassFile;->thisClass:I

    .line 773
    iget-object v1, p0, Ljavassist/bytecode/ClassFile;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v1, v0}, Ljavassist/bytecode/ConstPool;->setThisClassInfo(I)V

    .line 774
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/ClassFile;->superClass:I

    .line 775
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 777
    iput-object v0, p0, Ljavassist/bytecode/ClassFile;->interfaces:[I

    goto :goto_1

    .line 779
    :cond_0
    new-array v2, v0, [I

    iput-object v2, p0, Ljavassist/bytecode/ClassFile;->interfaces:[I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 781
    iget-object v3, p0, Ljavassist/bytecode/ClassFile;->interfaces:[I

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 784
    :cond_1
    :goto_1
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->constPool:Ljavassist/bytecode/ConstPool;

    .line 785
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    .line 786
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Ljavassist/bytecode/ClassFile;->fields:Ljava/util/ArrayList;

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_2

    .line 788
    new-instance v4, Ljavassist/bytecode/FieldInfo;

    invoke-direct {v4, v0, p1}, Ljavassist/bytecode/FieldInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/io/DataInputStream;)V

    invoke-virtual {p0, v4}, Ljavassist/bytecode/ClassFile;->addField2(Ljavassist/bytecode/FieldInfo;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 790
    :cond_2
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    .line 791
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Ljavassist/bytecode/ClassFile;->methods:Ljava/util/ArrayList;

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_3

    .line 793
    new-instance v4, Ljavassist/bytecode/MethodInfo;

    invoke-direct {v4, v0, p1}, Ljavassist/bytecode/MethodInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/io/DataInputStream;)V

    invoke-virtual {p0, v4}, Ljavassist/bytecode/ClassFile;->addMethod2(Ljavassist/bytecode/MethodInfo;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 795
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Ljavassist/bytecode/ClassFile;->attributes:Ljava/util/ArrayList;

    .line 796
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    :goto_4
    if-ge v1, v2, :cond_4

    .line 798
    invoke-static {v0, p1}, Ljavassist/bytecode/AttributeInfo;->read(Ljavassist/bytecode/ConstPool;Ljava/io/DataInputStream;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljavassist/bytecode/ClassFile;->addAttribute(Ljavassist/bytecode/AttributeInfo;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 800
    :cond_4
    iget-object p1, p0, Ljavassist/bytecode/ClassFile;->constPool:Ljavassist/bytecode/ConstPool;

    iget v0, p0, Ljavassist/bytecode/ClassFile;->thisClass:I

    invoke-virtual {p1, v0}, Ljavassist/bytecode/ConstPool;->getClassInfo(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljavassist/bytecode/ClassFile;->thisclassname:Ljava/lang/String;

    return-void

    .line 766
    :cond_5
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad magic number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method private testExistingField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/DuplicateMemberException;
        }
    .end annotation

    .line 594
    iget-object p2, p0, Ljavassist/bytecode/ClassFile;->fields:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p2

    .line 595
    :goto_0
    invoke-interface {p2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 596
    invoke-interface {p2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/FieldInfo;

    .line 597
    invoke-virtual {v0}, Ljavassist/bytecode/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 598
    :cond_0
    new-instance p2, Ljavassist/bytecode/DuplicateMemberException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "duplicate field: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavassist/bytecode/DuplicateMemberException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    return-void
.end method

.method private testExistingMethod(Ljavassist/bytecode/MethodInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/DuplicateMemberException;
        }
    .end annotation

    .line 665
    invoke-virtual {p1}, Ljavassist/bytecode/MethodInfo;->getName()Ljava/lang/String;

    move-result-object v0

    .line 666
    invoke-virtual {p1}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    .line 667
    iget-object v2, p0, Ljavassist/bytecode/ClassFile;->methods:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    .line 668
    :goto_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 669
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavassist/bytecode/MethodInfo;

    invoke-static {p1, v0, v1, v3, v2}, Ljavassist/bytecode/ClassFile;->isDuplicated(Ljavassist/bytecode/MethodInfo;Ljava/lang/String;Ljava/lang/String;Ljavassist/bytecode/MethodInfo;Ljava/util/ListIterator;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 670
    :cond_0
    new-instance p1, Ljavassist/bytecode/DuplicateMemberException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duplicate method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljavassist/bytecode/ClassFile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljavassist/bytecode/DuplicateMemberException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method


# virtual methods
.method public addAttribute(Ljavassist/bytecode/AttributeInfo;)V
    .locals 2

    .line 744
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->attributes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljavassist/bytecode/AttributeInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljavassist/bytecode/AttributeInfo;->remove(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 745
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addField(Ljavassist/bytecode/FieldInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/DuplicateMemberException;
        }
    .end annotation

    .line 576
    invoke-virtual {p1}, Ljavassist/bytecode/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljavassist/bytecode/FieldInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljavassist/bytecode/ClassFile;->testExistingField(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->fields:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addField2(Ljavassist/bytecode/FieldInfo;)V
    .locals 1

    .line 589
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->fields:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addInterface(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 545
    iput-object v0, p0, Ljavassist/bytecode/ClassFile;->cachedInterfaces:[Ljava/lang/String;

    .line 546
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result p1

    .line 547
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->interfaces:[I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 548
    iput-object v0, p0, Ljavassist/bytecode/ClassFile;->interfaces:[I

    aput p1, v0, v1

    goto :goto_0

    .line 552
    :cond_0
    array-length v2, v0

    add-int/lit8 v3, v2, 0x1

    .line 553
    new-array v3, v3, [I

    .line 554
    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 555
    aput p1, v3, v2

    .line 556
    iput-object v3, p0, Ljavassist/bytecode/ClassFile;->interfaces:[I

    :goto_0
    return-void
.end method

.method public addMethod(Ljavassist/bytecode/MethodInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/DuplicateMemberException;
        }
    .end annotation

    .line 646
    invoke-direct {p0, p1}, Ljavassist/bytecode/ClassFile;->testExistingMethod(Ljavassist/bytecode/MethodInfo;)V

    .line 647
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->methods:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addMethod2(Ljavassist/bytecode/MethodInfo;)V
    .locals 1

    .line 659
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->methods:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public compact()V
    .locals 6

    .line 173
    invoke-direct {p0}, Ljavassist/bytecode/ClassFile;->compact0()Ljavassist/bytecode/ConstPool;

    move-result-object v0

    .line 174
    iget-object v1, p0, Ljavassist/bytecode/ClassFile;->methods:Ljava/util/ArrayList;

    .line 175
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    .line 177
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavassist/bytecode/MethodInfo;

    .line 178
    invoke-virtual {v5, v0}, Ljavassist/bytecode/MethodInfo;->compact(Ljavassist/bytecode/ConstPool;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 181
    :cond_0
    iget-object v1, p0, Ljavassist/bytecode/ClassFile;->fields:Ljava/util/ArrayList;

    .line 182
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1
    if-ge v3, v2, :cond_1

    .line 184
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavassist/bytecode/FieldInfo;

    .line 185
    invoke-virtual {v4, v0}, Ljavassist/bytecode/FieldInfo;->compact(Ljavassist/bytecode/ConstPool;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 188
    :cond_1
    iget-object v1, p0, Ljavassist/bytecode/ClassFile;->attributes:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Ljavassist/bytecode/AttributeInfo;->copyAll(Ljava/util/ArrayList;Ljavassist/bytecode/ConstPool;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Ljavassist/bytecode/ClassFile;->attributes:Ljava/util/ArrayList;

    .line 189
    iput-object v0, p0, Ljavassist/bytecode/ClassFile;->constPool:Ljavassist/bytecode/ConstPool;

    return-void
.end method

.method public getAccessFlags()I
    .locals 1

    .line 291
    iget v0, p0, Ljavassist/bytecode/ClassFile;->accessFlags:I

    return v0
.end method

.method public getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;
    .locals 5

    .line 726
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->attributes:Ljava/util/ArrayList;

    .line 727
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 729
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavassist/bytecode/AttributeInfo;

    .line 730
    invoke-virtual {v3}, Ljavassist/bytecode/AttributeInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAttributes()Ljava/util/List;
    .locals 1

    .line 714
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->attributes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getConstPool()Ljavassist/bytecode/ConstPool;
    .locals 1

    .line 261
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->constPool:Ljavassist/bytecode/ConstPool;

    return-object v0
.end method

.method public getFields()Ljava/util/List;
    .locals 1

    .line 567
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->fields:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getInnerAccessFlags()I
    .locals 6

    const-string v0, "InnerClasses"

    .line 315
    invoke-virtual {p0, v0}, Ljavassist/bytecode/ClassFile;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/InnerClassesAttribute;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 320
    :cond_0
    invoke-virtual {p0}, Ljavassist/bytecode/ClassFile;->getName()Ljava/lang/String;

    move-result-object v2

    .line 321
    invoke-virtual {v0}, Ljavassist/bytecode/InnerClassesAttribute;->tableLength()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    .line 323
    invoke-virtual {v0, v4}, Ljavassist/bytecode/InnerClassesAttribute;->innerClass(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 324
    invoke-virtual {v0, v4}, Ljavassist/bytecode/InnerClassesAttribute;->accessFlags(I)I

    move-result v0

    return v0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public getInterfaces()[Ljava/lang/String;
    .locals 5

    .line 506
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->cachedInterfaces:[Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 510
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->interfaces:[I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-array v0, v1, [Ljava/lang/String;

    goto :goto_1

    .line 513
    :cond_1
    array-length v0, v0

    .line 514
    new-array v2, v0, [Ljava/lang/String;

    :goto_0
    if-ge v1, v0, :cond_2

    .line 516
    iget-object v3, p0, Ljavassist/bytecode/ClassFile;->constPool:Ljavassist/bytecode/ConstPool;

    iget-object v4, p0, Ljavassist/bytecode/ClassFile;->interfaces:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljavassist/bytecode/ConstPool;->getClassInfo(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 521
    :goto_1
    iput-object v0, p0, Ljavassist/bytecode/ClassFile;->cachedInterfaces:[Ljava/lang/String;

    return-object v0
.end method

.method public getMajorVersion()I
    .locals 1

    .line 852
    iget v0, p0, Ljavassist/bytecode/ClassFile;->major:I

    return v0
.end method

.method public getMethod(Ljava/lang/String;)Ljavassist/bytecode/MethodInfo;
    .locals 5

    .line 619
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->methods:Ljava/util/ArrayList;

    .line 620
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 622
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavassist/bytecode/MethodInfo;

    .line 623
    invoke-virtual {v3}, Ljavassist/bytecode/MethodInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMethods()Ljava/util/List;
    .locals 1

    .line 609
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->methods:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMinorVersion()I
    .locals 1

    .line 871
    iget v0, p0, Ljavassist/bytecode/ClassFile;->minor:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 333
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->thisclassname:Ljava/lang/String;

    return-object v0
.end method

.method public final getRefClasses(Ljava/util/Map;)V
    .locals 6

    .line 479
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->renameClass(Ljava/util/Map;)V

    .line 481
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->attributes:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljavassist/bytecode/AttributeInfo;->getRefClasses(Ljava/util/List;Ljava/util/Map;)V

    .line 482
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->methods:Ljava/util/ArrayList;

    .line 483
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 485
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavassist/bytecode/MethodInfo;

    .line 486
    invoke-virtual {v4}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v5

    .line 487
    invoke-static {v5, p1}, Ljavassist/bytecode/Descriptor;->rename(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 488
    invoke-virtual {v4}, Ljavassist/bytecode/MethodInfo;->getAttributes()Ljava/util/List;

    move-result-object v4

    invoke-static {v4, p1}, Ljavassist/bytecode/AttributeInfo;->getRefClasses(Ljava/util/List;Ljava/util/Map;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 491
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->fields:Ljava/util/ArrayList;

    .line 492
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_1
    if-ge v2, v1, :cond_1

    .line 494
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavassist/bytecode/FieldInfo;

    .line 495
    invoke-virtual {v3}, Ljavassist/bytecode/FieldInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    .line 496
    invoke-static {v4, p1}, Ljavassist/bytecode/Descriptor;->rename(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 497
    invoke-virtual {v3}, Ljavassist/bytecode/FieldInfo;->getAttributes()Ljava/util/List;

    move-result-object v3

    invoke-static {v3, p1}, Ljavassist/bytecode/AttributeInfo;->getRefClasses(Ljava/util/List;Ljava/util/Map;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public getSourceFile()Ljava/lang/String;
    .locals 1

    const-string v0, "SourceFile"

    .line 754
    invoke-virtual {p0, v0}, Ljavassist/bytecode/ClassFile;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/SourceFileAttribute;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 759
    :cond_0
    invoke-virtual {v0}, Ljavassist/bytecode/SourceFileAttribute;->getFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStaticInitializer()Ljavassist/bytecode/MethodInfo;
    .locals 1

    const-string v0, "<clinit>"

    .line 635
    invoke-virtual {p0, v0}, Ljavassist/bytecode/ClassFile;->getMethod(Ljava/lang/String;)Ljavassist/bytecode/MethodInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSuperclass()Ljava/lang/String;
    .locals 2

    .line 348
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->cachedSuperclass:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 349
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->constPool:Ljavassist/bytecode/ConstPool;

    iget v1, p0, Ljavassist/bytecode/ClassFile;->superClass:I

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getClassInfo(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavassist/bytecode/ClassFile;->cachedSuperclass:Ljava/lang/String;

    .line 351
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->cachedSuperclass:Ljava/lang/String;

    return-object v0
.end method

.method public getSuperclassId()I
    .locals 1

    .line 359
    iget v0, p0, Ljavassist/bytecode/ClassFile;->superClass:I

    return v0
.end method

.method public isAbstract()Z
    .locals 1

    .line 282
    iget v0, p0, Ljavassist/bytecode/ClassFile;->accessFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFinal()Z
    .locals 1

    .line 275
    iget v0, p0, Ljavassist/bytecode/ClassFile;->accessFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInterface()Z
    .locals 1

    .line 268
    iget v0, p0, Ljavassist/bytecode/ClassFile;->accessFlags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public prune()V
    .locals 7

    .line 216
    invoke-direct {p0}, Ljavassist/bytecode/ClassFile;->compact0()Ljavassist/bytecode/ConstPool;

    move-result-object v0

    .line 217
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "RuntimeInvisibleAnnotations"

    .line 218
    invoke-virtual {p0, v2}, Ljavassist/bytecode/ClassFile;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 221
    invoke-virtual {v2, v0, v3}, Ljavassist/bytecode/AttributeInfo;->copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v2

    .line 222
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v2, "RuntimeVisibleAnnotations"

    .line 225
    invoke-virtual {p0, v2}, Ljavassist/bytecode/ClassFile;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 228
    invoke-virtual {v2, v0, v3}, Ljavassist/bytecode/AttributeInfo;->copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v2

    .line 229
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v2, "Signature"

    .line 232
    invoke-virtual {p0, v2}, Ljavassist/bytecode/ClassFile;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 235
    invoke-virtual {v2, v0, v3}, Ljavassist/bytecode/AttributeInfo;->copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v2

    .line 236
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    :cond_2
    iget-object v2, p0, Ljavassist/bytecode/ClassFile;->methods:Ljava/util/ArrayList;

    .line 240
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_3

    .line 242
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavassist/bytecode/MethodInfo;

    .line 243
    invoke-virtual {v6, v0}, Ljavassist/bytecode/MethodInfo;->prune(Ljavassist/bytecode/ConstPool;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 246
    :cond_3
    iget-object v2, p0, Ljavassist/bytecode/ClassFile;->fields:Ljava/util/ArrayList;

    .line 247
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_1
    if-ge v4, v3, :cond_4

    .line 249
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavassist/bytecode/FieldInfo;

    .line 250
    invoke-virtual {v5, v0}, Ljavassist/bytecode/FieldInfo;->prune(Ljavassist/bytecode/ConstPool;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 253
    :cond_4
    iput-object v1, p0, Ljavassist/bytecode/ClassFile;->attributes:Ljava/util/ArrayList;

    .line 254
    iput-object v0, p0, Ljavassist/bytecode/ClassFile;->constPool:Ljavassist/bytecode/ConstPool;

    return-void
.end method

.method public final renameClass(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 407
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 410
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->thisclassname:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 411
    iput-object p2, p0, Ljavassist/bytecode/ClassFile;->thisclassname:Ljava/lang/String;

    .line 413
    :cond_1
    invoke-static {p1}, Ljavassist/bytecode/Descriptor;->toJvmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 414
    invoke-static {p2}, Ljavassist/bytecode/Descriptor;->toJvmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 415
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1, p2}, Ljavassist/bytecode/ConstPool;->renameClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->attributes:Ljava/util/ArrayList;

    invoke-static {v0, p1, p2}, Ljavassist/bytecode/AttributeInfo;->renameClass(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->methods:Ljava/util/ArrayList;

    .line 419
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 421
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavassist/bytecode/MethodInfo;

    .line 422
    invoke-virtual {v4}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v5

    .line 423
    invoke-static {v5, p1, p2}, Ljavassist/bytecode/Descriptor;->rename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavassist/bytecode/MethodInfo;->setDescriptor(Ljava/lang/String;)V

    .line 424
    invoke-virtual {v4}, Ljavassist/bytecode/MethodInfo;->getAttributes()Ljava/util/List;

    move-result-object v4

    invoke-static {v4, p1, p2}, Ljavassist/bytecode/AttributeInfo;->renameClass(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 427
    :cond_2
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->fields:Ljava/util/ArrayList;

    .line 428
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_1
    if-ge v2, v1, :cond_3

    .line 430
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavassist/bytecode/FieldInfo;

    .line 431
    invoke-virtual {v3}, Ljavassist/bytecode/FieldInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    .line 432
    invoke-static {v4, p1, p2}, Ljavassist/bytecode/Descriptor;->rename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavassist/bytecode/FieldInfo;->setDescriptor(Ljava/lang/String;)V

    .line 433
    invoke-virtual {v3}, Ljavassist/bytecode/FieldInfo;->getAttributes()Ljava/util/List;

    move-result-object v3

    invoke-static {v3, p1, p2}, Ljavassist/bytecode/AttributeInfo;->renameClass(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final renameClass(Ljava/util/Map;)V
    .locals 6

    .line 447
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->thisclassname:Ljava/lang/String;

    invoke-static {v0}, Ljavassist/bytecode/Descriptor;->toJvmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 450
    invoke-static {v0}, Ljavassist/bytecode/Descriptor;->toJavaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavassist/bytecode/ClassFile;->thisclassname:Ljava/lang/String;

    .line 452
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->renameClass(Ljava/util/Map;)V

    .line 454
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->attributes:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljavassist/bytecode/AttributeInfo;->renameClass(Ljava/util/List;Ljava/util/Map;)V

    .line 455
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->methods:Ljava/util/ArrayList;

    .line 456
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 458
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavassist/bytecode/MethodInfo;

    .line 459
    invoke-virtual {v4}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v5

    .line 460
    invoke-static {v5, p1}, Ljavassist/bytecode/Descriptor;->rename(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavassist/bytecode/MethodInfo;->setDescriptor(Ljava/lang/String;)V

    .line 461
    invoke-virtual {v4}, Ljavassist/bytecode/MethodInfo;->getAttributes()Ljava/util/List;

    move-result-object v4

    invoke-static {v4, p1}, Ljavassist/bytecode/AttributeInfo;->renameClass(Ljava/util/List;Ljava/util/Map;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 464
    :cond_1
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->fields:Ljava/util/ArrayList;

    .line 465
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_1
    if-ge v2, v1, :cond_2

    .line 467
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavassist/bytecode/FieldInfo;

    .line 468
    invoke-virtual {v3}, Ljavassist/bytecode/FieldInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    .line 469
    invoke-static {v4, p1}, Ljavassist/bytecode/Descriptor;->rename(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavassist/bytecode/FieldInfo;->setDescriptor(Ljava/lang/String;)V

    .line 470
    invoke-virtual {v3}, Ljavassist/bytecode/FieldInfo;->getAttributes()Ljava/util/List;

    move-result-object v3

    invoke-static {v3, p1}, Ljavassist/bytecode/AttributeInfo;->renameClass(Ljava/util/List;Ljava/util/Map;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public setAccessFlags(I)V
    .locals 1

    and-int/lit16 v0, p1, 0x200

    if-nez v0, :cond_0

    or-int/lit8 p1, p1, 0x20

    .line 303
    :cond_0
    iput p1, p0, Ljavassist/bytecode/ClassFile;->accessFlags:I

    return-void
.end method

.method public setInterfaces([Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    .line 532
    iput-object v0, p0, Ljavassist/bytecode/ClassFile;->cachedInterfaces:[Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 534
    array-length v0, p1

    .line 535
    new-array v1, v0, [I

    iput-object v1, p0, Ljavassist/bytecode/ClassFile;->interfaces:[I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 537
    iget-object v2, p0, Ljavassist/bytecode/ClassFile;->interfaces:[I

    iget-object v3, p0, Ljavassist/bytecode/ClassFile;->constPool:Ljavassist/bytecode/ConstPool;

    aget-object v4, p1, v1

    invoke-virtual {v3, v4}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setMajorVersion(I)V
    .locals 0

    .line 862
    iput p1, p0, Ljavassist/bytecode/ClassFile;->major:I

    return-void
.end method

.method public setMinorVersion(I)V
    .locals 0

    .line 881
    iput p1, p0, Ljavassist/bytecode/ClassFile;->minor:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    .line 341
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->thisclassname:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Ljavassist/bytecode/ClassFile;->renameClass(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSuperclass(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, "java.lang.Object"

    .line 375
    :cond_0
    :try_start_0
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/ClassFile;->superClass:I

    .line 376
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->methods:Ljava/util/ArrayList;

    .line 377
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 379
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavassist/bytecode/MethodInfo;

    .line 380
    invoke-virtual {v3, p1}, Ljavassist/bytecode/MethodInfo;->setSuperclass(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 386
    :cond_1
    iput-object p1, p0, Ljavassist/bytecode/ClassFile;->cachedSuperclass:Ljava/lang/String;

    return-void

    :catch_0
    move-exception p1

    .line 384
    new-instance v0, Ljavassist/CannotCompileException;

    invoke-direct {v0, p1}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public setVersionToJava5()V
    .locals 1

    const/16 v0, 0x31

    .line 892
    iput v0, p0, Ljavassist/bytecode/ClassFile;->major:I

    const/4 v0, 0x0

    .line 893
    iput v0, p0, Ljavassist/bytecode/ClassFile;->minor:I

    return-void
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v0, -0x35014542    # -8346975.0f

    .line 809
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 810
    iget v0, p0, Ljavassist/bytecode/ClassFile;->minor:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 811
    iget v0, p0, Ljavassist/bytecode/ClassFile;->major:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 812
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->write(Ljava/io/DataOutputStream;)V

    .line 813
    iget v0, p0, Ljavassist/bytecode/ClassFile;->accessFlags:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 814
    iget v0, p0, Ljavassist/bytecode/ClassFile;->thisClass:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 815
    iget v0, p0, Ljavassist/bytecode/ClassFile;->superClass:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 817
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->interfaces:[I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 820
    :cond_0
    array-length v0, v0

    .line 822
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    .line 824
    iget-object v3, p0, Ljavassist/bytecode/ClassFile;->interfaces:[I

    aget v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 826
    :cond_1
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->fields:Ljava/util/ArrayList;

    .line 827
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 828
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_2

    .line 830
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavassist/bytecode/FieldInfo;

    .line 831
    invoke-virtual {v4, p1}, Ljavassist/bytecode/FieldInfo;->write(Ljava/io/DataOutputStream;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 834
    :cond_2
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->methods:Ljava/util/ArrayList;

    .line 835
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 836
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    :goto_3
    if-ge v1, v2, :cond_3

    .line 838
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavassist/bytecode/MethodInfo;

    .line 839
    invoke-virtual {v3, p1}, Ljavassist/bytecode/MethodInfo;->write(Ljava/io/DataOutputStream;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 842
    :cond_3
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 843
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->attributes:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljavassist/bytecode/AttributeInfo;->writeAll(Ljava/util/ArrayList;Ljava/io/DataOutputStream;)V

    return-void
.end method
