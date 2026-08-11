.class public Ljavassist/util/proxy/ProxyFactory;
.super Ljava/lang/Object;
.source "ProxyFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/util/proxy/ProxyFactory$ClassLoaderProvider;,
        Ljavassist/util/proxy/ProxyFactory$ProxyDetails;
    }
.end annotation


# static fields
.field private static final DEFAULT_INTERCEPTOR:Ljava/lang/String; = "default_interceptor"

.field private static final FILTER_SIGNATURE_FIELD:Ljava/lang/String; = "_filter_signature"

.field private static final FILTER_SIGNATURE_TYPE:Ljava/lang/String; = "[B"

.field private static final HANDLER:Ljava/lang/String; = "handler"

.field private static final HANDLER_GETTER:Ljava/lang/String; = "getHandler"

.field private static final HANDLER_GETTER_KEY:Ljava/lang/String; = "getHandler:()"

.field private static final HANDLER_GETTER_TYPE:Ljava/lang/String;

.field private static final HANDLER_SETTER:Ljava/lang/String; = "setHandler"

.field private static final HANDLER_SETTER_TYPE:Ljava/lang/String;

.field private static final HANDLER_TYPE:Ljava/lang/String;

.field private static final HOLDER:Ljava/lang/String; = "_methods_"

.field private static final HOLDER_TYPE:Ljava/lang/String; = "[Ljava/lang/reflect/Method;"

.field private static final NULL_INTERCEPTOR_HOLDER:Ljava/lang/String; = "javassist.util.proxy.RuntimeSupport"

.field private static final OBJECT_TYPE:Ljava/lang/Class;

.field private static final SERIAL_VERSION_UID_FIELD:Ljava/lang/String; = "serialVersionUID"

.field private static final SERIAL_VERSION_UID_TYPE:Ljava/lang/String; = "J"

.field private static final SERIAL_VERSION_UID_VALUE:I = -0x1

.field public static classLoaderProvider:Ljavassist/util/proxy/ProxyFactory$ClassLoaderProvider;

.field private static counter:I

