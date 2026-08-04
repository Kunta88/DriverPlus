.class public Ljavassist/bytecode/analysis/MultiType;
.super Ljavassist/bytecode/analysis/Type;
.source "MultiType.java"


# instance fields
.field private changed:Z

.field private interfaces:Ljava/util/Map;

.field private mergeSource:Ljavassist/bytecode/analysis/MultiType;

.field private potentialClass:Ljavassist/bytecode/analysis/Type;

.field private resolved:Ljavassist/bytecode/analysis/Type;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, v0}, Ljavassist/bytecode/analysis/MultiType;-><init>(Ljava/util/Map;Ljavassist/bytecode/analysis/Type;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljavassist/bytecode/analysis/Type;)V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, v0}, Ljavassist/bytecode/analysis/Type;-><init>(Ljavassist/CtClass;)V

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Ljavassist/bytecode/analysis/MultiType;->changed:Z

    .line 62
    iput-object p1, p0, Ljavassist/bytecode/analysis/MultiType;->interfaces:Ljava/util/Map;

    .line 63
    iput-object p2, p0, Ljavassist/bytecode/analysis/MultiType;->potentialClass:Ljavassist/bytecode/analysis/Type;

    return-void
.end method

.method private getAllMultiInterfaces(Ljavassist/bytecode/analysis/MultiType;)Ljava/util/Map;
    .locals 3

    .line 176
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 178
    iget-object p1, p1, Ljavassist/bytecode/analysis/MultiType;->interfaces:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 179
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavassist/CtClass;

    .line 181
    invoke-virtual {v1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    invoke-virtual {p0, v1, v0}, Ljavassist/bytecode/analysis/MultiType;->getAllInterfaces(Ljavassist/CtClass;Ljava/util/Map;)Ljava/util/Map;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private inMergeSource(Ljavassist/bytecode/analysis/MultiType;)Z
    .locals 0

    :goto_0
    if-eqz p1, :cond_1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 208
    :cond_0
    iget-object p1, p1, Ljavassist/bytecode/analysis/MultiType;->mergeSource:Ljavassist/bytecode/analysis/MultiType;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private mergeMultiAndSingle(Ljavassist/bytecode/analysis/MultiType;Ljavassist/bytecode/analysis/Type;)Ljava/util/Map;
    .locals 1

    .line 197
    invoke-direct {p0, p1}, Ljavassist/bytecode/analysis/MultiType;->getAllMultiInterfaces(Ljavassist/bytecode/analysis/MultiType;)Ljava/util/Map;

    move-result-object p1

    .line 198
    invoke-virtual {p2}, Ljavassist/bytecode/analysis/Type;->getCtClass()Ljavassist/CtClass;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Ljavassist/bytecode/analysis/MultiType;->getAllInterfaces(Ljavassist/CtClass;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    .line 200
    invoke-virtual {p0, p1, p2}, Ljavassist/bytecode/analysis/MultiType;->findCommonInterfaces(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method private mergeMultiInterfaces(Ljavassist/bytecode/analysis/MultiType;Ljavassist/bytecode/analysis/MultiType;)Ljava/util/Map;
    .locals 0

    .line 190
    invoke-direct {p0, p1}, Ljavassist/bytecode/analysis/MultiType;->getAllMultiInterfaces(Ljavassist/bytecode/analysis/MultiType;)Ljava/util/Map;

    move-result-object p1

    .line 191
    invoke-direct {p0, p2}, Ljavassist/bytecode/analysis/MultiType;->getAllMultiInterfaces(Ljavassist/bytecode/analysis/MultiType;)Ljava/util/Map;

    move-result-object p2

    .line 193
    invoke-virtual {p0, p1, p2}, Ljavassist/bytecode/analysis/MultiType;->findCommonInterfaces(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method private propogateResolved()V
    .locals 2

    .line 159
    iget-object v0, p0, Ljavassist/bytecode/analysis/MultiType;->mergeSource:Ljavassist/bytecode/analysis/MultiType;

    :goto_0
    if-eqz v0, :cond_0

    .line 161
    iget-object v1, p0, Ljavassist/bytecode/analysis/MultiType;->resolved:Ljavassist/bytecode/analysis/Type;

    iput-object v1, v0, Ljavassist/bytecode/analysis/MultiType;->resolved:Ljavassist/bytecode/analysis/Type;

    .line 162
    iget-object v0, v0, Ljavassist/bytecode/analysis/MultiType;->mergeSource:Ljavassist/bytecode/analysis/MultiType;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private propogateState()V
    .locals 2

    .line 150
    iget-object v0, p0, Ljavassist/bytecode/analysis/MultiType;->mergeSource:Ljavassist/bytecode/analysis/MultiType;

    :goto_0
    if-eqz v0, :cond_0

    .line 152
    iget-object v1, p0, Ljavassist/bytecode/analysis/MultiType;->interfaces:Ljava/util/Map;

    iput-object v1, v0, Ljavassist/bytecode/analysis/MultiType;->interfaces:Ljava/util/Map;

    .line 153
    iget-object v1, p0, Ljavassist/bytecode/analysis/MultiType;->potentialClass:Ljavassist/bytecode/analysis/Type;

    iput-object v1, v0, Ljavassist/bytecode/analysis/MultiType;->potentialClass:Ljavassist/bytecode/analysis/Type;

    .line 154
    iget-object v0, v0, Ljavassist/bytecode/analysis/MultiType;->mergeSource:Ljavassist/bytecode/analysis/MultiType;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 286
    instance-of v0, p1, Ljavassist/bytecode/analysis/MultiType;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 289
    :cond_0
    check-cast p1, Ljavassist/bytecode/analysis/MultiType;

    .line 290
    iget-object v0, p0, Ljavassist/bytecode/analysis/MultiType;->resolved:Ljavassist/bytecode/analysis/Type;

    if-eqz v0, :cond_1

    .line 291
    iget-object p1, p1, Ljavassist/bytecode/analysis/MultiType;->resolved:Ljavassist/bytecode/analysis/Type;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/analysis/Type;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 292
    :cond_1
    iget-object v0, p1, Ljavassist/bytecode/analysis/MultiType;->resolved:Ljavassist/bytecode/analysis/Type;

    if-eqz v0, :cond_2

    return v1

    .line 295
    :cond_2
    iget-object v0, p0, Ljavassist/bytecode/analysis/MultiType;->interfaces:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object p1, p1, Ljavassist/bytecode/analysis/MultiType;->interfaces:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getComponent()Ljavassist/bytecode/analysis/Type;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCtClass()Ljavassist/CtClass;
    .locals 1

    .line 71
    iget-object v0, p0, Ljavassist/bytecode/analysis/MultiType;->resolved:Ljavassist/bytecode/analysis/Type;

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0}, Ljavassist/bytecode/analysis/Type;->getCtClass()Ljavassist/CtClass;

    move-result-object v0

    return-object v0

    .line 74
    :cond_0
    sget-object v0, Ljavassist/bytecode/analysis/Type;->OBJECT:Ljavassist/bytecode/analysis/Type;

    invoke-virtual {v0}, Ljavassist/bytecode/analysis/Type;->getCtClass()Ljavassist/CtClass;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isArray()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isAssignableFrom(Ljavassist/bytecode/analysis/Type;)Z
    .locals 1

    .line 108
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not implemented"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isAssignableTo(Ljavassist/bytecode/analysis/Type;)Z
    .locals 2

    .line 112
    iget-object v0, p0, Ljavassist/bytecode/analysis/MultiType;->resolved:Ljavassist/bytecode/analysis/Type;

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p1, v0}, Ljavassist/bytecode/analysis/Type;->isAssignableFrom(Ljavassist/bytecode/analysis/Type;)Z

    move-result p1

    return p1

    .line 115
    :cond_0
    sget-object v0, Ljavassist/bytecode/analysis/Type;->OBJECT:Ljavassist/bytecode/analysis/Type;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/analysis/Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    .line 118
    :cond_1
    iget-object v0, p0, Ljavassist/bytecode/analysis/MultiType;->potentialClass:Ljavassist/bytecode/analysis/Type;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Ljavassist/bytecode/analysis/Type;->isAssignableFrom(Ljavassist/bytecode/analysis/Type;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 119
    iput-object v0, p0, Ljavassist/bytecode/analysis/MultiType;->potentialClass:Ljavassist/bytecode/analysis/Type;

    .line 121
    :cond_2
    invoke-direct {p0, p0, p1}, Ljavassist/bytecode/analysis/MultiType;->mergeMultiAndSingle(Ljavassist/bytecode/analysis/MultiType;Ljavassist/bytecode/analysis/Type;)Ljava/util/Map;

    move-result-object p1

    .line 123
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Ljavassist/bytecode/analysis/MultiType;->potentialClass:Ljavassist/bytecode/analysis/Type;

    if-nez v0, :cond_3

    .line 125
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavassist/CtClass;

    invoke-static {p1}, Ljavassist/bytecode/analysis/Type;->get(Ljavassist/CtClass;)Ljavassist/bytecode/analysis/Type;

    move-result-object p1

    iput-object p1, p0, Ljavassist/bytecode/analysis/MultiType;->resolved:Ljavassist/bytecode/analysis/Type;

    .line 126
    invoke-direct {p0}, Ljavassist/bytecode/analysis/MultiType;->propogateResolved()V

    return v1

    .line 132
    :cond_3
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lt v0, v1, :cond_4

    .line 133
    iput-object p1, p0, Ljavassist/bytecode/analysis/MultiType;->interfaces:Ljava/util/Map;

    .line 134
    invoke-direct {p0}, Ljavassist/bytecode/analysis/MultiType;->propogateState()V

    return v1

    .line 139
    :cond_4
    iget-object p1, p0, Ljavassist/bytecode/analysis/MultiType;->potentialClass:Ljavassist/bytecode/analysis/Type;

    if-eqz p1, :cond_5

    .line 140
    iput-object p1, p0, Ljavassist/bytecode/analysis/MultiType;->resolved:Ljavassist/bytecode/analysis/Type;

    .line 141
    invoke-direct {p0}, Ljavassist/bytecode/analysis/MultiType;->propogateResolved()V

    return v1

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method public isReference()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public merge(Ljavassist/bytecode/analysis/Type;)Ljavassist/bytecode/analysis/Type;
    .locals 4

    if-ne p0, p1, :cond_0

    return-object p0

    .line 218
    :cond_0
    sget-object v0, Ljavassist/bytecode/analysis/MultiType;->UNINIT:Ljavassist/bytecode/analysis/Type;

    if-ne p1, v0, :cond_1

    return-object p0

    .line 221
    :cond_1
    sget-object v0, Ljavassist/bytecode/analysis/MultiType;->BOGUS:Ljavassist/bytecode/analysis/Type;

    if-ne p1, v0, :cond_2

    .line 222
    sget-object p1, Ljavassist/bytecode/analysis/MultiType;->BOGUS:Ljavassist/bytecode/analysis/Type;

    return-object p1

    :cond_2
    if-nez p1, :cond_3

    return-object p0

    .line 227
    :cond_3
    iget-object v0, p0, Ljavassist/bytecode/analysis/MultiType;->resolved:Ljavassist/bytecode/analysis/Type;

    if-eqz v0, :cond_4

    .line 228
    invoke-virtual {v0, p1}, Ljavassist/bytecode/analysis/Type;->merge(Ljavassist/bytecode/analysis/Type;)Ljavassist/bytecode/analysis/Type;

    move-result-object p1

    return-object p1

    .line 230
    :cond_4
    iget-object v0, p0, Ljavassist/bytecode/analysis/MultiType;->potentialClass:Ljavassist/bytecode/analysis/Type;

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    .line 231
    invoke-virtual {v0, p1}, Ljavassist/bytecode/analysis/Type;->merge(Ljavassist/bytecode/analysis/Type;)Ljavassist/bytecode/analysis/Type;

    move-result-object v0

    .line 232
    iget-object v2, p0, Ljavassist/bytecode/analysis/MultiType;->potentialClass:Ljavassist/bytecode/analysis/Type;

    invoke-virtual {v0, v2}, Ljavassist/bytecode/analysis/Type;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Ljavassist/bytecode/analysis/Type;->popChanged()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 233
    :cond_5
    sget-object v2, Ljavassist/bytecode/analysis/Type;->OBJECT:Ljavassist/bytecode/analysis/Type;

    invoke-virtual {v2, v0}, Ljavassist/bytecode/analysis/Type;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v0, 0x0

    :cond_6
    iput-object v0, p0, Ljavassist/bytecode/analysis/MultiType;->potentialClass:Ljavassist/bytecode/analysis/Type;

    .line 234
    iput-boolean v1, p0, Ljavassist/bytecode/analysis/MultiType;->changed:Z

    .line 240
    :cond_7
    instance-of v0, p1, Ljavassist/bytecode/analysis/MultiType;

    if-eqz v0, :cond_a

    .line 241
    check-cast p1, Ljavassist/bytecode/analysis/MultiType;

    .line 243
    iget-object v0, p1, Ljavassist/bytecode/analysis/MultiType;->resolved:Ljavassist/bytecode/analysis/Type;

    if-eqz v0, :cond_8

    .line 244
    invoke-direct {p0, p0, v0}, Ljavassist/bytecode/analysis/MultiType;->mergeMultiAndSingle(Ljavassist/bytecode/analysis/MultiType;Ljavassist/bytecode/analysis/Type;)Ljava/util/Map;

    move-result-object p1

    goto :goto_0

    .line 246
    :cond_8
    invoke-direct {p0, p1, p0}, Ljavassist/bytecode/analysis/MultiType;->mergeMultiInterfaces(Ljavassist/bytecode/analysis/MultiType;Ljavassist/bytecode/analysis/MultiType;)Ljava/util/Map;

    move-result-object v0

    .line 247
    invoke-direct {p0, p1}, Ljavassist/bytecode/analysis/MultiType;->inMergeSource(Ljavassist/bytecode/analysis/MultiType;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 248
    iput-object p1, p0, Ljavassist/bytecode/analysis/MultiType;->mergeSource:Ljavassist/bytecode/analysis/MultiType;

    :cond_9
    move-object p1, v0

    goto :goto_0

    .line 251
    :cond_a
    invoke-direct {p0, p0, p1}, Ljavassist/bytecode/analysis/MultiType;->mergeMultiAndSingle(Ljavassist/bytecode/analysis/MultiType;Ljavassist/bytecode/analysis/Type;)Ljava/util/Map;

    move-result-object p1

    .line 255
    :goto_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-gt v0, v1, :cond_e

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Ljavassist/bytecode/analysis/MultiType;->potentialClass:Ljavassist/bytecode/analysis/Type;

    if-eqz v0, :cond_b

    goto :goto_2

    .line 272
    :cond_b
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-ne v0, v1, :cond_c

    .line 273
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavassist/CtClass;

    invoke-static {p1}, Ljavassist/bytecode/analysis/Type;->get(Ljavassist/CtClass;)Ljavassist/bytecode/analysis/Type;

    move-result-object p1

    iput-object p1, p0, Ljavassist/bytecode/analysis/MultiType;->resolved:Ljavassist/bytecode/analysis/Type;

    goto :goto_1

    .line 274
    :cond_c
    iget-object p1, p0, Ljavassist/bytecode/analysis/MultiType;->potentialClass:Ljavassist/bytecode/analysis/Type;

    if-eqz p1, :cond_d

    .line 275
    iput-object p1, p0, Ljavassist/bytecode/analysis/MultiType;->resolved:Ljavassist/bytecode/analysis/Type;

    goto :goto_1

    .line 277
    :cond_d
    sget-object p1, Ljavassist/bytecode/analysis/MultiType;->OBJECT:Ljavassist/bytecode/analysis/Type;

    iput-object p1, p0, Ljavassist/bytecode/analysis/MultiType;->resolved:Ljavassist/bytecode/analysis/Type;

    .line 280
    :goto_1
    invoke-direct {p0}, Ljavassist/bytecode/analysis/MultiType;->propogateResolved()V

    .line 282
    iget-object p1, p0, Ljavassist/bytecode/analysis/MultiType;->resolved:Ljavassist/bytecode/analysis/Type;

    return-object p1

    .line 257
    :cond_e
    :goto_2
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v2, p0, Ljavassist/bytecode/analysis/MultiType;->interfaces:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-eq v0, v2, :cond_f

    .line 258
    iput-boolean v1, p0, Ljavassist/bytecode/analysis/MultiType;->changed:Z

    goto :goto_4

    .line 259
    :cond_f
    iget-boolean v0, p0, Ljavassist/bytecode/analysis/MultiType;->changed:Z

    if-nez v0, :cond_11

    .line 260
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 261
    :cond_10
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 262
    iget-object v2, p0, Ljavassist/bytecode/analysis/MultiType;->interfaces:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 263
    iput-boolean v1, p0, Ljavassist/bytecode/analysis/MultiType;->changed:Z

    goto :goto_3

    .line 266
    :cond_11
    :goto_4
    iput-object p1, p0, Ljavassist/bytecode/analysis/MultiType;->interfaces:Ljava/util/Map;

    .line 267
    invoke-direct {p0}, Ljavassist/bytecode/analysis/MultiType;->propogateState()V

    return-object p0
.end method

.method popChanged()Z
    .locals 2

    .line 102
    iget-boolean v0, p0, Ljavassist/bytecode/analysis/MultiType;->changed:Z

    const/4 v1, 0x0

    .line 103
    iput-boolean v1, p0, Ljavassist/bytecode/analysis/MultiType;->changed:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 299
    iget-object v0, p0, Ljavassist/bytecode/analysis/MultiType;->resolved:Ljavassist/bytecode/analysis/Type;

    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {v0}, Ljavassist/bytecode/analysis/Type;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 302
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 303
    iget-object v1, p0, Ljavassist/bytecode/analysis/MultiType;->interfaces:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 304
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 305
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, ", "

    .line 306
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 308
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 309
    iget-object v1, p0, Ljavassist/bytecode/analysis/MultiType;->potentialClass:Ljavassist/bytecode/analysis/Type;

    if-eqz v1, :cond_2

    const-string v1, ", *"

    .line 310
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Ljavassist/bytecode/analysis/MultiType;->potentialClass:Ljavassist/bytecode/analysis/Type;

    invoke-virtual {v2}, Ljavassist/bytecode/analysis/Type;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    const-string v1, "}"

    .line 311
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 312
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
