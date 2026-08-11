.class public Lorg/msgpack/template/builder/beans/FeatureDescriptor;
.super Ljava/lang/Object;
.source "FeatureDescriptor.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field displayName:Ljava/lang/String;

.field expert:Z

.field hidden:Z

.field name:Ljava/lang/String;

.field preferred:Z

.field shortDescription:Ljava/lang/String;

.field private values:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/msgpack/template/builder/beans/FeatureDescriptor;->values:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public attributeNames()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 92
    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lorg/msgpack/template/builder/beans/FeatureDescriptor;->values:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lorg/msgpack/template/builder/beans/FeatureDescriptor;->displayName:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/msgpack/template/builder/beans/FeatureDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lorg/msgpack/template/builder/beans/FeatureDescriptor;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getShortDescription()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/msgpack/template/builder/beans/FeatureDescriptor;->shortDescription:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/msgpack/template/builder/beans/FeatureDescriptor;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_0

    .line 78
    iget-object v0, p0, Lorg/msgpack/template/builder/beans/FeatureDescriptor;->values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public isExpert()Z
    .locals 1

    .line 231
    iget-boolean v0, p0, Lorg/msgpack/template/builder/beans/FeatureDescriptor;->expert:Z

    return v0
.end method

.method public isHidden()Z
    .locals 1

    .line 220
    iget-boolean v0, p0, Lorg/msgpack/template/builder/beans/FeatureDescriptor;->hidden:Z

    return v0
.end method

.method public isPreferred()Z
    .locals 1

    .line 209
    iget-boolean v0, p0, Lorg/msgpack/template/builder/beans/FeatureDescriptor;->preferred:Z

    return v0
.end method

.method merge(Lorg/msgpack/template/builder/beans/FeatureDescriptor;)V
    .locals 2

    .line 236
    iget-boolean v0, p0, Lorg/msgpack/template/builder/beans/FeatureDescriptor;->expert:Z

    iget-boolean v1, p1, Lorg/msgpack/template/builder/beans/FeatureDescriptor;->expert:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lorg/msgpack/template/builder/beans/FeatureDescriptor;->expert:Z

    .line 237
    iget-boolean v0, p0, Lorg/msgpack/template/builder/beans/FeatureDescriptor;->hidden:Z

    iget-boolean v1, p1, Lorg/msgpack/template/builder/beans/FeatureDescriptor;->hidden:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lorg/msgpack/template/builder/beans/FeatureDescriptor;->hidden:Z

    .line 238
    iget-boolean v0, p0, Lorg/msgpack/template/builder/beans/FeatureDescriptor;->preferred:Z

    iget-boolean v1, p1, Lorg/msgpack/template/builder/beans/FeatureDescriptor;->preferred:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lorg/msgpack/template/builder/beans/FeatureDescriptor;->preferred:Z

    .line 239
    iget-object v0, p0, Lorg/msgpack/template/builder/beans/FeatureDescriptor;->shortDescription:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 240
    iget-object v0, p1, Lorg/msgpack/template/builder/beans/FeatureDescriptor;->shortDescription:Ljava/lang/String;

    iput-object v0, p0, Lorg/msgpack/template/builder/beans/FeatureDescriptor;->shortDescription:Ljava/lang/String;

    .line 242
    :cond_0
    iget-object v0, p0, Lorg/msgpack/template/builder/beans/FeatureDescriptor;->name:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 243
    iget-object v0, p1, Lorg/msgpack/template/builder/beans/FeatureDescriptor;->name:Ljava/lang/String;

    iput-object v0, p0, Lorg/msgpack/template/builder/beans/FeatureDescriptor;->name:Ljava/lang/String;

    .line 245
    :cond_1
    iget-object v0, p0, Lorg/msgpack/template/builder/beans/FeatureDescriptor;->displayName:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 246
    iget-object p1, p1, Lorg/msgpack/template/builder/beans/FeatureDescriptor;->displayName:Ljava/lang/String;

    iput-object p1, p0, Lorg/msgpack/template/builder/beans/FeatureDescriptor;->displayName:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lorg/msgpack/template/builder/beans/FeatureDescriptor;->displayName:Ljava/lang/String;

    return-void
.end method

.method public setExpert(Z)V
    .locals 0

    .line 198
    iput-boolean p1, p0, Lorg/msgpack/template/builder/beans/FeatureDescriptor;->expert:Z

    return-void
.end method

.method public setHidden(Z)V
    .locals 0

    .line 186
    iput-boolean p1, p0, Lorg/msgpack/template/builder/beans/FeatureDescriptor;->hidden:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lorg/msgpack/template/builder/beans/FeatureDescriptor;->name:Ljava/lang/String;

    return-void
.end method

.method public setPreferred(Z)V
    .locals 0

    .line 174
    iput-boolean p1, p0, Lorg/msgpack/template/builder/beans/FeatureDescriptor;->preferred:Z

    return-void
.end method

.method public setShortDescription(Ljava/lang/String;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lorg/msgpack/template/builder/beans/FeatureDescriptor;->shortDescription:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 64
    iget-object v0, p0, Lorg/msgpack/template/builder/beans/FeatureDescriptor;->values:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 62
    throw p1
.end method
