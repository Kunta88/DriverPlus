.class public Lcom/txdriver/ui/fragment/NewsletterFragment;
.super Lcom/txdriver/ui/fragment/BaseFragment;
.source "NewsletterFragment.java"


# static fields
.field public static final ARG_NEWSLETTER:Ljava/lang/String; = "arg_newsletter"

.field public static final TAG:Ljava/lang/String; = "NewsletterFragment"


# instance fields
.field private newsletter:Lcom/txdriver/json/Newsletter;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/BaseFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Lcom/txdriver/json/Newsletter;)Lcom/txdriver/ui/fragment/NewsletterFragment;
    .locals 3

    .line 25
    new-instance v0, Lcom/txdriver/ui/fragment/NewsletterFragment;

    invoke-direct {v0}, Lcom/txdriver/ui/fragment/NewsletterFragment;-><init>()V

    .line 26
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "arg_newsletter"

    .line 27
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 28
    invoke-virtual {v0, v1}, Lcom/txdriver/ui/fragment/NewsletterFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private readNewsletter()V
    .locals 3

    .line 52
    new-instance v0, Lcom/txdriver/http/request/NewsletterReadRequest;

    iget-object v1, p0, Lcom/txdriver/ui/fragment/NewsletterFragment;->app:Lcom/txdriver/App;

    iget-object v2, p0, Lcom/txdriver/ui/fragment/NewsletterFragment;->newsletter:Lcom/txdriver/json/Newsletter;

    iget v2, v2, Lcom/txdriver/json/Newsletter;->id:I

    invoke-direct {v0, v1, v2}, Lcom/txdriver/http/request/NewsletterReadRequest;-><init>(Lcom/txdriver/App;I)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 53
    invoke-virtual {v0, v1}, Lcom/txdriver/http/request/NewsletterReadRequest;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 34
    invoke-super {p0, p1}, Lcom/txdriver/ui/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/NewsletterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "arg_newsletter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/txdriver/json/Newsletter;

    iput-object p1, p0, Lcom/txdriver/ui/fragment/NewsletterFragment;->newsletter:Lcom/txdriver/json/Newsletter;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const p2, 0x7f0c005b

    const/4 p3, 0x0

    const/4 v0, 0x0

    .line 41
    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0901af

    .line 42
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const p3, 0x7f0901ae

    .line 43
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 44
    iget-object v1, p0, Lcom/txdriver/ui/fragment/NewsletterFragment;->newsletter:Lcom/txdriver/json/Newsletter;

    iget-object v1, v1, Lcom/txdriver/json/Newsletter;->title:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f100167

    invoke-virtual {p0, v1}, Lcom/txdriver/ui/fragment/NewsletterFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/txdriver/ui/fragment/NewsletterFragment;->newsletter:Lcom/txdriver/json/Newsletter;

    iget-object v1, v1, Lcom/txdriver/json/Newsletter;->title:Ljava/lang/String;

    :goto_0
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v1, p0, Lcom/txdriver/ui/fragment/NewsletterFragment;->newsletter:Lcom/txdriver/json/Newsletter;

    iget-boolean v1, v1, Lcom/txdriver/json/Newsletter;->readRequired:Z

    if-eqz v1, :cond_1

    const v1, 0x7f080099

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p2, v0, v0, v1, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 46
    iget-object p2, p0, Lcom/txdriver/ui/fragment/NewsletterFragment;->newsletter:Lcom/txdriver/json/Newsletter;

    iget-object p2, p2, Lcom/txdriver/json/Newsletter;->text:Ljava/lang/String;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/NewsletterFragment;->readNewsletter()V

    return-object p1
.end method
