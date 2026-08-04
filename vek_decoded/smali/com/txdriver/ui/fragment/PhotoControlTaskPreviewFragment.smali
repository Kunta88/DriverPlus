.class public Lcom/txdriver/ui/fragment/PhotoControlTaskPreviewFragment;
.super Lcom/txdriver/ui/fragment/BaseFragment;
.source "PhotoControlTaskPreviewFragment.java"


# instance fields
.field private dateLeftTextView:Landroid/widget/TextView;

.field private images:[Lcom/txdriver/json/PhotoControlImage;

.field private photoControlTask:Lcom/txdriver/json/PhotoControlTask;

.field private recyclerViewImages:Landroidx/recyclerview/widget/RecyclerView;

.field private taskDescriptionTextView:Landroid/widget/TextView;

.field private taskNameTextView:Landroid/widget/TextView;

.field private timeLeftTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/txdriver/ui/fragment/PhotoControlTaskPreviewFragment;)Lcom/txdriver/json/PhotoControlTask;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskPreviewFragment;->photoControlTask:Lcom/txdriver/json/PhotoControlTask;

    return-object p0
.end method

.method private initViews()V
    .locals 7

    .line 63
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/PhotoControlTaskPreviewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "task"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/PhotoControlTaskPreviewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/PhotoControlTaskPreviewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/txdriver/json/PhotoControlTask;

    iput-object v0, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskPreviewFragment;->photoControlTask:Lcom/txdriver/json/PhotoControlTask;

    .line 65
    iget-object v0, v0, Lcom/txdriver/json/PhotoControlTask;->photoControlImages:[Lcom/txdriver/json/PhotoControlImage;

    iput-object v0, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskPreviewFragment;->images:[Lcom/txdriver/json/PhotoControlImage;

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskPreviewFragment;->timeLeftTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskPreviewFragment;->photoControlTask:Lcom/txdriver/json/PhotoControlTask;

    iget-object v2, v1, Lcom/txdriver/json/PhotoControlTask;->photoControlTaskCreateDate:Ljava/lang/String;

    iget-object v3, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskPreviewFragment;->photoControlTask:Lcom/txdriver/json/PhotoControlTask;

    iget v3, v3, Lcom/txdriver/json/PhotoControlTask;->photoControlTaskTimeToComplete:I

    invoke-virtual {v1, v2, v3}, Lcom/txdriver/json/PhotoControlTask;->getTaskTimeToLeft(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskPreviewFragment;->dateLeftTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskPreviewFragment;->photoControlTask:Lcom/txdriver/json/PhotoControlTask;

    iget-object v2, v1, Lcom/txdriver/json/PhotoControlTask;->photoControlTaskCreateDate:Ljava/lang/String;

    iget-object v3, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskPreviewFragment;->photoControlTask:Lcom/txdriver/json/PhotoControlTask;

    iget v3, v3, Lcom/txdriver/json/PhotoControlTask;->photoControlTaskTimeToComplete:I

    invoke-virtual {v1, v2, v3}, Lcom/txdriver/json/PhotoControlTask;->getTaskDateToLeft(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v0, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskPreviewFragment;->taskNameTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskPreviewFragment;->photoControlTask:Lcom/txdriver/json/PhotoControlTask;

    iget-object v1, v1, Lcom/txdriver/json/PhotoControlTask;->photoControlTaskName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskPreviewFragment;->taskDescriptionTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskPreviewFragment;->photoControlTask:Lcom/txdriver/json/PhotoControlTask;

    iget-object v1, v1, Lcom/txdriver/json/PhotoControlTask;->photoControlTaskDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    new-instance v0, Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter;

    iget-object v1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskPreviewFragment;->images:[Lcom/txdriver/json/PhotoControlImage;

    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/PhotoControlTaskPreviewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter;-><init>([Lcom/txdriver/json/PhotoControlImage;ZLandroid/content/Context;)V

    .line 72
    iget-object v1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskPreviewFragment;->recyclerViewImages:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/PhotoControlTaskPreviewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    const/4 v5, 0x3

    const/4 v6, 0x1

    invoke-direct {v2, v4, v5, v6, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 73
    iget-object v1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskPreviewFragment;->recyclerViewImages:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0060

    const/4 v0, 0x0

    .line 34
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09024b

    .line 35
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskPreviewFragment;->recyclerViewImages:Landroidx/recyclerview/widget/RecyclerView;

    const p2, 0x7f090319

    .line 36
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskPreviewFragment;->timeLeftTextView:Landroid/widget/TextView;

    const p2, 0x7f090318

    .line 37
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskPreviewFragment;->dateLeftTextView:Landroid/widget/TextView;

    const p2, 0x7f090322

    .line 38
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskPreviewFragment;->taskNameTextView:Landroid/widget/TextView;

    const p2, 0x7f09031c

    .line 39
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskPreviewFragment;->taskDescriptionTextView:Landroid/widget/TextView;

    const p2, 0x7f090079

    .line 40
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    const p3, 0x7f09007e

    .line 41
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    .line 43
    new-instance v0, Lcom/txdriver/ui/fragment/PhotoControlTaskPreviewFragment$1;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/fragment/PhotoControlTaskPreviewFragment$1;-><init>(Lcom/txdriver/ui/fragment/PhotoControlTaskPreviewFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    new-instance p2, Lcom/txdriver/ui/fragment/PhotoControlTaskPreviewFragment$2;

    invoke-direct {p2, p0}, Lcom/txdriver/ui/fragment/PhotoControlTaskPreviewFragment$2;-><init>(Lcom/txdriver/ui/fragment/PhotoControlTaskPreviewFragment;)V

    invoke-virtual {p3, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/PhotoControlTaskPreviewFragment;->initViews()V

    return-object p1
.end method
