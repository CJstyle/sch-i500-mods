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


# instance fields
.field private mAdapter:Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;

.field public mBroadcastReceiver:Landroid/content/BroadcastReceiver;

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

    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 50
    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleHomeSettings;->mSettingItem:Ljava/util/ArrayList;

    .line 51
    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleHomeSettings;->mAdapter:Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;

    .line 178
    new-instance v0, Lcom/sec/android/app/cradle/CradleHomeSettings$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/cradle/CradleHomeSettings$2;-><init>(Lcom/sec/android/app/cradle/CradleHomeSettings;)V

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleHomeSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 577
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/cradle/CradleHomeSettings;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleHomeSettings;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/cradle/CradleHomeSettings;)Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleHomeSettings;->mAdapter:Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/cradle/CradleHomeSettings;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/sec/android/app/cradle/CradleHomeSettings;->formatIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/cradle/CradleHomeSettings;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/cradle/CradleHomeSettings;->onBtnCheckChanged(IZ)V

    return-void
.end method

.method private formatIntent(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    .line 691
    const-string v4, "wallpaper"

    invoke-virtual {p0, v4}, Lcom/sec/android/app/cradle/CradleHomeSettings;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/cradle/CradleHomeSettings;->mTempFile:Ljava/io/File;

    .line 692
    iget-object v4, p0, Lcom/sec/android/app/cradle/CradleHomeSettings;->mTempFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 693
    const-string v4, "CradleHomeSettings"

    const-string v5, "wallpaper file ok??"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/cradle/CradleHomeSettings;->mTempFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 698
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleHomeSettings;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 699
    .local v3, width:I
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleHomeSettings;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 701
    .local v1, height:I
    if-le v3, v1, :cond_1

    move v2, v3

    .line 702
    .local v2, w:I
    :goto_0
    if-le v3, v1, :cond_2

    move v0, v1

    .line 703
    .local v0, h:I
    :goto_1
    const-string v4, "outputX"

    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 704
    const-string v4, "outputY"

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 705
    const-string v4, "aspectX"

    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 706
    const-string v4, "aspectY"

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 707
    const-string v4, "scale"

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 708
    const-string v4, "noFaceDetection"

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 709
    const-string v4, "output"

    iget-object v5, p0, Lcom/sec/android/app/cradle/CradleHomeSettings;->mTempFile:Ljava/io/File;

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 710
    const-string v4, "outputFormat"

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v5}, Landroid/graphics/Bitmap$CompressFormat;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 714
    return-void

    .end local v0           #h:I
    .end local v2           #w:I
    :cond_1
    move v2, v1

    .line 701
    goto :goto_0

    .restart local v2       #w:I
    :cond_2
    move v0, v3

    .line 702
    goto :goto_1
.end method

