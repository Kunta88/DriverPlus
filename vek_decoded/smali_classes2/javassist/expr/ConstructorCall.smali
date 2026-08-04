.class public Ljavassist/expr/ConstructorCall;
.super Ljavassist/expr/MethodCall;
.source "ConstructorCall.java"


# direct methods
.method protected constructor <init>(ILjavassist/bytecode/CodeIterator;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Ljavassist/expr/MethodCall;-><init>(ILjavassist/bytecode/CodeIterator;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)V

    return-void
.end method


# virtual methods
.method public getConstructor()Ljavassist/CtConstructor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 60
    invoke-virtual {p0}, Ljavassist/expr/ConstructorCall;->getCtClass()Ljavassist/CtClass;

    move-result-object v0

    invoke-virtual {p0}, Ljavassist/expr/ConstructorCall;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavassist/CtClass;->getConstructor(Ljava/lang/String;)Ljavassist/CtConstructor;

    move-result-object v0

    return-object v0
.end method

.method public getMethod()Ljavassist/CtMethod;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 53
    new-instance v0, Ljavassist/NotFoundException;

    const-string v1, "this is a constructor call.  Call getConstructor()."

    invoke-direct {v0, v1}, Ljavassist/NotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    .line 44
    invoke-virtual {p0}, Ljavassist/expr/ConstructorCall;->isSuper()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "super"

    goto :goto_0

    :cond_0
    const-string v0, "this"

    :goto_0
    return-object v0
.end method

.method public isSuper()Z
    .locals 1

    .line 68
    invoke-super {p0}, Ljavassist/expr/MethodCall;->isSuper()Z

    move-result v0

    return v0
.end method
