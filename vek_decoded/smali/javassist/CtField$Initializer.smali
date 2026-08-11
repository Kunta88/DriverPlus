.class public abstract Ljavassist/CtField$Initializer;
.super Ljava/lang/Object;
.source "CtField.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/CtField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Initializer"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byCall(Ljavassist/CtClass;Ljava/lang/String;)Ljavassist/CtField$Initializer;
    .locals 1

    .line 656
    new-instance v0, Ljavassist/CtField$MethodInitializer;

    invoke-direct {v0}, Ljavassist/CtField$MethodInitializer;-><init>()V

    .line 657
    iput-object p0, v0, Ljavassist/CtField$MethodInitializer;->objectType:Ljavassist/CtClass;

    .line 658
    iput-object p1, v0, Ljavassist/CtField$MethodInitializer;->methodName:Ljava/lang/String;

    const/4 p0, 0x0

    .line 659
    iput-object p0, v0, Ljavassist/CtField$MethodInitializer;->stringParams:[Ljava/lang/String;

    const/4 p0, 0x0

    .line 660
    iput-boolean p0, v0, Ljavassist/CtField$MethodInitializer;->withConstructorParams:Z

    return-object v0
.end method

.method public static byCall(Ljavassist/CtClass;Ljava/lang/String;[Ljava/lang/String;)Ljavassist/CtField$Initializer;
    .locals 1

    .line 691
    new-instance v0, Ljavassist/CtField$MethodInitializer;

    invoke-direct {v0}, Ljavassist/CtField$MethodInitializer;-><init>()V

    .line 692
    iput-object p0, v0, Ljavassist/CtField$MethodInitializer;->objectType:Ljavassist/CtClass;

    .line 693
    iput-object p1, v0, Ljavassist/CtField$MethodInitializer;->methodName:Ljava/lang/String;

    .line 694
    iput-object p2, v0, Ljavassist/CtField$MethodInitializer;->stringParams:[Ljava/lang/String;

    const/4 p0, 0x0

    .line 695
    iput-boolean p0, v0, Ljavassist/CtField$MethodInitializer;->withConstructorParams:Z

    return-object v0
.end method

.method public static byCallWithParams(Ljavassist/CtClass;Ljava/lang/String;)Ljavassist/CtField$Initializer;
    .locals 1

    .line 724
    new-instance v0, Ljavassist/CtField$MethodInitializer;

    invoke-direct {v0}, Ljavassist/CtField$MethodInitializer;-><init>()V

    .line 725
    iput-object p0, v0, Ljavassist/CtField$MethodInitializer;->objectType:Ljavassist/CtClass;

    .line 726
    iput-object p1, v0, Ljavassist/CtField$MethodInitializer;->methodName:Ljava/lang/String;

    const/4 p0, 0x0

    .line 727
    iput-object p0, v0, Ljavassist/CtField$MethodInitializer;->stringParams:[Ljava/lang/String;

    const/4 p0, 0x1

    .line 728
    iput-boolean p0, v0, Ljavassist/CtField$MethodInitializer;->withConstructorParams:Z

    return-object v0
.end method

.method public static byCallWithParams(Ljavassist/CtClass;Ljava/lang/String;[Ljava/lang/String;)Ljavassist/CtField$Initializer;
    .locals 1

    .line 761
    new-instance v0, Ljavassist/CtField$MethodInitializer;

    invoke-direct {v0}, Ljavassist/CtField$MethodInitializer;-><init>()V

    .line 762
    iput-object p0, v0, Ljavassist/CtField$MethodInitializer;->objectType:Ljavassist/CtClass;

    .line 763
    iput-object p1, v0, Ljavassist/CtField$MethodInitializer;->methodName:Ljava/lang/String;

    .line 764
    iput-object p2, v0, Ljavassist/CtField$MethodInitializer;->stringParams:[Ljava/lang/String;

    const/4 p0, 0x1

    .line 765
    iput-boolean p0, v0, Ljavassist/CtField$MethodInitializer;->withConstructorParams:Z

    return-object v0
.end method

.method public static byExpr(Ljava/lang/String;)Ljavassist/CtField$Initializer;
    .locals 1

    .line 802
    new-instance v0, Ljavassist/CtField$CodeInitializer;

    invoke-direct {v0, p0}, Ljavassist/CtField$CodeInitializer;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static byExpr(Ljavassist/compiler/ast/ASTree;)Ljavassist/CtField$Initializer;
    .locals 1

    .line 806
    new-instance v0, Ljavassist/CtField$PtreeInitializer;

    invoke-direct {v0, p0}, Ljavassist/CtField$PtreeInitializer;-><init>(Ljavassist/compiler/ast/ASTree;)V

    return-object v0
.end method

.method public static byNew(Ljavassist/CtClass;)Ljavassist/CtField$Initializer;
    .locals 1

    .line 539
    new-instance v0, Ljavassist/CtField$NewInitializer;

    invoke-direct {v0}, Ljavassist/CtField$NewInitializer;-><init>()V

    .line 540
    iput-object p0, v0, Ljavassist/CtField$NewInitializer;->objectType:Ljavassist/CtClass;

    const/4 p0, 0x0

    .line 541
    iput-object p0, v0, Ljavassist/CtField$NewInitializer;->stringParams:[Ljava/lang/String;

    const/4 p0, 0x0

    .line 542
    iput-boolean p0, v0, Ljavassist/CtField$NewInitializer;->withConstructorParams:Z

    return-object v0
.end method

.method public static byNew(Ljavassist/CtClass;[Ljava/lang/String;)Ljavassist/CtField$Initializer;
    .locals 1

    .line 567
    new-instance v0, Ljavassist/CtField$NewInitializer;

    invoke-direct {v0}, Ljavassist/CtField$NewInitializer;-><init>()V

    .line 568
    iput-object p0, v0, Ljavassist/CtField$NewInitializer;->objectType:Ljavassist/CtClass;

    .line 569
    iput-object p1, v0, Ljavassist/CtField$NewInitializer;->stringParams:[Ljava/lang/String;

    const/4 p0, 0x0

    .line 570
    iput-boolean p0, v0, Ljavassist/CtField$NewInitializer;->withConstructorParams:Z

    return-object v0
.end method

.method public static byNewArray(Ljavassist/CtClass;I)Ljavassist/CtField$Initializer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 780
    new-instance v0, Ljavassist/CtField$ArrayInitializer;

    invoke-virtual {p0}, Ljavassist/CtClass;->getComponentType()Ljavassist/CtClass;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljavassist/CtField$ArrayInitializer;-><init>(Ljavassist/CtClass;I)V

    return-object v0
.end method

.method public static byNewArray(Ljavassist/CtClass;[I)Ljavassist/CtField$Initializer;
    .locals 1

    .line 793
    new-instance v0, Ljavassist/CtField$MultiArrayInitializer;

    invoke-direct {v0, p0, p1}, Ljavassist/CtField$MultiArrayInitializer;-><init>(Ljavassist/CtClass;[I)V

    return-object v0
.end method

.method public static byNewWithParams(Ljavassist/CtClass;)Ljavassist/CtField$Initializer;
    .locals 1

    .line 596
    new-instance v0, Ljavassist/CtField$NewInitializer;

    invoke-direct {v0}, Ljavassist/CtField$NewInitializer;-><init>()V

    .line 597
    iput-object p0, v0, Ljavassist/CtField$NewInitializer;->objectType:Ljavassist/CtClass;

    const/4 p0, 0x0

    .line 598
    iput-object p0, v0, Ljavassist/CtField$NewInitializer;->stringParams:[Ljava/lang/String;

    const/4 p0, 0x1

    .line 599
    iput-boolean p0, v0, Ljavassist/CtField$NewInitializer;->withConstructorParams:Z

    return-object v0
.end method

.method public static byNewWithParams(Ljavassist/CtClass;[Ljava/lang/String;)Ljavassist/CtField$Initializer;
    .locals 1

    .line 627
    new-instance v0, Ljavassist/CtField$NewInitializer;

    invoke-direct {v0}, Ljavassist/CtField$NewInitializer;-><init>()V

    .line 628
    iput-object p0, v0, Ljavassist/CtField$NewInitializer;->objectType:Ljavassist/CtClass;

    .line 629
    iput-object p1, v0, Ljavassist/CtField$NewInitializer;->stringParams:[Ljava/lang/String;

    const/4 p0, 0x1

    .line 630
    iput-boolean p0, v0, Ljavassist/CtField$NewInitializer;->withConstructorParams:Z

    return-object v0
.end method

.method public static byParameter(I)Ljavassist/CtField$Initializer;
    .locals 1

    .line 518
    new-instance v0, Ljavassist/CtField$ParamInitializer;

    invoke-direct {v0}, Ljavassist/CtField$ParamInitializer;-><init>()V

    .line 519
    iput p0, v0, Ljavassist/CtField$ParamInitializer;->nthParam:I

    return-object v0
.end method

.method public static constant(D)Ljavassist/CtField$Initializer;
    .locals 1

    .line 492
    new-instance v0, Ljavassist/CtField$DoubleInitializer;

    invoke-direct {v0, p0, p1}, Ljavassist/CtField$DoubleInitializer;-><init>(D)V

    return-object v0
.end method

.method public static constant(F)Ljavassist/CtField$Initializer;
    .locals 1

    .line 484
    new-instance v0, Ljavassist/CtField$FloatInitializer;

    invoke-direct {v0, p0}, Ljavassist/CtField$FloatInitializer;-><init>(F)V

    return-object v0
.end method

.method public static constant(I)Ljavassist/CtField$Initializer;
    .locals 1

    .line 460
    new-instance v0, Ljavassist/CtField$IntInitializer;

    invoke-direct {v0, p0}, Ljavassist/CtField$IntInitializer;-><init>(I)V

    return-object v0
.end method

.method public static constant(J)Ljavassist/CtField$Initializer;
    .locals 1

    .line 476
    new-instance v0, Ljavassist/CtField$LongInitializer;

    invoke-direct {v0, p0, p1}, Ljavassist/CtField$LongInitializer;-><init>(J)V

    return-object v0
.end method

.method public static constant(Ljava/lang/String;)Ljavassist/CtField$Initializer;
    .locals 1

    .line 500
    new-instance v0, Ljavassist/CtField$StringInitializer;

    invoke-direct {v0, p0}, Ljavassist/CtField$StringInitializer;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static constant(Z)Ljavassist/CtField$Initializer;
    .locals 1

    .line 468
    new-instance v0, Ljavassist/CtField$IntInitializer;

    invoke-direct {v0, p0}, Ljavassist/CtField$IntInitializer;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method check(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    return-void
.end method

.method abstract compile(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/bytecode/Bytecode;[Ljavassist/CtClass;Ljavassist/compiler/Javac;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation
.end method

.method abstract compileIfStatic(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/bytecode/Bytecode;Ljavassist/compiler/Javac;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation
.end method

.method getConstantValue(Ljavassist/bytecode/ConstPool;Ljavassist/CtClass;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
