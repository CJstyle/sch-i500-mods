.class public Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;
.super Landroid/preference/PreferenceActivity;
.source "AxT9OptionWritingLanguage.java"


# instance fields
.field private final DEBUG:Z

.field private final ERROR:Z

.field private final INFO:Z

.field private final PREFERENCE_KEY_SELECT_LANGUAGE:Ljava/lang/String;

.field private final PREFERENCE_KEY_SELECT_LANGUAGE_LIST:Ljava/lang/String;

.field langListclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field private mCheckedLangIndex:I

.field private mCheckedNum:I

.field private mCurrentLang:I

.field private mLangDBIDList:[S

.field private mLangPrefScreen:Landroid/preference/PreferenceScreen;

.field private mLangSelectList:[Landroid/preference/CheckBoxPreference;

.field mLanguageList:[Ljava/lang/String;

.field private mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

.field private misKoreanOnly:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 19
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->DEBUG:Z

    .line 20
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->INFO:Z

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->ERROR:Z

    .line 28
    const-string v0, "select_language_list"

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->PREFERENCE_KEY_SELECT_LANGUAGE_LIST:Ljava/lang/String;

    .line 30
    const-string v0, "select_language"

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->PREFERENCE_KEY_SELECT_LANGUAGE:Ljava/lang/String;

    .line 32
    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mCurrentLang:I

    .line 33
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->misKoreanOnly:Z

    .line 35
    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mCheckedNum:I

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mCheckedLangIndex:I

    .line 97
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage$1;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage$1;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->langListclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    return-void
.end method

.method private XT9coreInit(S)V
    .locals 4
    .parameter "currentLangID"

    .prologue
    const/4 v3, 0x0

    .line 172
    const/4 v0, 0x0

    .line 173
    .local v0, wStatus:S
    const/4 v1, 0x1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWSysInit(ZB)S

    move-result v0

    .line 174
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWLdbInit()S

    move-result v0

    .line 175
    invoke-static {p1}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWLdbValidate(S)S

    move-result v1

    if-nez v1, :cond_0

    .line 176
    invoke-static {p1, v3}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWLdbSetLanguage(SS)S

    move-result v0

    .line 180
    :goto_0
    invoke-static {p1}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWLdbValidate(S)S

    move-result v0

    .line 181
    return-void

    .line 178
    :cond_0
    const/16 v1, 0x9

    invoke-static {v1, v3}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWLdbSetLanguage(SS)S

    move-result v0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->updateLanguageList()V

    return-void
.end method

.method private getDefaultLocalLanguge()S
    .locals 4

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, sLocal:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v1

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 152
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 153
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangDBId()S

    move-result v3

    .line 157
    :goto_1
    return v3

    .line 151
    .restart local p0
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    :cond_1
    const/16 v3, 0x9

    goto :goto_1
.end method

.method private getNumLanguageList()I
    .locals 3

    .prologue
    .line 161
    const/4 v0, 0x0

    .line 163
    .local v0, checkedNum:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mLangSelectList:[Landroid/preference/CheckBoxPreference;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 164
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mLangSelectList:[Landroid/preference/CheckBoxPreference;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    add-int/lit8 v0, v0, 0x1

    .line 163
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 168
    :cond_1
    return v0
.end method

.method private updateLanguageList()V
    .locals 9

    .prologue
    .line 105
    const/4 v4, 0x0

    .line 106
    .local v4, langIndex:I
    const/4 v0, 0x0

    .line 107
    .local v0, checkedNum:I
    const/4 v2, -0x1

    .line 108
    .local v2, firstChecked:I
    const/4 v5, 0x1

    .line 110
    .local v5, needChange:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mLangSelectList:[Landroid/preference/CheckBoxPreference;

    array-length v7, v7

    if-ge v3, v7, :cond_2

    .line 111
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mLangSelectList:[Landroid/preference/CheckBoxPreference;

    aget-object v7, v7, v3

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 112
    move v4, v3

    .line 113
    add-int/lit8 v0, v0, 0x1

    .line 114
    if-gez v2, :cond_0

    .line 115
    move v2, v3

    .line 117
    :cond_0
    iget v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mCurrentLang:I

    if-ne v7, v3, :cond_1

    .line 118
    const/4 v5, 0x0

    .line 110
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 122
    :cond_2
    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mCheckedNum:I

    .line 123
    iput v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mCheckedLangIndex:I

    .line 136
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 137
    .local v6, sp:Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 141
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz v5, :cond_3

    .line 142
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mCurrentLang:I

    .line 143
    const-string v7, "select_language"

    iget v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mCurrentLang:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 144
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 146
    :cond_3
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const-string v10, "select_language"

    .line 42
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v8, 0x7f03001b

    invoke-virtual {p0, v8}, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->addPreferencesFromResource(I)V

    .line 45
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mLanguageList:[Ljava/lang/String;

    if-nez v8, :cond_1

    .line 46
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getInstance()Lcom/sec/android/inputmethod/axt9/AxT9Language;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    .line 47
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v8}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    new-array v3, v8, [Ljava/lang/String;

    .line 48
    .local v3, langList:[Ljava/lang/String;
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v8}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    new-array v8, v8, [S

    iput-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mLangDBIDList:[S

    .line 49
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v8}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v8

    new-array v8, v8, [Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mLangSelectList:[Landroid/preference/CheckBoxPreference;

    .line 51
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v8}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v5

    .local v5, n:I
    :goto_0
    if-ge v1, v5, :cond_0

    .line 52
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v8}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v8}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangStringId()I

    move-result v7

    .line 53
    .local v7, stringId:I
    iget-object v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mLangDBIDList:[S

    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v8}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v8}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangDBId()S

    move-result v8

    aput-short v8, v9, v1

    .line 54
    new-instance v8, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v8, v3, v1

    .line 55
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mLangSelectList:[Landroid/preference/CheckBoxPreference;

    new-instance v9, Landroid/preference/CheckBoxPreference;

    invoke-direct {v9, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    aput-object v9, v8, v1

    .line 56
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mLangSelectList:[Landroid/preference/CheckBoxPreference;

    aget-object v8, v8, v1

    aget-object v9, v3, v1

    invoke-virtual {v8, v9}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 57
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mLangSelectList:[Landroid/preference/CheckBoxPreference;

    aget-object v8, v8, v1

    aget-object v9, v3, v1

    invoke-virtual {v8, v9}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 51
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 60
    .end local v7           #stringId:I
    :cond_0
    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mLanguageList:[Ljava/lang/String;

    .line 63
    .end local v1           #i:I
    .end local v3           #langList:[Ljava/lang/String;
    .end local v5           #n:I
    :cond_1
    const-string v8, "select_language_list"

    invoke-virtual {p0, v8}, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceScreen;

    iput-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mLangPrefScreen:Landroid/preference/PreferenceScreen;

    .line 64
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mLangSelectList:[Landroid/preference/CheckBoxPreference;

    array-length v8, v8

    if-ge v1, v8, :cond_2

    .line 65
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mLangPrefScreen:Landroid/preference/PreferenceScreen;

    iget-object v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mLangSelectList:[Landroid/preference/CheckBoxPreference;

    aget-object v9, v9, v1

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 66
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mLangSelectList:[Landroid/preference/CheckBoxPreference;

    aget-object v8, v8, v1

    iget-object v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->langListclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v8, v9}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 69
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->getDefaultLocalLanguge()S

    move-result v4

    .line 70
    .local v4, localeLang:I
    const/4 v2, 0x0

    .line 72
    .local v2, langID:I
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 73
    .local v6, sp:Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 75
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->getNumLanguageList()I

    move-result v8

    if-nez v8, :cond_6

    .line 76
    const/4 v1, 0x0

    :goto_2
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v8}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v8

    if-ge v1, v8, :cond_3

    .line 77
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v8}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v8}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangDBId()S

    move-result v8

    if-ne v4, v8, :cond_5

    .line 78
    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mCurrentLang:I

    .line 83
    :cond_3
    const-string v8, "select_language"

    iget v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mCurrentLang:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v10, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 84
    move v2, v4

    .line 90
    :goto_3
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->updateLanguageList()V

    .line 92
    sget-boolean v8, Lcom/sec/android/inputmethod/axt9/AxT9IME;->IS_CORE_INIT:Z

    if-nez v8, :cond_4

    .line 93
    int-to-short v8, v2

    invoke-direct {p0, v8}, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->XT9coreInit(S)V

    .line 95
    :cond_4
    return-void

    .line 76
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 86
    :cond_6
    const-string v8, "select_language"

    const-string v8, "0"

    invoke-interface {v6, v10, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mCurrentLang:I

    .line 87
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v8}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v8

    iget v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mCurrentLang:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v8}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangDBId()S

    move-result v2

    goto :goto_3
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 216
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 217
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "outSettings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->sendBroadcast(Landroid/content/Intent;)V

    .line 219
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 220
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 186
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 187
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "inSettings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->sendBroadcast(Landroid/content/Intent;)V

    .line 189
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 190
    return-void
.end method
