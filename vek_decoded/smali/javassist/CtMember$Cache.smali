.class Ljavassist/CtMember$Cache;
.super Ljavassist/CtMember;
.source "CtMember.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/CtMember;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Cache"
.end annotation


# instance fields
.field private consTail:Ljavassist/CtMember;

.field private fieldTail:Ljavassist/CtMember;

.field private methodTail:Ljavassist/CtMember;


# direct methods
.method constructor <init>(Ljavassist/CtClassType;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Ljavassist/CtMember;-><init>(Ljavassist/CtClass;)V

    .line 52
    iput-object p0, p0, Ljavassist/CtMember$Cache;->methodTail:Ljavassist/CtMember;

    .line 53
    iput-object p0, p0, Ljavassist/CtMember$Cache;->consTail:Ljavassist/CtMember;

    .line 54
    iput-object p0, p0, Ljavassist/CtMember$Cache;->fieldTail:Ljavassist/CtMember;

    .line 55
    iput-object p0, p0, Ljavassist/CtMember;->next:Ljavassist/CtMember;

    return-void
.end method

.method static count(Ljavassist/CtMember;Ljavassist/CtMember;)I
    .locals 1

    const/4 v0, 0x0

    :goto_0
    if-eq p0, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 98
    iget-object p0, p0, Ljavassist/CtMember;->next:Ljavassist/CtMember;

    goto :goto_0

    :cond_0
    return v0
.end method


# virtual methods
.method addConstructor(Ljavassist/CtMember;)V
    .locals 2

    .line 80
    iget-object v0, p0, Ljavassist/CtMember$Cache;->consTail:Ljavassist/CtMember;

    iget-object v0, v0, Ljavassist/CtMember;->next:Ljavassist/CtMember;

    iput-object v0, p1, Ljavassist/CtMember;->next:Ljavassist/CtMember;

    .line 81
    iget-object v0, p0, Ljavassist/CtMember$Cache;->consTail:Ljavassist/CtMember;

    iput-object p1, v0, Ljavassist/CtMember;->next:Ljavassist/CtMember;

    .line 82
    iget-object v0, p0, Ljavassist/CtMember$Cache;->consTail:Ljavassist/CtMember;

    iget-object v1, p0, Ljavassist/CtMember$Cache;->fieldTail:Ljavassist/CtMember;

    if-ne v0, v1, :cond_0

    .line 83
    iput-object p1, p0, Ljavassist/CtMember$Cache;->fieldTail:Ljavassist/CtMember;

    .line 85
    :cond_0
    iput-object p1, p0, Ljavassist/CtMember$Cache;->consTail:Ljavassist/CtMember;

    return-void
.end method

.method addField(Ljavassist/CtMember;)V
    .locals 1

    .line 89
    iput-object p0, p1, Ljavassist/CtMember;->next:Ljavassist/CtMember;

    .line 90
    iget-object v0, p0, Ljavassist/CtMember$Cache;->fieldTail:Ljavassist/CtMember;

    iput-object p1, v0, Ljavassist/CtMember;->next:Ljavassist/CtMember;

    .line 91
    iput-object p1, p0, Ljavassist/CtMember$Cache;->fieldTail:Ljavassist/CtMember;

    return-void
.end method

.method addMethod(Ljavassist/CtMember;)V
    .locals 2

    .line 66
    iget-object v0, p0, Ljavassist/CtMember$Cache;->methodTail:Ljavassist/CtMember;

    iget-object v0, v0, Ljavassist/CtMember;->next:Ljavassist/CtMember;

    iput-object v0, p1, Ljavassist/CtMember;->next:Ljavassist/CtMember;

    .line 67
    iget-object v0, p0, Ljavassist/CtMember$Cache;->methodTail:Ljavassist/CtMember;

    iput-object p1, v0, Ljavassist/CtMember;->next:Ljavassist/CtMember;

    .line 68
    iget-object v0, p0, Ljavassist/CtMember$Cache;->methodTail:Ljavassist/CtMember;

    iget-object v1, p0, Ljavassist/CtMember$Cache;->consTail:Ljavassist/CtMember;

    if-ne v0, v1, :cond_0

    .line 69
    iput-object p1, p0, Ljavassist/CtMember$Cache;->consTail:Ljavassist/CtMember;

    .line 70
    iget-object v1, p0, Ljavassist/CtMember$Cache;->fieldTail:Ljavassist/CtMember;

    if-ne v0, v1, :cond_0

    .line 71
    iput-object p1, p0, Ljavassist/CtMember$Cache;->fieldTail:Ljavassist/CtMember;

    .line 74
    :cond_0
    iput-object p1, p0, Ljavassist/CtMember$Cache;->methodTail:Ljavassist/CtMember;

    return-void
.end method

.method consHead()Ljavassist/CtMember;
    .locals 1

    .line 60
    iget-object v0, p0, Ljavassist/CtMember$Cache;->methodTail:Ljavassist/CtMember;

    return-object v0
.end method

.method protected extendToString(Ljava/lang/StringBuffer;)V
    .locals 0

    return-void
.end method

.method fieldHead()Ljavassist/CtMember;
    .locals 1

    .line 62
    iget-object v0, p0, Ljavassist/CtMember$Cache;->consTail:Ljavassist/CtMember;

    return-object v0
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getAnnotations()[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAttribute(Ljava/lang/String;)[B
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getAvailableAnnotations()[Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hasAnnotation(Ljava/lang/Class;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method lastCons()Ljavassist/CtMember;
    .locals 1

    .line 61
    iget-object v0, p0, Ljavassist/CtMember$Cache;->consTail:Ljavassist/CtMember;

    return-object v0
.end method

.method lastField()Ljavassist/CtMember;
    .locals 1

    .line 63
    iget-object v0, p0, Ljavassist/CtMember$Cache;->fieldTail:Ljavassist/CtMember;

    return-object v0
.end method

.method lastMethod()Ljavassist/CtMember;
    .locals 1

    .line 59
    iget-object v0, p0, Ljavassist/CtMember$Cache;->methodTail:Ljavassist/CtMember;

    return-object v0
.end method

.method methodHead()Ljavassist/CtMember;
    .locals 0

    return-object p0
.end method

.method remove(Ljavassist/CtMember;)V
    .locals 2

    move-object v0, p0

    .line 107
    :goto_0
    iget-object v1, v0, Ljavassist/CtMember;->next:Ljavassist/CtMember;

    if-eq v1, p0, :cond_3

    if-ne v1, p1, :cond_2

    .line 109
    iget-object p1, v1, Ljavassist/CtMember;->next:Ljavassist/CtMember;

    iput-object p1, v0, Ljavassist/CtMember;->next:Ljavassist/CtMember;

    .line 110
    iget-object p1, p0, Ljavassist/CtMember$Cache;->methodTail:Ljavassist/CtMember;

    if-ne v1, p1, :cond_0

    .line 111
    iput-object v0, p0, Ljavassist/CtMember$Cache;->methodTail:Ljavassist/CtMember;

    .line 113
    :cond_0
    iget-object p1, p0, Ljavassist/CtMember$Cache;->consTail:Ljavassist/CtMember;

    if-ne v1, p1, :cond_1

    .line 114
    iput-object v0, p0, Ljavassist/CtMember$Cache;->consTail:Ljavassist/CtMember;

    .line 116
    :cond_1
    iget-object p1, p0, Ljavassist/CtMember$Cache;->fieldTail:Ljavassist/CtMember;

    if-ne v1, p1, :cond_3

    .line 117
    iput-object v0, p0, Ljavassist/CtMember$Cache;->fieldTail:Ljavassist/CtMember;

    goto :goto_1

    .line 122
    :cond_2
    iget-object v0, v0, Ljavassist/CtMember;->next:Ljavassist/CtMember;

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public setAttribute(Ljava/lang/String;[B)V
    .locals 0

    return-void
.end method

.method public setModifiers(I)V
    .locals 0

    return-void
.end method
