.class public Lcom/txdriver/ui/adapter/CompanyAdapter;
.super Landroid/widget/ArrayAdapter;
.source "CompanyAdapter.java"

# interfaces
.implements Landroid/widget/SpinnerAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txdriver/ui/adapter/CompanyAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/txdriver/json/Company;",
        ">;",
        "Landroid/widget/SpinnerAdapter;"
    }
.end annotation


# instance fields
.field private companies:[Lcom/txdriver/json/Company;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    new-array p1, v0, [Lcom/txdriver/json/Company;

    .line 19
    iput-object p1, p0, Lcom/txdriver/ui/adapter/CompanyAdapter;->companies:[Lcom/txdriver/json/Company;

    .line 23
    invoke-virtual {p0}, Lcom/txdriver/ui/adapter/CompanyAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/txdriver/ui/adapter/CompanyAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private getView(ILandroid/view/View;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    .line 60
    iget-object p2, p0, Lcom/txdriver/ui/adapter/CompanyAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const/4 v0, 0x0

    invoke-virtual {p2, p3, p4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 61
    new-instance p3, Lcom/txdriver/ui/adapter/CompanyAdapter$ViewHolder;

    invoke-direct {p3}, Lcom/txdriver/ui/adapter/CompanyAdapter$ViewHolder;-><init>()V

    const p4, 0x1020014

    .line 62
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p3, Lcom/txdriver/ui/adapter/CompanyAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    .line 63
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/txdriver/ui/adapter/CompanyAdapter$ViewHolder;

    .line 67
    :goto_0
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/adapter/CompanyAdapter;->getItem(I)Lcom/txdriver/json/Company;

    move-result-object p1

    .line 68
    iget-object p3, p3, Lcom/txdriver/ui/adapter/CompanyAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/txdriver/json/Company;->name:Ljava/lang/String;

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

    .line 39
    iget-object v0, p0, Lcom/txdriver/ui/adapter/CompanyAdapter;->companies:[Lcom/txdriver/json/Company;

    array-length v0, v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const v0, 0x7f0c00b5

    .line 75
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/txdriver/ui/adapter/CompanyAdapter;->getView(ILandroid/view/View;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Lcom/txdriver/json/Company;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/txdriver/ui/adapter/CompanyAdapter;->companies:[Lcom/txdriver/json/Company;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/adapter/CompanyAdapter;->getItem(I)Lcom/txdriver/json/Company;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/txdriver/ui/adapter/CompanyAdapter;->companies:[Lcom/txdriver/json/Company;

    aget-object p1, v0, p1

    iget p1, p1, Lcom/txdriver/json/Company;->id:I

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const v0, 0x1090008

    .line 54
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/txdriver/ui/adapter/CompanyAdapter;->getView(ILandroid/view/View;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public setData([Lcom/txdriver/json/Company;)V
    .locals 5

    .line 27
    array-length v0, p1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/txdriver/json/Company;

    .line 28
    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    new-instance p1, Lcom/txdriver/json/Company;

    invoke-direct {p1}, Lcom/txdriver/json/Company;-><init>()V

    .line 30
    iput v3, p1, Lcom/txdriver/json/Company;->id:I

    new-array v1, v1, [Ljava/lang/Object;

    .line 31
    invoke-virtual {p0}, Lcom/txdriver/ui/adapter/CompanyAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f100211

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "--- %s ---"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/txdriver/json/Company;->name:Ljava/lang/String;

    .line 32
    aput-object p1, v0, v3

    .line 33
    iput-object v0, p0, Lcom/txdriver/ui/adapter/CompanyAdapter;->companies:[Lcom/txdriver/json/Company;

    .line 34
    invoke-virtual {p0}, Lcom/txdriver/ui/adapter/CompanyAdapter;->notifyDataSetChanged()V

    return-void
.end method
