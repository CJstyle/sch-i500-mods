.class public Lcom/sec/android/app/cradle/CradleHomeSettings;
.super Landroid/app/Activity;
.source "CradleHomeSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;,
        Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;
    }
.end annotation


# static fields
.field public static final ACTIVITY_RESULT_SET_WALLPAPER:I = 0x5

.field public static final ACTIVITY_RESULT_SET_WALLPAPER_LAUNCHER:I = 0x6

.field public static final SELECT_DISPLAY_CLOCK:I = 0x3

.field public static final SELECT_DISPLAY_WEATHER:I = 0x4

.field public static final SELECT_WALLPAPER_DIALOG:I = 0x2

.field public static final TAG:Ljava/lang/String; = "CradleHomeSettings"

.field public static final TRANSITION_EFFECT_DIALOG:I = 0x1


# instance fields
.field private mAdapter:Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;

.field private mCancelButton:Landroid/widget/Button;

.field private mOkButton:Landroid/widget/Button;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mSettingItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingList:Landroid/widget/ListView;

.field private mTempFile:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleHomeSettings;->mSettingItem:Ljava/util/ArrayList;

    .line 45
    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleHomeSettings;->mAdapter:Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;

    .line 536
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/cradle/CradleHomeSettings;)Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleHomeSettings;->mAdapter:Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/cradle/CradleHomeSettings;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleHomeSettings;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/cradle/CradleHomeSettings;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/sec/android/app/cradle/CradleHomeSettings;->formatIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/cradle/CradleHomeSettings;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/cradle/CradleHomeSettings;->onBtnCheckChanged(IZ)V

    return-void
.end method

.method private formatIntent(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    .line 659
    const-string v2, "wallpaper"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/cradle/CradleHomeSettings;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/cradle/CradleHomeSettings;->mTempFile:Ljava/io/File;

    .line 660
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleHomeSettings;->mTempFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 661
    const-string v2, "CradleHomeSettings"

    const-string v3, "wallpaper file ok??"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleHomeSettings;->mTempFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 666
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleHomeSettings;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 667
    .local v1, width:I
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleHomeSettings;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 668
    .local v0, height:I
    const-string v2, "outputX"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 669
    const-string v2, "outputY"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 670
    const-string v2, "aspectX"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 671
    const-string v2, "aspectY"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 672
    const-string v2, "scale"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 673
    const-string v2, "noFaceDetection"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 674
    const-string v2, "output"

    iget-object v3, p0, Lcom/sec/android/app/cradle/CradleHomeSettings;->mTempFile:Ljava/io/File;

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 675
    const-string v2, "outputFormat"

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v3}, Landroid/graphics/Bitmap$CompressFormat;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 679
    return-void
.end method

