.class public Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat;
.super Landroid/preference/DialogPreference;
.source "MultiSelectListPreferenceCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat$SavedState;
    }
.end annotation


# instance fields
.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mNewValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferenceChanged:Z

.field private mValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, v0}, Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat;->mValues:Ljava/util/Set;

    .line 58
    sget-object v0, Lcom/h6ah4i/android/multiselectlistpreferencecompat/R$styleable;->MultiSelectListPreferenceCompat:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 61
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_2

    .line 63
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 64
    sget v2, Lcom/h6ah4i/android/multiselectlistpreferencecompat/R$styleable;->MultiSelectListPreferenceCompat_android_entries:I

    if-ne v1, v2, :cond_0

    .line 65
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat;->mEntries:[Ljava/lang/CharSequence;

    goto :goto_1

    .line 66
    :cond_0
    sget v2, Lcom/h6ah4i/android/multiselectlistpreferencecompat/R$styleable;->MultiSelectListPreferenceCompat_android_entryValues:I

    if-ne v1, v2, :cond_1

    .line 67
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat;->mEntryValues:[Ljava/lang/CharSequence;

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat;->mPreferenceChanged:Z

    return p0
.end method

.method static synthetic access$002(Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat;Z)Z
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat;->mPreferenceChanged:Z

    return p1
.end method

.method static synthetic access$100(Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat;)[Ljava/lang/CharSequence;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat;->mEntryValues:[Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$200(Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat;)Ljava/util/Set;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat;->mNewValues:Ljava/util/Set;

    return-object p0
.end method

.method private getSelectedItems(Ljava/util/Set;)[Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)[Z"
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat;->mEntryValues:[Ljava/lang/CharSequence;

    .line 214
    array-length v1, v0

    .line 215
    new-array v2, v1, [Z

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 218
    aget-object v4, v0, v3

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    aput-boolean v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method


# virtual methods
.method public findIndexOfValue(Ljava/lang/String;)I
    .locals 2

    if-eqz p1, :cond_1

    .line 170
    iget-object v0, p0, Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 171
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 172
    iget-object v1, p0, Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getEntries()[Ljava/lang/CharSequence;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getEntryValues()[Ljava/lang/CharSequence;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat;->mEntryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected getPersistedStringSetCompat(Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 363
    invoke-static {p0, p1}, Lcom/h6ah4i/android/compat/preference/PreferenceCompat;->getPersistedStringSet(Landroid/preference/Preference;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public getValues()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat;->mValues:Ljava/util/Set;

    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 1

    .line 226
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    if-eqz p1, :cond_0

    .line 228
    iget-boolean p1, p0, Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat;->mPreferenceChanged:Z

    if-eqz p1, :cond_0

    .line 229
    iget-object p1, p0, Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat;->mNewValues:Ljava/util/Set;

    .line 230
    invoke-virtual {p0, p1}, Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {p0, p1}, Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat;->setValues(Ljava/util/Set;)V

    :cond_0
    const/4 p1, 0x0

    .line 234
    iput-object p1, p0, Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat;->mNewValues:Ljava/util/Set;

    const/4 p1, 0x0

    .line 235
    iput-boolean p1, p0, Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat;->mPreferenceChanged:Z

    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 3

    .line 240
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    .line 241
    array-length p2, p1

    .line 242
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    .line 245
    aget-object v2, p1, v1

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 3

    .line 182
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 184
    iget-object v0, p0, Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat;->mNewValues:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 191
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat;->mNewValues:Ljava/util/Set;

    .line 192
    iget-object v1, p0, Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat;->mValues:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    .line 193
    iput-boolean v0, p0, Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat;->mPreferenceChanged:Z

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat;->mNewValues:Ljava/util/Set;

    invoke-direct {p0, v0}, Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat;->getSelectedItems(Ljava/util/Set;)[Z

    move-result-object v0

    .line 197
    iget-object v1, p0, Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat;->mEntries:[Ljava/lang/CharSequence;

    new-instance v2, Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat$1;

    invoke-direct {v2, p0}, Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat$1;-><init>(Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat;)V

    invoke-virtual {p1, v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    return-void

    .line 185
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "MultiSelectListPreference requires an entries array and an entryValues array."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 270
    instance-of v0, p1, Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat$SavedState;

    if-eqz v0, :cond_2

    .line 271
    check-cast p1, Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat$SavedState;

    .line 272
    iget-object v0, p1, Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat$SavedState;->values:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p1, Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat$SavedState;->values:Ljava/util/Set;

    iput-object v0, p0, Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat;->mValues:Ljava/util/Set;

    .line 275
    :cond_0
    iget-object v0, p1, Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat$SavedState;->newValues:Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 276
    iget-object v0, p1, Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat$SavedState;->newValues:Ljava/util/Set;

    iput-object v0, p0, Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat;->mNewValues:Ljava/util/Set;

    .line 278
    :cond_1
    iget-boolean v0, p1, Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat$SavedState;->preferenceChanged:Z

    iput-boolean v0, p0, Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat;->mPreferenceChanged:Z

    .line 280
    invoke-virtual {p1}, Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0

    .line 282
    :cond_2
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 260
    invoke-super {p0}, Landroid/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 261
    new-instance v1, Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat$SavedState;

    invoke-direct {v1, v0}, Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 262
    iget-object v0, p0, Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat;->mValues:Ljava/util/Set;

    iput-object v0, v1, Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat$SavedState;->values:Ljava/util/Set;

    .line 263
    iget-object v0, p0, Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat;->mNewValues:Ljava/util/Set;

    iput-object v0, v1, Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat$SavedState;->newValues:Ljava/util/Set;

    .line 264
    iget-boolean v0, p0, Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat;->mPreferenceChanged:Z

    iput-boolean v0, v1, Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat$SavedState;->preferenceChanged:Z

    return-object v1
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 254
    iget-object p1, p0, Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat;->mValues:Ljava/util/Set;

    invoke-virtual {p0, p1}, Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat;->getPersistedStringSetCompat(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    check-cast p1, Ljava/util/Set;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat;->setValues(Ljava/util/Set;)V

    return-void
.end method

.method protected persistStringSetCompat(Ljava/util/Set;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 359
    invoke-static {p0, p1}, Lcom/h6ah4i/android/compat/preference/PreferenceCompat;->persistStringSet(Landroid/preference/Preference;Ljava/util/Set;)Z

    move-result p1

    return p1
.end method

.method public setEntries(I)V
    .locals 1

    .line 96
    invoke-virtual {p0}, Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat;->setEntries([Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat;->mEntries:[Ljava/lang/CharSequence;

    return-void
.end method

.method public setEntryValues(I)V
    .locals 1

    .line 125
    invoke-virtual {p0}, Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat;->setEntryValues([Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEntryValues([Ljava/lang/CharSequence;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat;->mEntryValues:[Ljava/lang/CharSequence;

    return-void
.end method

.method public setValues(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat;->mValues:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 146
    iget-object v0, p0, Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat;->mValues:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 151
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 152
    invoke-virtual {p0, v0}, Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat;->persistStringSetCompat(Ljava/util/Set;)Z

    return-void
.end method
