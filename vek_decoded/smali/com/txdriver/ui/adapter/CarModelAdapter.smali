.class public Lcom/txdriver/ui/adapter/CarModelAdapter;
.super Landroid/widget/ArrayAdapter;
.source "CarModelAdapter.java"

# interfaces
.implements Landroid/widget/SpinnerAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txdriver/ui/adapter/CarModelAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/txdriver/json/CarModel;",
        ">;",
        "Landroid/widget/SpinnerAdapter;"
    }
.end annotation


# instance fields
.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private models:[Lcom/txdriver/json/CarModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    new-array p1, v0, [Lcom/txdriver/json/CarModel;

    .line 17
    iput-object p1, p0, Lcom/txdriver/ui/adapter/CarModelAdapter;->models:[Lcom/txdriver/json/CarModel;

    .line 21
    invoke-virtual {p0}, Lcom/txdriver/ui/adapter/CarModelAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/txdriver/ui/adapter/CarModelAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private getView(ILandroid/view/View;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    .line 62
    iget-object p2, p0, Lcom/txdriver/ui/adapter/CarModelAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const/4 v0, 0x0

    invoke-virtual {p2, p3, p4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 63
    new-instance p3, Lcom/txdriver/ui/adapter/CarModelAdapter$ViewHolder;

    invoke-direct {p3}, Lcom/txdriver/ui/adapter/CarModelAdapter$ViewHolder;-><init>()V

    const p4, 0x1020014

    .line 64
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p3, Lcom/txdriver/ui/adapter/CarModelAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    .line 65
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/txdriver/ui/adapter/CarModelAdapter$ViewHolder;

    .line 69
    :goto_0
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/adapter/CarModelAdapter;->getItem(I)Lcom/txdriver/json/CarModel;

    move-result-object p1

    .line 70
    iget-object p3, p3, Lcom/txdriver/ui/adapter/CarModelAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/txdriver/json/CarModel;->getCarModelName()Ljava/lang/String;

    move-result-object p1

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

    .line 31
    iget-object v0, p0, Lcom/txdriver/ui/adapter/CarModelAdapter;->models:[Lcom/txdriver/json/CarModel;

    array-length v0, v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const v0, 0x7f0c00b5

    .line 77
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/txdriver/ui/adapter/CarModelAdapter;->getView(ILandroid/view/View;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Lcom/txdriver/json/CarModel;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/txdriver/ui/adapter/CarModelAdapter;->models:[Lcom/txdriver/json/CarModel;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/adapter/CarModelAdapter;->getItem(I)Lcom/txdriver/json/CarModel;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/txdriver/ui/adapter/CarModelAdapter;->models:[Lcom/txdriver/json/CarModel;

    aget-object p1, v0, p1

    iget p1, p1, Lcom/txdriver/json/CarModel;->id:I

    int-to-long v0, p1

    return-wide v0
.end method

.method public getPosition(Lcom/txdriver/json/CarModel;)I
    .locals 3

    const/4 v0, 0x0

    .line 41
    :goto_0
    iget-object v1, p0, Lcom/txdriver/ui/adapter/CarModelAdapter;->models:[Lcom/txdriver/json/CarModel;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 42
    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public bridge synthetic getPosition(Ljava/lang/Object;)I
    .locals 0

    .line 14
    check-cast p1, Lcom/txdriver/json/CarModel;

    invoke-virtual {p0, p1}, Lcom/txdriver/ui/adapter/CarModelAdapter;->getPosition(Lcom/txdriver/json/CarModel;)I

    move-result p1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const v0, 0x1090008

    .line 56
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/txdriver/ui/adapter/CarModelAdapter;->getView(ILandroid/view/View;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public setData([Lcom/txdriver/json/CarModel;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/txdriver/ui/adapter/CarModelAdapter;->models:[Lcom/txdriver/json/CarModel;

    .line 26
    invoke-virtual {p0}, Lcom/txdriver/ui/adapter/CarModelAdapter;->notifyDataSetChanged()V

    return-void
.end method
