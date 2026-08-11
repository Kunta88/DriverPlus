.class public Lcom/txdriver/ui/adapter/TariffAdapter;
.super Lcom/activeandroid/widget/ModelAdapter;
.source "TariffAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txdriver/ui/adapter/TariffAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/activeandroid/widget/ModelAdapter<",
        "Lcom/txdriver/db/Tariff;",
        ">;"
    }
.end annotation


# instance fields
.field private final mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, v0}, Lcom/activeandroid/widget/ModelAdapter;-><init>(Landroid/content/Context;I)V

    .line 21
    invoke-virtual {p0}, Lcom/txdriver/ui/adapter/TariffAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/txdriver/ui/adapter/TariffAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private getView(ILandroid/view/View;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    .line 32
    iget-object p2, p0, Lcom/txdriver/ui/adapter/TariffAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const/4 v0, 0x0

    invoke-virtual {p2, p3, p4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 33
    new-instance p3, Lcom/txdriver/ui/adapter/TariffAdapter$ViewHolder;

    invoke-direct {p3}, Lcom/txdriver/ui/adapter/TariffAdapter$ViewHolder;-><init>()V

    const p4, 0x1020014

    .line 34
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p3, Lcom/txdriver/ui/adapter/TariffAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    .line 35
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/txdriver/ui/adapter/TariffAdapter$ViewHolder;

    .line 39
    :goto_0
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/adapter/TariffAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/txdriver/db/Tariff;

    .line 40
    iget-object p3, p3, Lcom/txdriver/ui/adapter/TariffAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/txdriver/db/Tariff;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const-string p1, ""

    :goto_1
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const v0, 0x7f0c00b5

    .line 47
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/txdriver/ui/adapter/TariffAdapter;->getView(ILandroid/view/View;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const v0, 0x7f0c00b6

    .line 26
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/txdriver/ui/adapter/TariffAdapter;->getView(ILandroid/view/View;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
