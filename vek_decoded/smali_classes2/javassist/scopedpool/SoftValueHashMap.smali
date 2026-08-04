.class public Ljavassist/scopedpool/SoftValueHashMap;
.super Ljava/util/AbstractMap;
.source "SoftValueHashMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/scopedpool/SoftValueHashMap$SoftValueRef;
    }
.end annotation


# instance fields
.field private hash:Ljava/util/Map;

.field private queue:Ljava/lang/ref/ReferenceQueue;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 119
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 64
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Ljavassist/scopedpool/SoftValueHashMap;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljavassist/scopedpool/SoftValueHashMap;->hash:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 111
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 64
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Ljavassist/scopedpool/SoftValueHashMap;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Ljavassist/scopedpool/SoftValueHashMap;->hash:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 1

    .line 97
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 64
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Ljavassist/scopedpool/SoftValueHashMap;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1, p2}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v0, p0, Ljavassist/scopedpool/SoftValueHashMap;->hash:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 2

    .line 133
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    const/16 v1, 0xb

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {p0, v0, v1}, Ljavassist/scopedpool/SoftValueHashMap;-><init>(IF)V

    .line 134
    invoke-virtual {p0, p1}, Ljavassist/scopedpool/SoftValueHashMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method private processQueue()V
    .locals 3

    .line 72
    :cond_0
    :goto_0
    iget-object v0, p0, Ljavassist/scopedpool/SoftValueHashMap;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Ljavassist/scopedpool/SoftValueHashMap$SoftValueRef;

    if-eqz v0, :cond_1

    .line 73
    iget-object v1, p0, Ljavassist/scopedpool/SoftValueHashMap;->hash:Ljava/util/Map;

    iget-object v2, v0, Ljavassist/scopedpool/SoftValueHashMap$SoftValueRef;->key:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavassist/scopedpool/SoftValueHashMap$SoftValueRef;

    if-ne v0, v1, :cond_0

    .line 76
    iget-object v1, p0, Ljavassist/scopedpool/SoftValueHashMap;->hash:Ljava/util/Map;

    iget-object v0, v0, Ljavassist/scopedpool/SoftValueHashMap$SoftValueRef;->key:Ljava/lang/Object;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 230
    invoke-direct {p0}, Ljavassist/scopedpool/SoftValueHashMap;->processQueue()V

    .line 231
    iget-object v0, p0, Ljavassist/scopedpool/SoftValueHashMap;->hash:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 166
    invoke-direct {p0}, Ljavassist/scopedpool/SoftValueHashMap;->processQueue()V

    .line 167
    iget-object v0, p0, Ljavassist/scopedpool/SoftValueHashMap;->hash:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    .line 56
    invoke-direct {p0}, Ljavassist/scopedpool/SoftValueHashMap;->processQueue()V

    .line 57
    iget-object v0, p0, Ljavassist/scopedpool/SoftValueHashMap;->hash:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 181
    invoke-direct {p0}, Ljavassist/scopedpool/SoftValueHashMap;->processQueue()V

    .line 182
    iget-object v0, p0, Ljavassist/scopedpool/SoftValueHashMap;->hash:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/SoftReference;

    if-eqz p1, :cond_0

    .line 184
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 154
    invoke-direct {p0}, Ljavassist/scopedpool/SoftValueHashMap;->processQueue()V

    .line 155
    iget-object v0, p0, Ljavassist/scopedpool/SoftValueHashMap;->hash:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 204
    invoke-direct {p0}, Ljavassist/scopedpool/SoftValueHashMap;->processQueue()V

    .line 205
    iget-object v0, p0, Ljavassist/scopedpool/SoftValueHashMap;->hash:Ljava/util/Map;

    iget-object v1, p0, Ljavassist/scopedpool/SoftValueHashMap;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-static {p1, p2, v1}, Ljavassist/scopedpool/SoftValueHashMap$SoftValueRef;->access$000(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)Ljavassist/scopedpool/SoftValueHashMap$SoftValueRef;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 207
    check-cast p1, Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 222
    invoke-direct {p0}, Ljavassist/scopedpool/SoftValueHashMap;->processQueue()V

    .line 223
    iget-object v0, p0, Ljavassist/scopedpool/SoftValueHashMap;->hash:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 146
    invoke-direct {p0}, Ljavassist/scopedpool/SoftValueHashMap;->processQueue()V

    .line 147
    iget-object v0, p0, Ljavassist/scopedpool/SoftValueHashMap;->hash:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