.field private static hexDigits:[C

.field private static proxyCache:Ljava/util/WeakHashMap;

.field private static sorter:Ljava/util/Comparator;

.field public static volatile useCache:Z

.field public static volatile useWriteReplace:Z


# instance fields
.field private basename:Ljava/lang/String;

.field private classname:Ljava/lang/String;

.field private factoryUseCache:Z

.field private factoryWriteReplace:Z

.field private handler:Ljavassist/util/proxy/MethodHandler;

.field private hasGetHandler:Z

.field private interfaces:[Ljava/lang/Class;

.field private methodFilter:Ljavassist/util/proxy/MethodFilter;

.field private signature:[B

.field private signatureMethods:Ljava/util/List;

.field private superClass:Ljava/lang/Class;

.field private superName:Ljava/lang/String;

.field private thisClass:Ljava/lang/Class;

.field public writeDirectory:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 188
    const-class v0, Ljava/lang/Object;

    sput-object v0, Ljavassist/util/proxy/ProxyFactory;->OBJECT_TYPE:Ljava/lang/Class;

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x4c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Ljavassist/util/proxy/MethodHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    const/16 v3, 0x2f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljavassist/util/proxy/ProxyFactory;->HANDLER_TYPE:Ljava/lang/String;

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")V"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Ljavassist/util/proxy/ProxyFactory;->HANDLER_SETTER_TYPE:Ljava/lang/String;

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljavassist/util/proxy/ProxyFactory;->HANDLER_GETTER_TYPE:Ljava/lang/String;

    const/4 v0, 0x1

    .line 220
    sput-boolean v0, Ljavassist/util/proxy/ProxyFactory;->useCache:Z

    .line 241
    sput-boolean v0, Ljavassist/util/proxy/ProxyFactory;->useWriteReplace:Z

    .line 290
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Ljavassist/util/proxy/ProxyFactory;->proxyCache:Ljava/util/WeakHashMap;

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 440
    fill-array-data v0, :array_0

    sput-object v0, Ljavassist/util/proxy/ProxyFactory;->hexDigits:[C

    .line 604
    new-instance v0, Ljavassist/util/proxy/ProxyFactory$1;

    invoke-direct {v0}, Ljavassist/util/proxy/ProxyFactory$1;-><init>()V

    sput-object v0, Ljavassist/util/proxy/ProxyFactory;->classLoaderProvider:Ljavassist/util/proxy/ProxyFactory$ClassLoaderProvider;

    const/4 v0, 0x0

    .line 702
    sput v0, Ljavassist/util/proxy/ProxyFactory;->counter:I

    .line 785
    new-instance v0, Ljavassist/util/proxy/ProxyFactory$2;

    invoke-direct {v0}, Ljavassist/util/proxy/ProxyFactory$2;-><init>()V

    sput-object v0, Ljavassist/util/proxy/ProxyFactory;->sorter:Ljava/util/Comparator;

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 338
    iput-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->superClass:Ljava/lang/Class;

    .line 339
    iput-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->interfaces:[Ljava/lang/Class;

    .line 340
    iput-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->methodFilter:Ljavassist/util/proxy/MethodFilter;

    .line 341
    iput-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->handler:Ljavassist/util/proxy/MethodHandler;

    .line 342
    iput-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->signature:[B

    .line 343
    iput-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->signatureMethods:Ljava/util/List;

    const/4 v1, 0x0

    .line 344
    iput-boolean v1, p0, Ljavassist/util/proxy/ProxyFactory;->hasGetHandler:Z

    .line 345
    iput-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->thisClass:Ljava/lang/Class;

    .line 346
    iput-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->writeDirectory:Ljava/lang/String;

    .line 347
    sget-boolean v0, Ljavassist/util/proxy/ProxyFactory;->useCache:Z

    iput-boolean v0, p0, Ljavassist/util/proxy/ProxyFactory;->factoryUseCache:Z

    .line 348
    sget-boolean v0, Ljavassist/util/proxy/ProxyFactory;->useWriteReplace:Z

    iput-boolean v0, p0, Ljavassist/util/proxy/ProxyFactory;->factoryWriteReplace:Z

    return-void
.end method

.method private static addGetter(Ljava/lang/String;Ljavassist/bytecode/ClassFile;Ljavassist/bytecode/ConstPool;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 917
    new-instance v0, Ljavassist/bytecode/MethodInfo;

    sget-object v1, Ljavassist/util/proxy/ProxyFactory;->HANDLER_GETTER_TYPE:Ljava/lang/String;

    const-string v2, "getHandler"

    invoke-direct {v0, p2, v2, v1}, Ljavassist/bytecode/MethodInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 919
    invoke-virtual {v0, v1}, Ljavassist/bytecode/MethodInfo;->setAccessFlags(I)V

    .line 920
    new-instance v2, Ljavassist/bytecode/Bytecode;

    invoke-direct {v2, p2, v1, v1}, Ljavassist/bytecode/Bytecode;-><init>(Ljavassist/bytecode/ConstPool;II)V

    const/4 p2, 0x0

    .line 921
    invoke-virtual {v2, p2}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 922
    sget-object p2, Ljavassist/util/proxy/ProxyFactory;->HANDLER_TYPE:Ljava/lang/String;

    const-string v1, "handler"

    invoke-virtual {v2, p0, v1, p2}, Ljavassist/bytecode/Bytecode;->addGetfield(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0xb0

    .line 923
    invoke-virtual {v2, p0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 924
    invoke-virtual {v2}, Ljavassist/bytecode/Bytecode;->toCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljavassist/bytecode/MethodInfo;->setCodeAttribute(Ljavassist/bytecode/CodeAttribute;)V

    .line 925
    invoke-virtual {p1, v0}, Ljavassist/bytecode/ClassFile;->addMethod(Ljavassist/bytecode/MethodInfo;)V

    return-void
.end method

.method private static addLoad(Ljavassist/bytecode/Bytecode;ILjava/lang/Class;)I
    .locals 2

    .line 1240
    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1241
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x2

    if-ne p2, v0, :cond_0

    .line 1242
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addLload(I)V

    return v1

    .line 1245
    :cond_0
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_1

    .line 1246
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addFload(I)V

    goto :goto_0

    .line 1247
    :cond_1
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_2

    .line 1248
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addDload(I)V

    return v1

    .line 1252
    :cond_2
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addIload(I)V

    goto :goto_0

    .line 1255
    :cond_3
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static addLoadParameters(Ljavassist/bytecode/Bytecode;[Ljava/lang/Class;I)I
    .locals 5

    .line 1232
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    add-int v3, v2, p2

    .line 1234
    aget-object v4, p1, v1

    invoke-static {p0, v3, v4}, Ljavassist/util/proxy/ProxyFactory;->addLoad(Ljavassist/bytecode/Bytecode;ILjava/lang/Class;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method private static addMethodsHolder(Ljavassist/bytecode/ClassFile;Ljavassist/bytecode/ConstPool;Ljava/lang/String;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 882
    new-instance v0, Ljavassist/bytecode/FieldInfo;

    const-string v1, "_methods_"

    const-string v2, "[Ljava/lang/reflect/Method;"

    invoke-direct {v0, p1, v1, v2}, Ljavassist/bytecode/FieldInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xa

    .line 883
    invoke-virtual {v0, v3}, Ljavassist/bytecode/FieldInfo;->setAccessFlags(I)V

    .line 884
    invoke-virtual {p0, v0}, Ljavassist/bytecode/ClassFile;->addField(Ljavassist/bytecode/FieldInfo;)V

    .line 885
    new-instance v0, Ljavassist/bytecode/MethodInfo;

    const-string v3, "<clinit>"

    const-string v4, "()V"

    invoke-direct {v0, p1, v3, v4}, Ljavassist/bytecode/MethodInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x8

    .line 886
    invoke-virtual {v0, v3}, Ljavassist/bytecode/MethodInfo;->setAccessFlags(I)V

    .line 887
    new-instance v3, Ljavassist/bytecode/Bytecode;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4, v4}, Ljavassist/bytecode/Bytecode;-><init>(Ljavassist/bytecode/ConstPool;II)V

    mul-int/lit8 p3, p3, 0x2

    .line 888
    invoke-virtual {v3, p3}, Ljavassist/bytecode/Bytecode;->addIconst(I)V

    const-string p1, "java.lang.reflect.Method"

    .line 889
    invoke-virtual {v3, p1}, Ljavassist/bytecode/Bytecode;->addAnewarray(Ljava/lang/String;)V

    .line 890
    invoke-virtual {v3, p2, v1, v2}, Ljavassist/bytecode/Bytecode;->addPutstatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, -0x1

    .line 892
    invoke-virtual {v3, v1, v2}, Ljavassist/bytecode/Bytecode;->addLconst(J)V

    const-string p1, "serialVersionUID"

    const-string p3, "J"

    .line 893
    invoke-virtual {v3, p2, p1, p3}, Ljavassist/bytecode/Bytecode;->addPutstatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xb1

    .line 894
    invoke-virtual {v3, p1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 895
    invoke-virtual {v3}, Ljavassist/bytecode/Bytecode;->toCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljavassist/bytecode/MethodInfo;->setCodeAttribute(Ljavassist/bytecode/CodeAttribute;)V

    .line 896
    invoke-virtual {p0, v0}, Ljavassist/bytecode/ClassFile;->addMethod(Ljavassist/bytecode/MethodInfo;)V

    return-void
.end method

.method private static addReturn(Ljavassist/bytecode/Bytecode;Ljava/lang/Class;)I
    .locals 2

    .line 1261
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1262
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x2

    if-ne p1, v0, :cond_0

    const/16 p1, 0xad

    .line 1263
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    return v1

    .line 1266
    :cond_0
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1

    const/16 p1, 0xae

    .line 1267
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_0

    .line 1268
    :cond_1
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_2

    const/16 p1, 0xaf

    .line 1269
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    return v1

    .line 1272
    :cond_2
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3

    const/16 p1, 0xb1

    .line 1273
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    const/4 p0, 0x0

    return p0

    :cond_3
    const/16 p1, 0xac

    .line 1277
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_0

    :cond_4
    const/16 p1, 0xb0

    .line 1280
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static addSetter(Ljava/lang/String;Ljavassist/bytecode/ClassFile;Ljavassist/bytecode/ConstPool;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 902
    new-instance v0, Ljavassist/bytecode/MethodInfo;

    sget-object v1, Ljavassist/util/proxy/ProxyFactory;->HANDLER_SETTER_TYPE:Ljava/lang/String;

    const-string v2, "setHandler"

    invoke-direct {v0, p2, v2, v1}, Ljavassist/bytecode/MethodInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 904
    invoke-virtual {v0, v1}, Ljavassist/bytecode/MethodInfo;->setAccessFlags(I)V

    .line 905
    new-instance v2, Ljavassist/bytecode/Bytecode;

    const/4 v3, 0x2

    invoke-direct {v2, p2, v3, v3}, Ljavassist/bytecode/Bytecode;-><init>(Ljavassist/bytecode/ConstPool;II)V

    const/4 p2, 0x0

    .line 906
    invoke-virtual {v2, p2}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 907
    invoke-virtual {v2, v1}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 908
    sget-object p2, Ljavassist/util/proxy/ProxyFactory;->HANDLER_TYPE:Ljava/lang/String;

    const-string v1, "handler"

    invoke-virtual {v2, p0, v1, p2}, Ljavassist/bytecode/Bytecode;->addPutfield(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0xb1

    .line 909
    invoke-virtual {v2, p0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 910
    invoke-virtual {v2}, Ljavassist/bytecode/Bytecode;->toCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljavassist/bytecode/MethodInfo;->setCodeAttribute(Ljavassist/bytecode/CodeAttribute;)V

    .line 911
    invoke-virtual {p1, v0}, Ljavassist/bytecode/ClassFile;->addMethod(Ljavassist/bytecode/MethodInfo;)V

    return-void
.end method

.method private static addUnwrapper(Ljavassist/bytecode/Bytecode;Ljava/lang/Class;)V
    .locals 3

    .line 1339
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1340
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    const/16 p1, 0x57

    .line 1341
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_0

    .line 1343
    :cond_0
    invoke-static {p1}, Ljavassist/util/proxy/FactoryHelper;->typeIndex(Ljava/lang/Class;)I

    move-result p1

    .line 1344
    sget-object v0, Ljavassist/util/proxy/FactoryHelper;->wrapperTypes:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 1345
    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addCheckcast(Ljava/lang/String;)V

    .line 1346
    sget-object v1, Ljavassist/util/proxy/FactoryHelper;->unwarpMethods:[Ljava/lang/String;

    aget-object v1, v1, p1

    sget-object v2, Ljavassist/util/proxy/FactoryHelper;->unwrapDesc:[Ljava/lang/String;

    aget-object p1, v2, p1

    invoke-virtual {p0, v0, v1, p1}, Ljavassist/bytecode/Bytecode;->addInvokevirtual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1352
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addCheckcast(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private allocateClassName()V
    .locals 1

    .line 782
    iget-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->basename:Ljava/lang/String;

    invoke-static {v0}, Ljavassist/util/proxy/ProxyFactory;->makeProxyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->classname:Ljava/lang/String;

    return-void
.end method

.method private static callFind2Methods(Ljavassist/bytecode/Bytecode;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 2

    .line 1321
    const-class v0, Ljavassist/util/proxy/RuntimeSupport;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 1325
    invoke-virtual {p0, v1}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 1326
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addLdc(Ljava/lang/String;)V

    if-nez p2, :cond_0

    const/4 p1, 0x1

    .line 1328
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_0

    .line 1330
    :cond_0
    invoke-virtual {p0, p2}, Ljavassist/bytecode/Bytecode;->addLdc(Ljava/lang/String;)V

    .line 1332
    :goto_0
    invoke-virtual {p0, p3}, Ljavassist/bytecode/Bytecode;->addIconst(I)V

    .line 1333
    invoke-virtual {p0, p4}, Ljavassist/bytecode/Bytecode;->addLdc(Ljava/lang/String;)V

    .line 1334
    invoke-virtual {p0, p5}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    const-string p1, "find2Methods"

    const-string p2, "(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/reflect/Method;)V"

    .line 1335
    invoke-virtual {p0, v0, p1, p2}, Ljavassist/bytecode/Bytecode;->addInvokestatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private checkClassAndSuperName()V
    .locals 4

    .line 760
    iget-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->interfaces:[Ljava/lang/Class;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Class;

    .line 761
    iput-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->interfaces:[Ljava/lang/Class;

    .line 763
    :cond_0
    iget-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->superClass:Ljava/lang/Class;

    if-nez v0, :cond_2

    .line 764
    sget-object v0, Ljavassist/util/proxy/ProxyFactory;->OBJECT_TYPE:Ljava/lang/Class;

    iput-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->superClass:Ljava/lang/Class;

    .line 765
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->superName:Ljava/lang/String;

    .line 766
    iget-object v2, p0, Ljavassist/util/proxy/ProxyFactory;->interfaces:[Ljava/lang/Class;

    array-length v3, v2

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    aget-object v0, v2, v1

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->basename:Ljava/lang/String;

    goto :goto_1

    .line 769
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->superName:Ljava/lang/String;

    .line 770
    iput-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->basename:Ljava/lang/String;

    .line 773
    :goto_1
    iget-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->superClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 776
    iget-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->basename:Ljava/lang/String;

    const-string v1, "java."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 777
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "org.javassist.tmp."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljavassist/util/proxy/ProxyFactory;->basename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->basename:Ljava/lang/String;

    :cond_3
    return-void

    .line 774
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ljavassist/util/proxy/ProxyFactory;->superName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is final"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private computeSignature(Ljavassist/util/proxy/MethodFilter;)V
    .locals 5

    .line 808
    invoke-direct {p0}, Ljavassist/util/proxy/ProxyFactory;->makeSortedMethodList()V

    .line 810
    iget-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->signatureMethods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, 0x7

    shr-int/lit8 v1, v1, 0x3

    .line 812
    new-array v1, v1, [B

    iput-object v1, p0, Ljavassist/util/proxy/ProxyFactory;->signature:[B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 815
    iget-object v2, p0, Ljavassist/util/proxy/ProxyFactory;->signatureMethods:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 816
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    .line 817
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    .line 818
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Ljavassist/util/proxy/ProxyFactory;->basename:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Ljavassist/util/proxy/ProxyFactory;->isVisible(ILjava/lang/String;Ljava/lang/reflect/Member;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1, v2}, Ljavassist/util/proxy/MethodFilter;->isHandled(Ljava/lang/reflect/Method;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 820
    :cond_0
    iget-object v2, p0, Ljavassist/util/proxy/ProxyFactory;->signature:[B

    invoke-direct {p0, v2, v1}, Ljavassist/util/proxy/ProxyFactory;->setBit([BI)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private createClass1()Ljava/lang/Class;
    .locals 3

    .line 423
    iget-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->thisClass:Ljava/lang/Class;

    if-nez v0, :cond_1

    .line 424
    invoke-virtual {p0}, Ljavassist/util/proxy/ProxyFactory;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 425
    sget-object v1, Ljavassist/util/proxy/ProxyFactory;->proxyCache:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 426
    :try_start_0
    iget-boolean v2, p0, Ljavassist/util/proxy/ProxyFactory;->factoryUseCache:Z

    if-eqz v2, :cond_0

    .line 427
    invoke-direct {p0, v0}, Ljavassist/util/proxy/ProxyFactory;->createClass2(Ljava/lang/ClassLoader;)V

    goto :goto_0

    .line 429
    :cond_0
    invoke-direct {p0, v0}, Ljavassist/util/proxy/ProxyFactory;->createClass3(Ljava/lang/ClassLoader;)V

    .line 430
    :goto_0
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 434
    :cond_1
    :goto_1
    iget-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->thisClass:Ljava/lang/Class;

    const/4 v1, 0x0

    .line 435
    iput-object v1, p0, Ljavassist/util/proxy/ProxyFactory;->thisClass:Ljava/lang/Class;

    return-object v0
.end method

.method private createClass2(Ljava/lang/ClassLoader;)V
    .locals 5

    .line 470
    iget-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->superClass:Ljava/lang/Class;

    iget-object v1, p0, Ljavassist/util/proxy/ProxyFactory;->interfaces:[Ljava/lang/Class;

    iget-object v2, p0, Ljavassist/util/proxy/ProxyFactory;->signature:[B

    iget-boolean v3, p0, Ljavassist/util/proxy/ProxyFactory;->factoryWriteReplace:Z

    invoke-virtual {p0, v0, v1, v2, v3}, Ljavassist/util/proxy/ProxyFactory;->getKey(Ljava/lang/Class;[Ljava/lang/Class;[BZ)Ljava/lang/String;

    move-result-object v0

    .line 477
    sget-object v1, Ljavassist/util/proxy/ProxyFactory;->proxyCache:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 480
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 481
    sget-object v2, Ljavassist/util/proxy/ProxyFactory;->proxyCache:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavassist/util/proxy/ProxyFactory$ProxyDetails;

    if-eqz v2, :cond_1

    .line 485
    iget-object v2, v2, Ljavassist/util/proxy/ProxyFactory$ProxyDetails;->proxyClass:Ljava/lang/ref/WeakReference;

    .line 486
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    iput-object v2, p0, Ljavassist/util/proxy/ProxyFactory;->thisClass:Ljava/lang/Class;

    if-eqz v2, :cond_1

    return-void

    .line 491
    :cond_1
    invoke-direct {p0, p1}, Ljavassist/util/proxy/ProxyFactory;->createClass3(Ljava/lang/ClassLoader;)V

    .line 492
    new-instance p1, Ljavassist/util/proxy/ProxyFactory$ProxyDetails;

    iget-object v2, p0, Ljavassist/util/proxy/ProxyFactory;->signature:[B

    iget-object v3, p0, Ljavassist/util/proxy/ProxyFactory;->thisClass:Ljava/lang/Class;

    iget-boolean v4, p0, Ljavassist/util/proxy/ProxyFactory;->factoryWriteReplace:Z

    invoke-direct {p1, v2, v3, v4}, Ljavassist/util/proxy/ProxyFactory$ProxyDetails;-><init>([BLjava/lang/Class;Z)V

    .line 493
    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private createClass3(Ljava/lang/ClassLoader;)V
    .locals 2

    .line 499
    invoke-direct {p0}, Ljavassist/util/proxy/ProxyFactory;->allocateClassName()V

    .line 502
    :try_start_0
    invoke-direct {p0}, Ljavassist/util/proxy/ProxyFactory;->make()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    .line 503
    iget-object v1, p0, Ljavassist/util/proxy/ProxyFactory;->writeDirectory:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 504
    invoke-static {v0, v1}, Ljavassist/util/proxy/FactoryHelper;->writeFile(Ljavassist/bytecode/ClassFile;Ljava/lang/String;)V

    .line 506
    :cond_0
    invoke-virtual {p0}, Ljavassist/util/proxy/ProxyFactory;->getDomain()Ljava/security/ProtectionDomain;

    move-result-object v1

    invoke-static {v0, p1, v1}, Ljavassist/util/proxy/FactoryHelper;->toClass(Ljavassist/bytecode/ClassFile;Ljava/lang/ClassLoader;Ljava/security/ProtectionDomain;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Ljavassist/util/proxy/ProxyFactory;->thisClass:Ljava/lang/Class;

    const-string p1, "_filter_signature"

    .line 507
    iget-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->signature:[B

    invoke-direct {p0, p1, v0}, Ljavassist/util/proxy/ProxyFactory;->setField(Ljava/lang/String;Ljava/lang/Object;)V

    .line 509
    iget-boolean p1, p0, Ljavassist/util/proxy/ProxyFactory;->factoryUseCache:Z

    if-nez p1, :cond_1

    const-string p1, "default_interceptor"

    .line 510
    iget-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->handler:Ljavassist/util/proxy/MethodHandler;

    invoke-direct {p0, p1, v0}, Ljavassist/util/proxy/ProxyFactory;->setField(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljavassist/CannotCompileException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 514
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljavassist/CannotCompileException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 538
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x1

    .line 539
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 p1, 0x0

    .line 540
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    .line 541
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 545
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method static getFilterSignature(Ljava/lang/Class;)[B
    .locals 1

    const-string v0, "_filter_signature"

    .line 533
    invoke-static {p0, v0}, Ljavassist/util/proxy/ProxyFactory;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    check-cast p0, [B

    return-object p0
.end method

.method public static getHandler(Ljavassist/util/proxy/Proxy;)Ljavassist/util/proxy/MethodHandler;
    .locals 2

    .line 558
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "handler"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 559
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 560
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const/4 v1, 0x0

    .line 561
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 562
    check-cast p0, Ljavassist/util/proxy/MethodHandler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 565
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static getMethods(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/util/HashMap;
    .locals 4

    .line 1041
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1042
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    .line 1043
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 1044
    aget-object v3, p1, v2

    invoke-static {v0, v3, v1}, Ljavassist/util/proxy/ProxyFactory;->getMethods(Ljava/util/HashMap;Ljava/lang/Class;Ljava/util/Set;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1046
    :cond_0
    invoke-static {v0, p0, v1}, Ljavassist/util/proxy/ProxyFactory;->getMethods(Ljava/util/HashMap;Ljava/lang/Class;Ljava/util/Set;)V

    return-object v0
.end method

.method private static getMethods(Ljava/util/HashMap;Ljava/lang/Class;Ljava/util/Set;)V
    .locals 4

    .line 1053
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1056
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1057
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 1058
    aget-object v3, v0, v2

    invoke-static {p0, v3, p2}, Ljavassist/util/proxy/ProxyFactory;->getMethods(Ljava/util/HashMap;Ljava/lang/Class;Ljava/util/Set;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1060
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1062
    invoke-static {p0, v0, p2}, Ljavassist/util/proxy/ProxyFactory;->getMethods(Ljava/util/HashMap;Ljava/lang/Class;Ljava/util/Set;)V

    .line 1064
    :cond_2
    invoke-static {p1}, Ljavassist/util/proxy/SecurityActions;->getDeclaredMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object p1

    .line 1065
    :goto_1
    array-length p2, p1

    if-ge v1, p2, :cond_4

    .line 1066
    aget-object p2, p1, v1

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result p2

    invoke-static {p2}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result p2

    if-nez p2, :cond_3

    .line 1067
    aget-object p2, p1, v1

    .line 1069
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p2

    const/4 v2, 0x0

    invoke-static {p2, v2}, Ljavassist/util/proxy/RuntimeSupport;->makeDescriptor([Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1072
    aget-object v0, p1, v1

    invoke-virtual {p0, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_3

    .line 1075
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-eqz v2, :cond_3

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1079
    invoke-virtual {p0, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private static getPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x2e

    .line 1033
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    .line 1037
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private installSignature([B)V
    .locals 2

    .line 827
    invoke-direct {p0}, Ljavassist/util/proxy/ProxyFactory;->makeSortedMethodList()V

    .line 829
    iget-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->signatureMethods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    .line 831
    array-length v1, p1

    if-ne v1, v0, :cond_0

    .line 835
    iput-object p1, p0, Ljavassist/util/proxy/ProxyFactory;->signature:[B

    return-void

    .line 832
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "invalid filter signature length for deserialized proxy class"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static isProxyClass(Ljava/lang/Class;)Z
    .locals 1

    .line 300
    const-class v0, Ljavassist/util/proxy/Proxy;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method private static isVisible(ILjava/lang/String;Ljava/lang/reflect/Member;)Z
    .locals 2

    and-int/lit8 v0, p0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    and-int/lit8 p0, p0, 0x5

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    return v0

    .line 1023
    :cond_1
    invoke-static {p1}, Ljavassist/util/proxy/ProxyFactory;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1024
    invoke-interface {p2}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljavassist/util/proxy/ProxyFactory;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p0, :cond_3

    if-nez p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    .line 1028
    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static keyToDesc(Ljava/lang/String;Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x3a

    .line 1087
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 1088
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p0, p1}, Ljavassist/util/proxy/RuntimeSupport;->makeDescriptor(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private make()Ljavassist/bytecode/ClassFile;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 709
    new-instance v0, Ljavassist/bytecode/ClassFile;

    iget-object v1, p0, Ljavassist/util/proxy/ProxyFactory;->classname:Ljava/lang/String;

    iget-object v2, p0, Ljavassist/util/proxy/ProxyFactory;->superName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Ljavassist/bytecode/ClassFile;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 710
    invoke-virtual {v0, v1}, Ljavassist/bytecode/ClassFile;->setAccessFlags(I)V

    .line 711
    iget-object v1, p0, Ljavassist/util/proxy/ProxyFactory;->interfaces:[Ljava/lang/Class;

    iget-boolean v2, p0, Ljavassist/util/proxy/ProxyFactory;->hasGetHandler:Z

    if-eqz v2, :cond_0

    const-class v2, Ljavassist/util/proxy/Proxy;

    goto :goto_0

    :cond_0
    const-class v2, Ljavassist/util/proxy/ProxyObject;

    :goto_0
    invoke-static {v0, v1, v2}, Ljavassist/util/proxy/ProxyFactory;->setInterfaces(Ljavassist/bytecode/ClassFile;[Ljava/lang/Class;Ljava/lang/Class;)V

    .line 712
    invoke-virtual {v0}, Ljavassist/bytecode/ClassFile;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v1

    .line 715
    iget-boolean v2, p0, Ljavassist/util/proxy/ProxyFactory;->factoryUseCache:Z

    const/16 v3, 0x9

    if-nez v2, :cond_1

    .line 716
    new-instance v2, Ljavassist/bytecode/FieldInfo;

    sget-object v4, Ljavassist/util/proxy/ProxyFactory;->HANDLER_TYPE:Ljava/lang/String;

    const-string v5, "default_interceptor"

    invoke-direct {v2, v1, v5, v4}, Ljavassist/bytecode/FieldInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    invoke-virtual {v2, v3}, Ljavassist/bytecode/FieldInfo;->setAccessFlags(I)V

    .line 718
    invoke-virtual {v0, v2}, Ljavassist/bytecode/ClassFile;->addField(Ljavassist/bytecode/FieldInfo;)V

    .line 722
    :cond_1
    new-instance v2, Ljavassist/bytecode/FieldInfo;

    sget-object v4, Ljavassist/util/proxy/ProxyFactory;->HANDLER_TYPE:Ljava/lang/String;

    const-string v5, "handler"

    invoke-direct {v2, v1, v5, v4}, Ljavassist/bytecode/FieldInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x2

    .line 723
    invoke-virtual {v2, v4}, Ljavassist/bytecode/FieldInfo;->setAccessFlags(I)V

    .line 724
    invoke-virtual {v0, v2}, Ljavassist/bytecode/ClassFile;->addField(Ljavassist/bytecode/FieldInfo;)V

    .line 727
    new-instance v2, Ljavassist/bytecode/FieldInfo;

    const-string v4, "_filter_signature"

    const-string v5, "[B"

    invoke-direct {v2, v1, v4, v5}, Ljavassist/bytecode/FieldInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    invoke-virtual {v2, v3}, Ljavassist/bytecode/FieldInfo;->setAccessFlags(I)V

    .line 729
    invoke-virtual {v0, v2}, Ljavassist/bytecode/ClassFile;->addField(Ljavassist/bytecode/FieldInfo;)V

    .line 732
    new-instance v2, Ljavassist/bytecode/FieldInfo;

    const-string v3, "serialVersionUID"

    const-string v4, "J"

    invoke-direct {v2, v1, v3, v4}, Ljavassist/bytecode/FieldInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x19

    .line 733
    invoke-virtual {v2, v3}, Ljavassist/bytecode/FieldInfo;->setAccessFlags(I)V

    .line 734
    invoke-virtual {v0, v2}, Ljavassist/bytecode/ClassFile;->addField(Ljavassist/bytecode/FieldInfo;)V

    .line 738
    iget-object v2, p0, Ljavassist/util/proxy/ProxyFactory;->classname:Ljava/lang/String;

    invoke-direct {p0, v2, v0, v1, v2}, Ljavassist/util/proxy/ProxyFactory;->makeConstructors(Ljava/lang/String;Ljavassist/bytecode/ClassFile;Ljavassist/bytecode/ConstPool;Ljava/lang/String;)V

    .line 739
    iget-object v2, p0, Ljavassist/util/proxy/ProxyFactory;->classname:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Ljavassist/util/proxy/ProxyFactory;->overrideMethods(Ljavassist/bytecode/ClassFile;Ljavassist/bytecode/ConstPool;Ljava/lang/String;)I

    move-result v2

    .line 740
    iget-object v3, p0, Ljavassist/util/proxy/ProxyFactory;->classname:Ljava/lang/String;

    invoke-static {v0, v1, v3, v2}, Ljavassist/util/proxy/ProxyFactory;->addMethodsHolder(Ljavassist/bytecode/ClassFile;Ljavassist/bytecode/ConstPool;Ljava/lang/String;I)V

    .line 741
    iget-object v2, p0, Ljavassist/util/proxy/ProxyFactory;->classname:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Ljavassist/util/proxy/ProxyFactory;->addSetter(Ljava/lang/String;Ljavassist/bytecode/ClassFile;Ljavassist/bytecode/ConstPool;)V

    .line 742
    iget-boolean v2, p0, Ljavassist/util/proxy/ProxyFactory;->hasGetHandler:Z

    if-nez v2, :cond_2

    .line 743
    iget-object v2, p0, Ljavassist/util/proxy/ProxyFactory;->classname:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Ljavassist/util/proxy/ProxyFactory;->addGetter(Ljava/lang/String;Ljavassist/bytecode/ClassFile;Ljavassist/bytecode/ConstPool;)V

    .line 745
    :cond_2
    iget-boolean v2, p0, Ljavassist/util/proxy/ProxyFactory;->factoryWriteReplace:Z

    if-eqz v2, :cond_3

    .line 747
    :try_start_0
    invoke-static {v1}, Ljavassist/util/proxy/ProxyFactory;->makeWriteReplace(Ljavassist/bytecode/ConstPool;)Ljavassist/bytecode/MethodInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ClassFile;->addMethod(Ljavassist/bytecode/MethodInfo;)V
    :try_end_0
    .catch Ljavassist/bytecode/DuplicateMemberException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    const/4 v1, 0x0

    .line 754
    iput-object v1, p0, Ljavassist/util/proxy/ProxyFactory;->thisClass:Ljava/lang/Class;

    return-object v0
.end method

.method private static makeConstructor(Ljava/lang/String;Ljava/lang/reflect/Constructor;Ljavassist/bytecode/ConstPool;Ljava/lang/Class;Z)Ljavassist/bytecode/MethodInfo;
    .locals 9

    .line 1093
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljavassist/util/proxy/RuntimeSupport;->makeDescriptor([Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 1095
    new-instance v1, Ljavassist/bytecode/MethodInfo;

    const-string v2, "<init>"

    invoke-direct {v1, p2, v2, v0}, Ljavassist/bytecode/MethodInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 1096
    invoke-virtual {v1, v3}, Ljavassist/bytecode/MethodInfo;->setAccessFlags(I)V

    .line 1097
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v4

    invoke-static {v1, p2, v4}, Ljavassist/util/proxy/ProxyFactory;->setThrows(Ljavassist/bytecode/MethodInfo;Ljavassist/bytecode/ConstPool;[Ljava/lang/Class;)V

    .line 1098
    new-instance v4, Ljavassist/bytecode/Bytecode;

    const/4 v5, 0x0

    invoke-direct {v4, p2, v5, v5}, Ljavassist/bytecode/Bytecode;-><init>(Ljavassist/bytecode/ConstPool;II)V

    const-string v6, "handler"

    const-string v7, "default_interceptor"

    if-eqz p4, :cond_0

    .line 1104
    invoke-virtual {v4, v5}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 1105
    sget-object p4, Ljavassist/util/proxy/ProxyFactory;->HANDLER_TYPE:Ljava/lang/String;

    invoke-virtual {v4, p0, v7, p4}, Ljavassist/bytecode/Bytecode;->addGetstatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    invoke-virtual {v4, p0, v6, p4}, Ljavassist/bytecode/Bytecode;->addPutfield(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    invoke-virtual {v4, p0, v7, p4}, Ljavassist/bytecode/Bytecode;->addGetstatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p4, 0xc7

    .line 1108
    invoke-virtual {v4, p4}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    const/16 p4, 0xa

    .line 1109
    invoke-virtual {v4, p4}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 1113
    :cond_0
    invoke-virtual {v4, v5}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 1114
    sget-object p4, Ljavassist/util/proxy/ProxyFactory;->HANDLER_TYPE:Ljava/lang/String;

    const-string v8, "javassist.util.proxy.RuntimeSupport"

    invoke-virtual {v4, v8, v7, p4}, Ljavassist/bytecode/Bytecode;->addGetstatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    invoke-virtual {v4, p0, v6, p4}, Ljavassist/bytecode/Bytecode;->addPutfield(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    invoke-virtual {v4}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result p0

    .line 1118
    invoke-virtual {v4, v5}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 1119
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    invoke-static {v4, p1, v3}, Ljavassist/util/proxy/ProxyFactory;->addLoadParameters(Ljavassist/bytecode/Bytecode;[Ljava/lang/Class;I)I

    move-result p1

    .line 1120
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v4, p3, v2, v0}, Ljavassist/bytecode/Bytecode;->addInvokespecial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p3, 0xb1

    .line 1121
    invoke-virtual {v4, p3}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    add-int/2addr p1, v3

    .line 1122
    invoke-virtual {v4, p1}, Ljavassist/bytecode/Bytecode;->setMaxLocals(I)V

    .line 1123
    invoke-virtual {v4}, Ljavassist/bytecode/Bytecode;->toCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object p1

    .line 1124
    invoke-virtual {v1, p1}, Ljavassist/bytecode/MethodInfo;->setCodeAttribute(Ljavassist/bytecode/CodeAttribute;)V

    .line 1126
    new-instance p3, Ljavassist/bytecode/StackMapTable$Writer;

    const/16 p4, 0x20

    invoke-direct {p3, p4}, Ljavassist/bytecode/StackMapTable$Writer;-><init>(I)V

    .line 1127
    invoke-virtual {p3, p0}, Ljavassist/bytecode/StackMapTable$Writer;->sameFrame(I)V

    .line 1128
    invoke-virtual {p3, p2}, Ljavassist/bytecode/StackMapTable$Writer;->toStackMapTable(Ljavassist/bytecode/ConstPool;)Ljavassist/bytecode/StackMapTable;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljavassist/bytecode/CodeAttribute;->setAttribute(Ljavassist/bytecode/StackMapTable;)V

    return-object v1
.end method

.method private makeConstructors(Ljava/lang/String;Ljavassist/bytecode/ClassFile;Ljavassist/bytecode/ConstPool;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 974
    iget-object p4, p0, Ljavassist/util/proxy/ProxyFactory;->superClass:Ljava/lang/Class;

    invoke-static {p4}, Ljavassist/util/proxy/SecurityActions;->getDeclaredConstructors(Ljava/lang/Class;)[Ljava/lang/reflect/Constructor;

    move-result-object p4

    .line 976
    iget-boolean v0, p0, Ljavassist/util/proxy/ProxyFactory;->factoryUseCache:Z

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    .line 977
    :goto_0
    array-length v2, p4

    if-ge v1, v2, :cond_1

    .line 978
    aget-object v2, p4, v1

    .line 979
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v3

    .line 980
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Ljavassist/util/proxy/ProxyFactory;->basename:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Ljavassist/util/proxy/ProxyFactory;->isVisible(ILjava/lang/String;Ljava/lang/reflect/Member;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 982
    iget-object v3, p0, Ljavassist/util/proxy/ProxyFactory;->superClass:Ljava/lang/Class;

    invoke-static {p1, v2, p3, v3, v0}, Ljavassist/util/proxy/ProxyFactory;->makeConstructor(Ljava/lang/String;Ljava/lang/reflect/Constructor;Ljavassist/bytecode/ConstPool;Ljava/lang/Class;Z)Ljavassist/bytecode/MethodInfo;

    move-result-object v2

    .line 983
    invoke-virtual {p2, v2}, Ljavassist/bytecode/ClassFile;->addMethod(Ljavassist/bytecode/MethodInfo;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static makeDelegator(Ljava/lang/reflect/Method;Ljava/lang/String;Ljavassist/bytecode/ConstPool;Ljava/lang/Class;Ljava/lang/String;)Ljavassist/bytecode/MethodInfo;
    .locals 3

    .line 1134
    new-instance v0, Ljavassist/bytecode/MethodInfo;

    invoke-direct {v0, p2, p4, p1}, Ljavassist/bytecode/MethodInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result p4

    and-int/lit16 p4, p4, -0x527

    or-int/lit8 p4, p4, 0x11

    invoke-virtual {v0, p4}, Ljavassist/bytecode/MethodInfo;->setAccessFlags(I)V

    .line 1141
    invoke-static {v0, p2, p0}, Ljavassist/util/proxy/ProxyFactory;->setThrows(Ljavassist/bytecode/MethodInfo;Ljavassist/bytecode/ConstPool;Ljava/lang/reflect/Method;)V

    .line 1142
    new-instance p4, Ljavassist/bytecode/Bytecode;

    const/4 v1, 0x0

    invoke-direct {p4, p2, v1, v1}, Ljavassist/bytecode/Bytecode;-><init>(Ljavassist/bytecode/ConstPool;II)V

    .line 1143
    invoke-virtual {p4, v1}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 1144
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p2

    const/4 v1, 0x1

    invoke-static {p4, p2, v1}, Ljavassist/util/proxy/ProxyFactory;->addLoadParameters(Ljavassist/bytecode/Bytecode;[Ljava/lang/Class;I)I

    move-result p2

    .line 1145
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, p3, v2, p1}, Ljavassist/bytecode/Bytecode;->addInvokespecial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p4, p0}, Ljavassist/util/proxy/ProxyFactory;->addReturn(Ljavassist/bytecode/Bytecode;Ljava/lang/Class;)I

    add-int/2addr p2, v1

    .line 1147
    invoke-virtual {p4, p2}, Ljavassist/bytecode/Bytecode;->setMaxLocals(I)V

    .line 1148
    invoke-virtual {p4}, Ljavassist/bytecode/Bytecode;->toCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljavassist/bytecode/MethodInfo;->setCodeAttribute(Ljavassist/bytecode/CodeAttribute;)V

    return-object v0
.end method

.method private static makeForwarder(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/String;Ljavassist/bytecode/ConstPool;Ljava/lang/Class;Ljava/lang/String;I)Ljavassist/bytecode/MethodInfo;
    .locals 9

    .line 1158
    new-instance p4, Ljavassist/bytecode/MethodInfo;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p4, p3, v0, p2}, Ljavassist/bytecode/MethodInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    and-int/lit16 v0, v0, -0x521

    or-int/lit8 v0, v0, 0x10

    invoke-virtual {p4, v0}, Ljavassist/bytecode/MethodInfo;->setAccessFlags(I)V

    .line 1163
    invoke-static {p4, p3, p1}, Ljavassist/util/proxy/ProxyFactory;->setThrows(Ljavassist/bytecode/MethodInfo;Ljavassist/bytecode/ConstPool;Ljava/lang/reflect/Method;)V

    .line 1164
    invoke-static {p2}, Ljavassist/bytecode/Descriptor;->paramSize(Ljava/lang/String;)I

    move-result v0

    .line 1165
    new-instance v7, Ljavassist/bytecode/Bytecode;

    add-int/lit8 v1, v0, 0x2

    const/4 v8, 0x0

    invoke-direct {v7, p3, v8, v1}, Ljavassist/bytecode/Bytecode;-><init>(Ljavassist/bytecode/ConstPool;II)V

    mul-int/lit8 p6, p6, 0x2

    add-int/lit8 p3, p6, 0x1

    add-int/lit8 v0, v0, 0x1

    const-string v1, "_methods_"

    const-string v2, "[Ljava/lang/reflect/Method;"

    .line 1180
    invoke-virtual {v7, p0, v1, v2}, Ljavassist/bytecode/Bytecode;->addGetstatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    invoke-virtual {v7, v0}, Ljavassist/bytecode/Bytecode;->addAstore(I)V

    .line 1183
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v1, v7

    move-object v3, p5

    move v4, p6

    move-object v5, p2

    move v6, v0

    invoke-static/range {v1 .. v6}, Ljavassist/util/proxy/ProxyFactory;->callFind2Methods(Ljavassist/bytecode/Bytecode;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 1185
    invoke-virtual {v7, v8}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 1186
    sget-object p2, Ljavassist/util/proxy/ProxyFactory;->HANDLER_TYPE:Ljava/lang/String;

    const-string p5, "handler"

    invoke-virtual {v7, p0, p5, p2}, Ljavassist/bytecode/Bytecode;->addGetfield(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1187
    invoke-virtual {v7, v8}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 1189
    invoke-virtual {v7, v0}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 1190
    invoke-virtual {v7, p6}, Ljavassist/bytecode/Bytecode;->addIconst(I)V

    const/16 p0, 0x32

    .line 1191
    invoke-virtual {v7, p0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1193
    invoke-virtual {v7, v0}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 1194
    invoke-virtual {v7, p3}, Ljavassist/bytecode/Bytecode;->addIconst(I)V

    .line 1195
    invoke-virtual {v7, p0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1197
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p0

    invoke-static {v7, p0}, Ljavassist/util/proxy/ProxyFactory;->makeParameterList(Ljavassist/bytecode/Bytecode;[Ljava/lang/Class;)V

    .line 1198
    const-class p0, Ljavassist/util/proxy/MethodHandler;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p2, "invoke"

    const-string p3, "(Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;"

    const/4 p5, 0x5

    invoke-virtual {v7, p0, p2, p3, p5}, Ljavassist/bytecode/Bytecode;->addInvokeinterface(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1201
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p0

    .line 1202
    invoke-static {v7, p0}, Ljavassist/util/proxy/ProxyFactory;->addUnwrapper(Ljavassist/bytecode/Bytecode;Ljava/lang/Class;)V

    .line 1203
    invoke-static {v7, p0}, Ljavassist/util/proxy/ProxyFactory;->addReturn(Ljavassist/bytecode/Bytecode;Ljava/lang/Class;)I

    .line 1205
    invoke-virtual {v7}, Ljavassist/bytecode/Bytecode;->toCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object p0

    .line 1206
    invoke-virtual {p4, p0}, Ljavassist/bytecode/MethodInfo;->setCodeAttribute(Ljavassist/bytecode/CodeAttribute;)V

    return-object p4
.end method

.method private static makeParameterList(Ljavassist/bytecode/Bytecode;[Ljava/lang/Class;)V
    .locals 5

    .line 1287
    array-length v0, p1

    .line 1288
    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addIconst(I)V

    const-string v1, "java/lang/Object"

    .line 1289
    invoke-virtual {p0, v1}, Ljavassist/bytecode/Bytecode;->addAnewarray(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    const/16 v3, 0x59

    .line 1291
    invoke-virtual {p0, v3}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1292
    invoke-virtual {p0, v2}, Ljavassist/bytecode/Bytecode;->addIconst(I)V

    .line 1293
    aget-object v3, p1, v2

    .line 1294
    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1295
    invoke-static {p0, v3, v1}, Ljavassist/util/proxy/ProxyFactory;->makeWrapper(Ljavassist/bytecode/Bytecode;Ljava/lang/Class;I)I

    move-result v1

    goto :goto_1

    .line 1297
    :cond_0
    invoke-virtual {p0, v1}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    add-int/lit8 v1, v1, 0x1

    :goto_1
    const/16 v3, 0x53

    .line 1301
    invoke-virtual {p0, v3}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static declared-synchronized makeProxyName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-class v0, Ljavassist/util/proxy/ProxyFactory;

    monitor-enter v0

    .line 705
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "_$$_javassist_"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget v1, Ljavassist/util/proxy/ProxyFactory;->counter:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Ljavassist/util/proxy/ProxyFactory;->counter:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private makeSortedMethodList()V
    .locals 3

    .line 798
    invoke-direct {p0}, Ljavassist/util/proxy/ProxyFactory;->checkClassAndSuperName()V

    .line 800
    iget-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->superClass:Ljava/lang/Class;

    iget-object v1, p0, Ljavassist/util/proxy/ProxyFactory;->interfaces:[Ljava/lang/Class;

    invoke-static {v0, v1}, Ljavassist/util/proxy/ProxyFactory;->getMethods(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/util/HashMap;

    move-result-object v0

    .line 801
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Ljavassist/util/proxy/ProxyFactory;->signatureMethods:Ljava/util/List;

    const-string v1, "getHandler:()"

    .line 802
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Ljavassist/util/proxy/ProxyFactory;->hasGetHandler:Z

    .line 803
    iget-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->signatureMethods:Ljava/util/List;

    sget-object v1, Ljavassist/util/proxy/ProxyFactory;->sorter:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private static makeUniqueName(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 3

    .line 989
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {p0, v0}, Ljavassist/util/proxy/ProxyFactory;->makeUniqueName0(Ljava/lang/String;Ljava/util/Iterator;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/16 v0, 0x64

    :goto_0
    const/16 v1, 0x3e7

    if-ge v0, v1, :cond_2

    .line 993
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 994
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-static {v1, v2}, Ljavassist/util/proxy/ProxyFactory;->makeUniqueName0(Ljava/lang/String;Ljava/util/Iterator;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 998
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "cannot make a unique method name"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method private static makeUniqueName0(Ljava/lang/String;Ljava/util/Iterator;)Z
    .locals 1

    .line 1002
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1003
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1004
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1005
    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static makeWrapper(Ljavassist/bytecode/Bytecode;Ljava/lang/Class;I)I
    .locals 3

    .line 1306
    invoke-static {p1}, Ljavassist/util/proxy/FactoryHelper;->typeIndex(Ljava/lang/Class;)I

    move-result v0

    .line 1307
    sget-object v1, Ljavassist/util/proxy/FactoryHelper;->wrapperTypes:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 1308
    invoke-virtual {p0, v1}, Ljavassist/bytecode/Bytecode;->addNew(Ljava/lang/String;)V

    const/16 v2, 0x59

    .line 1309
    invoke-virtual {p0, v2}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1310
    invoke-static {p0, p2, p1}, Ljavassist/util/proxy/ProxyFactory;->addLoad(Ljavassist/bytecode/Bytecode;ILjava/lang/Class;)I

    .line 1311
    sget-object p1, Ljavassist/util/proxy/FactoryHelper;->wrapperDesc:[Ljava/lang/String;

    aget-object p1, p1, v0

    const-string v2, "<init>"

    invoke-virtual {p0, v1, v2, p1}, Ljavassist/bytecode/Bytecode;->addInvokespecial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1313
    sget-object p0, Ljavassist/util/proxy/FactoryHelper;->dataSize:[I

    aget p0, p0, v0

    add-int/2addr p2, p0

    return p2
.end method

.method private static makeWriteReplace(Ljavassist/bytecode/ConstPool;)Ljavassist/bytecode/MethodInfo;
    .locals 5

    .line 1356
    new-instance v0, Ljavassist/bytecode/MethodInfo;

    const-string v1, "writeReplace"

    const-string v2, "()Ljava/lang/Object;"

    invoke-direct {v0, p0, v1, v2}, Ljavassist/bytecode/MethodInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "java.io.ObjectStreamException"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 1359
    new-instance v3, Ljavassist/bytecode/ExceptionsAttribute;

    invoke-direct {v3, p0}, Ljavassist/bytecode/ExceptionsAttribute;-><init>(Ljavassist/bytecode/ConstPool;)V

    .line 1360
    invoke-virtual {v3, v2}, Ljavassist/bytecode/ExceptionsAttribute;->setExceptions([Ljava/lang/String;)V

    .line 1361
    invoke-virtual {v0, v3}, Ljavassist/bytecode/MethodInfo;->setExceptionsAttribute(Ljavassist/bytecode/ExceptionsAttribute;)V

    .line 1362
    new-instance v2, Ljavassist/bytecode/Bytecode;

    invoke-direct {v2, p0, v4, v1}, Ljavassist/bytecode/Bytecode;-><init>(Ljavassist/bytecode/ConstPool;II)V

    .line 1363
    invoke-virtual {v2, v4}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    const-string p0, "javassist.util.proxy.RuntimeSupport"

    const-string v1, "makeSerializedProxy"

    const-string v3, "(Ljava/lang/Object;)Ljavassist/util/proxy/SerializedProxy;"

    .line 1364
    invoke-virtual {v2, p0, v1, v3}, Ljavassist/bytecode/Bytecode;->addInvokestatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0xb0

    .line 1367
    invoke-virtual {v2, p0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1368
    invoke-virtual {v2}, Ljavassist/bytecode/Bytecode;->toCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljavassist/bytecode/MethodInfo;->setCodeAttribute(Ljavassist/bytecode/CodeAttribute;)V

    return-object v0
.end method

.method private override(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/String;ILjava/lang/String;Ljavassist/bytecode/ClassFile;Ljavassist/bytecode/ConstPool;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 953
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    .line 954
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 955
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    .line 958
    :cond_0
    invoke-static {p2, p5, p7, v4, p3}, Ljavassist/util/proxy/ProxyFactory;->makeDelegator(Ljava/lang/reflect/Method;Ljava/lang/String;Ljavassist/bytecode/ConstPool;Ljava/lang/Class;Ljava/lang/String;)Ljavassist/bytecode/MethodInfo;

    move-result-object v0

    .line 961
    invoke-virtual {v0}, Ljavassist/bytecode/MethodInfo;->getAccessFlags()I

    move-result v1

    and-int/lit8 v1, v1, -0x41

    invoke-virtual {v0, v1}, Ljavassist/bytecode/MethodInfo;->setAccessFlags(I)V

    .line 962
    invoke-virtual {p6, v0}, Ljavassist/bytecode/ClassFile;->addMethod(Ljavassist/bytecode/MethodInfo;)V

    :goto_0
    move-object v5, p3

    move-object v0, p1

    move-object v1, p2

    move-object v2, p5

    move-object v3, p7

    move v6, p4

    .line 965
    invoke-static/range {v0 .. v6}, Ljavassist/util/proxy/ProxyFactory;->makeForwarder(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/String;Ljavassist/bytecode/ConstPool;Ljava/lang/Class;Ljava/lang/String;I)Ljavassist/bytecode/MethodInfo;

    move-result-object p1

    .line 968
    invoke-virtual {p6, p1}, Ljavassist/bytecode/ClassFile;->addMethod(Ljavassist/bytecode/MethodInfo;)V

    return-void
.end method

.method private overrideMethods(Ljavassist/bytecode/ClassFile;Ljavassist/bytecode/ConstPool;Ljava/lang/String;)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 931
    iget-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->signatureMethods:Ljava/util/List;

    const-string v1, "_d"

    invoke-static {v1, v0}, Ljavassist/util/proxy/ProxyFactory;->makeUniqueName(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 932
    iget-object v1, p0, Ljavassist/util/proxy/ProxyFactory;->signatureMethods:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v10, 0x0

    .line 934
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 935
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 936
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 937
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/reflect/Method;

    .line 938
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 939
    iget-object v2, p0, Ljavassist/util/proxy/ProxyFactory;->signature:[B

    invoke-direct {p0, v2, v10}, Ljavassist/util/proxy/ProxyFactory;->testBit([BI)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 940
    invoke-static {v3, v4}, Ljavassist/util/proxy/ProxyFactory;->keyToDesc(Ljava/lang/String;Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    move-object v3, p3

    move-object v5, v0

    move v6, v10

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v2 .. v9}, Ljavassist/util/proxy/ProxyFactory;->override(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/String;ILjava/lang/String;Ljavassist/bytecode/ClassFile;Ljavassist/bytecode/ConstPool;)V

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    return v10
.end method

.method private setBit([BI)V
    .locals 2

    shr-int/lit8 v0, p2, 0x3

    .line 854
    array-length v1, p1

    if-ge v0, v1, :cond_0

    and-int/lit8 p2, p2, 0x7

    const/4 v1, 0x1

    shl-int p2, v1, p2

    .line 857
    aget-byte v1, p1, v0

    or-int/2addr p2, v1

    int-to-byte p2, p2

    .line 858
    aput-byte p2, p1, v0

    :cond_0
    return-void
.end method

.method private setField(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 520
    iget-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->thisClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 522
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v0, 0x1

    .line 523
    invoke-static {p1, v0}, Ljavassist/util/proxy/SecurityActions;->setAccessible(Ljava/lang/reflect/AccessibleObject;Z)V

    const/4 v0, 0x0

    .line 524
    invoke-virtual {p1, v0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p2, 0x0

    .line 525
    invoke-static {p1, p2}, Ljavassist/util/proxy/SecurityActions;->setAccessible(Ljava/lang/reflect/AccessibleObject;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 528
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    :goto_0
    return-void
.end method

.method private static setInterfaces(Ljavassist/bytecode/ClassFile;[Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 3

    .line 863
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 865
    array-length v2, p1

    if-nez v2, :cond_0

    goto :goto_1

    .line 868
    :cond_0
    array-length v2, p1

    add-int/2addr v2, v1

    new-array v1, v2, [Ljava/lang/String;

    .line 869
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 870
    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 872
    :cond_1
    array-length p1, p1

    aput-object p2, v1, p1

    goto :goto_2

    :cond_2
    :goto_1
    new-array v1, v1, [Ljava/lang/String;

    aput-object p2, v1, v0

    .line 875
    :goto_2
    invoke-virtual {p0, v1}, Ljavassist/bytecode/ClassFile;->setInterfaces([Ljava/lang/String;)V

    return-void
.end method

.method private static setThrows(Ljavassist/bytecode/MethodInfo;Ljavassist/bytecode/ConstPool;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 1211
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object p2

    .line 1212
    invoke-static {p0, p1, p2}, Ljavassist/util/proxy/ProxyFactory;->setThrows(Ljavassist/bytecode/MethodInfo;Ljavassist/bytecode/ConstPool;[Ljava/lang/Class;)V

    return-void
.end method

.method private static setThrows(Ljavassist/bytecode/MethodInfo;Ljavassist/bytecode/ConstPool;[Ljava/lang/Class;)V
    .locals 3

    .line 1217
    array-length v0, p2

    if-nez v0, :cond_0

    return-void

    .line 1220
    :cond_0
    array-length v0, p2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 1221
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 1222
    aget-object v2, p2, v1

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1224
    :cond_1
    new-instance p2, Ljavassist/bytecode/ExceptionsAttribute;

    invoke-direct {p2, p1}, Ljavassist/bytecode/ExceptionsAttribute;-><init>(Ljavassist/bytecode/ConstPool;)V

    .line 1225
    invoke-virtual {p2, v0}, Ljavassist/bytecode/ExceptionsAttribute;->setExceptions([Ljava/lang/String;)V

    .line 1226
    invoke-virtual {p0, p2}, Ljavassist/bytecode/MethodInfo;->setExceptionsAttribute(Ljavassist/bytecode/ExceptionsAttribute;)V

    return-void
.end method

.method private testBit([BI)Z
    .locals 3

    shr-int/lit8 v0, p2, 0x3

    .line 841
    array-length v1, p1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    and-int/lit8 p2, p2, 0x7

    const/4 v1, 0x1

    shl-int p2, v1, p2

    .line 846
    aget-byte p1, p1, v0

    and-int/2addr p1, p2

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method


# virtual methods
.method public create([Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 674
    invoke-virtual {p0}, Ljavassist/util/proxy/ProxyFactory;->createClass()Ljava/lang/Class;

    move-result-object v0

    .line 675
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    .line 676
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public create([Ljava/lang/Class;[Ljava/lang/Object;Ljavassist/util/proxy/MethodHandler;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 659
    invoke-virtual {p0, p1, p2}, Ljavassist/util/proxy/ProxyFactory;->create([Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 660
    move-object p2, p1

    check-cast p2, Ljavassist/util/proxy/Proxy;

    invoke-interface {p2, p3}, Ljavassist/util/proxy/Proxy;->setHandler(Ljavassist/util/proxy/MethodHandler;)V

    return-object p1
.end method

.method public createClass()Ljava/lang/Class;
    .locals 1

    .line 396
    iget-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->signature:[B

    if-nez v0, :cond_0

    .line 397
    iget-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->methodFilter:Ljavassist/util/proxy/MethodFilter;

    invoke-direct {p0, v0}, Ljavassist/util/proxy/ProxyFactory;->computeSignature(Ljavassist/util/proxy/MethodFilter;)V

    .line 399
    :cond_0
    invoke-direct {p0}, Ljavassist/util/proxy/ProxyFactory;->createClass1()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public createClass(Ljavassist/util/proxy/MethodFilter;)Ljava/lang/Class;
    .locals 0

    .line 406
    invoke-direct {p0, p1}, Ljavassist/util/proxy/ProxyFactory;->computeSignature(Ljavassist/util/proxy/MethodFilter;)V

    .line 407
    invoke-direct {p0}, Ljavassist/util/proxy/ProxyFactory;->createClass1()Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method createClass([B)Ljava/lang/Class;
    .locals 0

    .line 418
    invoke-direct {p0, p1}, Ljavassist/util/proxy/ProxyFactory;->installSignature([B)V

    .line 419
    invoke-direct {p0}, Ljavassist/util/proxy/ProxyFactory;->createClass1()Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method protected getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 612
    sget-object v0, Ljavassist/util/proxy/ProxyFactory;->classLoaderProvider:Ljavassist/util/proxy/ProxyFactory$ClassLoaderProvider;

    invoke-interface {v0, p0}, Ljavassist/util/proxy/ProxyFactory$ClassLoaderProvider;->get(Ljavassist/util/proxy/ProxyFactory;)Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method protected getClassLoader0()Ljava/lang/ClassLoader;
    .locals 2

    .line 617
    iget-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->superClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.Object"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 618
    iget-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->superClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0

    .line 619
    :cond_0
    iget-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->interfaces:[Ljava/lang/Class;

    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 620
    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 623
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_2

    .line 626
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_2

    .line 628
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method protected getDomain()Ljava/security/ProtectionDomain;
    .locals 2

    .line 637
    iget-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->superClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.Object"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 638
    iget-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->superClass:Ljava/lang/Class;

    goto :goto_0

    .line 639
    :cond_0
    iget-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->interfaces:[Ljava/lang/Class;

    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 640
    aget-object v0, v0, v1

    goto :goto_0

    .line 642
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 644
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getProtectionDomain()Ljava/security/ProtectionDomain;

    move-result-object v0

    return-object v0
.end method

.method public getInterfaces()[Ljava/lang/Class;
    .locals 1

    .line 381
    iget-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->interfaces:[Ljava/lang/Class;

    return-object v0
.end method

.method public getKey(Ljava/lang/Class;[Ljava/lang/Class;[BZ)Ljava/lang/String;
    .locals 4

    .line 446
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p1, :cond_0

    .line 448
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const-string p1, ":"

    .line 450
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 451
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_1

    .line 452
    aget-object v3, p2, v2

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 453
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 455
    :cond_1
    :goto_1
    array-length p1, p3

    if-ge v1, p1, :cond_2

    .line 456
    aget-byte p1, p3, v1

    and-int/lit8 p2, p1, 0xf

    shr-int/lit8 p1, p1, 0x4

    and-int/lit8 p1, p1, 0xf

    .line 459
    sget-object v2, Ljavassist/util/proxy/ProxyFactory;->hexDigits:[C

    aget-char p2, v2, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 460
    sget-object p2, Ljavassist/util/proxy/ProxyFactory;->hexDigits:[C

    aget-char p1, p2, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    if-eqz p4, :cond_3

    const-string p1, ":w"

    .line 463
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 466
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSuperclass()Ljava/lang/Class;
    .locals 1

    .line 365
    iget-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->superClass:Ljava/lang/Class;

    return-object v0
.end method

.method public isUseCache()Z
    .locals 1

    .line 253
    iget-boolean v0, p0, Ljavassist/util/proxy/ProxyFactory;->factoryUseCache:Z

    return v0
.end method

.method public isUseWriteReplace()Z
    .locals 1

    .line 277
    iget-boolean v0, p0, Ljavassist/util/proxy/ProxyFactory;->factoryWriteReplace:Z

    return v0
.end method

.method public setFilter(Ljavassist/util/proxy/MethodFilter;)V
    .locals 0

    .line 387
    iput-object p1, p0, Ljavassist/util/proxy/ProxyFactory;->methodFilter:Ljavassist/util/proxy/MethodFilter;

    const/4 p1, 0x0

    .line 389
    iput-object p1, p0, Ljavassist/util/proxy/ProxyFactory;->signature:[B

    return-void
.end method

.method public setHandler(Ljavassist/util/proxy/MethodHandler;)V
    .locals 1

    .line 691
    iget-boolean v0, p0, Ljavassist/util/proxy/ProxyFactory;->factoryUseCache:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 692
    iput-boolean v0, p0, Ljavassist/util/proxy/ProxyFactory;->factoryUseCache:Z

    const/4 v0, 0x0

    .line 694
    iput-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->thisClass:Ljava/lang/Class;

    .line 696
    :cond_0
    iput-object p1, p0, Ljavassist/util/proxy/ProxyFactory;->handler:Ljavassist/util/proxy/MethodHandler;

    const-string v0, "default_interceptor"

    .line 699
    invoke-direct {p0, v0, p1}, Ljavassist/util/proxy/ProxyFactory;->setField(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setInterfaces([Ljava/lang/Class;)V
    .locals 0

    .line 371
    iput-object p1, p0, Ljavassist/util/proxy/ProxyFactory;->interfaces:[Ljava/lang/Class;

    const/4 p1, 0x0

    .line 373
    iput-object p1, p0, Ljavassist/util/proxy/ProxyFactory;->signature:[B

    return-void
.end method

.method public setSuperclass(Ljava/lang/Class;)V
    .locals 0

    .line 355
    iput-object p1, p0, Ljavassist/util/proxy/ProxyFactory;->superClass:Ljava/lang/Class;

    const/4 p1, 0x0

    .line 357
    iput-object p1, p0, Ljavassist/util/proxy/ProxyFactory;->signature:[B

    return-void
.end method

.method public setUseCache(Z)V
    .locals 1

    .line 265
    iget-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->handler:Ljavassist/util/proxy/MethodHandler;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 266
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "caching cannot be enabled if the factory default interceptor has been set"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 268
    :cond_1
    :goto_0
    iput-boolean p1, p0, Ljavassist/util/proxy/ProxyFactory;->factoryUseCache:Z

    return-void
.end method

.method public setUseWriteReplace(Z)V
    .locals 0

    .line 287
    iput-boolean p1, p0, Ljavassist/util/proxy/ProxyFactory;->factoryWriteReplace:Z

    return-void
.end method
