.class public final Lcom/h6ah4i/android/compat/preference/PreferenceCompat;
.super Ljava/lang/Object;
.source "PreferenceCompat.java"


# static fields
.field private static final IMPL:Lcom/h6ah4i/android/compat/preference/PreferenceCompatImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 34
    new-instance v0, Lcom/h6ah4i/android/compat/preference/PreferenceCompatImplHoneycomb;

    invoke-direct {v0}, Lcom/h6ah4i/android/compat/preference/PreferenceCompatImplHoneycomb;-><init>()V

    sput-object v0, Lcom/h6ah4i/android/compat/preference/PreferenceCompat;->IMPL:Lcom/h6ah4i/android/compat/preference/PreferenceCompatImpl;

    goto :goto_0

    .line 36
    :cond_0
    new-instance v0, Lcom/h6ah4i/android/compat/preference/PreferenceCompatImplGB;

    invoke-direct {v0}, Lcom/h6ah4i/android/compat/preference/PreferenceCompatImplGB;-><init>()V

    sput-object v0, Lcom/h6ah4i/android/compat/preference/PreferenceCompat;->IMPL:Lcom/h6ah4i/android/compat/preference/PreferenceCompatImpl;

    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPersistedStringSet(Landroid/preference/Preference;Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/Preference;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 76
    sget-object v0, Lcom/h6ah4i/android/compat/preference/PreferenceCompat;->IMPL:Lcom/h6ah4i/android/compat/preference/PreferenceCompatImpl;

    invoke-virtual {v0, p0, p1}, Lcom/h6ah4i/android/compat/preference/PreferenceCompatImpl;->getPersistedStringSet(Landroid/preference/Preference;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static persistStringSet(Landroid/preference/Preference;Ljava/util/Set;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/Preference;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 58
    sget-object v0, Lcom/h6ah4i/android/compat/preference/PreferenceCompat;->IMPL:Lcom/h6ah4i/android/compat/preference/PreferenceCompatImpl;

    invoke-virtual {v0, p0, p1}, Lcom/h6ah4i/android/compat/preference/PreferenceCompatImpl;->persistStringSet(Landroid/preference/Preference;Ljava/util/Set;)Z

    move-result p0

    return p0
.end method
