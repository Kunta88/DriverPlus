.class public Lcom/txdriver/ui/activity/photocontrol/PhotoControlProceedTaskActivity;
.super Lcom/txdriver/ui/activity/BaseActivity;
.source "PhotoControlProceedTaskActivity.java"

# interfaces
.implements Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$SetImageResult;


# instance fields
.field private activeTask:Lcom/txdriver/json/PhotoControlTask;

.field private adapter:Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter;

.field private taskDateToCompleteTextView:Landroid/widget/TextView;

.field private taskDescriptionTextView:Landroid/widget/TextView;

.field private taskImagesRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private taskNameTextView:Landroid/widget/TextView;

.field private taskTimeToCompleteTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/txdriver/ui/activity/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/txdriver/ui/activity/photocontrol/PhotoControlProceedTaskActivity;)Lcom/txdriver/json/PhotoControlTask;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/txdriver/ui/activity/photocontrol/PhotoControlProceedTaskActivity;->activeTask:Lcom/txdriver/json/PhotoControlTask;

    return-object p0
.end method

.method static synthetic access$100(Lcom/txdriver/ui/activity/photocontrol/PhotoControlProceedTaskActivity;[Lcom/txdriver/json/PhotoControlImage;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/txdriver/ui/activity/photocontrol/PhotoControlProceedTaskActivity;->startCamera([Lcom/txdriver/json/PhotoControlImage;I)V

    return-void
.end method

.method private initCameraPreviews()V
    .locals 5

    .line 56
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/photocontrol/PhotoControlProceedTaskActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const v1, 0x7f100254

    invoke-virtual {p0, v1}, Lcom/txdriver/ui/activity/photocontrol/PhotoControlProceedTaskActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/photocontrol/PhotoControlProceedTaskActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v1}, Lcom/txdriver/ui/activity/photocontrol/PhotoControlProceedTaskActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/txdriver/json/PhotoControlTask;

    iput-object v0, p0, Lcom/txdriver/ui/activity/photocontrol/PhotoControlProceedTaskActivity;->activeTask:Lcom/txdriver/json/PhotoControlTask;

    goto :goto_0

    :cond_0
    const v0, 0x7f100264

    .line 59
    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 60
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/photocontrol/PhotoControlProceedTaskActivity;->finish()V

    .line 62
    :goto_0
    iget-object v0, p0, Lcom/txdriver/ui/activity/photocontrol/PhotoControlProceedTaskActivity;->taskNameTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/txdriver/ui/activity/photocontrol/PhotoControlProceedTaskActivity;->activeTask:Lcom/txdriver/json/PhotoControlTask;

    iget-object v1, v1, Lcom/txdriver/json/PhotoControlTask;->photoControlTaskName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v0, p0, Lcom/txdriver/ui/activity/photocontrol/PhotoControlProceedTaskActivity;->taskDateToCompleteTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/txdriver/ui/activity/photocontrol/PhotoControlProceedTaskActivity;->activeTask:Lcom/txdriver/json/PhotoControlTask;

    iget-object v3, v1, Lcom/txdriver/json/PhotoControlTask;->photoControlTaskCreateDate:Ljava/lang/String;

    iget-object v4, p0, Lcom/txdriver/ui/activity/photocontrol/PhotoControlProceedTaskActivity;->activeTask:Lcom/txdriver/json/PhotoControlTask;

    iget v4, v4, Lcom/txdriver/json/PhotoControlTask;->photoControlTaskTimeToComplete:I

    invoke-virtual {v1, v3, v4}, Lcom/txdriver/json/PhotoControlTask;->getTaskDateToLeft(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v0, p0, Lcom/txdriver/ui/activity/photocontrol/PhotoControlProceedTaskActivity;->taskTimeToCompleteTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/txdriver/ui/activity/photocontrol/PhotoControlProceedTaskActivity;->activeTask:Lcom/txdriver/json/PhotoControlTask;

    iget-object v3, v1, Lcom/txdriver/json/PhotoControlTask;->photoControlTaskCreateDate:Ljava/lang/String;

    iget-object v4, p0, Lcom/txdriver/ui/activity/photocontrol/PhotoControlProceedTaskActivity;->activeTask:Lcom/txdriver/json/PhotoControlTask;

    iget v4, v4, Lcom/txdriver/json/PhotoControlTask;->photoControlTaskTimeToComplete:I

    invoke-virtual {v1, v3, v4}, Lcom/txdriver/json/PhotoControlTask;->getTaskTimeToLeft(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v0, p0, Lcom/txdriver/ui/activity/photocontrol/PhotoControlProceedTaskActivity;->taskDescriptionTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/txdriver/ui/activity/photocontrol/PhotoControlProceedTaskActivity;->activeTask:Lcom/txdriver/json/PhotoControlTask;

    iget-object v1, v1, Lcom/txdriver/json/PhotoControlTask;->photoControlTaskDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    new-instance v0, Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter;

    iget-object v1, p0, Lcom/txdriver/ui/activity/photocontrol/PhotoControlProceedTaskActivity;->activeTask:Lcom/txdriver/json/PhotoControlTask;

    iget-object v1, v1, Lcom/txdriver/json/PhotoControlTask;->photoControlImages:[Lcom/txdriver/json/PhotoControlImage;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, p0}, Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter;-><init>([Lcom/txdriver/json/PhotoControlImage;ZLandroid/content/Context;)V

    iput-object v0, p0, Lcom/txdriver/ui/activity/photocontrol/PhotoControlProceedTaskActivity;->adapter:Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter;

    .line 67
    new-instance v1, Lcom/txdriver/ui/activity/photocontrol/PhotoControlProceedTaskActivity$2;

    invoke-direct {v1, p0}, Lcom/txdriver/ui/activity/photocontrol/PhotoControlProceedTaskActivity$2;-><init>(Lcom/txdriver/ui/activity/photocontrol/PhotoControlProceedTaskActivity;)V

    invoke-virtual {v0, v1}, Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter;->setOnImageClickListener(Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter$OnImageClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/txdriver/ui/activity/photocontrol/PhotoControlProceedTaskActivity;->taskImagesRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v4, 0x3

    invoke-direct {v1, p0, v4, v3, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 75
    iget-object v0, p0, Lcom/txdriver/ui/activity/photocontrol/PhotoControlProceedTaskActivity;->taskImagesRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/txdriver/ui/activity/photocontrol/PhotoControlProceedTaskActivity;->adapter:Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private startCamera([Lcom/txdriver/json/PhotoControlImage;I)V
    .locals 3

    .line 80
    new-instance v0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;

    invoke-direct {v0}, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;-><init>()V

    .line 81
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "taskImages"

    .line 82
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    const-string p1, "image_position"

    .line 83
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 84
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 85
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/photocontrol/PhotoControlProceedTaskActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 86
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    const v1, 0x1020002

    .line 85
    invoke-virtual {p1, v1, v0, p2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const/4 p2, 0x0

    .line 86
    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 36
    invoke-super {p0, p1}, Lcom/txdriver/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/photocontrol/PhotoControlProceedTaskActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/Window;->requestFeature(I)Z

    .line 38
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/photocontrol/PhotoControlProceedTaskActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar;->hide()V

    const p1, 0x7f0c001e

    .line 39
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/photocontrol/PhotoControlProceedTaskActivity;->setContentView(I)V

    const p1, 0x7f090321

    .line 40
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/photocontrol/PhotoControlProceedTaskActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/txdriver/ui/activity/photocontrol/PhotoControlProceedTaskActivity;->taskNameTextView:Landroid/widget/TextView;

    const p1, 0x7f090314

    .line 41
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/photocontrol/PhotoControlProceedTaskActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/txdriver/ui/activity/photocontrol/PhotoControlProceedTaskActivity;->taskDateToCompleteTextView:Landroid/widget/TextView;

    const p1, 0x7f090315

    .line 42
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/photocontrol/PhotoControlProceedTaskActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/txdriver/ui/activity/photocontrol/PhotoControlProceedTaskActivity;->taskTimeToCompleteTextView:Landroid/widget/TextView;

    const p1, 0x7f09031b

    .line 43
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/photocontrol/PhotoControlProceedTaskActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/txdriver/ui/activity/photocontrol/PhotoControlProceedTaskActivity;->taskDescriptionTextView:Landroid/widget/TextView;

    const p1, 0x7f090249

    .line 44
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/photocontrol/PhotoControlProceedTaskActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/txdriver/ui/activity/photocontrol/PhotoControlProceedTaskActivity;->taskImagesRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const p1, 0x7f09007a

    .line 45
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/photocontrol/PhotoControlProceedTaskActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 46
    new-instance v0, Lcom/txdriver/ui/activity/photocontrol/PhotoControlProceedTaskActivity$1;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/activity/photocontrol/PhotoControlProceedTaskActivity$1;-><init>(Lcom/txdriver/ui/activity/photocontrol/PhotoControlProceedTaskActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    invoke-direct {p0}, Lcom/txdriver/ui/activity/photocontrol/PhotoControlProceedTaskActivity;->initCameraPreviews()V

    return-void
.end method

.method public setNewImageToImageView(ILjava/lang/String;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/txdriver/ui/activity/photocontrol/PhotoControlProceedTaskActivity;->activeTask:Lcom/txdriver/json/PhotoControlTask;

    iget-object v0, v0, Lcom/txdriver/json/PhotoControlTask;->photoControlImages:[Lcom/txdriver/json/PhotoControlImage;

    aget-object p1, v0, p1

    invoke-virtual {p1, p2}, Lcom/txdriver/json/PhotoControlImage;->setSentByDriverImageUrl(Ljava/lang/String;)V

    .line 92
    iget-object p1, p0, Lcom/txdriver/ui/activity/photocontrol/PhotoControlProceedTaskActivity;->adapter:Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter;

    invoke-virtual {p1}, Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter;->notifyDataSetChanged()V

    return-void
.end method
