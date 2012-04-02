.class public Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;
.super Landroid/preference/PreferenceActivity;
.source "AxT9OptonAdvancedSettings.java"


# instance fields
.field private final DEBUG:Z

.field private final ERROR:Z

.field private final GET_CODE:I

.field private final INFO:Z

.field private final PREFERENCE_KEY_COMPLETION_POINT:Ljava/lang/String;

.field private final PREFERENCE_KEY_SETTING_AUTOSUBS:Ljava/lang/String;

.field private final PREFERENCE_KEY_SETTING_MYWORDS:Ljava/lang/String;

.field private mCurrentLang:I

.field private mLangDBIDList:[S

.field mLanguageList:[Ljava/lang/String;

.field private mListPreference_completion_point:Landroid/preference/ListPreference;

.field private mPreference:Landroid/preference/Preference;

.field private mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

.field mywordsclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field substitutionclickListener:Landroid/preference/Preference$OnPreferenceClickListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 22
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->DEBUG:Z

    .line 23
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->INFO:Z

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->ERROR:Z

    .line 29
    const-string v0, "axt9_ime_setting_mywords"

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->PREFERENCE_KEY_SETTING_MYWORDS:Ljava/lang/String;

    .line 30
    const-string v0, "axt9_ime_setting_autosubstitution"

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->PREFERENCE_KEY_SETTING_AUTOSUBS:Ljava/lang/String;

    .line 32
    const-string v0, "word_completion_point"

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->PREFERENCE_KEY_COMPLETION_POINT:Ljava/lang/String;

    .line 35
    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->GET_CODE:I

    .line 36
    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mCurrentLang:I

    .line 132
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings$1;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings$1;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mywordsclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 142
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings$2;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings$2;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->substitutionclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    return-void
.end method

.method private GetStirngWithID(I)Ljava/lang/String;
    .locals 1
    .parameter "id"

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private XT9coreInit(S)V
    .locals 4
    .parameter "currentLangID"

    .prologue
    const/4 v3, 0x0

    .line 121
    const/4 v0, 0x0

    .line 122
    .local v0, wStatus:S
    const/4 v1, 0x1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWSysInit(ZB)S

    move-result v0

    .line 123
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWLdbInit()S

    move-result v0

    .line 124
    invoke-static {p1}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWLdbValidate(S)S

    move-result v1

    if-nez v1, :cond_0

    .line 125
    invoke-static {p1, v3}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWLdbSetLanguage(SS)S

    move-result v0

    .line 129
    :goto_0
    invoke-static {p1}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWLdbValidate(S)S

    move-result v0

    .line 130
    return-void

    .line 127
    :cond_0
    const/16 v1, 0x9

    invoke-static {v1, v3}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWLdbSetLanguage(SS)S

    move-result v0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mCurrentLang:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->GetStirngWithID(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;)[S
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mLangDBIDList:[S

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 19
    .parameter "savedInstanceState"

    .prologue
    .line 45
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v17, 0x7f03000f

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->addPreferencesFromResource(I)V

    .line 48
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 49
    .local v15, sp:Landroid/content/SharedPreferences;
    const-string v17, "select_language"

    const-string v18, "-1"

    move-object v0, v15

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mCurrentLang:I

    .line 51
    const-string v17, "axt9_ime_setting_mywords"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mPreference:Landroid/preference/Preference;

    .line 52
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mPreference:Landroid/preference/Preference;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mywordsclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 54
    const-string v17, "axt9_ime_setting_autosubstitution"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mPreference:Landroid/preference/Preference;

    .line 55
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mPreference:Landroid/preference/Preference;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->substitutionclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mLanguageList:[Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_7

    .line 58
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getInstance()Lcom/sec/android/inputmethod/axt9/AxT9Language;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    .line 59
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object v9, v0

    .line 60
    .local v9, langList:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [S

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mLangDBIDList:[S

    .line 62
    const-string v6, ""

    .line 63
    .local v6, currentLocaleLang:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mCurrentLang:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 64
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    .line 65
    const-string v17, "en"

    move-object v0, v6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 66
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    .line 67
    .local v5, currentLocaleCount:Ljava/lang/String;
    const-string v17, "GB"

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 68
    const-string v6, "en(UK)"

    .line 76
    .end local v5           #currentLocaleCount:Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v8, -0x1

    .line 77
    .local v8, koreanIndex:I
    const/4 v7, 0x0

    .local v7, i:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v10

    .end local p1
    .local v10, n:I
    :goto_1
    if-ge v7, v10, :cond_5

    .line 78
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangStringId()I

    move-result v16

    .line 79
    .local v16, stringId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mLangDBIDList:[S

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v18

    move v1, v7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangDBId()S

    move-result v18

    aput-short v18, v17, v7

    .line 80
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mLangDBIDList:[S

    move-object/from16 v17, v0

    aget-short v17, v17, v7

    const/16 v18, 0x12

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 81
    move v8, v7

    .line 83
    :cond_1
    new-instance v17, Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v17, v9, v7

    .line 84
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mCurrentLang:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangCode()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 86
    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mCurrentLang:I

    .line 77
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 69
    .end local v7           #i:I
    .end local v8           #koreanIndex:I
    .end local v10           #n:I
    .end local v16           #stringId:I
    .restart local v5       #currentLocaleCount:Ljava/lang/String;
    .restart local p1
    :cond_3
    const-string v17, "US"

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 70
    const-string v6, "en(US)"

    goto/16 :goto_0

    .line 72
    :cond_4
    const-string v6, "en(UK)"

    goto/16 :goto_0

    .line 90
    .end local v5           #currentLocaleCount:Ljava/lang/String;
    .end local p1
    .restart local v7       #i:I
    .restart local v8       #koreanIndex:I
    .restart local v10       #n:I
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mCurrentLang:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 91
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mCurrentLang:I

    .line 96
    :cond_6
    :goto_2
    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mLanguageList:[Ljava/lang/String;

    .line 99
    .end local v6           #currentLocaleLang:Ljava/lang/String;
    .end local v7           #i:I
    .end local v8           #koreanIndex:I
    .end local v9           #langList:[Ljava/lang/String;
    .end local v10           #n:I
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0a0010

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 100
    .local v11, s2letters:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0a0011

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 101
    .local v12, s3letters:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0a0012

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 102
    .local v13, s4letters:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0a0013

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 104
    .local v14, s5letters:Ljava/lang/String;
    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object v3, v0

    const/16 v17, 0x0

    aput-object v11, v3, v17

    const/16 v17, 0x1

    aput-object v12, v3, v17

    const/16 v17, 0x2

    aput-object v13, v3, v17

    const/16 v17, 0x3

    aput-object v14, v3, v17

    .line 105
    .local v3, Completion_point_entry:[Ljava/lang/String;
    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    const/16 v17, 0x0

    const-string v18, "2"

    aput-object v18, v4, v17

    const/16 v17, 0x1

    const-string v18, "3"

    aput-object v18, v4, v17

    const/16 v17, 0x2

    const-string v18, "4"

    aput-object v18, v4, v17

    const/16 v17, 0x3

    const-string v18, "5"

    aput-object v18, v4, v17

    .line 107
    .local v4, Completion_point_values:[Ljava/lang/String;
    const-string v17, "word_completion_point"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/ListPreference;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mListPreference_completion_point:Landroid/preference/ListPreference;

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mListPreference_completion_point:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mListPreference_completion_point:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 115
    sget-boolean v17, Lcom/sec/android/inputmethod/axt9/AxT9IME;->IS_CORE_INIT:Z

    if-nez v17, :cond_8

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mLangDBIDList:[S

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mCurrentLang:I

    move/from16 v18, v0

    aget-short v17, v17, v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->XT9coreInit(S)V

    .line 118
    :cond_8
    return-void

    .line 92
    .end local v3           #Completion_point_entry:[Ljava/lang/String;
    .end local v4           #Completion_point_values:[Ljava/lang/String;
    .end local v11           #s2letters:Ljava/lang/String;
    .end local v12           #s3letters:Ljava/lang/String;
    .end local v13           #s4letters:Ljava/lang/String;
    .end local v14           #s5letters:Ljava/lang/String;
    .restart local v6       #currentLocaleLang:Ljava/lang/String;
    .restart local v7       #i:I
    .restart local v8       #koreanIndex:I
    .restart local v9       #langList:[Ljava/lang/String;
    .restart local v10       #n:I
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mCurrentLang:I

    move/from16 v17, v0

    move/from16 v0, v17

    move v1, v8

    if-ne v0, v1, :cond_6

    .line 93
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mCurrentLang:I

    goto/16 :goto_2
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 222
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 223
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "outSettings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->sendBroadcast(Landroid/content/Intent;)V

    .line 225
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 226
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 213
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 214
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "inSettings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->sendBroadcast(Landroid/content/Intent;)V

    .line 216
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 217
    return-void
.end method
