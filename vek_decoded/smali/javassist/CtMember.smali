.class public abstract Ljavassist/CtMember;
.super Ljava/lang/Object;
.source "CtMember.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/CtMember$Cache;
    }
.end annotation


# instance fields
.field protected declaringClass:Ljavassist/CtClass;

.field next:Ljavassist/CtMember;


# direct methods
.method protected constructor <init>(Ljavassist/CtClass;)V
    .locals 0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p1, p0, Ljavassist/CtMember;->declaringClass:Ljavassist/CtClass;

    const/4 p1, 0x0

    .line 129
    iput-object p1, p0, Ljavassist/CtMember;->next:Ljavassist/CtMember;

    return-void
.end method


# virtual methods
.method protected abstract extendToString(Ljava/lang/StringBuffer;)V
.end method

.method public abstract getAnnotation(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation
.end method

.method public abstract getAnnotations()[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation
.end method

.method public abstract getAttribute(Ljava/lang/String;)[B
.end method

.method public abstract getAvailableAnnotations()[Ljava/lang/Object;
.end method

.method public getDeclaringClass()Ljavassist/CtClass;
    .locals 1

    .line 165
    iget-object v0, p0, Ljavassist/CtMember;->declaringClass:Ljavassist/CtClass;

    return-object v0
.end method

.method public abstract getModifiers()I
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getSignature()Ljava/lang/String;
.end method

.method public abstract hasAnnotation(Ljava/lang/Class;)Z
.end method

.method nameReplaced()V
    .locals 0

    return-void
.end method

.method final next()Ljavassist/CtMember;
    .locals 1

    .line 132
    iget-object v0, p0, Ljavassist/CtMember;->next:Ljavassist/CtMember;

    return-object v0
.end method

.method public abstract setAttribute(Ljava/lang/String;[B)V
.end method

.method public abstract setModifiers(I)V
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 143
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "@"

    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "["

    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    invoke-virtual {p0}, Ljavassist/CtMember;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljavassist/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    invoke-virtual {p0, v0}, Ljavassist/CtMember;->extendToString(Ljava/lang/StringBuffer;)V

    const-string v1, "]"

    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public visibleFrom(Ljavassist/CtClass;)Z
    .locals 5

    .line 171
    invoke-virtual {p0}, Ljavassist/CtMember;->getModifiers()I

    move-result v0

    .line 172
    invoke-static {v0}, Ljavassist/Modifier;->isPublic(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 174
    :cond_0
    invoke-static {v0}, Ljavassist/Modifier;->isPrivate(I)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 175
    iget-object v0, p0, Ljavassist/CtMember;->declaringClass:Ljavassist/CtClass;

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 177
    :cond_2
    iget-object v1, p0, Ljavassist/CtMember;->declaringClass:Ljavassist/CtClass;

    invoke-virtual {v1}, Ljavassist/CtClass;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 178
    invoke-virtual {p1}, Ljavassist/CtClass;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-nez v1, :cond_4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 183
    :cond_4
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    :goto_1
    if-nez v2, :cond_5

    .line 185
    invoke-static {v0}, Ljavassist/Modifier;->isProtected(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 186
    iget-object v0, p0, Ljavassist/CtMember;->declaringClass:Ljavassist/CtClass;

    invoke-virtual {p1, v0}, Ljavassist/CtClass;->subclassOf(Ljavassist/CtClass;)Z

    move-result p1

    return p1

    :cond_5
    return v2
.end method
