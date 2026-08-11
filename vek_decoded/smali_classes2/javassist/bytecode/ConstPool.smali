.class public final Ljavassist/bytecode/ConstPool;
.super Ljava/lang/Object;
.source "ConstPool.java"


# static fields
.field public static final CONST_Class:I = 0x7

.field public static final CONST_Double:I = 0x6

.field public static final CONST_Fieldref:I = 0x9

.field public static final CONST_Float:I = 0x4

.field public static final CONST_Integer:I = 0x3

.field public static final CONST_InterfaceMethodref:I = 0xb

.field public static final CONST_Long:I = 0x5

.field public static final CONST_Methodref:I = 0xa

.field public static final CONST_NameAndType:I = 0xc

.field public static final CONST_String:I = 0x8

.field public static final CONST_Utf8:I = 0x1

.field public static final THIS:Ljavassist/CtClass;


# instance fields
.field items:Ljavassist/bytecode/LongVector;

.field itemsCache:Ljava/util/HashMap;

.field numOfItems:I

.field thisClassInfo:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/io/DataInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 121
    iput-object v0, p0, Ljavassist/bytecode/ConstPool;->itemsCache:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 122
    iput v0, p0, Ljavassist/bytecode/ConstPool;->thisClassInfo:I

    .line 125
    invoke-direct {p0, p1}, Ljavassist/bytecode/ConstPool;->read(Ljava/io/DataInputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Ljavassist/bytecode/LongVector;

    invoke-direct {v0}, Ljavassist/bytecode/LongVector;-><init>()V

    iput-object v0, p0, Ljavassist/bytecode/ConstPool;->items:Ljavassist/bytecode/LongVector;

    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Ljavassist/bytecode/ConstPool;->itemsCache:Ljava/util/HashMap;

    const/4 v1, 0x0

    .line 110
    iput v1, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    .line 111
    invoke-direct {p0, v0}, Ljavassist/bytecode/ConstPool;->addItem0(Ljavassist/bytecode/ConstInfo;)I

    .line 112
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ljavassist/bytecode/ConstPool;->thisClassInfo:I

    return-void
.end method

.method private addItem(Ljavassist/bytecode/ConstInfo;)I
    .locals 1

    .line 667
    iget-object v0, p0, Ljavassist/bytecode/ConstPool;->itemsCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 668
    iget-object v0, p0, Ljavassist/bytecode/ConstPool;->items:Ljavassist/bytecode/LongVector;

    invoke-static {v0}, Ljavassist/bytecode/ConstPool;->makeItemsCache(Ljavassist/bytecode/LongVector;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Ljavassist/bytecode/ConstPool;->itemsCache:Ljava/util/HashMap;

    .line 670
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/ConstPool;->itemsCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/ConstInfo;

    if-eqz v0, :cond_1

    .line 672
    iget p1, v0, Ljavassist/bytecode/ConstInfo;->index:I

    return p1

    .line 674
    :cond_1
    iget-object v0, p0, Ljavassist/bytecode/ConstPool;->items:Ljavassist/bytecode/LongVector;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/LongVector;->addElement(Ljavassist/bytecode/ConstInfo;)V

    .line 675
    iget-object v0, p0, Ljavassist/bytecode/ConstPool;->itemsCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    iget p1, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    return p1
.end method

.method private addItem0(Ljavassist/bytecode/ConstInfo;)I
    .locals 1

    .line 662
    iget-object v0, p0, Ljavassist/bytecode/ConstPool;->items:Ljavassist/bytecode/LongVector;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/LongVector;->addElement(Ljavassist/bytecode/ConstInfo;)V

    .line 663
    iget p1, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    return p1
.end method

.method private static makeItemsCache(Ljavassist/bytecode/LongVector;)Ljava/util/HashMap;
    .locals 3

    .line 993
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x1

    :goto_0
    add-int/lit8 v2, v1, 0x1

    .line 996
    invoke-virtual {p0, v1}, Ljavassist/bytecode/LongVector;->elementAt(I)Ljavassist/bytecode/ConstInfo;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 1000
    :cond_0
    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v2

    goto :goto_0
.end method

.method private read(Ljava/io/DataInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 977
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 979
    new-instance v1, Ljavassist/bytecode/LongVector;

    invoke-direct {v1, v0}, Ljavassist/bytecode/LongVector;-><init>(I)V

    iput-object v1, p0, Ljavassist/bytecode/ConstPool;->items:Ljavassist/bytecode/LongVector;

    const/4 v1, 0x0

    .line 980
    iput v1, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    const/4 v1, 0x0

    .line 981
    invoke-direct {p0, v1}, Ljavassist/bytecode/ConstPool;->addItem0(Ljavassist/bytecode/ConstInfo;)I

    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_2

    .line 984
    invoke-direct {p0, p1}, Ljavassist/bytecode/ConstPool;->readOne(Ljava/io/DataInputStream;)I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 986
    :cond_1
    invoke-virtual {p0}, Ljavassist/bytecode/ConstPool;->addConstInfoPadding()I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private readOne(Ljava/io/DataInputStream;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1008
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1044
    :pswitch_0
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid constant type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1041
    :pswitch_1
    new-instance v1, Ljavassist/bytecode/NameAndTypeInfo;

    iget v2, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    invoke-direct {v1, p1, v2}, Ljavassist/bytecode/NameAndTypeInfo;-><init>(Ljava/io/DataInputStream;I)V

    goto :goto_0

    .line 1038
    :pswitch_2
    new-instance v1, Ljavassist/bytecode/InterfaceMethodrefInfo;

    iget v2, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    invoke-direct {v1, p1, v2}, Ljavassist/bytecode/InterfaceMethodrefInfo;-><init>(Ljava/io/DataInputStream;I)V

    goto :goto_0

    .line 1035
    :pswitch_3
    new-instance v1, Ljavassist/bytecode/MethodrefInfo;

    iget v2, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    invoke-direct {v1, p1, v2}, Ljavassist/bytecode/MethodrefInfo;-><init>(Ljava/io/DataInputStream;I)V

    goto :goto_0

    .line 1032
    :pswitch_4
    new-instance v1, Ljavassist/bytecode/FieldrefInfo;

    iget v2, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    invoke-direct {v1, p1, v2}, Ljavassist/bytecode/FieldrefInfo;-><init>(Ljava/io/DataInputStream;I)V

    goto :goto_0

    .line 1029
    :pswitch_5
    new-instance v1, Ljavassist/bytecode/StringInfo;

    iget v2, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    invoke-direct {v1, p1, v2}, Ljavassist/bytecode/StringInfo;-><init>(Ljava/io/DataInputStream;I)V

    goto :goto_0

    .line 1026
    :pswitch_6
    new-instance v1, Ljavassist/bytecode/ClassInfo;

    iget v2, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    invoke-direct {v1, p1, v2}, Ljavassist/bytecode/ClassInfo;-><init>(Ljava/io/DataInputStream;I)V

    goto :goto_0

    .line 1023
    :pswitch_7
    new-instance v1, Ljavassist/bytecode/DoubleInfo;

    iget v2, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    invoke-direct {v1, p1, v2}, Ljavassist/bytecode/DoubleInfo;-><init>(Ljava/io/DataInputStream;I)V

    goto :goto_0

    .line 1020
    :pswitch_8
    new-instance v1, Ljavassist/bytecode/LongInfo;

    iget v2, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    invoke-direct {v1, p1, v2}, Ljavassist/bytecode/LongInfo;-><init>(Ljava/io/DataInputStream;I)V

    goto :goto_0

    .line 1017
    :pswitch_9
    new-instance v1, Ljavassist/bytecode/FloatInfo;

    iget v2, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    invoke-direct {v1, p1, v2}, Ljavassist/bytecode/FloatInfo;-><init>(Ljava/io/DataInputStream;I)V

    goto :goto_0

    .line 1014
    :pswitch_a
    new-instance v1, Ljavassist/bytecode/IntegerInfo;

    iget v2, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    invoke-direct {v1, p1, v2}, Ljavassist/bytecode/IntegerInfo;-><init>(Ljava/io/DataInputStream;I)V

    goto :goto_0

    .line 1011
    :pswitch_b
    new-instance v1, Ljavassist/bytecode/Utf8Info;

    iget v2, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    invoke-direct {v1, p1, v2}, Ljavassist/bytecode/Utf8Info;-><init>(Ljava/io/DataInputStream;I)V

    .line 1047
    :goto_0
    invoke-direct {p0, v1}, Ljavassist/bytecode/ConstPool;->addItem0(Ljavassist/bytecode/ConstInfo;)I

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public addClassInfo(Ljava/lang/String;)I
    .locals 2

    .line 737
    invoke-static {p1}, Ljavassist/bytecode/Descriptor;->toJvmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result p1

    .line 738
    new-instance v0, Ljavassist/bytecode/ClassInfo;

    iget v1, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    invoke-direct {v0, p1, v1}, Ljavassist/bytecode/ClassInfo;-><init>(II)V

    invoke-direct {p0, v0}, Ljavassist/bytecode/ConstPool;->addItem(Ljavassist/bytecode/ConstInfo;)I

    move-result p1

    return p1
.end method

.method public addClassInfo(Ljavassist/CtClass;)I
    .locals 1

    .line 712
    sget-object v0, Ljavassist/bytecode/ConstPool;->THIS:Ljavassist/CtClass;

    if-ne p1, v0, :cond_0

    .line 713
    iget p1, p0, Ljavassist/bytecode/ConstPool;->thisClassInfo:I

    return p1

    .line 714
    :cond_0
    invoke-virtual {p1}, Ljavassist/CtClass;->isArray()Z

    move-result v0

    if-nez v0, :cond_1

    .line 715
    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 722
    :cond_1
    invoke-static {p1}, Ljavassist/bytecode/Descriptor;->toJvmName(Ljavassist/CtClass;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method addConstInfoPadding()I
    .locals 2

    .line 700
    new-instance v0, Ljavassist/bytecode/ConstInfoPadding;

    iget v1, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    invoke-direct {v0, v1}, Ljavassist/bytecode/ConstInfoPadding;-><init>(I)V

    invoke-direct {p0, v0}, Ljavassist/bytecode/ConstPool;->addItem0(Ljavassist/bytecode/ConstInfo;)I

    move-result v0

    return v0
.end method

.method public addDoubleInfo(D)I
    .locals 2

    .line 912
    new-instance v0, Ljavassist/bytecode/DoubleInfo;

    iget v1, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    invoke-direct {v0, p1, p2, v1}, Ljavassist/bytecode/DoubleInfo;-><init>(DI)V

    invoke-direct {p0, v0}, Ljavassist/bytecode/ConstPool;->addItem(Ljavassist/bytecode/ConstInfo;)I

    move-result p1

    .line 913
    iget p2, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    add-int/lit8 p2, p2, -0x1

    if-ne p1, p2, :cond_0

    .line 914
    invoke-virtual {p0}, Ljavassist/bytecode/ConstPool;->addConstInfoPadding()I

    :cond_0
    return p1
.end method

.method public addFieldrefInfo(II)I
    .locals 2

    .line 791
    new-instance v0, Ljavassist/bytecode/FieldrefInfo;

    iget v1, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    invoke-direct {v0, p1, p2, v1}, Ljavassist/bytecode/FieldrefInfo;-><init>(III)V

    invoke-direct {p0, v0}, Ljavassist/bytecode/ConstPool;->addItem(Ljavassist/bytecode/ConstInfo;)I

    move-result p1

    return p1
.end method

.method public addFieldrefInfo(ILjava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 779
    invoke-virtual {p0, p2, p3}, Ljavassist/bytecode/ConstPool;->addNameAndTypeInfo(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 780
    invoke-virtual {p0, p1, p2}, Ljavassist/bytecode/ConstPool;->addFieldrefInfo(II)I

    move-result p1

    return p1
.end method

.method public addFloatInfo(F)I
    .locals 2

    .line 888
    new-instance v0, Ljavassist/bytecode/FloatInfo;

    iget v1, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    invoke-direct {v0, p1, v1}, Ljavassist/bytecode/FloatInfo;-><init>(FI)V

    invoke-direct {p0, v0}, Ljavassist/bytecode/ConstPool;->addItem(Ljavassist/bytecode/ConstInfo;)I

    move-result p1

    return p1
.end method

.method public addIntegerInfo(I)I
    .locals 2

    .line 878
    new-instance v0, Ljavassist/bytecode/IntegerInfo;

    iget v1, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    invoke-direct {v0, p1, v1}, Ljavassist/bytecode/IntegerInfo;-><init>(II)V

    invoke-direct {p0, v0}, Ljavassist/bytecode/ConstPool;->addItem(Ljavassist/bytecode/ConstInfo;)I

    move-result p1

    return p1
.end method

.method public addInterfaceMethodrefInfo(II)I
    .locals 2

    .line 853
    new-instance v0, Ljavassist/bytecode/InterfaceMethodrefInfo;

    iget v1, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    invoke-direct {v0, p1, p2, v1}, Ljavassist/bytecode/InterfaceMethodrefInfo;-><init>(III)V

    invoke-direct {p0, v0}, Ljavassist/bytecode/ConstPool;->addItem(Ljavassist/bytecode/ConstInfo;)I

    move-result p1

    return p1
.end method

.method public addInterfaceMethodrefInfo(ILjava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 839
    invoke-virtual {p0, p2, p3}, Ljavassist/bytecode/ConstPool;->addNameAndTypeInfo(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 840
    invoke-virtual {p0, p1, p2}, Ljavassist/bytecode/ConstPool;->addInterfaceMethodrefInfo(II)I

    move-result p1

    return p1
.end method

.method public addLongInfo(J)I
    .locals 2

    .line 898
    new-instance v0, Ljavassist/bytecode/LongInfo;

    iget v1, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    invoke-direct {v0, p1, p2, v1}, Ljavassist/bytecode/LongInfo;-><init>(JI)V

    invoke-direct {p0, v0}, Ljavassist/bytecode/ConstPool;->addItem(Ljavassist/bytecode/ConstInfo;)I

    move-result p1

    .line 899
    iget p2, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    add-int/lit8 p2, p2, -0x1

    if-ne p1, p2, :cond_0

    .line 900
    invoke-virtual {p0}, Ljavassist/bytecode/ConstPool;->addConstInfoPadding()I

    :cond_0
    return p1
.end method

.method public addMethodrefInfo(II)I
    .locals 2

    .line 820
    new-instance v0, Ljavassist/bytecode/MethodrefInfo;

    iget v1, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    invoke-direct {v0, p1, p2, v1}, Ljavassist/bytecode/MethodrefInfo;-><init>(III)V

    invoke-direct {p0, v0}, Ljavassist/bytecode/ConstPool;->addItem(Ljavassist/bytecode/ConstInfo;)I

    move-result p1

    return p1
.end method

.method public addMethodrefInfo(ILjava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 808
    invoke-virtual {p0, p2, p3}, Ljavassist/bytecode/ConstPool;->addNameAndTypeInfo(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 809
    invoke-virtual {p0, p1, p2}, Ljavassist/bytecode/ConstPool;->addMethodrefInfo(II)I

    move-result p1

    return p1
.end method

.method public addNameAndTypeInfo(II)I
    .locals 2

    .line 762
    new-instance v0, Ljavassist/bytecode/NameAndTypeInfo;

    iget v1, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    invoke-direct {v0, p1, p2, v1}, Ljavassist/bytecode/NameAndTypeInfo;-><init>(III)V

    invoke-direct {p0, v0}, Ljavassist/bytecode/ConstPool;->addItem(Ljavassist/bytecode/ConstInfo;)I

    move-result p1

    return p1
.end method

.method public addNameAndTypeInfo(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 751
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p2}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Ljavassist/bytecode/ConstPool;->addNameAndTypeInfo(II)I

    move-result p1

    return p1
.end method

.method public addStringInfo(Ljava/lang/String;)I
    .locals 2

    .line 867
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result p1

    .line 868
    new-instance v0, Ljavassist/bytecode/StringInfo;

    iget v1, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    invoke-direct {v0, p1, v1}, Ljavassist/bytecode/StringInfo;-><init>(II)V

    invoke-direct {p0, v0}, Ljavassist/bytecode/ConstPool;->addItem(Ljavassist/bytecode/ConstInfo;)I

    move-result p1

    return p1
.end method

.method public addUtf8Info(Ljava/lang/String;)I
    .locals 2

    .line 926
    new-instance v0, Ljavassist/bytecode/Utf8Info;

    iget v1, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    invoke-direct {v0, p1, v1}, Ljavassist/bytecode/Utf8Info;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Ljavassist/bytecode/ConstPool;->addItem(Ljavassist/bytecode/ConstInfo;)I

    move-result p1

    return p1
.end method

.method public copy(ILjavassist/bytecode/ConstPool;Ljava/util/Map;)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 695
    :cond_0
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object p1

    .line 696
    invoke-virtual {p1, p0, p2, p3}, Ljavassist/bytecode/ConstInfo;->copy(Ljavassist/bytecode/ConstPool;Ljavassist/bytecode/ConstPool;Ljava/util/Map;)I

    move-result p1

    return p1
.end method

.method public eqMember(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 651
    invoke-virtual {p0, p3}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object p3

    check-cast p3, Ljavassist/bytecode/MemberrefInfo;

    .line 652
    iget v0, p3, Ljavassist/bytecode/MemberrefInfo;->nameAndTypeIndex:I

    invoke-virtual {p0, v0}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/NameAndTypeInfo;

    .line 654
    iget v1, v0, Ljavassist/bytecode/NameAndTypeInfo;->memberName:I

    invoke-virtual {p0, v1}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, v0, Ljavassist/bytecode/NameAndTypeInfo;->typeDescriptor:I

    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 656
    iget p1, p3, Ljavassist/bytecode/MemberrefInfo;->classIndex:I

    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getClassInfo(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getClassInfo(I)Ljava/lang/String;
    .locals 0

    .line 182
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object p1

    check-cast p1, Ljavassist/bytecode/ClassInfo;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 186
    :cond_0
    iget p1, p1, Ljavassist/bytecode/ClassInfo;->name:I

    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljavassist/bytecode/Descriptor;->toJavaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getClassInfoByDescriptor(I)Ljava/lang/String;
    .locals 2

    .line 199
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object p1

    check-cast p1, Ljavassist/bytecode/ClassInfo;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 203
    :cond_0
    iget p1, p1, Ljavassist/bytecode/ClassInfo;->name:I

    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 204
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_1

    return-object p1

    .line 207
    :cond_1
    invoke-static {p1}, Ljavassist/bytecode/Descriptor;->of(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 143
    iget v0, p0, Ljavassist/bytecode/ConstPool;->thisClassInfo:I

    invoke-virtual {p0, v0}, Ljavassist/bytecode/ConstPool;->getClassInfo(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClassNames()Ljava/util/Set;
    .locals 5

    .line 935
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 936
    iget-object v1, p0, Ljavassist/bytecode/ConstPool;->items:Ljavassist/bytecode/LongVector;

    .line 937
    iget v2, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    const/4 v3, 0x1

    :goto_0
    if-ge v3, v2, :cond_1

    .line 939
    invoke-virtual {v1, v3}, Ljavassist/bytecode/LongVector;->elementAt(I)Ljavassist/bytecode/ConstInfo;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljavassist/bytecode/ConstInfo;->getClassName(Ljavassist/bytecode/ConstPool;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 941
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getDoubleInfo(I)D
    .locals 2

    .line 565
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object p1

    check-cast p1, Ljavassist/bytecode/DoubleInfo;

    .line 566
    iget-wide v0, p1, Ljavassist/bytecode/DoubleInfo;->value:D

    return-wide v0
.end method

.method public getFieldrefClass(I)I
    .locals 0

    .line 265
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object p1

    check-cast p1, Ljavassist/bytecode/FieldrefInfo;

    .line 266
    iget p1, p1, Ljavassist/bytecode/FieldrefInfo;->classIndex:I

    return p1
.end method

.method public getFieldrefClassName(I)Ljava/lang/String;
    .locals 0

    .line 277
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object p1

    check-cast p1, Ljavassist/bytecode/FieldrefInfo;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 281
    :cond_0
    iget p1, p1, Ljavassist/bytecode/FieldrefInfo;->classIndex:I

    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getClassInfo(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFieldrefName(I)Ljava/lang/String;
    .locals 1

    .line 303
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object p1

    check-cast p1, Ljavassist/bytecode/FieldrefInfo;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 307
    :cond_0
    iget p1, p1, Ljavassist/bytecode/FieldrefInfo;->nameAndTypeIndex:I

    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object p1

    check-cast p1, Ljavassist/bytecode/NameAndTypeInfo;

    if-nez p1, :cond_1

    return-object v0

    .line 311
    :cond_1
    iget p1, p1, Ljavassist/bytecode/NameAndTypeInfo;->memberName:I

    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFieldrefNameAndType(I)I
    .locals 0

    .line 290
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object p1

    check-cast p1, Ljavassist/bytecode/FieldrefInfo;

    .line 291
    iget p1, p1, Ljavassist/bytecode/FieldrefInfo;->nameAndTypeIndex:I

    return p1
.end method

.method public getFieldrefType(I)Ljava/lang/String;
    .locals 1

    .line 324
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object p1

    check-cast p1, Ljavassist/bytecode/FieldrefInfo;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 328
    :cond_0
    iget p1, p1, Ljavassist/bytecode/FieldrefInfo;->nameAndTypeIndex:I

    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object p1

    check-cast p1, Ljavassist/bytecode/NameAndTypeInfo;

    if-nez p1, :cond_1

    return-object v0

    .line 332
    :cond_1
    iget p1, p1, Ljavassist/bytecode/NameAndTypeInfo;->typeDescriptor:I

    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFloatInfo(I)F
    .locals 0

    .line 543
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object p1

    check-cast p1, Ljavassist/bytecode/FloatInfo;

    .line 544
    iget p1, p1, Ljavassist/bytecode/FloatInfo;->value:F

    return p1
.end method

.method public getIntegerInfo(I)I
    .locals 0

    .line 532
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object p1

    check-cast p1, Ljavassist/bytecode/IntegerInfo;

    .line 533
    iget p1, p1, Ljavassist/bytecode/IntegerInfo;->value:I

    return p1
.end method

.method public getInterfaceMethodrefClass(I)I
    .locals 0

    .line 421
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object p1

    check-cast p1, Ljavassist/bytecode/InterfaceMethodrefInfo;

    .line 423
    iget p1, p1, Ljavassist/bytecode/InterfaceMethodrefInfo;->classIndex:I

    return p1
.end method

.method public getInterfaceMethodrefClassName(I)Ljava/lang/String;
    .locals 0

    .line 434
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object p1

    check-cast p1, Ljavassist/bytecode/InterfaceMethodrefInfo;

    .line 436
    iget p1, p1, Ljavassist/bytecode/InterfaceMethodrefInfo;->classIndex:I

    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getClassInfo(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getInterfaceMethodrefName(I)Ljava/lang/String;
    .locals 1

    .line 460
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object p1

    check-cast p1, Ljavassist/bytecode/InterfaceMethodrefInfo;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 465
    :cond_0
    iget p1, p1, Ljavassist/bytecode/InterfaceMethodrefInfo;->nameAndTypeIndex:I

    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object p1

    check-cast p1, Ljavassist/bytecode/NameAndTypeInfo;

    if-nez p1, :cond_1

    return-object v0

    .line 470
    :cond_1
    iget p1, p1, Ljavassist/bytecode/NameAndTypeInfo;->memberName:I

    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getInterfaceMethodrefNameAndType(I)I
    .locals 0

    .line 445
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object p1

    check-cast p1, Ljavassist/bytecode/InterfaceMethodrefInfo;

    .line 447
    iget p1, p1, Ljavassist/bytecode/InterfaceMethodrefInfo;->nameAndTypeIndex:I

    return p1
.end method

.method public getInterfaceMethodrefType(I)Ljava/lang/String;
    .locals 1

    .line 484
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object p1

    check-cast p1, Ljavassist/bytecode/InterfaceMethodrefInfo;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 489
    :cond_0
    iget p1, p1, Ljavassist/bytecode/InterfaceMethodrefInfo;->nameAndTypeIndex:I

    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object p1

    check-cast p1, Ljavassist/bytecode/NameAndTypeInfo;

    if-nez p1, :cond_1

    return-object v0

    .line 494
    :cond_1
    iget p1, p1, Ljavassist/bytecode/NameAndTypeInfo;->typeDescriptor:I

    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getItem(I)Ljavassist/bytecode/ConstInfo;
    .locals 1

    .line 159
    iget-object v0, p0, Ljavassist/bytecode/ConstPool;->items:Ljavassist/bytecode/LongVector;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/LongVector;->elementAt(I)Ljavassist/bytecode/ConstInfo;

    move-result-object p1

    return-object p1
.end method

.method public getLdcValue(I)Ljava/lang/Object;
    .locals 3

    .line 507
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object v0

    .line 509
    instance-of v1, v0, Ljavassist/bytecode/StringInfo;

    if-eqz v1, :cond_0

    .line 510
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getStringInfo(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 511
    :cond_0
    instance-of v1, v0, Ljavassist/bytecode/FloatInfo;

    if-eqz v1, :cond_1

    .line 512
    new-instance v0, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getFloatInfo(I)F

    move-result p1

    invoke-direct {v0, p1}, Ljava/lang/Float;-><init>(F)V

    :goto_0
    move-object p1, v0

    goto :goto_1

    .line 513
    :cond_1
    instance-of v1, v0, Ljavassist/bytecode/IntegerInfo;

    if-eqz v1, :cond_2

    .line 514
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getIntegerInfo(I)I

    move-result p1

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0

    .line 515
    :cond_2
    instance-of v1, v0, Ljavassist/bytecode/LongInfo;

    if-eqz v1, :cond_3

    .line 516
    new-instance v0, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getLongInfo(I)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    goto :goto_0

    .line 517
    :cond_3
    instance-of v0, v0, Ljavassist/bytecode/DoubleInfo;

    if-eqz v0, :cond_4

    .line 518
    new-instance v0, Ljava/lang/Double;

    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getDoubleInfo(I)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public getLongInfo(I)J
    .locals 2

    .line 554
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object p1

    check-cast p1, Ljavassist/bytecode/LongInfo;

    .line 555
    iget-wide v0, p1, Ljavassist/bytecode/LongInfo;->value:J

    return-wide v0
.end method

.method public getMemberClass(I)I
    .locals 0

    .line 241
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object p1

    check-cast p1, Ljavassist/bytecode/MemberrefInfo;

    .line 242
    iget p1, p1, Ljavassist/bytecode/MemberrefInfo;->classIndex:I

    return p1
.end method

.method public getMemberNameAndType(I)I
    .locals 0

    .line 255
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object p1

    check-cast p1, Ljavassist/bytecode/MemberrefInfo;

    .line 256
    iget p1, p1, Ljavassist/bytecode/MemberrefInfo;->nameAndTypeIndex:I

    return p1
.end method

.method public getMethodrefClass(I)I
    .locals 0

    .line 342
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object p1

    check-cast p1, Ljavassist/bytecode/MethodrefInfo;

    .line 343
    iget p1, p1, Ljavassist/bytecode/MethodrefInfo;->classIndex:I

    return p1
.end method

.method public getMethodrefClassName(I)Ljava/lang/String;
    .locals 0

    .line 354
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object p1

    check-cast p1, Ljavassist/bytecode/MethodrefInfo;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 358
    :cond_0
    iget p1, p1, Ljavassist/bytecode/MethodrefInfo;->classIndex:I

    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getClassInfo(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMethodrefName(I)Ljava/lang/String;
    .locals 1

    .line 380
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object p1

    check-cast p1, Ljavassist/bytecode/MethodrefInfo;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 384
    :cond_0
    iget p1, p1, Ljavassist/bytecode/MethodrefInfo;->nameAndTypeIndex:I

    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object p1

    check-cast p1, Ljavassist/bytecode/NameAndTypeInfo;

    if-nez p1, :cond_1

    return-object v0

    .line 389
    :cond_1
    iget p1, p1, Ljavassist/bytecode/NameAndTypeInfo;->memberName:I

    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMethodrefNameAndType(I)I
    .locals 0

    .line 367
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object p1

    check-cast p1, Ljavassist/bytecode/MethodrefInfo;

    .line 368
    iget p1, p1, Ljavassist/bytecode/MethodrefInfo;->nameAndTypeIndex:I

    return p1
.end method

.method public getMethodrefType(I)Ljava/lang/String;
    .locals 1

    .line 402
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object p1

    check-cast p1, Ljavassist/bytecode/MethodrefInfo;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 406
    :cond_0
    iget p1, p1, Ljavassist/bytecode/MethodrefInfo;->nameAndTypeIndex:I

    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object p1

    check-cast p1, Ljavassist/bytecode/NameAndTypeInfo;

    if-nez p1, :cond_1

    return-object v0

    .line 411
    :cond_1
    iget p1, p1, Ljavassist/bytecode/NameAndTypeInfo;->typeDescriptor:I

    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getNameAndTypeDescriptor(I)I
    .locals 0

    .line 227
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object p1

    check-cast p1, Ljavassist/bytecode/NameAndTypeInfo;

    .line 228
    iget p1, p1, Ljavassist/bytecode/NameAndTypeInfo;->typeDescriptor:I

    return p1
.end method

.method public getNameAndTypeName(I)I
    .locals 0

    .line 217
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object p1

    check-cast p1, Ljavassist/bytecode/NameAndTypeInfo;

    .line 218
    iget p1, p1, Ljavassist/bytecode/NameAndTypeInfo;->memberName:I

    return p1
.end method

.method public getSize()I
    .locals 1

    .line 136
    iget v0, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    return v0
.end method

.method public getStringInfo(I)Ljava/lang/String;
    .locals 0

    .line 576
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object p1

    check-cast p1, Ljavassist/bytecode/StringInfo;

    .line 577
    iget p1, p1, Ljavassist/bytecode/StringInfo;->string:I

    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTag(I)I
    .locals 0

    .line 167
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object p1

    invoke-virtual {p1}, Ljavassist/bytecode/ConstInfo;->getTag()I

    move-result p1

    return p1
.end method

.method public getThisClassInfo()I
    .locals 1

    .line 151
    iget v0, p0, Ljavassist/bytecode/ConstPool;->thisClassInfo:I

    return v0
.end method

.method public getUtf8Info(I)Ljava/lang/String;
    .locals 0

    .line 587
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object p1

    check-cast p1, Ljavassist/bytecode/Utf8Info;

    .line 588
    iget-object p1, p1, Ljavassist/bytecode/Utf8Info;->string:Ljava/lang/String;

    return-object p1
.end method

.method public isConstructor(Ljava/lang/String;I)I
    .locals 1

    const-string v0, "<init>"

    .line 602
    invoke-virtual {p0, p1, v0, p2}, Ljavassist/bytecode/ConstPool;->isMember(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public isMember(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1

    .line 622
    invoke-virtual {p0, p3}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object p3

    check-cast p3, Ljavassist/bytecode/MemberrefInfo;

    .line 623
    iget v0, p3, Ljavassist/bytecode/MemberrefInfo;->classIndex:I

    invoke-virtual {p0, v0}, Ljavassist/bytecode/ConstPool;->getClassInfo(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 624
    iget p1, p3, Ljavassist/bytecode/MemberrefInfo;->nameAndTypeIndex:I

    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object p1

    check-cast p1, Ljavassist/bytecode/NameAndTypeInfo;

    .line 626
    iget p3, p1, Ljavassist/bytecode/NameAndTypeInfo;->memberName:I

    invoke-virtual {p0, p3}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 627
    iget p1, p1, Ljavassist/bytecode/NameAndTypeInfo;->typeDescriptor:I

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public print()V
    .locals 3

    .line 1066
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    invoke-virtual {p0, v0}, Ljavassist/bytecode/ConstPool;->print(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public print(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1073
    iget v0, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    const/4 v1, 0x1

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1075
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " "

    .line 1076
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1077
    iget-object v2, p0, Ljavassist/bytecode/ConstPool;->items:Ljavassist/bytecode/LongVector;

    invoke-virtual {v2, v1}, Ljavassist/bytecode/LongVector;->elementAt(I)Ljavassist/bytecode/ConstInfo;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljavassist/bytecode/ConstInfo;->print(Ljava/io/PrintWriter;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method prune()V
    .locals 1

    const/4 v0, 0x0

    .line 129
    iput-object v0, p0, Ljavassist/bytecode/ConstPool;->itemsCache:Ljava/util/HashMap;

    return-void
.end method

.method public renameClass(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 953
    iget-object v0, p0, Ljavassist/bytecode/ConstPool;->items:Ljavassist/bytecode/LongVector;

    .line 954
    iget v1, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    const/4 v2, 0x1

    :goto_0
    if-ge v2, v1, :cond_0

    .line 956
    invoke-virtual {v0, v2}, Ljavassist/bytecode/LongVector;->elementAt(I)Ljavassist/bytecode/ConstInfo;

    move-result-object v3

    .line 957
    iget-object v4, p0, Ljavassist/bytecode/ConstPool;->itemsCache:Ljava/util/HashMap;

    invoke-virtual {v3, p0, p1, p2, v4}, Ljavassist/bytecode/ConstInfo;->renameClass(Ljavassist/bytecode/ConstPool;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public renameClass(Ljava/util/Map;)V
    .locals 5

    .line 968
    iget-object v0, p0, Ljavassist/bytecode/ConstPool;->items:Ljavassist/bytecode/LongVector;

    .line 969
    iget v1, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    const/4 v2, 0x1

    :goto_0
    if-ge v2, v1, :cond_0

    .line 971
    invoke-virtual {v0, v2}, Ljavassist/bytecode/LongVector;->elementAt(I)Ljavassist/bytecode/ConstInfo;

    move-result-object v3

    .line 972
    iget-object v4, p0, Ljavassist/bytecode/ConstPool;->itemsCache:Ljava/util/HashMap;

    invoke-virtual {v3, p0, p1, v4}, Ljavassist/bytecode/ConstInfo;->renameClass(Ljavassist/bytecode/ConstPool;Ljava/util/Map;Ljava/util/HashMap;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method setThisClassInfo(I)V
    .locals 0

    .line 155
    iput p1, p0, Ljavassist/bytecode/ConstPool;->thisClassInfo:I

    return-void
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1055
    iget v0, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1056
    iget-object v0, p0, Ljavassist/bytecode/ConstPool;->items:Ljavassist/bytecode/LongVector;

    .line 1057
    iget v1, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    const/4 v2, 0x1

    :goto_0
    if-ge v2, v1, :cond_0

    .line 1059
    invoke-virtual {v0, v2}, Ljavassist/bytecode/LongVector;->elementAt(I)Ljavassist/bytecode/ConstInfo;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljavassist/bytecode/ConstInfo;->write(Ljava/io/DataOutputStream;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
