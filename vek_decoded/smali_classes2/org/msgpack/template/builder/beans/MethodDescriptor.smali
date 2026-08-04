.class public Lorg/msgpack/template/builder/beans/MethodDescriptor;
.super Lorg/msgpack/template/builder/beans/FeatureDescriptor;
.source "MethodDescriptor.java"


# instance fields
.field private method:Ljava/lang/reflect/Method;

.field private parameterDescriptors:[Lorg/msgpack/template/builder/beans/ParameterDescriptor;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lorg/msgpack/template/builder/beans/FeatureDescriptor;-><init>()V

    .line 70
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    iput-object p1, p0, Lorg/msgpack/template/builder/beans/MethodDescriptor;->method:Ljava/lang/reflect/Method;

    .line 74
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/msgpack/template/builder/beans/MethodDescriptor;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Method;[Lorg/msgpack/template/builder/beans/ParameterDescriptor;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lorg/msgpack/template/builder/beans/FeatureDescriptor;-><init>()V

    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    iput-object p1, p0, Lorg/msgpack/template/builder/beans/MethodDescriptor;->method:Ljava/lang/reflect/Method;

    .line 51
    iput-object p2, p0, Lorg/msgpack/template/builder/beans/MethodDescriptor;->parameterDescriptors:[Lorg/msgpack/template/builder/beans/ParameterDescriptor;

    .line 53
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/msgpack/template/builder/beans/MethodDescriptor;->setName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/reflect/Method;
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/msgpack/template/builder/beans/MethodDescriptor;->method:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getParameterDescriptors()[Lorg/msgpack/template/builder/beans/ParameterDescriptor;
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/msgpack/template/builder/beans/MethodDescriptor;->parameterDescriptors:[Lorg/msgpack/template/builder/beans/ParameterDescriptor;

    return-object v0
.end method

.method merge(Lorg/msgpack/template/builder/beans/MethodDescriptor;)V
    .locals 1

    .line 101
    invoke-super {p0, p1}, Lorg/msgpack/template/builder/beans/FeatureDescriptor;->merge(Lorg/msgpack/template/builder/beans/FeatureDescriptor;)V

    .line 102
    iget-object v0, p0, Lorg/msgpack/template/builder/beans/MethodDescriptor;->method:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p1, Lorg/msgpack/template/builder/beans/MethodDescriptor;->method:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lorg/msgpack/template/builder/beans/MethodDescriptor;->method:Ljava/lang/reflect/Method;

    .line 105
    :cond_0
    iget-object v0, p0, Lorg/msgpack/template/builder/beans/MethodDescriptor;->parameterDescriptors:[Lorg/msgpack/template/builder/beans/ParameterDescriptor;

    if-nez v0, :cond_1

    .line 106
    iget-object p1, p1, Lorg/msgpack/template/builder/beans/MethodDescriptor;->parameterDescriptors:[Lorg/msgpack/template/builder/beans/ParameterDescriptor;

    iput-object p1, p0, Lorg/msgpack/template/builder/beans/MethodDescriptor;->parameterDescriptors:[Lorg/msgpack/template/builder/beans/ParameterDescriptor;

    :cond_1
    return-void
.end method