.method private onBtnCheckChanged(IZ)V
    .locals 4
    .parameter "position"
    .parameter "check"

    .prologue
    .line 535
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

    .line 536
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleHomeSettings;->mSettingList:Landroid/widget/ListView;

    invoke-virtual {v1, p1, p2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 538
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleHomeSettings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 539
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 540
    const-string v1, "cradle_time_display"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 542
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 575
    :cond_0
    :goto_0
    return-void

    .line 544
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 545
    const-string v1, "cradle_weather_display"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 547
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    const-string v6, "cradle_wallpaper_changed"

    const-string v5, "cradle_current_wallpaper"

    .line 199
    const/4 v1, 0x6

    if-ne p1, v1, :cond_2

    .line 200
    if-ne p2, v2, :cond_1

    .line 201
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleHomeSettings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 202
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "cradle_current_wallpaper"

    const v1, 0x7f08001a

    invoke-virtual {p0, v1}, Lcom/sec/android/app/cradle/CradleHomeSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 203
    const-string v1, "cradle_wallpaper_type"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 204
    const-string v1, "cradle_wallpaper_changed"

    invoke-interface {v0, v6, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 205
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 223
    .end local v0           #ed:Landroid/content/SharedPreferences$Editor;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 224
    return-void

    .line 207
    :cond_1
    invoke-virtual {p0, v4}, Lcom/sec/android/app/cradle/CradleHomeSettings;->setResult(I)V

    goto :goto_0

    .line 211
    :cond_2
    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    .line 212
    if-ne p2, v2, :cond_3

    .line 213
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleHomeSettings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 214
    .restart local v0       #ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "cradle_current_wallpaper"

    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 215
    const-string v1, "cradle_wallpaper_type"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 216
    const-string v1, "cradle_wallpaper_changed"

    invoke-interface {v0, v6, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 217
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 219
    .end local v0           #ed:Landroid/content/SharedPreferences$Editor;
    :cond_3
    invoke-virtual {p0, v4}, Lcom/sec/android/app/cradle/CradleHomeSettings;->setResult(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const-string v7, "wallpaper"

    const-string v6, "CradleHomeSettings"

    .line 71
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const-string v3, "CradleHomeSettings"

    const-string v3, "setting onCreate~~~~~~~~~~"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const v3, 0x7f030002

    invoke-virtual {p0, v3}, Lcom/sec/android/app/cradle/CradleHomeSettings;->setContentView(I)V

    .line 77
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/cradle/CradleHomeSettings;->mPrefs:Landroid/content/SharedPreferences;

    .line 98
    const v3, 0x7f0a003d

    invoke-virtual {p0, v3}, Lcom/sec/android/app/cradle/CradleHomeSettings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/sec/android/app/cradle/CradleHomeSettings;->mSettingList:Landroid/widget/ListView;

    .line 100
    iget-object v3, p0, Lcom/sec/android/app/cradle/CradleHomeSettings;->mSettingItem:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 101
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/cradle/CradleHomeSettings;->mSettingItem:Ljava/util/ArrayList;

    .line 104
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/cradle/CradleHomeSettings;->mAdapter:Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;

    if-nez v3, :cond_1

    .line 105
    new-instance v3, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;

    const v4, 0x7f030004

    iget-object v5, p0, Lcom/sec/android/app/cradle/CradleHomeSettings;->mSettingItem:Ljava/util/ArrayList;

    invoke-direct {v3, p0, p0, v4, v5}, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;-><init>(Lcom/sec/android/app/cradle/CradleHomeSettings;Landroid/content/Context;ILjava/util/List;)V

    iput-object v3, p0, Lcom/sec/android/app/cradle/CradleHomeSettings;->mAdapter:Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;

    .line 108
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/cradle/CradleHomeSettings;->mSettingList:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/sec/android/app/cradle/CradleHomeSettings;->mAdapter:Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 109
    iget-object v3, p0, Lcom/sec/android/app/cradle/CradleHomeSettings;->mSettingList:Landroid/widget/ListView;

    new-instance v4, Lcom/sec/android/app/cradle/CradleHomeSettings$1;

    invoke-direct {v4, p0}, Lcom/sec/android/app/cradle/CradleHomeSettings$1;-><init>(Lcom/sec/android/app/cradle/CradleHomeSettings;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 159
    const-string v3, "wallpaper"

    invoke-virtual {p0, v7}, Lcom/sec/android/app/cradle/CradleHomeSettings;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/cradle/CradleHomeSettings;->mTempFile:Ljava/io/File;

    .line 160
    iget-object v3, p0, Lcom/sec/android/app/cradle/CradleHomeSettings;->mTempFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 161
    const-string v3, "CradleHomeSettings"

    const-string v3, "no wallpaper file??"

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :try_start_0
    const-string v3, "wallpaper"

    const/4 v4, 0x3

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/cradle/CradleHomeSettings;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 164
    .local v2, out:Ljava/io/FileOutputStream;
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 172
    .end local v2           #out:Ljava/io/FileOutputStream;
    :cond_2
    :goto_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 173
    .local v1, filter:Landroid/content/IntentFilter;
    sget-object v3, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    iget-object v3, p0, Lcom/sec/android/app/cradle/CradleHomeSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/sec/android/app/cradle/CradleHomeSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 176
    return-void

    .line 165
    .end local v1           #filter:Landroid/content/IntentFilter;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 166
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 167
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 168
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 9
    .parameter "id"

    .prologue
    const v8, 0x7f08000a

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 308
    const/4 v0, -0x1

    .line 311
    .local v0, checkedItem:I
    packed-switch p1, :pswitch_data_0

    .line 488
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v5

    :goto_0
    return-object v5

    .line 345
    :pswitch_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 348
    .local v4, twalertdialog2:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f08000d

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 350
    iget-object v5, p0, Lcom/sec/android/app/cradle/CradleHomeSettings;->mAdapter:Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;

    invoke-virtual {v5, v6}, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;

    .line 351
    .local v3, item:Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;
    iget-object v5, p0, Lcom/sec/android/app/cradle/CradleHomeSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v6, "cradle_current_clock"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 352
    .local v1, currentClock:I
    move v0, v1

    .line 355
    const v5, 0x7f040001

    new-instance v6, Lcom/sec/android/app/cradle/CradleHomeSettings$3;

    invoke-direct {v6, p0}, Lcom/sec/android/app/cradle/CradleHomeSettings$3;-><init>(Lcom/sec/android/app/cradle/CradleHomeSettings;)V

    invoke-virtual {v4, v5, v0, v6}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 385
    new-instance v5, Lcom/sec/android/app/cradle/CradleHomeSettings$4;

    invoke-direct {v5, p0}, Lcom/sec/android/app/cradle/CradleHomeSettings$4;-><init>(Lcom/sec/android/app/cradle/CradleHomeSettings;)V

    invoke-virtual {v4, v8, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 391
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    goto :goto_0

    .line 427
    .end local v1           #currentClock:I
    .end local v3           #item:Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;
    .end local v4           #twalertdialog2:Landroid/app/AlertDialog$Builder;
    :pswitch_1
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 430
    .restart local v4       #twalertdialog2:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f080017

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 432
    iget-object v5, p0, Lcom/sec/android/app/cradle/CradleHomeSettings;->mAdapter:Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;

    invoke-virtual {v5, v6}, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;

    .line 433
    .restart local v3       #item:Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;
    iget-object v5, p0, Lcom/sec/android/app/cradle/CradleHomeSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v6, "cradle_wallpaper_type"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 434
    .local v2, currentwallpapertype:I
    move v0, v2

    .line 437
    const/high16 v5, 0x7f04

    new-instance v6, Lcom/sec/android/app/cradle/CradleHomeSettings$5;

    invoke-direct {v6, p0}, Lcom/sec/android/app/cradle/CradleHomeSettings$5;-><init>(Lcom/sec/android/app/cradle/CradleHomeSettings;)V

    invoke-virtual {v4, v5, v0, v6}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 479
    new-instance v5, Lcom/sec/android/app/cradle/CradleHomeSettings$6;

    invoke-direct {v5, p0}, Lcom/sec/android/app/cradle/CradleHomeSettings$6;-><init>(Lcom/sec/android/app/cradle/CradleHomeSettings;)V

    invoke-virtual {v4, v8, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 485
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    goto :goto_0

    .line 311
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleHomeSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleHomeSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 193
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 194
    return-void
.end method

.method protected onResume()V
    .locals 20

    .prologue
    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleHomeSettings;->mAdapter:Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;->clear()V

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleHomeSettings;->mPrefs:Landroid/content/SharedPreferences;

    move-object v3, v0

    const-string v4, "cradle_wallpaper_type"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v19

    .line 231
    .local v19, wallpaperType:I
    const/4 v2, 0x0

    .line 232
    .local v2, item1:Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;
    packed-switch v19, :pswitch_data_0

    .line 251
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleHomeSettings;->mPrefs:Landroid/content/SharedPreferences;

    move-object v3, v0

    const-string v4, "cradle_current_clock"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v16

    .line 252
    .local v16, currentView:I
    const/4 v9, 0x0

    .line 253
    .local v9, subTitle:Ljava/lang/String;
    packed-switch v16, :pswitch_data_1

    .line 264
    :goto_1
    new-instance v6, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/cradle/CradleHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object/from16 v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;-><init>(Lcom/sec/android/app/cradle/CradleHomeSettings;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 265
    .local v6, item2:Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleHomeSettings;->mAdapter:Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;

    move-object v3, v0

    invoke-virtual {v3, v6}, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;->add(Ljava/lang/Object;)V

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleHomeSettings;->mPrefs:Landroid/content/SharedPreferences;

    move-object v3, v0

    const-string v4, "cradle_time_display"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    .line 267
    .local v17, isDisplayClock:Z
    move-object v0, v6

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;->setChecked(Z)V

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleHomeSettings;->mPrefs:Landroid/content/SharedPreferences;

    move-object v3, v0

    const-string v4, "cradle_weather_city"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 270
    .local v13, selectCity:Ljava/lang/String;
    new-instance v10, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/cradle/CradleHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08000e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x1

    const/4 v15, 0x1

    move-object/from16 v11, p0

    invoke-direct/range {v10 .. v15}, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;-><init>(Lcom/sec/android/app/cradle/CradleHomeSettings;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 271
    .local v10, item4:Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleHomeSettings;->mAdapter:Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;

    move-object v3, v0

    invoke-virtual {v3, v10}, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;->add(Ljava/lang/Object;)V

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleHomeSettings;->mPrefs:Landroid/content/SharedPreferences;

    move-object v3, v0

    const-string v4, "cradle_weather_display"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    .line 273
    .local v18, isDisplayWeather:Z
    move-object v0, v10

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;->setChecked(Z)V

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleHomeSettings;->mAdapter:Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;->notifyDataSetChanged()V

    .line 284
    invoke-super/range {p0 .. p0}, Landroid/app/Activity;->onResume()V

    .line 285
    return-void

    .line 234
    .end local v6           #item2:Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;
    .end local v9           #subTitle:Ljava/lang/String;
    .end local v10           #item4:Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;
    .end local v13           #selectCity:Ljava/lang/String;
    .end local v16           #currentView:I
    .end local v17           #isDisplayClock:Z
    .end local v18           #isDisplayWeather:Z
    :pswitch_0
    new-instance v2, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;

    .end local v2           #item1:Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/cradle/CradleHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08000c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/cradle/CradleHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f080018

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;-><init>(Lcom/sec/android/app/cradle/CradleHomeSettings;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 236
    .restart local v2       #item1:Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleHomeSettings;->mAdapter:Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;

    move-object v3, v0

    invoke-virtual {v3, v2}, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;->add(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 239
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleHomeSettings;->mPrefs:Landroid/content/SharedPreferences;

    move-object v3, v0

    const-string v4, "cradle_current_wallpaper"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 240
    .local v5, wallPaper:Ljava/lang/String;
    new-instance v2, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;

    .end local v2           #item1:Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/cradle/CradleHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08000c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;-><init>(Lcom/sec/android/app/cradle/CradleHomeSettings;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 241
    .restart local v2       #item1:Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleHomeSettings;->mAdapter:Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;

    move-object v3, v0

    invoke-virtual {v3, v2}, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;->add(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 245
    .end local v5           #wallPaper:Ljava/lang/String;
    :pswitch_2
    new-instance v2, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;

    .end local v2           #item1:Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/cradle/CradleHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08000c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/cradle/CradleHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08001a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v6, v2

    move-object/from16 v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;-><init>(Lcom/sec/android/app/cradle/CradleHomeSettings;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 247
    .restart local v2       #item1:Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleHomeSettings;->mAdapter:Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;

    move-object v3, v0

    invoke-virtual {v3, v2}, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;->add(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 255
    .restart local v9       #subTitle:Ljava/lang/String;
    .restart local v16       #currentView:I
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/cradle/CradleHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08001b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 256
    goto/16 :goto_1

    .line 261
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/cradle/CradleHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08001d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 232
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 253
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public selectAccuWeather()V
    .locals 3

    .prologue
    .line 300
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 301
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.sec.android.app.cradle"

    const-string v2, "com.sec.android.app.cradle.CradleWeatherSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleHomeSettings;->startActivity(Landroid/content/Intent;)V

    .line 303
    return-void
.end method

.method public selectDisplayClock()V
    .locals 1

    .prologue
    .line 296
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleHomeSettings;->showDialog(I)V

    .line 297
    return-void
.end method

.method public selectWallpaperDialog()V
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleHomeSettings;->showDialog(I)V

    .line 293
    return-void
.end method
