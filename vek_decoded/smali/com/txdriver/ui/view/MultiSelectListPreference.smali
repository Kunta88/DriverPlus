.class public Lcom/txdriver/ui/view/MultiSelectListPreference;
.super Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat;
.source "MultiSelectListPreference.java"


# instance fields
.field private allSelected:Z

.field private selected:[Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lcom/txdriver/ui/view/MultiSelectListPreference;->allSelected:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lcom/txdriver/ui/view/MultiSelectListPreference;->allSelected:Z

    return-void
.end method

.method static synthetic access$000(Lcom/txdriver/ui/view/MultiSelectListPreference;)Z
    .locals 0

    .line 19
    iget-boolean p0, p0, Lcom/txdriver/ui/view/MultiSelectListPreference;->allSelected:Z

    return p0
.end method

.method static synthetic access$002(Lcom/txdriver/ui/view/MultiSelectListPreference;Z)Z
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/txdriver/ui/view/MultiSelectListPreference;->allSelected:Z

    return p1
.end method

.method static synthetic access$100(Lcom/txdriver/ui/view/MultiSelectListPreference;Landroid/app/AlertDialog;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/txdriver/ui/view/MultiSelectListPreference;->deselectAll(Landroid/app/AlertDialog;)V

    return-void
.end method

.method static synthetic access$200(Lcom/txdriver/ui/view/MultiSelectListPreference;)I
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/txdriver/ui/view/MultiSelectListPreference;->getSelectButtonText()I

    move-result p0

    return p0
.end method

.method private deselectAll(Landroid/app/AlertDialog;)V
    .locals 3

    .line 82
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 83
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 85
    invoke-direct {p0, p1, v2, v1}, Lcom/txdriver/ui/view/MultiSelectListPreference;->setItemChecked(Landroid/widget/ListView;IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 87
    :cond_0
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0, p1}, Lcom/txdriver/ui/view/MultiSelectListPreference;->setNewValues(Ljava/util/Set;)V

    return-void
.end method

.method private getSelectButtonText()I
    .locals 1

    .line 39
    iget-boolean v0, p0, Lcom/txdriver/ui/view/MultiSelectListPreference;->allSelected:Z

    if-nez v0, :cond_0

    const v0, 0x7f10020b

    goto :goto_0

    :cond_0
    const v0, 0x7f1000a3

    :goto_0
    return v0
.end method

.method private setItemChecked(Landroid/widget/ListView;IZ)V
    .locals 0

    .line 91
    invoke-virtual {p1, p2, p3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 92
    iget-object p1, p0, Lcom/txdriver/ui/view/MultiSelectListPreference;->selected:[Z

    aput-boolean p3, p1, p2

    return-void
.end method


# virtual methods
.method getSelectedItems(Ljava/util/Set;)[Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)[Z"
        }
    .end annotation

    .line 102
    invoke-super {p0, p1}, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat;->getSelectedItems(Ljava/util/Set;)[Z

    move-result-object p1

    iput-object p1, p0, Lcom/txdriver/ui/view/MultiSelectListPreference;->selected:[Z

    return-object p1
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 2

    .line 33
    invoke-super {p0, p1}, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 34
    invoke-virtual {p0}, Lcom/txdriver/ui/view/MultiSelectListPreference;->getValues()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/txdriver/ui/view/MultiSelectListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/txdriver/ui/view/MultiSelectListPreference;->allSelected:Z

    .line 35
    invoke-direct {p0}, Lcom/txdriver/ui/view/MultiSelectListPreference;->getSelectButtonText()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method public selectAll(Landroid/app/AlertDialog;)V
    .locals 5

    .line 70
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 71
    invoke-virtual {p0}, Lcom/txdriver/ui/view/MultiSelectListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 72
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 73
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_0

    const/4 v4, 0x1

    .line 75
    invoke-direct {p0, v2, v3, v4}, Lcom/txdriver/ui/view/MultiSelectListPreference;->setItemChecked(Landroid/widget/ListView;IZ)V

    .line 76
    aget-object v4, v1, v3

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/view/MultiSelectListPreference;->setNewValues(Ljava/util/Set;)V

    return-void
.end method

.method public setNewValues(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lcom/txdriver/ui/view/MultiSelectListPreference;->mNewValues:Ljava/util/Set;

    const/4 p1, 0x1

    .line 97
    iput-boolean p1, p0, Lcom/txdriver/ui/view/MultiSelectListPreference;->mPreferenceChanged:Z

    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 3

    .line 44
    invoke-super {p0, p1}, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat;->showDialog(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/txdriver/ui/view/MultiSelectListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    check-cast p1, Landroid/app/AlertDialog;

    const/4 v0, -0x3

    .line 46
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 47
    new-instance v1, Lcom/txdriver/ui/view/MultiSelectListPreference$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/txdriver/ui/view/MultiSelectListPreference$1;-><init>(Lcom/txdriver/ui/view/MultiSelectListPreference;Landroid/app/AlertDialog;Landroid/widget/Button;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object p1

    .line 61
    invoke-virtual {p0}, Lcom/txdriver/ui/view/MultiSelectListPreference;->getValues()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 62
    invoke-virtual {p0, v1}, Lcom/txdriver/ui/view/MultiSelectListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v2, 0x1

    .line 64
    invoke-direct {p0, p1, v1, v2}, Lcom/txdriver/ui/view/MultiSelectListPreference;->setItemChecked(Landroid/widget/ListView;IZ)V

    goto :goto_0

    :cond_1
    return-void
.end method
