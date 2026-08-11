.class public Lcom/txdriver/ui/fragment/ChatFragment;
.super Lcom/txdriver/ui/fragment/BaseFragment;
.source "ChatFragment.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/ui/fragment/BaseFragment;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Ljava/util/List<",
        "Lcom/txdriver/db/ChatMessage;",
        ">;>;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field private static final LOADER_ID:I

.field public static final TAG:Ljava/lang/String; = "ChatFragment"


# instance fields
.field private adapter:Lcom/txdriver/ui/adapter/ChatMessageAdapter;

.field private emptyTextView:Landroid/widget/TextView;

.field private listView:Landroid/widget/ListView;

.field private messageEditText:Landroid/widget/EditText;

.field private sendButton:Landroid/widget/ImageButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcom/txdriver/ui/fragment/ChatFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/txdriver/ui/fragment/ChatFragment;->LOADER_ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 38
    invoke-super {p0, p1}, Lcom/txdriver/ui/fragment/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 39
    new-instance p1, Lcom/txdriver/ui/adapter/ChatMessageAdapter;

    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/ChatFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/txdriver/ui/adapter/ChatMessageAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/txdriver/ui/fragment/ChatFragment;->adapter:Lcom/txdriver/ui/adapter/ChatMessageAdapter;

    .line 40
    iget-object v0, p0, Lcom/txdriver/ui/fragment/ChatFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 41
    iget-object p1, p0, Lcom/txdriver/ui/fragment/ChatFragment;->listView:Landroid/widget/ListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 42
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/ChatFragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p1

    sget v1, Lcom/txdriver/ui/fragment/ChatFragment;->LOADER_ID:I

    invoke-virtual {p1, v1, v0, p0}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 77
    iget-object p1, p0, Lcom/txdriver/ui/fragment/ChatFragment;->messageEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    .line 78
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/txdriver/ui/fragment/ChatFragment;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getClient()Lcom/txdriver/socket/Client;

    move-result-object v0

    new-instance v1, Lcom/txdriver/socket/packet/MessagePacket;

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/txdriver/socket/packet/MessagePacket;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/txdriver/socket/Client;->send(Lcom/txdriver/socket/Packet;)V

    .line 82
    iget-object p1, p0, Lcom/txdriver/ui/fragment/ChatFragment;->messageEditText:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lcom/txdriver/db/ChatMessage;",
            ">;>;"
        }
    .end annotation

    .line 58
    new-instance p1, Lcom/activeandroid/ModelLoader;

    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/ChatFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {}, Lcom/txdriver/db/ChatMessage;->getQuery()Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/activeandroid/ModelLoader;-><init>(Landroid/content/Context;Lcom/activeandroid/query/From;)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0056

    const/4 v0, 0x0

    .line 47
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x102000a

    .line 48
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/ChatFragment;->listView:Landroid/widget/ListView;

    const p2, 0x7f09008c

    .line 49
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/ChatFragment;->messageEditText:Landroid/widget/EditText;

    const p2, 0x7f09008b

    .line 50
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/ChatFragment;->sendButton:Landroid/widget/ImageButton;

    .line 51
    invoke-virtual {p2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x1020004

    .line 52
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/ChatFragment;->emptyTextView:Landroid/widget/TextView;

    return-object p1
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/txdriver/ui/fragment/ChatFragment;->onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lcom/txdriver/db/ChatMessage;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/txdriver/db/ChatMessage;",
            ">;)V"
        }
    .end annotation

    .line 63
    iget-object p1, p0, Lcom/txdriver/ui/fragment/ChatFragment;->emptyTextView:Landroid/widget/TextView;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 64
    iget-object p1, p0, Lcom/txdriver/ui/fragment/ChatFragment;->adapter:Lcom/txdriver/ui/adapter/ChatMessageAdapter;

    invoke-virtual {p1, p2}, Lcom/txdriver/ui/adapter/ChatMessageAdapter;->setObjects(Ljava/util/List;)V

    .line 65
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 66
    iget-object p1, p0, Lcom/txdriver/ui/fragment/ChatFragment;->listView:Landroid/widget/ListView;

    iget-object p2, p0, Lcom/txdriver/ui/fragment/ChatFragment;->adapter:Lcom/txdriver/ui/adapter/ChatMessageAdapter;

    invoke-virtual {p2}, Lcom/txdriver/ui/adapter/ChatMessageAdapter;->getCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setSelection(I)V

    :cond_1
    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lcom/txdriver/db/ChatMessage;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method
