.class public Lcom/txdriver/utils/UiUtils;
.super Ljava/lang/Object;
.source "UiUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateTabWidth(Lcom/google/android/material/tabs/TabLayout;)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 23
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 24
    invoke-virtual {p0, v1}, Lcom/google/android/material/tabs/TabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 25
    invoke-virtual {v3, v0, v0}, Landroid/view/View;->measure(II)V

    .line 26
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public static dynamicSetTabLayoutMode(Lcom/google/android/material/tabs/TabLayout;Lcom/txdriver/App;)V
    .locals 2

    .line 11
    invoke-static {p0}, Lcom/txdriver/utils/UiUtils;->calculateTabWidth(Lcom/google/android/material/tabs/TabLayout;)I

    move-result v0

    .line 12
    invoke-virtual {p1}, Lcom/txdriver/App;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v1, 0x0

    if-gt v0, p1, :cond_0

    const/4 p1, 0x1

    .line 14
    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->setTabMode(I)V

    .line 15
    invoke-virtual {p0, v1}, Lcom/google/android/material/tabs/TabLayout;->setTabGravity(I)V

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/android/material/tabs/TabLayout;->setTabMode(I)V

    :goto_0
    return-void
.end method
