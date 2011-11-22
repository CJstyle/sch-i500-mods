.class public Lcom/sec/android/app/cradle/CradleWeatherSettings;
.super Landroid/app/Activity;
.source "CradleWeatherSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;,
        Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;
    }
.end annotation


# static fields
.field private static mOnActivityResult:Z

.field private static final refresh_time:[I


# instance fields
.field private cityList:[Ljava/lang/CharSequence;

.field private cityListLocation:[Ljava/lang/CharSequence;

.field private mAdapter:Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;

.field private mCityFooterView:Landroid/widget/TextView;

.field private mController:Lcom/sec/android/app/cradle/Controller;

.field mNoCityDialog:Landroid/app/AlertDialog$Builder;

.field mPrefs:Landroid/content/SharedPreferences;

.field mSelectCity:Landroid/app/AlertDialog;

.field mSelectCityDialog:Landroid/app/AlertDialog$Builder;

.field private mSettingItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingList:Landroid/widget/ListView;

.field private nocityList:[Ljava/lang/CharSequence;

.field public weatherList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/cradle/AccuWeatherContainer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mOnActivityResult:Z

    .line 138
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->refresh_time:[I

    return-void

    :array_0
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mSettingItem:Ljava/util/ArrayList;

    .line 37
    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mAdapter:Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;

    .line 39
    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mSelectCityDialog:Landroid/app/AlertDialog$Builder;

    .line 40
    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mSelectCity:Landroid/app/AlertDialog;

    .line 41
    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mNoCityDialog:Landroid/app/AlertDialog$Builder;

    .line 549
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/cradle/CradleWeatherSettings;)[Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->cityList:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/cradle/CradleWeatherSettings;)[Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->cityListLocation:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/cradle/CradleWeatherSettings;)Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mAdapter:Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;

    return-object v0
.end method

.method static synthetic access$400()[I
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->refresh_time:[I

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/cradle/CradleWeatherSettings;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->onBtnCheckChanged(IZ)V

    return-void
.end method

.method private onBtnCheckChanged(IZ)V
    .locals 4
    .parameter "position"
    .parameter "check"

    .prologue
    .line 539
    const-string v1, "CradleWeatherSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBtnCheckChanged("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mSettingList:Landroid/widget/ListView;

    invoke-virtual {v1, p1, p2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 542
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 543
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 544
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "cradle_weather_refresh_on"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 545
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 547
    .end local v0           #ed:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method


# virtual methods
.method public getWeatherDataFromDB()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mController:Lcom/sec/android/app/cradle/Controller;

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/Controller;->fetchWeatherRows()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->weatherList:Ljava/util/ArrayList;

    .line 136
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v7, 0x1

    .line 146
    const/4 v6, 0x4

    if-ne p1, v6, :cond_3

    .line 147
    const/4 v6, -0x1

    if-ne p2, v6, :cond_3

    .line 148
    const/4 v3, 0x0

    .line 149
    .local v3, locationName:Ljava/lang/String;
    const/4 v0, 0x0

    .line 151
    .local v0, cityName:Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->weatherList:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    .line 152
    iget-object v6, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->weatherList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 154
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->getWeatherDataFromDB()V

    .line 156
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v6, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->weatherList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 157
    iget-object v6, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->weatherList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/cradle/AccuWeatherContainer;

    .line 160
    .local v5, weatherItem:Lcom/sec/android/app/cradle/AccuWeatherContainer;
    iget-object v0, v5, Lcom/sec/android/app/cradle/AccuWeatherContainer;->WeatherCityName:Ljava/lang/String;

    .line 161
    iget-object v3, v5, Lcom/sec/android/app/cradle/AccuWeatherContainer;->WeatherCityLocation:Ljava/lang/String;

    .line 156
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 165
    .end local v5           #weatherItem:Lcom/sec/android/app/cradle/AccuWeatherContainer;
    :cond_1
    sput-boolean v7, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mOnActivityResult:Z

    .line 166
    if-nez v0, :cond_2

    .line 167
    const/4 v3, 0x0

    .line 169
    :cond_2
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 171
    .local v4, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 172
    .local v1, ed:Landroid/content/SharedPreferences$Editor;
    const-string v6, "cradle_weather_city"

    invoke-interface {v1, v6, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 173
    const-string v6, "cradle_weather_city_location"

    invoke-interface {v1, v6, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 174
    const-string v6, "cradle_weather_city_changed"

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 175
    const-string v6, "cradle_weather_display"

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 176
    const-string v6, "cradle_weather_refresh_time"

    const-wide/16 v7, 0x0

    invoke-interface {v1, v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 177
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 180
    .end local v0           #cityName:Ljava/lang/String;
    .end local v1           #ed:Landroid/content/SharedPreferences$Editor;
    .end local v2           #i:I
    .end local v3           #locationName:Ljava/lang/String;
    .end local v4           #prefs:Landroid/content/SharedPreferences;
    :cond_3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const-string v1, "CradleWeatherSettings"

    const-string v2, "setting onCreate~~~~~~~~~~"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const v1, 0x7f030009

    invoke-virtual {p0, v1}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->setContentView(I)V

    .line 72
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mPrefs:Landroid/content/SharedPreferences;

    .line 74
    invoke-static {p0}, Lcom/sec/android/app/cradle/Controller;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/cradle/Controller;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mController:Lcom/sec/android/app/cradle/Controller;

    .line 76
    const v1, 0x7f0a0039

    invoke-virtual {p0, v1}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mSettingList:Landroid/widget/ListView;

    .line 77
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 78
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030006

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mCityFooterView:Landroid/widget/TextView;

    .line 101
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mSettingItem:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 102
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mSettingItem:Ljava/util/ArrayList;

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mAdapter:Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;

    if-nez v1, :cond_1

    .line 106
    new-instance v1, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;

    const v2, 0x7f030002

    iget-object v3, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mSettingItem:Ljava/util/ArrayList;

    invoke-direct {v1, p0, p0, v2, v3}, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;-><init>(Lcom/sec/android/app/cradle/CradleWeatherSettings;Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mAdapter:Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;

    .line 109
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mSettingList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mAdapter:Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 132
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 11
    .parameter "id"

    .prologue
    .line 310
    const/4 v0, 0x0

    .line 311
    .local v0, checkedItem:I
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/CharSequence;

    iput-object v7, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->nocityList:[Ljava/lang/CharSequence;

    .line 312
    iget-object v7, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->nocityList:[Ljava/lang/CharSequence;

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f08002d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 313
    packed-switch p1, :pswitch_data_0

    .line 492
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v7

    :goto_0
    return-object v7

    .line 315
    :pswitch_1
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mNoCityDialog:Landroid/app/AlertDialog$Builder;

    .line 316
    iget-object v7, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mNoCityDialog:Landroid/app/AlertDialog$Builder;

    const v8, 0x7f080010

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 317
    iget-object v7, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mNoCityDialog:Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->nocityList:[Ljava/lang/CharSequence;

    new-instance v9, Lcom/sec/android/app/cradle/CradleWeatherSettings$1;

    invoke-direct {v9, p0}, Lcom/sec/android/app/cradle/CradleWeatherSettings$1;-><init>(Lcom/sec/android/app/cradle/CradleWeatherSettings;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 325
    iget-object v7, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mNoCityDialog:Landroid/app/AlertDialog$Builder;

    const-string v8, "OK"

    new-instance v9, Lcom/sec/android/app/cradle/CradleWeatherSettings$2;

    invoke-direct {v9, p0}, Lcom/sec/android/app/cradle/CradleWeatherSettings$2;-><init>(Lcom/sec/android/app/cradle/CradleWeatherSettings;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 330
    iget-object v7, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mNoCityDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    goto :goto_0

    .line 333
    :pswitch_2
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mSelectCityDialog:Landroid/app/AlertDialog$Builder;

    .line 336
    iget-object v7, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mSelectCityDialog:Landroid/app/AlertDialog$Builder;

    const v8, 0x7f080010

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 338
    iget-object v7, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v8, "cradle_weather_city"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 339
    .local v4, selectCity:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 340
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v7, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->cityList:[Ljava/lang/CharSequence;

    array-length v7, v7

    if-ge v1, v7, :cond_0

    .line 341
    iget-object v7, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->cityList:[Ljava/lang/CharSequence;

    aget-object v7, v7, v1

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 342
    move v0, v1

    .line 349
    .end local v1           #i:I
    :cond_0
    iget-object v7, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mSelectCityDialog:Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->cityList:[Ljava/lang/CharSequence;

    new-instance v9, Lcom/sec/android/app/cradle/CradleWeatherSettings$4;

    invoke-direct {v9, p0}, Lcom/sec/android/app/cradle/CradleWeatherSettings$4;-><init>(Lcom/sec/android/app/cradle/CradleWeatherSettings;)V

    invoke-virtual {v7, v8, v0, v9}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f08000a

    new-instance v9, Lcom/sec/android/app/cradle/CradleWeatherSettings$3;

    invoke-direct {v9, p0}, Lcom/sec/android/app/cradle/CradleWeatherSettings$3;-><init>(Lcom/sec/android/app/cradle/CradleWeatherSettings;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mSelectCity:Landroid/app/AlertDialog;

    .line 391
    iget-object v7, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mSelectCity:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 392
    .local v2, lvcity:Landroid/widget/ListView;
    iget-object v7, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mCityFooterView:Landroid/widget/TextView;

    new-instance v8, Lcom/sec/android/app/cradle/CradleWeatherSettings$5;

    invoke-direct {v8, p0}, Lcom/sec/android/app/cradle/CradleWeatherSettings$5;-><init>(Lcom/sec/android/app/cradle/CradleWeatherSettings;)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 399
    iget-object v7, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mCityFooterView:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 401
    iget-object v7, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mSelectCity:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 340
    .end local v2           #lvcity:Landroid/widget/ListView;
    .restart local v1       #i:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 404
    .end local v1           #i:I
    .end local v4           #selectCity:Ljava/lang/String;
    :pswitch_3
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 407
    .local v5, twalertdialog2:Landroid/app/AlertDialog$Builder;
    const v7, 0x7f080011

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 409
    iget-object v7, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v8, "cradle_weather_refresh_time_index"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 412
    const/4 v7, 0x4

    new-array v3, v7, [Ljava/lang/CharSequence;

    .line 413
    .local v3, refresh_time_item:[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    const/4 v7, 0x4

    if-ge v1, v7, :cond_2

    .line 414
    const v7, 0x7f080021

    invoke-virtual {p0, v7}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    sget-object v10, Lcom/sec/android/app/cradle/CradleWeatherSettings;->refresh_time:[I

    aget v10, v10, v1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v1

    .line 413
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 416
    :cond_2
    new-instance v7, Lcom/sec/android/app/cradle/CradleWeatherSettings$6;

    invoke-direct {v7, p0}, Lcom/sec/android/app/cradle/CradleWeatherSettings$6;-><init>(Lcom/sec/android/app/cradle/CradleWeatherSettings;)V

    invoke-virtual {v5, v3, v0, v7}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 432
    const v7, 0x7f08000a

    new-instance v8, Lcom/sec/android/app/cradle/CradleWeatherSettings$7;

    invoke-direct {v8, p0}, Lcom/sec/android/app/cradle/CradleWeatherSettings$7;-><init>(Lcom/sec/android/app/cradle/CradleWeatherSettings;)V

    invoke-virtual {v5, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 438
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    goto/16 :goto_0

    .line 441
    .end local v1           #i:I
    .end local v3           #refresh_time_item:[Ljava/lang/CharSequence;
    .end local v5           #twalertdialog2:Landroid/app/AlertDialog$Builder;
    :pswitch_4
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 444
    .restart local v5       #twalertdialog2:Landroid/app/AlertDialog$Builder;
    const v7, 0x7f080012

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 446
    iget-object v7, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v8, "cradle_weather_unit"

    const/4 v9, 0x1

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 447
    .local v6, weatherUnit:I
    if-nez v6, :cond_3

    .line 448
    const/4 v0, 0x0

    .line 455
    :goto_3
    const v7, 0x7f040002

    new-instance v8, Lcom/sec/android/app/cradle/CradleWeatherSettings$8;

    invoke-direct {v8, p0}, Lcom/sec/android/app/cradle/CradleWeatherSettings$8;-><init>(Lcom/sec/android/app/cradle/CradleWeatherSettings;)V

    invoke-virtual {v5, v7, v0, v8}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 483
    const v7, 0x7f08000a

    new-instance v8, Lcom/sec/android/app/cradle/CradleWeatherSettings$9;

    invoke-direct {v8, p0}, Lcom/sec/android/app/cradle/CradleWeatherSettings$9;-><init>(Lcom/sec/android/app/cradle/CradleWeatherSettings;)V

    invoke-virtual {v5, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 489
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    goto/16 :goto_0

    .line 451
    :cond_3
    const/4 v0, 0x1

    goto :goto_3

    .line 313
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 277
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 278
    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->weatherList:Ljava/util/ArrayList;

    .line 279
    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mController:Lcom/sec/android/app/cradle/Controller;

    .line 280
    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mSettingList:Landroid/widget/ListView;

    .line 281
    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mAdapter:Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;

    .line 282
    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mSettingItem:Ljava/util/ArrayList;

    .line 283
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 183
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 185
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mSelectCityDialog:Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_0

    .line 186
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->removeDialog(I)V

    .line 188
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 26

    .prologue
    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mAdapter:Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;->clear()V

    .line 195
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->getWeatherDataFromDB()V

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->weatherList:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    new-array v5, v5, [Ljava/lang/CharSequence;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/cradle/CradleWeatherSettings;->cityList:[Ljava/lang/CharSequence;

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->weatherList:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    new-array v5, v5, [Ljava/lang/CharSequence;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/cradle/CradleWeatherSettings;->cityListLocation:[Ljava/lang/CharSequence;

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->cityList:[Ljava/lang/CharSequence;

    move-object v5, v0

    const/4 v6, 0x0

    const-string v7, "None"

    aput-object v7, v5, v6

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->cityListLocation:[Ljava/lang/CharSequence;

    move-object v5, v0

    const/4 v6, 0x0

    const-string v7, "None"

    aput-object v7, v5, v6

    .line 203
    const/16 v20, 0x0

    .local v20, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->weatherList:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v0, v20

    move v1, v5

    if-ge v0, v1, :cond_0

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->weatherList:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/sec/android/app/cradle/AccuWeatherContainer;

    .line 205
    .local v24, weatherItem:Lcom/sec/android/app/cradle/AccuWeatherContainer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->cityList:[Ljava/lang/CharSequence;

    move-object v5, v0

    add-int/lit8 v6, v20, 0x1

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sec/android/app/cradle/AccuWeatherContainer;->WeatherCityName:Ljava/lang/String;

    move-object v7, v0

    aput-object v7, v5, v6

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->cityListLocation:[Ljava/lang/CharSequence;

    move-object v5, v0

    add-int/lit8 v6, v20, 0x1

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sec/android/app/cradle/AccuWeatherContainer;->WeatherCityLocation:Ljava/lang/String;

    move-object v7, v0

    aput-object v7, v5, v6

    .line 203
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .line 208
    .end local v24           #weatherItem:Lcom/sec/android/app/cradle/AccuWeatherContainer;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mPrefs:Landroid/content/SharedPreferences;

    move-object v5, v0

    const-string v6, "cradle_weather_city"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 209
    .local v7, selectCity:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mPrefs:Landroid/content/SharedPreferences;

    move-object v5, v0

    const-string v6, "cradle_weather_city_location"

    const/4 v8, 0x0

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 212
    .local v23, selectCityLocation:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->weatherList:Ljava/util/ArrayList;

    move-object v5, v0

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->weatherList:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 213
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mPrefs:Landroid/content/SharedPreferences;

    move-object v5, v0

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v19

    .line 214
    .local v19, ed:Landroid/content/SharedPreferences$Editor;
    const-string v5, "cradle_weather_city"

    const/4 v6, 0x0

    move-object/from16 v0, v19

    move-object v1, v5

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 215
    const-string v5, "cradle_weather_city_location"

    const/4 v6, 0x0

    move-object/from16 v0, v19

    move-object v1, v5

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 217
    const-string v5, "cradle_weather_display"

    const/4 v6, 0x0

    move-object/from16 v0, v19

    move-object v1, v5

    move v2, v6

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 218
    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 219
    const/4 v7, 0x0

    .line 220
    const/16 v23, 0x0

    .line 223
    .end local v19           #ed:Landroid/content/SharedPreferences$Editor;
    :cond_2
    if-eqz v7, :cond_3

    if-eqz v23, :cond_3

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mController:Lcom/sec/android/app/cradle/Controller;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v7

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/cradle/Controller;->isCityAvaliable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->weatherList:Ljava/util/ArrayList;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/sec/android/app/cradle/AccuWeatherContainer;

    .line 226
    .local v18, data:Lcom/sec/android/app/cradle/AccuWeatherContainer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mPrefs:Landroid/content/SharedPreferences;

    move-object v5, v0

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v19

    .line 227
    .restart local v19       #ed:Landroid/content/SharedPreferences$Editor;
    const-string v5, "cradle_weather_city"

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sec/android/app/cradle/AccuWeatherContainer;->WeatherCityName:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v19

    move-object v1, v5

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 228
    const-string v5, "cradle_weather_city_location"

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sec/android/app/cradle/AccuWeatherContainer;->WeatherCityLocation:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v19

    move-object v1, v5

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 229
    const-string v5, "cradle_weather_city_changed"

    const/4 v6, 0x1

    move-object/from16 v0, v19

    move-object v1, v5

    move v2, v6

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 230
    const-string v5, "cradle_weather_refresh_time"

    const-wide/16 v6, 0x0

    move-object/from16 v0, v19

    move-object v1, v5

    move-wide v2, v6

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 231
    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 232
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sec/android/app/cradle/AccuWeatherContainer;->WeatherCityName:Ljava/lang/String;

    move-object v7, v0

    .line 233
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sec/android/app/cradle/AccuWeatherContainer;->WeatherCityLocation:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 237
    .end local v18           #data:Lcom/sec/android/app/cradle/AccuWeatherContainer;
    .end local v19           #ed:Landroid/content/SharedPreferences$Editor;
    :cond_3
    new-instance v4, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080010

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;-><init>(Lcom/sec/android/app/cradle/CradleWeatherSettings;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 238
    .local v4, item1:Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mAdapter:Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;

    move-object v5, v0

    invoke-virtual {v5, v4}, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;->add(Ljava/lang/Object;)V

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mPrefs:Landroid/content/SharedPreferences;

    move-object v5, v0

    const-string v6, "cradle_weather_refresh_time_index"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .end local v7           #selectCity:Ljava/lang/String;
    move-result v21

    .line 240
    .local v21, index:I
    const v5, 0x7f080021

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    sget-object v8, Lcom/sec/android/app/cradle/CradleWeatherSettings;->refresh_time:[I

    aget v8, v8, v21

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 242
    .local v11, refreshTime:Ljava/lang/String;
    new-instance v8, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080011

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x1

    const/4 v13, 0x1

    move-object/from16 v9, p0

    invoke-direct/range {v8 .. v13}, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;-><init>(Lcom/sec/android/app/cradle/CradleWeatherSettings;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 243
    .local v8, item2:Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mAdapter:Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;

    move-object v5, v0

    invoke-virtual {v5, v8}, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;->add(Ljava/lang/Object;)V

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mPrefs:Landroid/content/SharedPreferences;

    move-object v5, v0

    const-string v6, "cradle_weather_refresh_on"

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    .line 245
    .local v22, isDisplayWeather:Z
    move-object v0, v8

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;->setChecked(Z)V

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mPrefs:Landroid/content/SharedPreferences;

    move-object v5, v0

    const-string v6, "cradle_weather_unit"

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v25

    .line 253
    .local v25, weatherUnit:I
    if-nez v25, :cond_6

    .line 254
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080014

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080015

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 259
    .local v15, strWeatherUnit:Ljava/lang/String;
    :goto_1
    new-instance v12, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080012

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object/from16 v13, p0

    invoke-direct/range {v12 .. v17}, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;-><init>(Lcom/sec/android/app/cradle/CradleWeatherSettings;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 260
    .local v12, item4:Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mAdapter:Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;

    move-object v5, v0

    invoke-virtual {v5, v12}, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;->add(Ljava/lang/Object;)V

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mAdapter:Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;->notifyDataSetChanged()V

    .line 263
    sget-boolean v5, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mOnActivityResult:Z

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    .line 265
    const/4 v5, 0x0

    sput-boolean v5, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mOnActivityResult:Z

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->weatherList:Ljava/util/ArrayList;

    move-object v5, v0

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->weatherList:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_7

    .line 267
    :cond_4
    const/4 v5, 0x5

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->showDialog(I)V

    .line 273
    :cond_5
    :goto_2
    invoke-super/range {p0 .. p0}, Landroid/app/Activity;->onResume()V

    .line 274
    return-void

    .line 257
    .end local v12           #item4:Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;
    .end local v15           #strWeatherUnit:Ljava/lang/String;
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080013

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080016

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .restart local v15       #strWeatherUnit:Ljava/lang/String;
    goto :goto_1

    .line 269
    .restart local v12       #item4:Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;
    :cond_7
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->showDialog(I)V

    goto :goto_2
.end method

.method public selectAutoRefresh()V
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->showDialog(I)V

    .line 301
    return-void
.end method

.method public selectCity()V
    .locals 4

    .prologue
    .line 288
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->weatherList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->weatherList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 289
    :cond_0
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->showDialog(I)V

    .line 297
    :goto_0
    return-void

    .line 291
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->showDialog(I)V

    .line 293
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 294
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "cradle_weather_refresh_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 295
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public selectUnit()V
    .locals 1

    .prologue
    .line 304
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->showDialog(I)V

    .line 305
    return-void
.end method
