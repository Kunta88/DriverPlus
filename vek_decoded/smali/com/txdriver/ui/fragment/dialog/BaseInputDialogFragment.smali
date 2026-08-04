.class public abstract Lcom/txdriver/ui/fragment/dialog/BaseInputDialogFragment;
.super Lcom/txdriver/ui/fragment/dialog/BaseDialogFragment;
.source "BaseInputDialogFragment.java"


# instance fields
.field private mInputEditText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/dialog/BaseDialogFragment;-><init>()V

    return-void
.end method

.method private getContentView()Landroid/view/View;
    .locals 3

    .line 51
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/BaseInputDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c004c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0900c3

    .line 52
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/txdriver/ui/fragment/dialog/BaseInputDialogFragment;->mInputEditText:Landroid/widget/EditText;

    .line 53
    invoke-direct {p0, v1}, Lcom/txdriver/ui/fragment/dialog/BaseInputDialogFragment;->setupInputEditText(Landroid/widget/EditText;)V

    return-object v0
.end method

.method private setupInputEditText(Landroid/widget/EditText;)V
    .locals 2

    .line 60
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/BaseInputDialogFragment;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/BaseInputDialogFragment;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "__"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    add-int/lit8 v1, v0, 0x2

    .line 63
    invoke-virtual {p1, v0, v1}, Landroid/widget/EditText;->setSelection(II)V

    .line 64
    new-instance v0, Lcom/txdriver/ui/fragment/dialog/BaseInputDialogFragment$2;

    invoke-direct {v0, p0, p1}, Lcom/txdriver/ui/fragment/dialog/BaseInputDialogFragment$2;-><init>(Lcom/txdriver/ui/fragment/dialog/BaseInputDialogFragment;Landroid/widget/EditText;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 76
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getInputEditText()Landroid/widget/EditText;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/BaseInputDialogFragment;->mInputEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method public abstract getPositiveButtonClickListener()Landroid/view/View$OnClickListener;
.end method

.method public abstract getText()Ljava/lang/String;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 34
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/BaseInputDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/BaseInputDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100130

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 36
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/dialog/BaseInputDialogFragment;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f100212

    .line 37
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/fragment/dialog/BaseInputDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000

    .line 38
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 39
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 40
    new-instance v0, Lcom/txdriver/ui/fragment/dialog/BaseInputDialogFragment$1;

    invoke-direct {v0, p0, p1}, Lcom/txdriver/ui/fragment/dialog/BaseInputDialogFragment$1;-><init>(Lcom/txdriver/ui/fragment/dialog/BaseInputDialogFragment;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-object p1
.end method
