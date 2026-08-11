.class final Lcom/h6ah4i/android/compat/content/SharedPreferencesCompatImplGB;
.super Lcom/h6ah4i/android/compat/content/SharedPreferencesCompatImpl;
.source "SharedPreferencesCompatImplGB.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/h6ah4i/android/compat/content/SharedPreferencesCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getStringSet(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 35
    invoke-static {p1, p2, p3}, Lcom/h6ah4i/android/compat/utils/SharedPreferencesJsonStringSetWrapperUtils;->getStringSet(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method
