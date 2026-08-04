.class public Lorg/apache/harmony/beans/Argument;
.super Ljava/lang/Object;
.source "Argument.java"


# instance fields
.field private interfaces:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/apache/harmony/beans/Argument;->type:Ljava/lang/Class;

    .line 38
    iput-object p2, p0, Lorg/apache/harmony/beans/Argument;->value:Ljava/lang/Object;

    .line 39
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/harmony/beans/Argument;->interfaces:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/apache/harmony/beans/Argument;->value:Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/harmony/beans/Argument;->type:Ljava/lang/Class;

    .line 32
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/harmony/beans/Argument;->interfaces:[Ljava/lang/Class;

    :cond_0
    return-void
.end method


# virtual methods
.method public getInterfaces()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lorg/apache/harmony/beans/Argument;->interfaces:[Ljava/lang/Class;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lorg/apache/harmony/beans/Argument;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/apache/harmony/beans/Argument;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public setInterfaces([Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 60
    iput-object p1, p0, Lorg/apache/harmony/beans/Argument;->interfaces:[Ljava/lang/Class;

    return-void
.end method

.method public setType(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lorg/apache/harmony/beans/Argument;->type:Ljava/lang/Class;

    .line 56
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/harmony/beans/Argument;->interfaces:[Ljava/lang/Class;

    return-void
.end method
