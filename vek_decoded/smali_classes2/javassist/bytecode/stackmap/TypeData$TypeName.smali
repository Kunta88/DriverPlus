.class public abstract Ljavassist/bytecode/stackmap/TypeData$TypeName;
.super Ljavassist/bytecode/stackmap/TypeData;
.source "TypeData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/stackmap/TypeData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "TypeName"
.end annotation


# instance fields
.field private cache:Ljavassist/CtClass;

.field protected equivalences:Ljava/util/ArrayList;

.field private evalDone:Z

.field protected expectedName:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 130
    invoke-direct {p0}, Ljavassist/bytecode/stackmap/TypeData;-><init>()V

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$TypeName;->equivalences:Ljava/util/ArrayList;

    .line 132
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 133
    iput-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$TypeName;->expectedName:Ljava/lang/String;

    .line 134
    iput-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$TypeName;->cache:Ljavassist/CtClass;

    const/4 v0, 0x0

    .line 135
    iput-boolean v0, p0, Ljavassist/bytecode/stackmap/TypeData$TypeName;->evalDone:Z

    return-void
.end method

.method private static add(Ljava/util/ArrayList;Ljavassist/bytecode/stackmap/TypeData;)V
    .locals 3

    .line 160
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 162
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 165
    :cond_1
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private evalExpectedType2(Ljava/util/ArrayList;I)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    :goto_0
    if-ge v1, p2, :cond_2

    .line 241
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavassist/bytecode/stackmap/TypeData;

    .line 242
    invoke-virtual {v3}, Ljavassist/bytecode/stackmap/TypeData;->isNullType()Z

    move-result v4

    if-nez v4, :cond_1

    if-nez v2, :cond_0

    .line 244
    invoke-virtual {v3}, Ljavassist/bytecode/stackmap/TypeData;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 245
    :cond_0
    invoke-virtual {v3}, Ljavassist/bytecode/stackmap/TypeData;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    return-object v0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method private update(Ljavassist/ClassPool;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-nez p2, :cond_1

    return v1

    .line 259
    :cond_1
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v0

    .line 261
    :cond_2
    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_3

    const-string v2, "[Ljava.lang.Object;"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    return v1

    .line 271
    :cond_3
    :try_start_0
    iget-object v2, p0, Ljavassist/bytecode/stackmap/TypeData$TypeName;->cache:Ljavassist/CtClass;

    if-nez v2, :cond_4

    .line 272
    invoke-virtual {p1, p2}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object p2

    iput-object p2, p0, Ljavassist/bytecode/stackmap/TypeData$TypeName;->cache:Ljavassist/CtClass;

    .line 274
    :cond_4
    invoke-virtual {p1, p3}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object p1

    .line 275
    iget-object p2, p0, Ljavassist/bytecode/stackmap/TypeData$TypeName;->cache:Ljavassist/CtClass;

    invoke-virtual {p1, p2}, Ljavassist/CtClass;->subtypeOf(Ljavassist/CtClass;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 276
    iput-object p1, p0, Ljavassist/bytecode/stackmap/TypeData$TypeName;->cache:Ljavassist/CtClass;
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_5
    return v0

    :catch_0
    move-exception p1

    .line 283
    new-instance p2, Ljavassist/bytecode/BadBytecode;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cannot find "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Ljavassist/NotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 190
    instance-of v0, p1, Ljavassist/bytecode/stackmap/TypeData$TypeName;

    if-eqz v0, :cond_0

    .line 192
    :try_start_0
    check-cast p1, Ljavassist/bytecode/stackmap/TypeData$TypeName;

    .line 193
    invoke-virtual {p0}, Ljavassist/bytecode/stackmap/TypeData$TypeName;->getExpected()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljavassist/bytecode/stackmap/TypeData$TypeName;->getExpected()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public evalExpectedType(Ljavassist/ClassPool;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 209
    iget-boolean v0, p0, Ljavassist/bytecode/stackmap/TypeData$TypeName;->evalDone:Z

    if-eqz v0, :cond_0

    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$TypeName;->equivalences:Ljava/util/ArrayList;

    .line 213
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 214
    invoke-direct {p0, v0, v1}, Ljavassist/bytecode/stackmap/TypeData$TypeName;->evalExpectedType2(Ljava/util/ArrayList;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 216
    iget-object v2, p0, Ljavassist/bytecode/stackmap/TypeData$TypeName;->expectedName:Ljava/lang/String;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    .line 218
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavassist/bytecode/stackmap/TypeData;

    .line 219
    instance-of v6, v5, Ljavassist/bytecode/stackmap/TypeData$TypeName;

    if-eqz v6, :cond_1

    .line 220
    check-cast v5, Ljavassist/bytecode/stackmap/TypeData$TypeName;

    .line 221
    iget-object v6, v5, Ljavassist/bytecode/stackmap/TypeData$TypeName;->expectedName:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v6}, Ljavassist/bytecode/stackmap/TypeData$TypeName;->update(Ljavassist/ClassPool;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 222
    iget-object v2, v5, Ljavassist/bytecode/stackmap/TypeData$TypeName;->expectedName:Ljava/lang/String;

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ge v3, v1, :cond_4

    .line 228
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavassist/bytecode/stackmap/TypeData;

    .line 229
    instance-of v4, p1, Ljavassist/bytecode/stackmap/TypeData$TypeName;

    if-eqz v4, :cond_3

    .line 230
    check-cast p1, Ljavassist/bytecode/stackmap/TypeData$TypeName;

    .line 231
    iput-object v2, p1, Ljavassist/bytecode/stackmap/TypeData$TypeName;->expectedName:Ljava/lang/String;

    const/4 v4, 0x0

    .line 232
    iput-object v4, p1, Ljavassist/bytecode/stackmap/TypeData$TypeName;->cache:Ljavassist/CtClass;

    const/4 v4, 0x1

    .line 233
    iput-boolean v4, p1, Ljavassist/bytecode/stackmap/TypeData$TypeName;->evalDone:Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public getExpected()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 290
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$TypeName;->equivalences:Ljava/util/ArrayList;

    .line 291
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 292
    invoke-virtual {p0}, Ljavassist/bytecode/stackmap/TypeData$TypeName;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 294
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$TypeName;->expectedName:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "java.lang.Object"

    :cond_1
    return-object v0
.end method

.method public getTypeData(Ljavassist/bytecode/ConstPool;)I
    .locals 2

    .line 175
    :try_start_0
    invoke-virtual {p0}, Ljavassist/bytecode/stackmap/TypeData$TypeName;->getExpected()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    invoke-virtual {p0, p1, v0}, Ljavassist/bytecode/stackmap/TypeData$TypeName;->getTypeData2(Ljavassist/bytecode/ConstPool;Ljava/lang/String;)I

    move-result p1

    return p1

    :catch_0
    move-exception p1

    .line 177
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "fatal error: "

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected getTypeData2(Ljavassist/bytecode/ConstPool;Ljava/lang/String;)I
    .locals 0

    .line 186
    invoke-virtual {p1, p2}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getTypeTag()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public isObjectType()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected isTypeName()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public merge(Ljavassist/bytecode/stackmap/TypeData;)V
    .locals 4

    if-ne p0, p1, :cond_0

    return-void

    .line 142
    :cond_0
    instance-of v0, p1, Ljavassist/bytecode/stackmap/TypeData$TypeName;

    if-nez v0, :cond_1

    return-void

    .line 145
    :cond_1
    check-cast p1, Ljavassist/bytecode/stackmap/TypeData$TypeName;

    .line 146
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$TypeName;->equivalences:Ljava/util/ArrayList;

    .line 147
    iget-object p1, p1, Ljavassist/bytecode/stackmap/TypeData$TypeName;->equivalences:Ljava/util/ArrayList;

    if-ne v0, p1, :cond_2

    return-void

    .line 151
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 153
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavassist/bytecode/stackmap/TypeData$TypeName;

    .line 154
    invoke-static {v0, v3}, Ljavassist/bytecode/stackmap/TypeData$TypeName;->add(Ljava/util/ArrayList;Ljavassist/bytecode/stackmap/TypeData;)V

    .line 155
    iput-object v0, v3, Ljavassist/bytecode/stackmap/TypeData$TypeName;->equivalences:Ljava/util/ArrayList;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected setType(Ljava/lang/String;Ljavassist/ClassPool;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 204
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$TypeName;->expectedName:Ljava/lang/String;

    invoke-direct {p0, p2, v0, p1}, Ljavassist/bytecode/stackmap/TypeData$TypeName;->update(Ljavassist/ClassPool;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 205
    iput-object p1, p0, Ljavassist/bytecode/stackmap/TypeData$TypeName;->expectedName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 304
    :try_start_0
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$TypeName;->expectedName:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 308
    :cond_0
    invoke-virtual {p0}, Ljavassist/bytecode/stackmap/TypeData$TypeName;->getName()Ljava/lang/String;

    move-result-object v0

    .line 309
    iget-object v1, p0, Ljavassist/bytecode/stackmap/TypeData$TypeName;->equivalences:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    return-object v0

    .line 312
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljavassist/bytecode/BadBytecode;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
