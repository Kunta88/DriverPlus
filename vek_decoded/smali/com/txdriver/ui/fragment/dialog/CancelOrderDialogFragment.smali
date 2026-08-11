.class public Lcom/txdriver/ui/fragment/dialog/CancelOrderDialogFragment;
.super Lcom/txdriver/ui/fragment/dialog/BaseDialogFragment;
.source "CancelOrderDialogFragment.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/ui/fragment/dialog/BaseDialogFragment;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Ljava/util/List<",
        "Lcom/txdriver/db/RejectReason;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final ID_ARG:Ljava/lang/String; = "id_arg"


# instance fields
.field private mMainService:Lcom/txdriver/service/MainService;

.field private mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mOrderId:I

.field private mReasonsModelAdapter:Lcom/activeandroid/widget/ModelAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/activeandroid/widget/ModelAdapter<",
            "Lcom/txdriver/db/RejectReason;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/dialog/BaseDialogFragment;-><init>()V

    .line 32
    new-instance v0, Lcom/txdriver/ui/fragment/dialog/CancelOrderDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/fragment/dialog/CancelOrderDialogFragment$1;-><init>(Lcom/txdriver/ui/fragment/dialog/CancelOrderDialogFragment;)V

    iput-object v0, p0, Lcom/txdriver/ui/fragment/dialog/CancelOrderDialogFragment;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/txdriver/ui/fragment/dialog/CancelOrderDialogFragment;)Lcom/activeandroid/widget/ModelAdapter;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/txdriver/ui/fragment/dialog/CancelOrderDialogFragment;->mReasonsModelAdapter:Lcom/activeandroid/widget/ModelAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/txdriver/ui/fragment/dialog/CancelOrderDialogFragment;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/txdriver/ui/fragment/dialog/CancelOrderDialogFragment;->mOrderId:I

    return p0
.end method

.method public static newInstance(I)Lcom/txdriver/ui/fragment/dialog/CancelOrderDialogFragment;
    .locals 3

    .line 50
    new-instance v0, Lcom/txdriver/ui/fragment/dialog/CancelOrderDialogFragment;

    invoke-direct {v0}, Lcom/txdriver/ui/fragment/dialog/CancelOrderDialogFragment;-><init>()V

    .line 51
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "id_arg"

    .line 52
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 53
    invoke-virtual {v0, v1}, Lcom/txdriver/ui/fragment/dialog/CancelOrderDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static show(Landroidx/fragment/app/FragmentManager;I)Lcom/txdriver/ui/fragment/dialog/CancelOrderDialogFragment;
    .locals 1

    .line 43
    invoke-static {p1}, Lcom/txdriver/ui/fragment/dialog/CancelOrderDialogFragment;->newInstance(I)Lcom/txdriver/ui/fragment/dialog/CancelOrderDialogFragment;

    move-result-object p1

    const/4 v0, 0x1

    .line 44
    invoke-virtual {p1, v0}, Lcom/txdriver/ui/fragment/dialog/CancelOrderDialogFragment;->setCancelable(Z)V

    .line 45
    invoke-static {p1, p0}, Lcom/txdriver/utils/Utils;->showDialog(Landroidx/fragment/app/DialogFragment;Landroidx/fragment/app/FragmentManager;)V

    return-object p1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 75
    invoke-super {p0, p1}, Lcom/txdriver/ui/fragment/dialog/BaseDialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/CancelOrderDialogFragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 59
    invoke-super {p0, p1}, Lcom/txdriver/ui/fragment/dialog/BaseDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/CancelOrderDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "id_arg"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/txdriver/ui/fragment/dialog/CancelOrderDialogFragment;->mOrderId:I

    .line 61
    new-instance p1, Lcom/activeandroid/widget/ModelAdapter;

    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/CancelOrderDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x1090003

    invoke-direct {p1, v0, v1}, Lcom/activeandroid/widget/ModelAdapter;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/CancelOrderDialogFragment;->mReasonsModelAdapter:Lcom/activeandroid/widget/ModelAdapter;

    return-void
.end method

.method public bridge synthetic onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/fragment/dialog/CancelOrderDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroidx/appcompat/app/AppCompatDialog;

    move-result-object p1

    return-object p1
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroidx/appcompat/app/AppCompatDialog;
    .locals 2

    .line 66
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/CancelOrderDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 67
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/CancelOrderDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10018d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/CancelOrderDialogFragment;->mReasonsModelAdapter:Lcom/activeandroid/widget/ModelAdapter;

    iget-object v1, p0, Lcom/txdriver/ui/fragment/dialog/CancelOrderDialogFragment;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 68
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 69
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
            "Lcom/txdriver/db/RejectReason;",
            ">;>;"
        }
    .end annotation

    .line 81
    new-instance p1, Lcom/activeandroid/ModelLoader;

    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/CancelOrderDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/txdriver/db/RejectReason;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/activeandroid/ModelLoader;-><init>(Landroid/content/Context;Lcom/activeandroid/query/From;)V

    return-object p1
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/txdriver/ui/fragment/dialog/CancelOrderDialogFragment;->onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lcom/txdriver/db/RejectReason;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/txdriver/db/RejectReason;",
            ">;)V"
        }
    .end annotation

    .line 86
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/CancelOrderDialogFragment;->mReasonsModelAdapter:Lcom/activeandroid/widget/ModelAdapter;

    invoke-virtual {p1, p2}, Lcom/activeandroid/widget/ModelAdapter;->setData(Ljava/util/List;)V

    .line 87
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/CancelOrderDialogFragment;->mReasonsModelAdapter:Lcom/activeandroid/widget/ModelAdapter;

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
            "Lcom/txdriver/db/RejectReason;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method
