.class public Lcom/txdriver/ui/fragment/dialog/AddressesDialogFragment;
.super Lcom/txdriver/ui/fragment/dialog/BaseDialogFragment;
.source "AddressesDialogFragment.java"


# static fields
.field private static final ID_ARG:Ljava/lang/String; = "id_arg"


# instance fields
.field private mAddressesAdapter:Lcom/activeandroid/widget/ModelAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/activeandroid/widget/ModelAdapter<",
            "Lcom/txdriver/db/Address;",
            ">;"
        }
    .end annotation
.end field

.field private mOrderId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/dialog/BaseDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/txdriver/ui/fragment/dialog/AddressesDialogFragment;)Lcom/activeandroid/widget/ModelAdapter;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/txdriver/ui/fragment/dialog/AddressesDialogFragment;->mAddressesAdapter:Lcom/activeandroid/widget/ModelAdapter;

    return-object p0
.end method

.method public static newInstance(J)Lcom/txdriver/ui/fragment/dialog/AddressesDialogFragment;
    .locals 3

    .line 39
    new-instance v0, Lcom/txdriver/ui/fragment/dialog/AddressesDialogFragment;

    invoke-direct {v0}, Lcom/txdriver/ui/fragment/dialog/AddressesDialogFragment;-><init>()V

    .line 40
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "id_arg"

    .line 41
    invoke-virtual {v1, v2, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 42
    invoke-virtual {v0, v1}, Lcom/txdriver/ui/fragment/dialog/AddressesDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static show(Lcom/txdriver/ui/activity/BaseActivity;J)V
    .locals 2

    .line 28
    const-class v0, Lcom/txdriver/ui/fragment/dialog/AddressesDialogFragment;

    invoke-static {p1, p2}, Lcom/txdriver/ui/fragment/dialog/AddressesDialogFragment;->newInstance(J)Lcom/txdriver/ui/fragment/dialog/AddressesDialogFragment;

    move-result-object p1

    .line 29
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/BaseActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    .line 30
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/BaseActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 32
    invoke-virtual {p2, p0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    :cond_0
    const/4 p0, 0x0

    .line 34
    invoke-virtual {p2, p0}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 35
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/txdriver/ui/fragment/dialog/AddressesDialogFragment;->show(Landroidx/fragment/app/FragmentTransaction;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    .line 69
    invoke-super {p0, p1}, Lcom/txdriver/ui/fragment/dialog/BaseDialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/AddressesDialogFragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p1

    new-instance v0, Lcom/txdriver/ui/loader/AddressesLoaderCallbacks;

    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/AddressesDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/txdriver/ui/fragment/dialog/AddressesDialogFragment;->mAddressesAdapter:Lcom/activeandroid/widget/ModelAdapter;

    iget-wide v3, p0, Lcom/txdriver/ui/fragment/dialog/AddressesDialogFragment;->mOrderId:J

    invoke-static {v3, v4}, Lcom/txdriver/db/Address;->getQuery(J)Lcom/activeandroid/query/From;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/txdriver/ui/loader/AddressesLoaderCallbacks;-><init>(Landroid/content/Context;Lcom/activeandroid/widget/ModelAdapter;Lcom/activeandroid/query/From;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 48
    invoke-super {p0, p1}, Lcom/txdriver/ui/fragment/dialog/BaseDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/AddressesDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "id_arg"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/txdriver/ui/fragment/dialog/AddressesDialogFragment;->mOrderId:J

    .line 50
    new-instance p1, Lcom/activeandroid/widget/ModelAdapter;

    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/AddressesDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x1090003

    invoke-direct {p1, v0, v1}, Lcom/activeandroid/widget/ModelAdapter;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/AddressesDialogFragment;->mAddressesAdapter:Lcom/activeandroid/widget/ModelAdapter;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 55
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/AddressesDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f10002e

    .line 56
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/fragment/dialog/AddressesDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/AddressesDialogFragment;->mAddressesAdapter:Lcom/activeandroid/widget/ModelAdapter;

    new-instance v1, Lcom/txdriver/ui/fragment/dialog/AddressesDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/txdriver/ui/fragment/dialog/AddressesDialogFragment$1;-><init>(Lcom/txdriver/ui/fragment/dialog/AddressesDialogFragment;)V

    .line 57
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 64
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
