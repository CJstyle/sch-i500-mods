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
.field private static final refresh_time:[I


# instance fields
.field private cityList:[Ljava/lang/CharSequence;

.field private cityListLocation:[Ljava/lang/CharSequence;

.field private mAdapter:Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;

.field public mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mController:Lcom/sec/android/app/cradle/Controller;

.field mPrefs:Landroid/content/SharedPreferences;

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
    .line 153
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->refresh_time:[I

    return-void

    nop

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

    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mSettingItem:Ljava/util/ArrayList;

    .line 39
    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mAdapter:Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;

    .line 131
    new-instance v0, Lcom/sec/android/app/cradle/CradleWeatherSettings$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/cradle/CradleWeatherSettings$2;-><init>(Lcom/sec/android/app/cradle/CradleWeatherSettings;)V

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 460
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/cradle/CradleWeatherSettings;)[Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->cityList:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/cradle/CradleWeatherSettings;)[Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->cityListLocation:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/cradle/CradleWeatherSettings;)Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mAdapter:Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;

    return-object v0
.end method

.method static synthetic access$400()[I
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->refresh_time:[I

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/cradle/CradleWeatherSettings;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->onBtnCheckChanged(IZ)V

    return-void
.end method

.method private onBtnCheckChanged(IZ)V
    .locals 4
    .parameter "position"
    .parameter "check"

    .prologue
    .line 450
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

    .line 451
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mSettingList:Landroid/widget/ListView;

    invoke-virtual {v1, p1, p2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 453
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 454
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 455
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "cradle_weather_refresh_on"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 456
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 458
    .end local v0           #ed:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method


# virtual methods
.method public getWeatherDataFromDB()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mController:Lcom/sec/android/app/cradle/Controller;

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/Controller;->fetchWeatherRows()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->weatherList:Ljava/util/ArrayList;

    .line 151
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 161
    const/4 v6, 0x4

    if-ne p1, v6, :cond_4

    .line 162
    const/4 v6, -0x1

    if-eq p2, v6, :cond_0

    if-eqz p2, :cond_0

    const/4 v6, 0x1

    if-ne p2, v6, :cond_4

    .line 163
    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mController:Lcom/sec/android/app/cradle/Controller;

    const-string v7, "WEATHER_SELECT_CITY"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/cradle/Controller;->getInfoAlarmPrefs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 164
    .local v3, locationName:Ljava/lang/String;
    const/4 v0, 0x0

    .line 166
    .local v0, cityName:Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->weatherList:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    .line 167
    iget-object v6, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->weatherList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 169
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->getWeatherDataFromDB()V

    .line 170
    iget-object v6, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->weatherList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_2

    .line 171
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v6, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->weatherList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 172
    iget-object v6, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->weatherList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/cradle/AccuWeatherContainer;

    .line 174
    .local v5, weatherItem:Lcom/sec/android/app/cradle/AccuWeatherContainer;
    iget-object v6, v5, Lcom/sec/android/app/cradle/AccuWeatherContainer;->WeatherCityLocation:Ljava/lang/String;

    invoke-static {v3, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 175
    iget-object v0, v5, Lcom/sec/android/app/cradle/AccuWeatherContainer;->WeatherCityName:Ljava/lang/String;

    .line 180
    .end local v2           #i:I
    .end local v5           #weatherItem:Lcom/sec/android/app/cradle/AccuWeatherContainer;
    :cond_2
    if-nez v0, :cond_3

    .line 181
    const/4 v3, 0x0

    .line 183
    :cond_3
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 185
    .local v4, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 186
    .local v1, ed:Landroid/content/SharedPreferences$Editor;
    const-string v6, "cradle_weather_city"

    invoke-interface {v1, v6, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 187
    const-string v6, "cradle_weather_city_location"

    invoke-interface {v1, v6, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 188
    const-string v6, "cradle_weather_refresh_time"

    const-wide/16 v7, 0x0

    invoke-interface {v1, v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 189
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 192
    .end local v0           #cityName:Ljava/lang/String;
    .end local v1           #ed:Landroid/content/SharedPreferences$Editor;
    .end local v3           #locationName:Ljava/lang/String;
    .end local v4           #prefs:Landroid/content/SharedPreferences;
    :cond_4
    return-void

    .line 171
    .restart local v0       #cityName:Ljava/lang/String;
    .restart local v2       #i:I
    .restart local v3       #locationName:Ljava/lang/String;
    .restart local v5       #weatherItem:Lcom/sec/android/app/cradle/AccuWeatherContainer;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const-string v1, "CradleWeatherSettings"

    const-string v2, "setting onCreate~~~~~~~~~~"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const v1, 0x7f030009

    invoke-virtual {p0, v1}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->setContentView(I)V

    .line 67
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mPrefs:Landroid/content/SharedPreferences;

    .line 69
    invoke-static {p0}, Lcom/sec/android/app/cradle/Controller;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/cradle/Controller;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mController:Lcom/sec/android/app/cradle/Controller;

    .line 71
    const v1, 0x7f0a003d

    invoke-virtual {p0, v1}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mSettingList:Landroid/widget/ListView;

    .line 94
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mSettingItem:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 95
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mSettingItem:Ljava/util/ArrayList;

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mAdapter:Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;

    if-nez v1, :cond_1

    .line 99
    new-instance v1, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;

    const v2, 0x7f030004

    iget-object v3, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mSettingItem:Ljava/util/ArrayList;

    invoke-direct {v1, p0, p0, v2, v3}, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;-><init>(Lcom/sec/android/app/cradle/CradleWeatherSettings;Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mAdapter:Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;

    .line 102
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mSettingList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mAdapter:Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 103
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mSettingList:Landroid/widget/ListView;

    new-instance v2, Lcom/sec/android/app/cradle/CradleWeatherSettings$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/cradle/CradleWeatherSettings$1;-><init>(Lcom/sec/android/app/cradle/CradleWeatherSettings;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 125
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 126
    .local v0, filter:Landroid/content/IntentFilter;
    sget-object v1, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 128
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 129
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 14
    .parameter "id"

    .prologue
    const/4 v13, 0x4

    const v12, 0x7f08000a

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 263
    const/4 v0, -0x1

    .line 266
    .local v0, checkedItem:I
    packed-switch p1, :pswitch_data_0

    .line 403
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v7

    :goto_0
    return-object v7

    .line 268
    :pswitch_0
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 271
    .local v5, twalertdialog2:Landroid/app/AlertDialog$Builder;
    const v7, 0x7f08000f

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 273
    iget-object v7, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mAdapter:Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;

    invoke-virtual {v7, v10}, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;

    .line 274
    .local v2, item:Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;
    iget-object v7, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v8, "cradle_weather_city"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 275
    .local v4, selectCity:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v7, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->cityList:[Ljava/lang/CharSequence;

    array-length v7, v7

    if-ge v1, v7, :cond_0

    .line 276
    iget-object v7, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->cityList:[Ljava/lang/CharSequence;

    aget-object v7, v7, v1

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v7, v11, :cond_1

    .line 277
    move v0, v1

    .line 283
    :cond_0
    iget-object v7, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->cityList:[Ljava/lang/CharSequence;

    new-instance v8, Lcom/sec/android/app/cradle/CradleWeatherSettings$3;

    invoke-direct {v8, p0}, Lcom/sec/android/app/cradle/CradleWeatherSettings$3;-><init>(Lcom/sec/android/app/cradle/CradleWeatherSettings;)V

    invoke-virtual {v5, v7, v0, v8}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 303
    new-instance v7, Lcom/sec/android/app/cradle/CradleWeatherSettings$4;

    invoke-direct {v7, p0}, Lcom/sec/android/app/cradle/CradleWeatherSettings$4;-><init>(Lcom/sec/android/app/cradle/CradleWeatherSettings;)V

    invoke-virtual {v5, v12, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 309
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    goto :goto_0

    .line 275
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 312
    .end local v1           #i:I
    .end local v2           #item:Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;
    .end local v4           #selectCity:Ljava/lang/String;
    .end local v5           #twalertdialog2:Landroid/app/AlertDialog$Builder;
    :pswitch_1
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 315
    .restart local v5       #twalertdialog2:Landroid/app/AlertDialog$Builder;
    const v7, 0x7f080010

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 317
    iget-object v7, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mAdapter:Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;

    invoke-virtual {v7, v11}, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;

    .line 318
    .restart local v2       #item:Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;
    iget-object v7, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v8, "cradle_weather_refresh_time_index"

    invoke-interface {v7, v8, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 321
    new-array v3, v13, [Ljava/lang/CharSequence;

    .line 322
    .local v3, refresh_time_item:[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    if-ge v1, v13, :cond_2

    .line 323
    const v7, 0x7f08001e

    invoke-virtual {p0, v7}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v11, [Ljava/lang/Object;

    sget-object v9, Lcom/sec/android/app/cradle/CradleWeatherSettings;->refresh_time:[I

    aget v9, v9, v1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v1

    .line 322
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 325
    :cond_2
    new-instance v7, Lcom/sec/android/app/cradle/CradleWeatherSettings$5;

    invoke-direct {v7, p0}, Lcom/sec/android/app/cradle/CradleWeatherSettings$5;-><init>(Lcom/sec/android/app/cradle/CradleWeatherSettings;)V

    invoke-virtual {v5, v3, v0, v7}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 342
    new-instance v7, Lcom/sec/android/app/cradle/CradleWeatherSettings$6;

    invoke-direct {v7, p0}, Lcom/sec/android/app/cradle/CradleWeatherSettings$6;-><init>(Lcom/sec/android/app/cradle/CradleWeatherSettings;)V

    invoke-virtual {v5, v12, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 348
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    goto/16 :goto_0

    .line 351
    .end local v1           #i:I
    .end local v2           #item:Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;
    .end local v3           #refresh_time_item:[Ljava/lang/CharSequence;
    .end local v5           #twalertdialog2:Landroid/app/AlertDialog$Builder;
    :pswitch_2
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 354
    .restart local v5       #twalertdialog2:Landroid/app/AlertDialog$Builder;
    const v7, 0x7f080011

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 356
    iget-object v7, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mAdapter:Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;

    .line 357
    .restart local v2       #item:Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;
    iget-object v7, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v8, "cradle_weather_unit"

    invoke-interface {v7, v8, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 358
    .local v6, weatherUnit:I
    if-nez v6, :cond_3

    .line 359
    const/4 v0, 0x0

    .line 366
    :goto_3
    const v7, 0x7f040002

    new-instance v8, Lcom/sec/android/app/cradle/CradleWeatherSettings$7;

    invoke-direct {v8, p0}, Lcom/sec/android/app/cradle/CradleWeatherSettings$7;-><init>(Lcom/sec/android/app/cradle/CradleWeatherSettings;)V

    invoke-virtual {v5, v7, v0, v8}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 394
    new-instance v7, Lcom/sec/android/app/cradle/CradleWeatherSettings$8;

    invoke-direct {v7, p0}, Lcom/sec/android/app/cradle/CradleWeatherSettings$8;-><init>(Lcom/sec/android/app/cradle/CradleWeatherSettings;)V

    invoke-virtual {v5, v12, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 400
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    goto/16 :goto_0

    .line 362
    :cond_3
    const/4 v0, 0x1

    goto :goto_3

    .line 266
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 146
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 147
    return-void
.end method

.method protected onResume()V
    .locals 21

    .prologue
    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mAdapter:Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;->clear()V

    .line 199
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->getWeatherDataFromDB()V

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->weatherList:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/CharSequence;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/cradle/CradleWeatherSettings;->cityList:[Ljava/lang/CharSequence;

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->weatherList:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/CharSequence;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/cradle/CradleWeatherSettings;->cityListLocation:[Ljava/lang/CharSequence;

    .line 204
    const/16 v16, 0x0

    .local v16, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->weatherList:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v16

    move v1, v3

    if-ge v0, v1, :cond_0

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->weatherList:Ljava/util/ArrayList;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/sec/android/app/cradle/AccuWeatherContainer;

    .line 206
    .local v19, weatherItem:Lcom/sec/android/app/cradle/AccuWeatherContainer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->cityList:[Ljava/lang/CharSequence;

    move-object v3, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sec/android/app/cradle/AccuWeatherContainer;->WeatherCityName:Ljava/lang/String;

    move-object v4, v0

    aput-object v4, v3, v16

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->cityListLocation:[Ljava/lang/CharSequence;

    move-object v3, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sec/android/app/cradle/AccuWeatherContainer;->WeatherCityLocation:Ljava/lang/String;

    move-object v4, v0

    aput-object v4, v3, v16

    .line 204
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 209
    .end local v19           #weatherItem:Lcom/sec/android/app/cradle/AccuWeatherContainer;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mPrefs:Landroid/content/SharedPreferences;

    move-object v3, v0

    const-string v4, "cradle_weather_city"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 210
    .local v5, selectCity:Ljava/lang/String;
    new-instance v2, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08000f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;-><init>(Lcom/sec/android/app/cradle/CradleWeatherSettings;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 211
    .local v2, item1:Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mAdapter:Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;

    move-object v3, v0

    invoke-virtual {v3, v2}, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;->add(Ljava/lang/Object;)V

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mPrefs:Landroid/content/SharedPreferences;

    move-object v3, v0

    const-string v4, "cradle_weather_refresh_time_index"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .end local v5           #selectCity:Ljava/lang/String;
    move-result v17

    .line 213
    .local v17, index:I
    const v3, 0x7f08001e

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Lcom/sec/android/app/cradle/CradleWeatherSettings;->refresh_time:[I

    aget v6, v6, v17

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 215
    .local v9, refreshTime:Ljava/lang/String;
    new-instance v6, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080010

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object/from16 v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;-><init>(Lcom/sec/android/app/cradle/CradleWeatherSettings;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 216
    .local v6, item2:Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mAdapter:Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;

    move-object v3, v0

    invoke-virtual {v3, v6}, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;->add(Ljava/lang/Object;)V

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mPrefs:Landroid/content/SharedPreferences;

    move-object v3, v0

    const-string v4, "cradle_weather_refresh_on"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    .line 218
    .local v18, isDisplayWeather:Z
    move-object v0, v6

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;->setChecked(Z)V

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mPrefs:Landroid/content/SharedPreferences;

    move-object v3, v0

    const-string v4, "cradle_weather_unit"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v20

    .line 226
    .local v20, weatherUnit:I
    if-nez v20, :cond_1

    .line 227
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080013

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080014

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 232
    .local v13, strWeatherUnit:Ljava/lang/String;
    :goto_1
    new-instance v10, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080011

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v11, p0

    invoke-direct/range {v10 .. v15}, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;-><init>(Lcom/sec/android/app/cradle/CradleWeatherSettings;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 233
    .local v10, item4:Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mAdapter:Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;

    move-object v3, v0

    invoke-virtual {v3, v10}, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;->add(Ljava/lang/Object;)V

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mAdapter:Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;->notifyDataSetChanged()V

    .line 235
    invoke-super/range {p0 .. p0}, Landroid/app/Activity;->onResume()V

    .line 236
    return-void

    .line 230
    .end local v10           #item4:Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;
    .end local v13           #strWeatherUnit:Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080012

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080015

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .restart local v13       #strWeatherUnit:Ljava/lang/String;
    goto :goto_1
.end method

.method public selectAutoRefresh()V
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->showDialog(I)V

    .line 254
    return-void
.end method

.method public selectUnit()V
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->showDialog(I)V

    .line 258
    return-void
.end method
