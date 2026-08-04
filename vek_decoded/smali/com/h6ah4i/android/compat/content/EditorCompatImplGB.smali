.class final Lcom/h6ah4i/android/compat/content/EditorCompatImplGB;
.super Lcom/h6ah4i/android/compat/content/EditorCompatImpl;
.source "EditorCompatImplGB.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/h6ah4i/android/compat/content/EditorCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public putStringSet(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences$Editor;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/SharedPreferences$Editor;"
        }
    .end annotation

    .line 36
    invoke-static {p1, p2, p3}, Lcom/h6ah4i/android/compat/utils/SharedPreferencesJsonStringSetWrapperUtils;->putStringSet(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/util/Set;)Z

    return-object p1
.end method
