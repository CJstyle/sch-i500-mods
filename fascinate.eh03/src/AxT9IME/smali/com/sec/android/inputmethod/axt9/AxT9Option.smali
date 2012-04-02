.class public Lcom/sec/android/inputmethod/axt9/AxT9Option;
.super Landroid/preference/PreferenceActivity;
.source "AxT9Option.java"


# static fields
.field protected static final PREF_TITLE_COLOR:I


# instance fields
.field private final DEBUG:Z

.field private final ERROR:Z

.field private final GET_CODE:I

.field private final INFO:Z

.field private final PREFERENCE_KEY_INPUTMETHOD_TYPE:Ljava/lang/String;

.field private final PREFERENCE_KEY_SELECT_LANGUAGE_LIST:Ljava/lang/String;

.field aboutclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field adbancedsettingsclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field languageChangeSettingListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field mInputMethodArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mInputMethodIndexArray:[Ljava/lang/String;

.field mInputMethodTypeStringArray:[Ljava/lang/String;

.field private mIsFromIME:Z

.field private mLangDBIDList:[S

.field private mListPreference_inputmethod:Landroid/preference/ListPreference;

.field private mListPreference_recognition_time:Landroid/preference/ListPreference;

.field private mPreference:Landroid/preference/Preference;

.field private mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

.field tutorialclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field writinglanguageclickListener:Landroid/preference/Preference$OnPreferenceClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0xff

    .line 97
    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->PREF_TITLE_COLOR:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 49
    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->DEBUG:Z

    .line 50
    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->INFO:Z

    .line 51
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->ERROR:Z

    .line 57
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->mIsFromIME:Z

    .line 59
    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->GET_CODE:I

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->mInputMethodArrayList:Ljava/util/ArrayList;

    .line 84
    const-string v0, "select_language_list"

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->PREFERENCE_KEY_SELECT_LANGUAGE_LIST:Ljava/lang/String;

    .line 85
    const-string v0, "inputmethod_type"

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->PREFERENCE_KEY_INPUTMETHOD_TYPE:Ljava/lang/String;

    .line 218
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9Option$1;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9Option$1;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9Option;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->writinglanguageclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 228
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9Option$2;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9Option$2;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9Option;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->adbancedsettingsclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 247
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9Option$3;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9Option$3;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9Option;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->aboutclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 256
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9Option$4;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9Option$4;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9Option;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->tutorialclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 265
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9Option$5;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9Option$5;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9Option;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->languageChangeSettingListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/inputmethod/axt9/AxT9Option;)S
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9Option;->getDefaultLocaleLanguage()S

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/inputmethod/axt9/AxT9Option;)[S
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->mLangDBIDList:[S

    return-object v0
.end method

.method private getDefaultLocaleLanguage()S
    .locals 4

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9Option;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 289
    .local v2, sLocal:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v1

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 290
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

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

    .line 291
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangDBId()S

    move-result v3

    .line 294
    :goto_1
    return v3

    .line 289
    .restart local p0
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 294
    :cond_1
    const/16 v3, 0x9

    goto :goto_1
.end method

.method private getInputMethodName(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "inputmethod"

    .prologue
    const v6, 0x7f0a002c

    const-string v8, "pl"

    const-string v7, "it"

    const-string v5, "fr"

    const-string v4, "es"

    .line 181
    const-string v0, ""

    .line 182
    .local v0, inputmethodname:Ljava/lang/String;
    if-nez p1, :cond_0

    move-object v1, v0

    .line 215
    .end local v0           #inputmethodname:Ljava/lang/String;
    .local v1, inputmethodname:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 186
    .end local v1           #inputmethodname:Ljava/lang/String;
    .restart local v0       #inputmethodname:Ljava/lang/String;
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 187
    .local v2, language:Ljava/lang/String;
    const-string v3, "12phonepad"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 188
    const-string v3, "fr"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "pl"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "es"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "it"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 189
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9Option;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " 3x4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 215
    .end local v0           #inputmethodname:Ljava/lang/String;
    .restart local v1       #inputmethodname:Ljava/lang/String;
    goto :goto_0

    .line 191
    .end local v1           #inputmethodname:Ljava/lang/String;
    .restart local v0       #inputmethodname:Ljava/lang/String;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "3x4 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9Option;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 193
    :cond_3
    const-string v3, "20keypad"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 194
    const-string v3, "fr"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "pl"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "es"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "it"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 195
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9Option;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "5x3"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 199
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "5x3 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9Option;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 197
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "5x3 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9Option;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 200
    :cond_6
    const-string v3, "qwertykeyboard"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 201
    const-string v3, "fr"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "pl"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "es"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "it"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 202
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9Option;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9Option;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a002a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 204
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9Option;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a002a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9Option;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 206
    :cond_9
    const-string v3, "handwritingbox1"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 207
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9Option;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a007c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 208
    :cond_a
    const-string v3, "handwritingbox2"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 209
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9Option;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a007d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 210
    :cond_b
    const-string v3, "handwritingfull"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 211
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9Option;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a007e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 213
    :cond_c
    const-string v3, "AxT9IME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is the invalid inputmethod type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 29
    .parameter "savedInstanceState"

    .prologue
    .line 103
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    const v26, 0x7f03000c

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9Option;->addPreferencesFromResource(I)V

    .line 105
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9Option;->getIntent()Landroid/content/Intent;

    move-result-object v26

    const-string v27, "isFromIME"

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v26

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9Option;->setFlagIsFromIME(Z)V

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->mInputMethodArrayList:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    if-nez v26, :cond_0

    .line 108
    const-string v7, "qwertykeyboard;12phonepad;handwritingbox1;handwritingbox2;"

    .line 109
    .local v7, list:Ljava/lang/String;
    const-string v4, ";"

    .line 110
    .local v4, delimiter:Ljava/lang/String;
    new-instance v24, Ljava/util/StringTokenizer;

    move-object/from16 v0, v24

    move-object v1, v7

    invoke-direct {v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 112
    .local v24, st:Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual/range {v24 .. v24}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v26

    if-eqz v26, :cond_0

    .line 113
    const-string v26, ";"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 114
    .local v6, inputmethod:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->mInputMethodArrayList:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 118
    .end local v4           #delimiter:Ljava/lang/String;
    .end local v6           #inputmethod:Ljava/lang/String;
    .end local v7           #list:Ljava/lang/String;
    .end local v24           #st:Ljava/util/StringTokenizer;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->mInputMethodArrayList:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9Option;->mInputMethodIndexArray:[Ljava/lang/String;

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->mInputMethodArrayList:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9Option;->mInputMethodTypeStringArray:[Ljava/lang/String;

    .line 120
    const/4 v5, 0x0

    .local v5, i:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->mInputMethodArrayList:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v8

    .end local p1
    .local v8, n:I
    :goto_1
    if-ge v5, v8, :cond_1

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->mInputMethodIndexArray:[Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v26, v5

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->mInputMethodTypeStringArray:[Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->mInputMethodArrayList:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct/range {p0 .. p1}, Lcom/sec/android/inputmethod/axt9/AxT9Option;->getInputMethodName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v26, v5

    .line 120
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 124
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9Option;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0a0084

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 125
    .local v21, sSecond:Ljava/lang/String;
    const/16 v26, 0x5

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object v14, v0

    const/16 v26, 0x0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "0.1 "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v14, v26

    const/16 v26, 0x1

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "0.3 "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v14, v26

    const/16 v26, 0x2

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "0.5 "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v14, v26

    const/16 v26, 0x3

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "1 "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v14, v26

    const/16 v26, 0x4

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "2 "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v14, v26

    .line 127
    .local v14, recognition_time_entry:[Ljava/lang/String;
    const/16 v26, 0x5

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object v15, v0

    const/16 v26, 0x0

    const-string v27, "100"

    aput-object v27, v15, v26

    const/16 v26, 0x1

    const-string v27, "300"

    aput-object v27, v15, v26

    const/16 v26, 0x2

    const-string v27, "500"

    aput-object v27, v15, v26

    const/16 v26, 0x3

    const-string v27, "1000"

    aput-object v27, v15, v26

    const/16 v26, 0x4

    const-string v27, "2000"

    aput-object v27, v15, v26

    .line 129
    .local v15, recognition_time_valuse:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9Option;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0a0082

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 130
    .local v19, sPixel:Ljava/lang/String;
    const/16 v26, 0x5

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object v11, v0

    const/16 v26, 0x0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "2 "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v11, v26

    const/16 v26, 0x1

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "3 "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v11, v26

    const/16 v26, 0x2

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "5 "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v11, v26

    const/16 v26, 0x3

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "7 "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v11, v26

    const/16 v26, 0x4

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "9 "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v11, v26

    .line 131
    .local v11, pen_thickness_entry:[Ljava/lang/String;
    const/16 v26, 0x5

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object v12, v0

    const/16 v26, 0x0

    const-string v27, "2"

    aput-object v27, v12, v26

    const/16 v26, 0x1

    const-string v27, "3"

    aput-object v27, v12, v26

    const/16 v26, 0x2

    const-string v27, "5"

    aput-object v27, v12, v26

    const/16 v26, 0x3

    const-string v27, "7"

    aput-object v27, v12, v26

    const/16 v26, 0x4

    const-string v27, "9"

    aput-object v27, v12, v26

    .line 133
    .local v12, pen_thickness_values:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9Option;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0a0085

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 134
    .local v16, sBlack:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9Option;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0a0087

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 135
    .local v20, sRed:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9Option;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0a0088

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 136
    .local v17, sBlue:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9Option;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0a0089

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 137
    .local v18, sGreen:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9Option;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0a008a

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 138
    .local v22, sYellow:Ljava/lang/String;
    const/16 v26, 0x5

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object v9, v0

    const/16 v26, 0x0

    aput-object v16, v9, v26

    const/16 v26, 0x1

    aput-object v20, v9, v26

    const/16 v26, 0x2

    aput-object v17, v9, v26

    const/16 v26, 0x3

    aput-object v18, v9, v26

    const/16 v26, 0x4

    aput-object v22, v9, v26

    .line 139
    .local v9, pen_color_entry:[Ljava/lang/String;
    const/16 v26, 0x5

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object v10, v0

    const/16 v26, 0x0

    const-string v27, "black"

    aput-object v27, v10, v26

    const/16 v26, 0x1

    const-string v27, "red"

    aput-object v27, v10, v26

    const/16 v26, 0x2

    const-string v27, "blue"

    aput-object v27, v10, v26

    const/16 v26, 0x3

    const-string v27, "green"

    aput-object v27, v10, v26

    const/16 v26, 0x4

    const-string v27, "yellow"

    aput-object v27, v10, v26

    .line 141
    .local v10, pen_color_valuse:[Ljava/lang/String;
    const-string v26, "select_language_list"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9Option;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9Option;->mPreference:Landroid/preference/Preference;

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->mPreference:Landroid/preference/Preference;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->writinglanguageclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 144
    const-string v26, "xt9_advanced_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9Option;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9Option;->mPreference:Landroid/preference/Preference;

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->mPreference:Landroid/preference/Preference;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->adbancedsettingsclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 147
    const-string v26, "axt9_ime_setting_tutorial"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9Option;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9Option;->mPreference:Landroid/preference/Preference;

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->mPreference:Landroid/preference/Preference;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->tutorialclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 150
    const-string v26, "about_hwr"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9Option;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9Option;->mPreference:Landroid/preference/Preference;

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->mPreference:Landroid/preference/Preference;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->aboutclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 153
    const-string v26, "voice_input_enabled"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9Option;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9Option;->mPreference:Landroid/preference/Preference;

    .line 154
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v23

    .line 155
    .local v23, sp:Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->mPreference:Landroid/preference/Preference;

    move-object/from16 v26, v0

    if-eqz v26, :cond_2

    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9Option;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 158
    .local v13, pm:Landroid/content/pm/PackageManager;
    new-instance v26, Landroid/content/Intent;

    const-string v27, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct/range {v26 .. v27}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v27, 0x0

    move-object v0, v13

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 160
    .local v3, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v26

    if-eqz v26, :cond_3

    const/16 v26, 0x1

    move/from16 v25, v26

    .line 161
    .local v25, voiceInstalled:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->mPreference:Landroid/preference/Preference;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 164
    .end local v3           #activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v13           #pm:Landroid/content/pm/PackageManager;
    .end local v25           #voiceInstalled:Z
    :cond_2
    const-string v26, "inputmethod_type"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9Option;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/ListPreference;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9Option;->mListPreference_inputmethod:Landroid/preference/ListPreference;

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->mListPreference_inputmethod:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->mInputMethodTypeStringArray:[Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->mListPreference_inputmethod:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->mInputMethodIndexArray:[Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->mListPreference_inputmethod:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->mInputMethodArrayList:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    const-string v28, "qwertykeyboard"

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 169
    const-string v26, "recognition_time"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9Option;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/ListPreference;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9Option;->mListPreference_recognition_time:Landroid/preference/ListPreference;

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->mListPreference_recognition_time:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->mListPreference_recognition_time:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 178
    return-void

    .line 160
    .restart local v3       #activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v13       #pm:Landroid/content/pm/PackageManager;
    :cond_3
    const/16 v26, 0x0

    move/from16 v25, v26

    goto/16 :goto_2
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 364
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 365
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "outSettings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9Option;->sendBroadcast(Landroid/content/Intent;)V

    .line 367
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 368
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 336
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 338
    .local v1, sp:Landroid/content/SharedPreferences;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 339
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "inSettings"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9Option;->sendBroadcast(Landroid/content/Intent;)V

    .line 358
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 359
    return-void
.end method

.method public setFlagIsFromIME(Z)V
    .locals 0
    .parameter "isFromIME"

    .prologue
    .line 305
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->mIsFromIME:Z

    .line 306
    return-void
.end method
