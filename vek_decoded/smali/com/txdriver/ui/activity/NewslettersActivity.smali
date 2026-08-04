.class public Lcom/txdriver/ui/activity/NewslettersActivity;
.super Lcom/txdriver/ui/activity/BaseActivity;
.source "NewslettersActivity.java"


# static fields
.field public static final ACTION_NEWSLETTER_OPEN:Ljava/lang/String; = "action_newsletter_open"

.field public static final EXTRA_NEWSLETTER:Ljava/lang/String; = "extra_newsletter"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/txdriver/ui/activity/BaseActivity;-><init>()V

    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .locals 2

    .line 24
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/txdriver/ui/activity/NewslettersActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 25
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 30
    invoke-super {p0, p1}, Lcom/txdriver/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    return-void

    .line 35
    :cond_0
    iget-object p1, p0, Lcom/txdriver/ui/activity/NewslettersActivity;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/txdriver/preferences/Preferences;->setNotificationsNewsCounter(I)V

    .line 36
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object p1

    new-instance v1, Lcom/txdriver/news/NewsEvents$NewsEventCounter;

    invoke-direct {v1, v0}, Lcom/txdriver/news/NewsEvents$NewsEventCounter;-><init>(I)V

    invoke-virtual {p1, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 40
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/NewslettersActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "extra_newsletter"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/txdriver/json/Newsletter;

    if-eqz p1, :cond_1

    .line 42
    iget-object v1, p0, Lcom/txdriver/ui/activity/NewslettersActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v1}, Lcom/txdriver/App;->getNewsletterManager()Lcom/txdriver/news/NewsletterManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/txdriver/news/NewsletterManager;->newsletterRead(Lcom/txdriver/json/Newsletter;)V

    .line 44
    :cond_1
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/NewslettersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "action_newsletter_open"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    .line 45
    invoke-static {p1}, Lcom/txdriver/ui/fragment/NewsletterFragment;->newInstance(Lcom/txdriver/json/Newsletter;)Lcom/txdriver/ui/fragment/NewsletterFragment;

    move-result-object v1

    .line 46
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lcom/txdriver/ui/fragment/NewsletterFragment;->TAG:Ljava/lang/String;

    aput-object v4, v3, v0

    const/4 v0, 0x1

    iget p1, p1, Lcom/txdriver/json/Newsletter;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v0

    const-string p1, "%s%d"

    invoke-static {v2, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 48
    :cond_2
    new-instance v1, Lcom/txdriver/ui/fragment/NewslettersFragment;

    invoke-direct {v1}, Lcom/txdriver/ui/fragment/NewslettersFragment;-><init>()V

    .line 49
    sget-object p1, Lcom/txdriver/ui/fragment/NewslettersFragment;->TAG:Ljava/lang/String;

    .line 51
    :goto_0
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/NewslettersActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const v2, 0x1020002

    invoke-virtual {v0, v2, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public openNewsletter(Lcom/txdriver/json/Newsletter;)V
    .locals 3

    .line 55
    invoke-static {p1}, Lcom/txdriver/ui/fragment/NewsletterFragment;->newInstance(Lcom/txdriver/json/Newsletter;)Lcom/txdriver/ui/fragment/NewsletterFragment;

    move-result-object p1

    .line 56
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/NewslettersActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget-object v1, Lcom/txdriver/ui/fragment/NewsletterFragment;->TAG:Ljava/lang/String;

    const v2, 0x1020002

    .line 57
    invoke-virtual {v0, v2, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 59
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method
