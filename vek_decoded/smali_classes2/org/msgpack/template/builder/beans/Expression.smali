.class public Lorg/msgpack/template/builder/beans/Expression;
.super Lorg/msgpack/template/builder/beans/Statement;
.source "Expression.java"


# instance fields
.field value:Ljava/lang/Object;

.field valueIsDefined:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 30
    invoke-direct {p0, p2, p3, p4}, Lorg/msgpack/template/builder/beans/Statement;-><init>(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p2, 0x0

    .line 24
    iput-boolean p2, p0, Lorg/msgpack/template/builder/beans/Expression;->valueIsDefined:Z

    .line 31
    iput-object p1, p0, Lorg/msgpack/template/builder/beans/Expression;->value:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 32
    iput-boolean p1, p0, Lorg/msgpack/template/builder/beans/Expression;->valueIsDefined:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lorg/msgpack/template/builder/beans/Statement;-><init>(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 24
    iput-boolean p1, p0, Lorg/msgpack/template/builder/beans/Expression;->valueIsDefined:Z

    const/4 p2, 0x0

    .line 37
    iput-object p2, p0, Lorg/msgpack/template/builder/beans/Expression;->value:Ljava/lang/Object;

    .line 38
    iput-boolean p1, p0, Lorg/msgpack/template/builder/beans/Expression;->valueIsDefined:Z

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 66
    iget-boolean v0, p0, Lorg/msgpack/template/builder/beans/Expression;->valueIsDefined:Z

    if-nez v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lorg/msgpack/template/builder/beans/Expression;->invokeMethod()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/msgpack/template/builder/beans/Expression;->value:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Lorg/msgpack/template/builder/beans/Expression;->valueIsDefined:Z

    .line 70
    :cond_0
    iget-object v0, p0, Lorg/msgpack/template/builder/beans/Expression;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lorg/msgpack/template/builder/beans/Expression;->value:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 62
    iput-boolean p1, p0, Lorg/msgpack/template/builder/beans/Expression;->valueIsDefined:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    iget-boolean v1, p0, Lorg/msgpack/template/builder/beans/Expression;->valueIsDefined:Z

    if-nez v1, :cond_0

    const-string v1, "<unbound>"

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 47
    :cond_0
    iget-object v1, p0, Lorg/msgpack/template/builder/beans/Expression;->value:Ljava/lang/Object;

    if-nez v1, :cond_1

    const-string v1, "null"

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 50
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 51
    const-class v2, Ljava/lang/String;

    if-ne v1, v2, :cond_2

    const-string v1, "\"\""

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lorg/apache/harmony/beans/BeansUtils;->idOfClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const/16 v1, 0x3d

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 56
    invoke-super {p0}, Lorg/msgpack/template/builder/beans/Statement;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
