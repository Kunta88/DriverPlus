.class public Lcom/txdriver/ui/fragment/dialog/ArchiveOrderDetailsDialogFragment;
.super Lcom/txdriver/ui/fragment/dialog/BaseDialogFragment;
.source "ArchiveOrderDetailsDialogFragment.java"


# static fields
.field private static final ARG_ORDER:Ljava/lang/String; = "ARG_ORDER"


# instance fields
.field private mAddressFromTextView:Landroid/widget/TextView;

.field private mDestinationsLayout:Landroid/widget/LinearLayout;

.field private mNoteTextView:Landroid/widget/TextView;

.field private mOrder:Lcom/txdriver/json/ArchiveOrder;

.field private mOrderDateTextView:Landroid/widget/TextView;

.field private mOrderTimeTextView:Landroid/widget/TextView;

.field private mPriceTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/dialog/BaseDialogFragment;-><init>()V

    return-void
.end method

.method private createDestinationView(Ljava/lang/String;)Landroid/view/View;
    .locals 3

    .line 95
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/ArchiveOrderDetailsDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0068

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 96
    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ArchiveOrderDetailsDialogFragment;->mDestinationsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private getContentView()Landroid/view/View;
    .locals 3

    .line 67
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/ArchiveOrderDetailsDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c005c

    const/4 v2, 0x0

    .line 68
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901cb

    .line 69
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/txdriver/ui/fragment/dialog/ArchiveOrderDetailsDialogFragment;->mAddressFromTextView:Landroid/widget/TextView;

    const v1, 0x7f0901d2

    .line 70
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/txdriver/ui/fragment/dialog/ArchiveOrderDetailsDialogFragment;->mOrderDateTextView:Landroid/widget/TextView;

    const v1, 0x7f0901dd

    .line 71
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/txdriver/ui/fragment/dialog/ArchiveOrderDetailsDialogFragment;->mOrderTimeTextView:Landroid/widget/TextView;

    const v1, 0x7f0901db

    .line 72
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/txdriver/ui/fragment/dialog/ArchiveOrderDetailsDialogFragment;->mPriceTextView:Landroid/widget/TextView;

    const v1, 0x7f0901d7

    .line 73
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/txdriver/ui/fragment/dialog/ArchiveOrderDetailsDialogFragment;->mNoteTextView:Landroid/widget/TextView;

    const v1, 0x7f0901c5

    .line 74
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/txdriver/ui/fragment/dialog/ArchiveOrderDetailsDialogFragment;->mDestinationsLayout:Landroid/widget/LinearLayout;

    .line 75
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/dialog/ArchiveOrderDetailsDialogFragment;->initView()V

    return-object v0
.end method

