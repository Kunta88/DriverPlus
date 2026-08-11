.class public Ljavassist/ClassMap;
.super Ljava/util/HashMap;
.source "ClassMap.java"


# instance fields
.field private parent:Ljavassist/ClassMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljavassist/ClassMap;->parent:Ljavassist/ClassMap;

    return-void
.end method

.method constructor <init>(Ljavassist/ClassMap;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Ljavassist/ClassMap;->parent:Ljavassist/ClassMap;

    return-void
.end method

.method public static toJavaName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 171
    invoke-static {p0}, Ljavassist/bytecode/Descriptor;->toJavaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toJvmName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 163
    invoke-static {p0}, Ljavassist/bytecode/Descriptor;->toJvmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public fix(Ljava/lang/String;)V
    .locals 0

    .line 154
    invoke-static {p1}, Ljavassist/ClassMap;->toJvmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 155
    invoke-super {p0, p1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public fix(Ljavassist/CtClass;)V
    .locals 0

    .line 147
    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljavassist/ClassMap;->fix(Ljava/lang/String;)V

    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 136
    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 137
    iget-object v1, p0, Ljavassist/ClassMap;->parent:Ljavassist/ClassMap;

    if-eqz v1, :cond_0

    .line 138
    invoke-virtual {v1, p1}, Ljavassist/ClassMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-ne p1, p2, :cond_0

    return-void

    .line 96
    :cond_0
    invoke-static {p1}, Ljavassist/ClassMap;->toJvmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 97
    invoke-virtual {p0, p1}, Ljavassist/ClassMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 98
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 99
    :cond_1
    invoke-static {p2}, Ljavassist/ClassMap;->toJvmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-super {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public put(Ljavassist/CtClass;Ljavassist/CtClass;)V
    .locals 0

    .line 71
    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljavassist/ClassMap;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected final put0(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 122
    invoke-super {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putIfNone(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-ne p1, p2, :cond_0

    return-void

    .line 115
    :cond_0
    invoke-static {p1}, Ljavassist/ClassMap;->toJvmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 116
    invoke-virtual {p0, p1}, Ljavassist/ClassMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    .line 118
    invoke-static {p2}, Ljavassist/ClassMap;->toJvmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-super {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
