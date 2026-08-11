.class public Ljavassist/bytecode/annotation/ArrayMemberValue;
.super Ljavassist/bytecode/annotation/MemberValue;
.source "ArrayMemberValue.java"


# instance fields
.field type:Ljavassist/bytecode/annotation/MemberValue;

.field values:[Ljavassist/bytecode/annotation/MemberValue;


# direct methods
.method public constructor <init>(Ljavassist/bytecode/ConstPool;)V
    .locals 1

    const/16 v0, 0x5b

    .line 38
    invoke-direct {p0, v0, p1}, Ljavassist/bytecode/annotation/MemberValue;-><init>(CLjavassist/bytecode/ConstPool;)V

    const/4 p1, 0x0

    .line 39
    iput-object p1, p0, Ljavassist/bytecode/annotation/ArrayMemberValue;->type:Ljavassist/bytecode/annotation/MemberValue;

    .line 40
    iput-object p1, p0, Ljavassist/bytecode/annotation/ArrayMemberValue;->values:[Ljavassist/bytecode/annotation/MemberValue;

    return-void
.end method

.method public constructor <init>(Ljavassist/bytecode/annotation/MemberValue;Ljavassist/bytecode/ConstPool;)V
    .locals 1

    const/16 v0, 0x5b

    .line 49
    invoke-direct {p0, v0, p2}, Ljavassist/bytecode/annotation/MemberValue;-><init>(CLjavassist/bytecode/ConstPool;)V

    .line 50
    iput-object p1, p0, Ljavassist/bytecode/annotation/ArrayMemberValue;->type:Ljavassist/bytecode/annotation/MemberValue;

    const/4 p1, 0x0

    .line 51
    iput-object p1, p0, Ljavassist/bytecode/annotation/ArrayMemberValue;->values:[Ljavassist/bytecode/annotation/MemberValue;

    return-void
.end method


# virtual methods
.method public accept(Ljavassist/bytecode/annotation/MemberValueVisitor;)V
    .locals 0

    .line 143
    invoke-interface {p1, p0}, Ljavassist/bytecode/annotation/MemberValueVisitor;->visitArrayMemberValue(Ljavassist/bytecode/annotation/ArrayMemberValue;)V

    return-void
.end method

.method getType(Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Ljavassist/bytecode/annotation/ArrayMemberValue;->type:Ljavassist/bytecode/annotation/MemberValue;

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0, p1}, Ljavassist/bytecode/annotation/MemberValue;->getType(Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    .line 84
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    return-object p1

    .line 81
    :cond_0
    new-instance p1, Ljava/lang/ClassNotFoundException;

    const-string v0, "no array type specified"

    invoke-direct {p1, v0}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getType()Ljavassist/bytecode/annotation/MemberValue;
    .locals 1

    .line 93
    iget-object v0, p0, Ljavassist/bytecode/annotation/ArrayMemberValue;->type:Ljavassist/bytecode/annotation/MemberValue;

    return-object v0
.end method

.method getValue(Ljava/lang/ClassLoader;Ljavassist/ClassPool;Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Ljavassist/bytecode/annotation/ArrayMemberValue;->values:[Ljavassist/bytecode/annotation/MemberValue;

    if-eqz v0, :cond_3

    .line 61
    array-length v0, v0

    .line 63
    iget-object v1, p0, Ljavassist/bytecode/annotation/ArrayMemberValue;->type:Ljavassist/bytecode/annotation/MemberValue;

    if-nez v1, :cond_1

    .line 64
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    new-instance p1, Ljava/lang/ClassNotFoundException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "broken array type: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 70
    :cond_1
    invoke-virtual {v1, p1}, Ljavassist/bytecode/annotation/MemberValue;->getType(Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 72
    :goto_0
    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    .line 74
    iget-object v3, p0, Ljavassist/bytecode/annotation/ArrayMemberValue;->values:[Ljavassist/bytecode/annotation/MemberValue;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1, p2, p3}, Ljavassist/bytecode/annotation/MemberValue;->getValue(Ljava/lang/ClassLoader;Ljavassist/ClassPool;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object v1

    .line 58
    :cond_3
    new-instance p1, Ljava/lang/ClassNotFoundException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "no array elements found: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public getValue()[Ljavassist/bytecode/annotation/MemberValue;
    .locals 1

    .line 100
    iget-object v0, p0, Ljavassist/bytecode/annotation/ArrayMemberValue;->values:[Ljavassist/bytecode/annotation/MemberValue;

    return-object v0
.end method

.method public setValue([Ljavassist/bytecode/annotation/MemberValue;)V
    .locals 1

    .line 107
    iput-object p1, p0, Ljavassist/bytecode/annotation/ArrayMemberValue;->values:[Ljavassist/bytecode/annotation/MemberValue;

    if-eqz p1, :cond_0

    .line 108
    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 109
    aget-object p1, p1, v0

    iput-object p1, p0, Ljavassist/bytecode/annotation/ArrayMemberValue;->type:Ljavassist/bytecode/annotation/MemberValue;

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 116
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Ljavassist/bytecode/annotation/ArrayMemberValue;->values:[Ljavassist/bytecode/annotation/MemberValue;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 118
    :cond_0
    :goto_0
    iget-object v2, p0, Ljavassist/bytecode/annotation/ArrayMemberValue;->values:[Ljavassist/bytecode/annotation/MemberValue;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 119
    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    .line 120
    iget-object v2, p0, Ljavassist/bytecode/annotation/ArrayMemberValue;->values:[Ljavassist/bytecode/annotation/MemberValue;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    const-string v2, ", "

    .line 121
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    const-string v1, "}"

    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljavassist/bytecode/annotation/AnnotationsWriter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    iget-object v0, p0, Ljavassist/bytecode/annotation/ArrayMemberValue;->values:[Ljavassist/bytecode/annotation/MemberValue;

    array-length v0, v0

    .line 134
    invoke-virtual {p1, v0}, Ljavassist/bytecode/annotation/AnnotationsWriter;->arrayValue(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 136
    iget-object v2, p0, Ljavassist/bytecode/annotation/ArrayMemberValue;->values:[Ljavassist/bytecode/annotation/MemberValue;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljavassist/bytecode/annotation/MemberValue;->write(Ljavassist/bytecode/annotation/AnnotationsWriter;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