.method private initView()V
    .locals 4

    .line 80
    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/ArchiveOrderDetailsDialogFragment;->mAddressFromTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/txdriver/ui/fragment/dialog/ArchiveOrderDetailsDialogFragment;->mOrder:Lcom/txdriver/json/ArchiveOrder;

    iget-object v1, v1, Lcom/txdriver/json/ArchiveOrder;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/ArchiveOrderDetailsDialogFragment;->mOrderDateTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/txdriver/utils/TimeUtils;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v1

    iget-object v2, p0, Lcom/txdriver/ui/fragment/dialog/ArchiveOrderDetailsDialogFragment;->mOrder:Lcom/txdriver/json/ArchiveOrder;

    iget-object v2, v2, Lcom/txdriver/json/ArchiveOrder;->date:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/ArchiveOrderDetailsDialogFragment;->mOrderTimeTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/txdriver/utils/TimeUtils;->getTimeFormat()Ljava/text/DateFormat;

    move-result-object v1

    iget-object v2, p0, Lcom/txdriver/ui/fragment/dialog/ArchiveOrderDetailsDialogFragment;->mOrder:Lcom/txdriver/json/ArchiveOrder;

    iget-object v2, v2, Lcom/txdriver/json/ArchiveOrder;->date:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/ArchiveOrderDetailsDialogFragment;->mPriceTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/txdriver/ui/fragment/dialog/ArchiveOrderDetailsDialogFragment;->mOrder:Lcom/txdriver/json/ArchiveOrder;

    iget-wide v2, v2, Lcom/txdriver/json/ArchiveOrder;->price:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "%1$.2f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/ArchiveOrderDetailsDialogFragment;->mNoteTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/txdriver/ui/fragment/dialog/ArchiveOrderDetailsDialogFragment;->mOrder:Lcom/txdriver/json/ArchiveOrder;

    iget-object v1, v1, Lcom/txdriver/json/ArchiveOrder;->comment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/ArchiveOrderDetailsDialogFragment;->mDestinationsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 86
    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/ArchiveOrderDetailsDialogFragment;->mOrder:Lcom/txdriver/json/ArchiveOrder;

    iget-object v0, v0, Lcom/txdriver/json/ArchiveOrder;->destinations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f10009e

    .line 87
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/fragment/dialog/ArchiveOrderDetailsDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/txdriver/ui/fragment/dialog/ArchiveOrderDetailsDialogFragment;->createDestinationView(Ljava/lang/String;)Landroid/view/View;

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/ArchiveOrderDetailsDialogFragment;->mOrder:Lcom/txdriver/json/ArchiveOrder;

    iget-object v0, v0, Lcom/txdriver/json/ArchiveOrder;->destinations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 90
    invoke-direct {p0, v1}, Lcom/txdriver/ui/fragment/dialog/ArchiveOrderDetailsDialogFragment;->createDestinationView(Ljava/lang/String;)Landroid/view/View;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static newInstance(Lcom/txdriver/json/ArchiveOrder;)Lcom/txdriver/ui/fragment/dialog/ArchiveOrderDetailsDialogFragment;
    .locals 3

    .line 37
    new-instance v0, Lcom/txdriver/ui/fragment/dialog/ArchiveOrderDetailsDialogFragment;

    invoke-direct {v0}, Lcom/txdriver/ui/fragment/dialog/ArchiveOrderDetailsDialogFragment;-><init>()V

    .line 38
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "ARG_ORDER"

    .line 39
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 40
    invoke-virtual {v0, v1}, Lcom/txdriver/ui/fragment/dialog/ArchiveOrderDetailsDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static show(Lcom/txdriver/json/ArchiveOrder;Landroidx/fragment/app/FragmentActivity;)Landroidx/fragment/app/DialogFragment;
    .locals 0

    .line 31
    invoke-static {p0}, Lcom/txdriver/ui/fragment/dialog/ArchiveOrderDetailsDialogFragment;->newInstance(Lcom/txdriver/json/ArchiveOrder;)Lcom/txdriver/ui/fragment/dialog/ArchiveOrderDetailsDialogFragment;

    move-result-object p0

    .line 32
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/txdriver/utils/Utils;->showDialog(Landroidx/fragment/app/DialogFragment;Landroidx/fragment/app/FragmentManager;)V

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 46
    invoke-super {p0, p1}, Lcom/txdriver/ui/fragment/dialog/BaseDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/ArchiveOrderDetailsDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "ARG_ORDER"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/txdriver/json/ArchiveOrder;

    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ArchiveOrderDetailsDialogFragment;->mOrder:Lcom/txdriver/json/ArchiveOrder;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 52
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/ArchiveOrderDetailsDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f050014

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    const v0, 0x7f100188

    if-eqz p1, :cond_0

    .line 54
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/ArchiveOrderDetailsDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 55
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/fragment/dialog/ArchiveOrderDetailsDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/txdriver/ui/fragment/dialog/ArchiveOrderDetailsDialogFragment;->mOrder:Lcom/txdriver/json/ArchiveOrder;

    iget v2, v2, Lcom/txdriver/json/ArchiveOrder;->orderId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "%s %d"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 56
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/dialog/ArchiveOrderDetailsDialogFragment;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1

    .line 59
    :cond_0
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/ArchiveOrderDetailsDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 60
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/fragment/dialog/ArchiveOrderDetailsDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 61
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/dialog/ArchiveOrderDetailsDialogFragment;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 62
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
