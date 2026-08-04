.class public Lcom/txdriver/ui/adapter/TabsAdapter;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "TabsAdapter.java"

# interfaces
.implements Landroidx/appcompat/app/ActionBar$TabListener;
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txdriver/ui/adapter/TabsAdapter$TabInfo;
    }
.end annotation


# instance fields
.field private final mActionBar:Landroidx/appcompat/app/ActionBar;

.field private final mContext:Landroid/content/Context;

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/txdriver/ui/adapter/TabsAdapter$TabInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mViewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>(Lcom/txdriver/ui/activity/BaseActivity;Landroidx/viewpager/widget/ViewPager;)V
    .locals 1

    .line 28
    invoke-virtual {p1}, Lcom/txdriver/ui/activity/BaseActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/txdriver/ui/adapter/TabsAdapter;->mTabs:Ljava/util/ArrayList;

    .line 29
    iput-object p1, p0, Lcom/txdriver/ui/adapter/TabsAdapter;->mContext:Landroid/content/Context;

    .line 30
    invoke-virtual {p1}, Lcom/txdriver/ui/activity/BaseActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    iput-object p1, p0, Lcom/txdriver/ui/adapter/TabsAdapter;->mActionBar:Landroidx/appcompat/app/ActionBar;

    .line 31
    iput-object p2, p0, Lcom/txdriver/ui/adapter/TabsAdapter;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 32
    invoke-virtual {p2, p0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 33
    invoke-virtual {p2, p0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method


# virtual methods
.method public addTab(Landroidx/appcompat/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/appcompat/app/ActionBar$Tab;",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 64
    new-instance v0, Lcom/txdriver/ui/adapter/TabsAdapter$TabInfo;

    invoke-direct {v0, p2, p3}, Lcom/txdriver/ui/adapter/TabsAdapter$TabInfo;-><init>(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroidx/appcompat/app/ActionBar$Tab;

    .line 66
    invoke-virtual {p1, p0}, Landroidx/appcompat/app/ActionBar$Tab;->setTabListener(Landroidx/appcompat/app/ActionBar$TabListener;)Landroidx/appcompat/app/ActionBar$Tab;

    .line 67
    iget-object p2, p0, Lcom/txdriver/ui/adapter/TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-virtual {p0}, Lcom/txdriver/ui/adapter/TabsAdapter;->notifyDataSetChanged()V

    .line 69
    iget-object p2, p0, Lcom/txdriver/ui/adapter/TabsAdapter;->mActionBar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {p2, p1}, Landroidx/appcompat/app/ActionBar;->addTab(Landroidx/appcompat/app/ActionBar$Tab;)V

    return-void
.end method

.method public addTab(Landroidx/appcompat/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/appcompat/app/ActionBar$Tab;",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/Bundle;",
            "I)V"
        }
    .end annotation

    .line 73
    new-instance v0, Lcom/txdriver/ui/adapter/TabsAdapter$TabInfo;

    invoke-direct {v0, p2, p3}, Lcom/txdriver/ui/adapter/TabsAdapter$TabInfo;-><init>(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroidx/appcompat/app/ActionBar$Tab;

    .line 75
    invoke-virtual {p1, p0}, Landroidx/appcompat/app/ActionBar$Tab;->setTabListener(Landroidx/appcompat/app/ActionBar$TabListener;)Landroidx/appcompat/app/ActionBar$Tab;

    .line 76
    iget-object p2, p0, Lcom/txdriver/ui/adapter/TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {p2, p4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 77
    iget-object p2, p0, Lcom/txdriver/ui/adapter/TabsAdapter;->mActionBar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {p2, p1, p4}, Landroidx/appcompat/app/ActionBar;->addTab(Landroidx/appcompat/app/ActionBar$Tab;I)V

    .line 78
    invoke-virtual {p0}, Lcom/txdriver/ui/adapter/TabsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/txdriver/ui/adapter/TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/txdriver/ui/adapter/TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/txdriver/ui/adapter/TabsAdapter$TabInfo;

    .line 60
    iget-object v0, p0, Lcom/txdriver/ui/adapter/TabsAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/txdriver/ui/adapter/TabsAdapter$TabInfo;->access$000(Lcom/txdriver/ui/adapter/TabsAdapter$TabInfo;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/txdriver/ui/adapter/TabsAdapter$TabInfo;->access$100(Lcom/txdriver/ui/adapter/TabsAdapter$TabInfo;)Landroid/os/Bundle;

    move-result-object p1

    invoke-static {v0, v1, p1}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/txdriver/ui/adapter/TabsAdapter;->mActionBar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->getNavigationItemCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/txdriver/ui/adapter/TabsAdapter;->mActionBar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setSelectedNavigationItem(I)V

    :cond_0
    return-void
.end method

.method public onTabReselected(Landroidx/appcompat/app/ActionBar$Tab;Landroidx/fragment/app/FragmentTransaction;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Landroidx/appcompat/app/ActionBar$Tab;Landroidx/fragment/app/FragmentTransaction;)V
    .locals 1

    .line 104
    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar$Tab;->getTag()Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    .line 105
    :goto_0
    iget-object v0, p0, Lcom/txdriver/ui/adapter/TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/txdriver/ui/adapter/TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 107
    iget-object v0, p0, Lcom/txdriver/ui/adapter/TabsAdapter;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onTabUnselected(Landroidx/appcompat/app/ActionBar$Tab;Landroidx/fragment/app/FragmentTransaction;)V
    .locals 0

    return-void
.end method

.method public removeTab(Landroidx/appcompat/app/ActionBar$Tab;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/txdriver/ui/adapter/TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 83
    iget-object v0, p0, Lcom/txdriver/ui/adapter/TabsAdapter;->mActionBar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->removeTab(Landroidx/appcompat/app/ActionBar$Tab;)V

    .line 84
    invoke-virtual {p0}, Lcom/txdriver/ui/adapter/TabsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public resetTabs()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 42
    :goto_0
    iget-object v2, p0, Lcom/txdriver/ui/adapter/TabsAdapter;->mActionBar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {v2}, Landroidx/appcompat/app/ActionBar;->getTabCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    const/4 v2, 0x0

    .line 43
    :goto_1
    iget-object v3, p0, Lcom/txdriver/ui/adapter/TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 44
    iget-object v3, p0, Lcom/txdriver/ui/adapter/TabsAdapter;->mActionBar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {v3, v1}, Landroidx/appcompat/app/ActionBar;->getTabAt(I)Landroidx/appcompat/app/ActionBar$Tab;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/appcompat/app/ActionBar$Tab;->getTag()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/txdriver/ui/adapter/TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_1

    .line 45
    iget-object v3, p0, Lcom/txdriver/ui/adapter/TabsAdapter;->mActionBar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {v3, v1}, Landroidx/appcompat/app/ActionBar;->removeTabAt(I)V

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    :cond_3
    iget-object v0, p0, Lcom/txdriver/ui/adapter/TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 53
    invoke-virtual {p0}, Lcom/txdriver/ui/adapter/TabsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public selectTab(I)V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/txdriver/ui/adapter/TabsAdapter;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 114
    iget-object v0, p0, Lcom/txdriver/ui/adapter/TabsAdapter;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_0
    return-void
.end method
