.class Ljavassist/FieldInitLink;
.super Ljava/lang/Object;
.source "CtClassType.java"


# instance fields
.field field:Ljavassist/CtField;

.field init:Ljavassist/CtField$Initializer;

.field next:Ljavassist/FieldInitLink;


# direct methods
.method constructor <init>(Ljavassist/CtField;Ljavassist/CtField$Initializer;)V
    .locals 1

    .line 1704
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1705
    iput-object v0, p0, Ljavassist/FieldInitLink;->next:Ljavassist/FieldInitLink;

    .line 1706
    iput-object p1, p0, Ljavassist/FieldInitLink;->field:Ljavassist/CtField;

    .line 1707
    iput-object p2, p0, Ljavassist/FieldInitLink;->init:Ljavassist/CtField$Initializer;

    return-void
.end method
