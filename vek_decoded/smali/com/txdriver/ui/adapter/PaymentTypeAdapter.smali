.class public Lcom/txdriver/ui/adapter/PaymentTypeAdapter;
.super Landroid/widget/ArrayAdapter;
.source "PaymentTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txdriver/ui/adapter/PaymentTypeAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/txdriver/db/PaymentType;",
        ">;"
    }
.end annotation


# instance fields
.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private paymentTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/txdriver/db/PaymentType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 21
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/txdriver/ui/adapter/PaymentTypeAdapter;->paymentTypes:Ljava/util/List;

    .line 25
    invoke-virtual {p0}, Lcom/txdriver/ui/adapter/PaymentTypeAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/txdriver/ui/adapter/PaymentTypeAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private getView(ILandroid/view/View;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    .line 61
    iget-object p2, p0, Lcom/txdriver/ui/adapter/PaymentTypeAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const/4 v0, 0x0

    invoke-virtual {p2, p3, p4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 62
    new-instance p3, Lcom/txdriver/ui/adapter/PaymentTypeAdapter$ViewHolder;

    invoke-direct {p3}, Lcom/txdriver/ui/adapter/PaymentTypeAdapter$ViewHolder;-><init>()V

    const p4, 0x1020014

    .line 63
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p3, Lcom/txdriver/ui/adapter/PaymentTypeAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    .line 64
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/txdriver/ui/adapter/PaymentTypeAdapter$ViewHolder;

    .line 68
    :goto_0
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/adapter/PaymentTypeAdapter;->getItem(I)Lcom/txdriver/db/PaymentType;

    move-result-object p1

    .line 69
    iget-object p3, p3, Lcom/txdriver/ui/adapter/PaymentTypeAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/txdriver/db/PaymentType;->name:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string p1, ""

    :goto_1
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/txdriver/ui/adapter/PaymentTypeAdapter;->paymentTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const v0, 0x7f0c00b5

    .line 76
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/txdriver/ui/adapter/PaymentTypeAdapter;->getView(ILandroid/view/View;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Lcom/txdriver/db/PaymentType;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/txdriver/ui/adapter/PaymentTypeAdapter;->paymentTypes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/txdriver/db/PaymentType;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/adapter/PaymentTypeAdapter;->getItem(I)Lcom/txdriver/db/PaymentType;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/txdriver/ui/adapter/PaymentTypeAdapter;->paymentTypes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/txdriver/db/PaymentType;

    invoke-virtual {p1}, Lcom/txdriver/db/PaymentType;->getId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPosition(Lcom/txdriver/db/PaymentType;)I
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/txdriver/ui/adapter/PaymentTypeAdapter;->paymentTypes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getPosition(Ljava/lang/Object;)I
    .locals 0

    .line 19
    check-cast p1, Lcom/txdriver/db/PaymentType;

    invoke-virtual {p0, p1}, Lcom/txdriver/ui/adapter/PaymentTypeAdapter;->getPosition(Lcom/txdriver/db/PaymentType;)I

    move-result p1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const v0, 0x7f0c00b6

    .line 55
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/txdriver/ui/adapter/PaymentTypeAdapter;->getView(ILandroid/view/View;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/txdriver/db/PaymentType;",
            ">;)V"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lcom/txdriver/ui/adapter/PaymentTypeAdapter;->paymentTypes:Ljava/util/List;

    .line 30
    invoke-virtual {p0}, Lcom/txdriver/ui/adapter/PaymentTypeAdapter;->notifyDataSetChanged()V

    return-void
.end method
