.class Ljavassist/bytecode/analysis/IntQueue$Entry;
.super Ljava/lang/Object;
.source "IntQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/analysis/IntQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Entry"
.end annotation


# instance fields
.field private next:Ljavassist/bytecode/analysis/IntQueue$Entry;

.field private value:I


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Ljavassist/bytecode/analysis/IntQueue$Entry;->value:I

    return-void
.end method

.method synthetic constructor <init>(ILjavassist/bytecode/analysis/IntQueue$1;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Ljavassist/bytecode/analysis/IntQueue$Entry;-><init>(I)V

    return-void
.end method

.method static synthetic access$100(Ljavassist/bytecode/analysis/IntQueue$Entry;)Ljavassist/bytecode/analysis/IntQueue$Entry;
    .locals 0

    .line 21
    iget-object p0, p0, Ljavassist/bytecode/analysis/IntQueue$Entry;->next:Ljavassist/bytecode/analysis/IntQueue$Entry;

    return-object p0
.end method

.method static synthetic access$102(Ljavassist/bytecode/analysis/IntQueue$Entry;Ljavassist/bytecode/analysis/IntQueue$Entry;)Ljavassist/bytecode/analysis/IntQueue$Entry;
    .locals 0

    .line 21
    iput-object p1, p0, Ljavassist/bytecode/analysis/IntQueue$Entry;->next:Ljavassist/bytecode/analysis/IntQueue$Entry;

    return-object p1
.end method

.method static synthetic access$200(Ljavassist/bytecode/analysis/IntQueue$Entry;)I
    .locals 0

    .line 21
    iget p0, p0, Ljavassist/bytecode/analysis/IntQueue$Entry;->value:I

    return p0
.end method
