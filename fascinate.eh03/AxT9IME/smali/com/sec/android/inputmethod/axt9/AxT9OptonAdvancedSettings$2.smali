.class Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings$2;
.super Ljava/lang/Object;
.source "AxT9OptonAdvancedSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 12
    .parameter

    .prologue
    const/16 v10, 0x12

    const/4 v9, -0x1

    const/16 v8, 0x9

    const/4 v7, 0x0

    .line 144
    const/4 v1, 0x0

    .line 146
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 147
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;

    const-class v3, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 153
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;

    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->access$000(Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;)I

    move-result v0

    if-ne v0, v9, :cond_4

    .line 154
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 155
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getInstance()Lcom/sec/android/inputmethod/axt9/AxT9Language;

    move-result-object v4

    .line 157
    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v5

    move v6, v7

    :goto_0
    if-ge v6, v5, :cond_7

    .line 158
    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 159
    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangDBId()S

    move-result v1

    .line 160
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangStringId()I

    move-result v0

    invoke-static {v3, v0}, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->access$100(Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    move v0, v1

    move v1, v6

    .line 166
    :goto_1
    if-eqz v0, :cond_0

    if-ne v0, v10, :cond_1

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;

    sget-object v1, Lcom/sec/android/inputmethod/axt9/AxT9Language;->LANGUAGE_INFO_LIST:[Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    aget-object v1, v1, v8

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangStringId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->access$100(Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;I)Ljava/lang/String;

    move-result-object v0

    move v1, v7

    move-object v3, v0

    move v0, v8

    .line 186
    :cond_1
    :goto_2
    sget-boolean v4, Lcom/sec/android/inputmethod/axt9/AxT9IME;->IS_CORE_INIT:Z

    if-nez v4, :cond_6

    .line 188
    invoke-static {v0, v7}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWLdbSetLanguage(SS)S

    move-result v0

    .line 189
    if-eqz v0, :cond_2

    .line 200
    :cond_2
    :goto_3
    const-string v0, "CurrentLanguage"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;

    invoke-virtual {v0, v2, v7}, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 202
    const/4 v0, 0x1

    return v0

    .line 157
    :cond_3
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 172
    :cond_4
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;

    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;)[S

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;

    invoke-static {v1}, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->access$000(Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;)I

    move-result v1

    aget-short v0, v0, v1

    if-ne v0, v10, :cond_5

    .line 175
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;

    sget-object v1, Lcom/sec/android/inputmethod/axt9/AxT9Language;->LANGUAGE_INFO_LIST:[Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    aget-object v1, v1, v8

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangStringId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->access$100(Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;I)Ljava/lang/String;

    move-result-object v0

    move v1, v7

    move-object v3, v0

    move v0, v8

    .line 176
    goto :goto_2

    .line 178
    :cond_5
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;

    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;)[S

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;

    invoke-static {v1}, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->access$000(Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;)I

    move-result v1

    aget-short v0, v0, v1

    .line 179
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mLanguageList:[Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;

    invoke-static {v3}, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->access$000(Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;)I

    move-result v3

    aget-object v1, v1, v3

    .line 180
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;

    invoke-static {v3}, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->access$000(Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;)I

    move-result v3

    move v11, v3

    move-object v3, v1

    move v1, v11

    goto :goto_2

    .line 193
    :cond_6
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 194
    const-string v4, "com.samsung.sec.android.inputmethod.axt9.AxT9IME"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    const-string v4, "sendingActivity"

    const-string v5, "AxT9Option"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    const-string v4, "languageShouldSet"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 197
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;

    invoke-virtual {v1, v0}, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_3

    :cond_7
    move v0, v7

    move-object v3, v1

    move v1, v9

    goto/16 :goto_1
.end method
