.class public Lcom/txdriver/ui/fragment/dialog/SendMessageDialogFragment;
.super Lcom/txdriver/ui/fragment/dialog/BaseDialogFragment;
.source "SendMessageDialogFragment.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/ui/fragment/dialog/BaseDialogFragment;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Ljava/util/List<",
        "Lcom/txdriver/db/Message;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mItemClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mMainService:Lcom/txdriver/service/MainService;

.field private mMessageModelAdapter:Lcom/activeandroid/widget/ModelAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/activeandroid/widget/ModelAdapter<",
            "Lcom/txdriver/db/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/dialog/BaseDialogFragment;-><init>()V

    .line 32
    new-instance v0, Lcom/txdriver/ui/fragment/dialog/SendMessageDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/fragment/dialog/SendMessageDialogFragment$1;-><init>(Lcom/txdriver/ui/fragment/dialog/SendMessageDialogFragment;)V

    iput-object v0, p0, Lcom/txdriver/ui/fragment/dialog/SendMessageDialogFragment;->mItemClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/txdriver/ui/fragment/dialog/SendMessageDialogFragment;)Lcom/activeandroid/widget/ModelAdapter;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/txdriver/ui/fragment/dialog/SendMessageDialogFragment;->mMessageModelAdapter:Lcom/activeandroid/widget/ModelAdapter;

    return-object p0
.end method

.method public static newInstance()Lcom/txdriver/ui/fragment/dialog/SendMessageDialogFragment;
    .locals 1

    .line 46
    new-instance v0, Lcom/txdriver/ui/fragment/dialog/SendMessageDialogFragment;

    invoke-direct {v0}, Lcom/txdriver/ui/fragment/dialog/SendMessageDialogFragment;-><init>()V

    return-object v0
.end method

.method public static show(Lcom/txdriver/ui/activity/BaseActivity;)V
    .locals 1

    .line 41
    invoke-static {}, Lcom/txdriver/ui/fragment/dialog/SendMessageDialogFragment;->newInstance()Lcom/txdriver/ui/fragment/dialog/SendMessageDialogFragment;

    move-result-object v0

    .line 42
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/BaseActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/txdriver/utils/Utils;->showDialog(Landroidx/fragment/app/DialogFragment;Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 76
    invoke-super {p0, p1}, Lcom/txdriver/ui/fragment/dialog/BaseDialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/SendMessageDialogFragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 51
    invoke-super {p0, p1}, Lcom/txdriver/ui/fragment/dialog/BaseDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 52
    new-instance p1, Lcom/activeandroid/widget/ModelAdapter;

    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/SendMessageDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x1090003

    invoke-direct {p1, v0, v1}, Lcom/activeandroid/widget/ModelAdapter;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/SendMessageDialogFragment;->mMessageModelAdapter:Lcom/activeandroid/widget/ModelAdapter;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 57
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/SendMessageDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 58
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/SendMessageDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100130

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/SendMessageDialogFragment;->mMessageModelAdapter:Lcom/activeandroid/widget/ModelAdapter;

    iget-object v1, p0, Lcom/txdriver/ui/fragment/dialog/SendMessageDialogFragment;->mItemClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 59
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f100079

    .line 60
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/fragment/dialog/SendMessageDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/txdriver/ui/fragment/dialog/SendMessageDialogFragment$3;

    invoke-direct {v1, p0}, Lcom/txdriver/ui/fragment/dialog/SendMessageDialogFragment$3;-><init>(Lcom/txdriver/ui/fragment/dialog/SendMessageDialogFragment;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/txdriver/ui/fragment/dialog/SendMessageDialogFragment$2;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/fragment/dialog/SendMessageDialogFragment$2;-><init>(Lcom/txdriver/ui/fragment/dialog/SendMessageDialogFragment;)V

    const v1, 0x7f100166

    .line 65
    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 71
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lcom/txdriver/db/Message;",
            ">;>;"
        }
    .end annotation

    .line 82
    new-instance p1, Lcom/activeandroid/ModelLoader;

    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/SendMessageDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/txdriver/db/Message;

    .line 83
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/activeandroid/ModelLoader;-><init>(Landroid/content/Context;Lcom/activeandroid/query/From;)V

    return-object p1
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 29
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/txdriver/ui/fragment/dialog/SendMessageDialogFragment;->onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lcom/txdriver/db/Message;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/txdriver/db/Message;",
            ">;)V"
        }
    .end annotation

    .line 89
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/SendMessageDialogFragment;->mMessageModelAdapter:Lcom/activeandroid/widget/ModelAdapter;

    invoke-virtual {p1, p2}, Lcom/activeandroid/widget/ModelAdapter;->setData(Ljava/util/List;)V

    .line 90
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/SendMessageDialogFragment;->mMessageModelAdapter:Lcom/activeandroid/widget/ModelAdapter;

    invoke-virtual {p1}, Lcom/activeandroid/widget/ModelAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lcom/txdriver/db/Message;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method
