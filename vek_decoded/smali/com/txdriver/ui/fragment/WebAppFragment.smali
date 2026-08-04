.class public Lcom/txdriver/ui/fragment/WebAppFragment;
.super Lcom/txdriver/ui/fragment/BaseFragment;
.source "WebAppFragment.java"


# static fields
.field public static final ARG_ORDER_ID:Ljava/lang/String; = "arg_order_id"

.field public static final ARG_URL:Ljava/lang/String; = "arg_url"


# instance fields
.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/BaseFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/txdriver/ui/fragment/WebAppFragment;
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-static {p0, v0}, Lcom/txdriver/ui/fragment/WebAppFragment;->newInstance(Ljava/lang/String;I)Lcom/txdriver/ui/fragment/WebAppFragment;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance(Ljava/lang/String;I)Lcom/txdriver/ui/fragment/WebAppFragment;
    .locals 3

    .line 36
    new-instance v0, Lcom/txdriver/ui/fragment/WebAppFragment;

    invoke-direct {v0}, Lcom/txdriver/ui/fragment/WebAppFragment;-><init>()V

    .line 37
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "arg_url"

    .line 38
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "arg_order_id"

    .line 39
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 40
    invoke-virtual {v0, v1}, Lcom/txdriver/ui/fragment/WebAppFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public buildUrl()Ljava/lang/String;
    .locals 8

    .line 58
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/WebAppFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "arg_url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/WebAppFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "arg_order_id"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "\\?"

    .line 60
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 61
    aget-object v2, v0, v3

    .line 62
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 63
    array-length v5, v0

    const-string v6, "&"

    const/4 v7, 0x1

    if-le v5, v7, :cond_0

    .line 64
    aget-object v0, v0, v7

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_0
    if-lez v1, :cond_1

    .line 67
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v3

    const-string v1, "order_id=%d"

    invoke-static {v0, v1, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/txdriver/ui/fragment/WebAppFragment;->app:Lcom/txdriver/App;

    invoke-virtual {v5}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/txdriver/preferences/Preferences;->getDriverId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v3

    const-string v5, "driver_id=%d"

    invoke-static {v0, v5, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/txdriver/ui/fragment/WebAppFragment;->app:Lcom/txdriver/App;

    invoke-static {v5}, Lcom/txdriver/utils/Utils;->getApplicationVersion(Landroid/content/Context;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v3

    const-string v5, "app_version=%d"

    invoke-static {v0, v5, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/txdriver/ui/fragment/WebAppFragment;->app:Lcom/txdriver/App;

    invoke-static {v5}, Lcom/txdriver/utils/Utils;->getDeviceId(Landroid/content/Context;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v3

    const-string v5, "device_id=%d"

    invoke-static {v0, v5, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v3

    .line 72
    invoke-static {v6, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const-string v1, "%s?%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p2, 0x7f0c0063

    const/4 p3, 0x0

    .line 46
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09035a

    .line 47
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/webkit/WebView;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/WebAppFragment;->webView:Landroid/webkit/WebView;

    .line 48
    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    const/4 p3, 0x1

    .line 49
    invoke-virtual {p2, p3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 50
    iget-object p2, p0, Lcom/txdriver/ui/fragment/WebAppFragment;->webView:Landroid/webkit/WebView;

    new-instance p3, Lcom/txdriver/WebAppInterface;

    iget-object v0, p0, Lcom/txdriver/ui/fragment/WebAppFragment;->app:Lcom/txdriver/App;

    invoke-direct {p3, v0}, Lcom/txdriver/WebAppInterface;-><init>(Landroid/content/Context;)V

    const-string v0, "android"

    invoke-virtual {p2, p3, v0}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object p2, p0, Lcom/txdriver/ui/fragment/WebAppFragment;->webView:Landroid/webkit/WebView;

    new-instance p3, Landroid/webkit/WebViewClient;

    invoke-direct {p3}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {p2, p3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 52
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/WebAppFragment;->buildUrl()Ljava/lang/String;

    move-result-object p2

    .line 53
    iget-object p3, p0, Lcom/txdriver/ui/fragment/WebAppFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {p3, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-object p1
.end method