.method private onBtnCheckChanged(IZ)V
    .locals 4
    .parameter "position"
    .parameter "check"

    .prologue
    .line 498
    const-string v1, "CradleHomeSettings"

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

    .line 499
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleHomeSettings;->mSettingList:Landroid/widget/ListView;

    invoke-virtual {v1, p1, p2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 500
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleHomeSettings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 501
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    if-nez p1, :cond_1

    .line 502
    const-string v1, "cradle_time_display"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 503
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 534
    :cond_0
    :goto_0
    return-void

    .line 505
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 506
    const-string v1, "cradle_weather_display"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 507
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const-string v5, "cradle_wallpaper_type"

    const-string v4, "cradle_current_wallpaper"

    .line 165
    const/4 v1, 0x6

    if-ne p1, v1, :cond_2

    .line 166
    if-ne p2, v2, :cond_1

    .line 167
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleHomeSettings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 168
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "cradle_current_wallpaper"

    const v1, 0x7f08001d

    invoke-virtual {p0, v1}, Lcom/sec/android/app/cradle/CradleHomeSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 169
    const-string v1, "cradle_wallpaper_type"

    const/4 v1, 0x2

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 170
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 187
    .end local v0           #ed:Landroid/content/SharedPreferences$Editor;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 188
    return-void

    .line 172
    :cond_1
    invoke-virtual {p0, v3}, Lcom/sec/android/app/cradle/CradleHomeSettings;->setResult(I)V

    .line 173
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleHomeSettings;->finish()V

    goto :goto_0

    .line 176
    :cond_2
    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    .line 177
    if-ne p2, v2, :cond_3

    .line 178
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleHomeSettings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 179
    .restart local v0       #ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "cradle_current_wallpaper"

    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 180
    const-string v1, "cradle_wallpaper_type"

    const/4 v1, 0x1

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 181
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 183
    .end local v0           #ed:Landroid/content/SharedPreferences$Editor;
    :cond_3
    invoke-virtual {p0, v3}, Lcom/sec/android/app/cradle/CradleHomeSettings;->setResult(I)V

    .line 184
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleHomeSettings;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const-string v6, "wallpaper"

    const-string v5, "CradleHomeSettings"

    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const-string v2, "CradleHomeSettings"

    const-string v2, "setting onCreate~~~~~~~~~~"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const v2, 0x7f030001

    invoke-virtual {p0, v2}, Lcom/sec/android/app/cradle/CradleHomeSettings;->setContentView(I)V

    .line 67
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/cradle/CradleHomeSettings;->mPrefs:Landroid/content/SharedPreferences;

    .line 88
    const v2, 0x7f0a0039

    invoke-virtual {p0, v2}, Lcom/sec/android/app/cradle/CradleHomeSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/sec/android/app/cradle/CradleHomeSettings;->mSettingList:Landroid/widget/ListView;

    .line 90
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleHomeSettings;->mSettingItem:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 91
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/cradle/CradleHomeSettings;->mSettingItem:Ljava/util/ArrayList;

    .line 94
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleHomeSettings;->mAdapter:Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;

    if-nez v2, :cond_1

    .line 95
    new-instance v2, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;

    const v3, 0x7f030002

    iget-object v4, p0, Lcom/sec/android/app/cradle/CradleHomeSettings;->mSettingItem:Ljava/util/ArrayList;

    invoke-direct {v2, p0, p0, v3, v4}, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;-><init>(Lcom/sec/android/app/cradle/CradleHomeSettings;Landroid/content/Context;ILjava/util/List;)V

    iput-object v2, p0, Lcom/sec/android/app/cradle/CradleHomeSettings;->mAdapter:Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;

    .line 98
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleHomeSettings;->mSettingList:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sec/android/app/cradle/CradleHomeSettings;->mAdapter:Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 148
    const-string v2, "wallpaper"

    invoke-virtual {p0, v6}, Lcom/sec/android/app/cradle/CradleHomeSettings;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/cradle/CradleHomeSettings;->mTempFile:Ljava/io/File;

    .line 149
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleHomeSettings;->mTempFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 150
    const-string v2, "CradleHomeSettings"

    const-string v2, "no wallpaper file??"

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :try_start_0
    const-string v2, "wallpaper"

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/cradle/CradleHomeSettings;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 153
    .local v1, out:Ljava/io/FileOutputStream;
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 160
    .end local v1           #out:Ljava/io/FileOutputStream;
    :cond_2
    :goto_0
    return-void

    .line 154
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 155
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 156
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 157
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 9
    .parameter "id"

    .prologue
    const v8, 0x7f08000a

    const/4 v7, 0x0

    .line 272
    const/4 v0, -0x1

    .line 275
    .local v0, checkedItem:I
    packed-switch p1, :pswitch_data_0

    .line 451
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v5

    :goto_0
    return-object v5

    .line 309
    :pswitch_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 312
    .local v4, twalertdialog2:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f08000e

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 314
    iget-object v5, p0, Lcom/sec/android/app/cradle/CradleHomeSettings;->mAdapter:Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;

    invoke-virtual {v5, v7}, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;

    .line 315
    .local v3, item:Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;
    iget-object v5, p0, Lcom/sec/android/app/cradle/CradleHomeSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v6, "cradle_current_clock"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 316
    .local v1, currentClock:I
    move v0, v1

    .line 319
    const v5, 0x7f040001

    new-instance v6, Lcom/sec/android/app/cradle/CradleHomeSettings$1;

    invoke-direct {v6, p0}, Lcom/sec/android/app/cradle/CradleHomeSettings$1;-><init>(Lcom/sec/android/app/cradle/CradleHomeSettings;)V

    invoke-virtual {v4, v5, v0, v6}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 349
    new-instance v5, Lcom/sec/android/app/cradle/CradleHomeSettings$2;

    invoke-direct {v5, p0}, Lcom/sec/android/app/cradle/CradleHomeSettings$2;-><init>(Lcom/sec/android/app/cradle/CradleHomeSettings;)V

    invoke-virtual {v4, v8, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 355
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    goto :goto_0

    .line 391
    .end local v1           #currentClock:I
    .end local v3           #item:Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;
    .end local v4           #twalertdialog2:Landroid/app/AlertDialog$Builder;
    :pswitch_1
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 394
    .restart local v4       #twalertdialog2:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f08001a

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 396
    iget-object v5, p0, Lcom/sec/android/app/cradle/CradleHomeSettings;->mAdapter:Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;

    .line 397
    .restart local v3       #item:Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;
    iget-object v5, p0, Lcom/sec/android/app/cradle/CradleHomeSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v6, "cradle_wallpaper_type"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 398
    .local v2, currentwallpapertype:I
    move v0, v2

    .line 401
    const/high16 v5, 0x7f04

    new-instance v6, Lcom/sec/android/app/cradle/CradleHomeSettings$3;

    invoke-direct {v6, p0}, Lcom/sec/android/app/cradle/CradleHomeSettings$3;-><init>(Lcom/sec/android/app/cradle/CradleHomeSettings;)V

    invoke-virtual {v4, v5, v0, v6}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 442
    new-instance v5, Lcom/sec/android/app/cradle/CradleHomeSettings$4;

    invoke-direct {v5, p0}, Lcom/sec/android/app/cradle/CradleHomeSettings$4;-><init>(Lcom/sec/android/app/cradle/CradleHomeSettings;)V

    invoke-virtual {v4, v8, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 448
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    goto :goto_0

    .line 275
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 14

    .prologue
    const/4 v4, 0x1

    .line 193
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleHomeSettings;->mAdapter:Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;->clear()V

    .line 216
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleHomeSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "cradle_current_clock"

    const/4 v6, 0x0

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 217
    .local v11, currentView:I
    const/4 v3, 0x0

    .line 218
    .local v3, subTitle:Ljava/lang/String;
    packed-switch v11, :pswitch_data_0

    .line 229
    :goto_0
    new-instance v0, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;

    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;-><init>(Lcom/sec/android/app/cradle/CradleHomeSettings;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 230
    .local v0, item2:Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleHomeSettings;->mAdapter:Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;->add(Ljava/lang/Object;)V

    .line 231
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleHomeSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "cradle_time_display"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 232
    .local v12, isDisplayClock:Z
    invoke-virtual {v0, v12}, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;->setChecked(Z)V

    .line 233
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleHomeSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "cradle_weather_city"

    const/4 v6, 0x0

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 235
    .local v8, selectCity:Ljava/lang/String;
    new-instance v5, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;

    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v6, p0

    move v9, v4

    move v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;-><init>(Lcom/sec/android/app/cradle/CradleHomeSettings;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 236
    .local v5, item4:Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleHomeSettings;->mAdapter:Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;

    invoke-virtual {v1, v5}, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;->add(Ljava/lang/Object;)V

    .line 237
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleHomeSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "cradle_weather_display"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 238
    .local v13, isDisplayWeather:Z
    invoke-virtual {v5, v13}, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;->setChecked(Z)V

    .line 247
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleHomeSettings;->mAdapter:Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;->notifyDataSetChanged()V

    .line 248
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 249
    return-void

    .line 220
    .end local v0           #item2:Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;
    .end local v5           #item4:Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;
    .end local v8           #selectCity:Ljava/lang/String;
    .end local v12           #isDisplayClock:Z
    .end local v13           #isDisplayWeather:Z
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 221
    goto :goto_0

    .line 226
    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080020

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 218
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public selectAccuWeather()V
    .locals 3

    .prologue
    .line 264
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 265
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.sec.android.app.cradle"

    const-string v2, "com.sec.android.app.cradle.CradleWeatherSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleHomeSettings;->startActivity(Landroid/content/Intent;)V

    .line 267
    return-void
.end method

.method public selectDisplayClock()V
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleHomeSettings;->showDialog(I)V

    .line 261
    return-void
.end method

.method public selectTransitionEffect()V
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleHomeSettings;->showDialog(I)V

    .line 253
    return-void
.end method

.method public selectWallpaperDialog()V
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleHomeSettings;->showDialog(I)V

    .line 257
    return-void
.end method
