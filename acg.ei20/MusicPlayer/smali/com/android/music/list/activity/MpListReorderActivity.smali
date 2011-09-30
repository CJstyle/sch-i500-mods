.class public Lcom/android/music/list/activity/MpListReorderActivity;
.super Landroid/app/Activity;
.source "MpListReorderActivity.java"

# interfaces
.implements Lcom/android/music/common/util/OnLowBatteryListener;


# instance fields
.field private mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

.field private mConditions:[Ljava/lang/String;

.field private mListTitleText:[Ljava/lang/String;

.field private mListType:I

.field private mListView:Lcom/android/music/list/view/MpListReorderView;

.field private final mMediaReceiver:Landroid/content/BroadcastReceiver;

.field mOnClickListener:Landroid/view/View$OnClickListener;

.field private mTitleLayout:Lcom/android/music/list/layout/MpReorderListScreenLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 258
    new-instance v0, Lcom/android/music/list/activity/MpListReorderActivity$1;

    invoke-direct {v0, p0}, Lcom/android/music/list/activity/MpListReorderActivity$1;-><init>(Lcom/android/music/list/activity/MpListReorderActivity;)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpListReorderActivity;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    .line 278
    new-instance v0, Lcom/android/music/list/activity/MpListReorderActivity$2;

    invoke-direct {v0, p0}, Lcom/android/music/list/activity/MpListReorderActivity$2;-><init>(Lcom/android/music/list/activity/MpListReorderActivity;)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpListReorderActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/music/list/activity/MpListReorderActivity;)Lcom/android/music/list/layout/MpReorderListScreenLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/music/list/activity/MpListReorderActivity;->mTitleLayout:Lcom/android/music/list/layout/MpReorderListScreenLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/music/list/activity/MpListReorderActivity;)Lcom/android/music/list/view/MpListReorderView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/music/list/activity/MpListReorderActivity;->mListView:Lcom/android/music/list/view/MpListReorderView;

    return-object v0
.end method

.method private initIndexer(Z)V
    .locals 5
    .parameter "first"

    .prologue
    const/4 v4, -0x1

    .line 187
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/android/music/list/activity/MpListReorderActivity;->mListView:Lcom/android/music/list/view/MpListReorderView;

    if-eqz v3, :cond_0

    .line 188
    iget-object v3, p0, Lcom/android/music/list/activity/MpListReorderActivity;->mTitleLayout:Lcom/android/music/list/layout/MpReorderListScreenLayout;

    invoke-virtual {v3}, Lcom/android/music/list/layout/MpReorderListScreenLayout;->GetView()Landroid/view/View;

    move-result-object v2

    .line 189
    .local v2, tempView:Landroid/view/View;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    invoke-direct {v0, v4, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 194
    .local v0, containerParams:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/android/music/list/activity/MpListReorderActivity;->mListView:Lcom/android/music/list/view/MpListReorderView;

    invoke-virtual {v3, v0}, Lcom/android/music/list/view/MpListReorderView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    const v3, 0x7f0c0021

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 197
    .local v1, fl:Landroid/widget/RelativeLayout;
    iget-object v3, p0, Lcom/android/music/list/activity/MpListReorderActivity;->mListView:Lcom/android/music/list/view/MpListReorderView;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 199
    .end local v0           #containerParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v1           #fl:Landroid/widget/RelativeLayout;
    .end local v2           #tempView:Landroid/view/View;
    :cond_0
    return-void
.end method

.method private initListByID(I)V
    .locals 3
    .parameter "menuID"

    .prologue
    .line 179
    new-instance v0, Lcom/android/music/list/view/MpListReorderView;

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/android/music/list/activity/MpListReorderActivity;->mConditions:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/music/list/view/MpListReorderView;-><init>(Landroid/content/Context;I[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpListReorderActivity;->mListView:Lcom/android/music/list/view/MpListReorderView;

    .line 181
    new-instance v0, Lcom/android/music/list/layout/MpReorderListScreenLayout;

    invoke-direct {v0, p0}, Lcom/android/music/list/layout/MpReorderListScreenLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpListReorderActivity;->mTitleLayout:Lcom/android/music/list/layout/MpReorderListScreenLayout;

    .line 182
    iget-object v0, p0, Lcom/android/music/list/activity/MpListReorderActivity;->mTitleLayout:Lcom/android/music/list/layout/MpReorderListScreenLayout;

    invoke-virtual {v0}, Lcom/android/music/list/layout/MpReorderListScreenLayout;->GetView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/music/list/activity/MpListReorderActivity;->setContentView(Landroid/view/View;)V

    .line 184
    return-void
.end method

.method private setTitleLayout()V
    .locals 11

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x2

    const-string v10, "MpListReorderActivity"

    const-string v9, "IOException occured:"

    .line 203
    new-instance v3, Lcom/android/music/list/data/LayoutData;

    invoke-direct {v3}, Lcom/android/music/list/data/LayoutData;-><init>()V

    .line 204
    .local v3, layoutData:Lcom/android/music/list/data/LayoutData;
    iget v6, p0, Lcom/android/music/list/activity/MpListReorderActivity;->mListType:I

    iput v6, v3, Lcom/android/music/list/data/LayoutData;->mListType:I

    .line 205
    invoke-virtual {p0}, Lcom/android/music/list/activity/MpListReorderActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 206
    .local v4, mResolver:Landroid/content/ContentResolver;
    const/4 v5, 0x0

    .line 208
    .local v5, uri:Landroid/net/Uri;
    iget-object v6, p0, Lcom/android/music/list/activity/MpListReorderActivity;->mListTitleText:[Ljava/lang/String;

    aget-object v6, v6, v7

    iput-object v6, v3, Lcom/android/music/list/data/LayoutData;->mBigText:Ljava/lang/String;

    .line 209
    iget v6, p0, Lcom/android/music/list/activity/MpListReorderActivity;->mListType:I

    iput v6, v3, Lcom/android/music/list/data/LayoutData;->mListType:I

    .line 212
    iget-object v6, p0, Lcom/android/music/list/activity/MpListReorderActivity;->mListTitleText:[Ljava/lang/String;

    aget-object v6, v6, v8

    if-eqz v6, :cond_3

    .line 213
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/music/list/activity/MpListReorderActivity;->mListTitleText:[Ljava/lang/String;

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 214
    const/4 v2, 0x0

    .line 216
    .local v2, in:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 217
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, v3, Lcom/android/music/list/data/LayoutData;->mTitleBitmap:Landroid/graphics/Bitmap;

    .line 220
    iget-object v6, v3, Lcom/android/music/list/data/LayoutData;->mTitleBitmap:Landroid/graphics/Bitmap;

    if-nez v6, :cond_1

    .line 221
    const/4 v6, 0x2

    invoke-static {v6}, Lcom/android/music/common/util/ListUtil;->getDefaultPlaylistRsrcID(I)I

    move-result v6

    iput v6, v3, Lcom/android/music/list/data/LayoutData;->mTitleResource:I

    .line 223
    const/4 v6, 0x0

    iput-boolean v6, v3, Lcom/android/music/list/data/LayoutData;->hasBitmap:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :goto_0
    if-eqz v2, :cond_0

    .line 236
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 249
    .end local v2           #in:Ljava/io/InputStream;
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/android/music/list/activity/MpListReorderActivity;->mTitleLayout:Lcom/android/music/list/layout/MpReorderListScreenLayout;

    invoke-virtual {v6, v3}, Lcom/android/music/list/layout/MpReorderListScreenLayout;->setTitleDisplay(Lcom/android/music/list/data/LayoutData;)V

    .line 251
    const v6, 0x7f0c0063

    invoke-virtual {p0, v6}, Lcom/android/music/list/activity/MpListReorderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 252
    .local v0, commit:Landroid/widget/Button;
    iget-object v6, p0, Lcom/android/music/list/activity/MpListReorderActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    return-void

    .line 225
    .end local v0           #commit:Landroid/widget/Button;
    .restart local v2       #in:Ljava/io/InputStream;
    :cond_1
    const/4 v6, 0x1

    :try_start_2
    iput-boolean v6, v3, Lcom/android/music/list/data/LayoutData;->hasBitmap:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 227
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 228
    .local v1, e:Ljava/lang/Exception;
    const/4 v6, 0x2

    :try_start_3
    invoke-static {v6}, Lcom/android/music/common/util/ListUtil;->getDefaultPlaylistRsrcID(I)I

    move-result v6

    iput v6, v3, Lcom/android/music/list/data/LayoutData;->mTitleResource:I

    .line 230
    const/4 v6, 0x0

    iput-boolean v6, v3, Lcom/android/music/list/data/LayoutData;->hasBitmap:Z

    .line 231
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 234
    if-eqz v2, :cond_0

    .line 236
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 237
    :catch_1
    move-exception v1

    .line 238
    .local v1, e:Ljava/io/IOException;
    const-string v6, "MpListReorderActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException occured:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 237
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 238
    .restart local v1       #e:Ljava/io/IOException;
    const-string v6, "MpListReorderActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException occured:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 234
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    if-eqz v2, :cond_2

    .line 236
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 239
    :cond_2
    :goto_2
    throw v6

    .line 237
    :catch_3
    move-exception v1

    .line 238
    .restart local v1       #e:Ljava/io/IOException;
    const-string v7, "MpListReorderActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException occured:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 243
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #in:Ljava/io/InputStream;
    :cond_3
    invoke-static {v8}, Lcom/android/music/common/util/ListUtil;->getDefaultPlaylistRsrcID(I)I

    move-result v6

    iput v6, v3, Lcom/android/music/list/data/LayoutData;->mTitleResource:I

    .line 245
    iput-boolean v7, v3, Lcom/android/music/list/data/LayoutData;->hasBitmap:Z

    goto/16 :goto_1
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 304
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 78
    invoke-static {p0}, Lcom/android/music/list/data/MpListDataController;->InitContext(Landroid/content/Context;)V

    .line 79
    invoke-virtual {p0}, Lcom/android/music/list/activity/MpListReorderActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/Window;->requestFeature(I)Z

    .line 81
    invoke-virtual {p0}, Lcom/android/music/list/activity/MpListReorderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 82
    .local v1, intent:Landroid/content/Intent;
    if-nez v1, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/android/music/list/activity/MpListReorderActivity;->finish()V

    .line 107
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 88
    .local v0, bundle:Landroid/os/Bundle;
    const/16 v3, 0xd

    iput v3, p0, Lcom/android/music/list/activity/MpListReorderActivity;->mListType:I

    .line 89
    const-string v3, "TitleText"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/list/activity/MpListReorderActivity;->mListTitleText:[Ljava/lang/String;

    .line 91
    const-string v3, "Conditions"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/list/activity/MpListReorderActivity;->mConditions:[Ljava/lang/String;

    .line 93
    iget v3, p0, Lcom/android/music/list/activity/MpListReorderActivity;->mListType:I

    invoke-direct {p0, v3}, Lcom/android/music/list/activity/MpListReorderActivity;->initListByID(I)V

    .line 94
    invoke-direct {p0, v4}, Lcom/android/music/list/activity/MpListReorderActivity;->initIndexer(Z)V

    .line 95
    invoke-direct {p0}, Lcom/android/music/list/activity/MpListReorderActivity;->setTitleLayout()V

    .line 97
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 99
    .local v2, intentMediaStateFilter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    const-string v3, "file"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 101
    const-string v3, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    const-string v3, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    iget-object v3, p0, Lcom/android/music/list/activity/MpListReorderActivity;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v2}, Lcom/android/music/list/activity/MpListReorderActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 105
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .parameter "id"

    .prologue
    .line 288
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 290
    .local v0, containerPopup4:Landroid/app/AlertDialog$Builder;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f03001c

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 291
    .local v1, inflatedBody:Landroid/view/View;
    const v4, 0x7f0c005d

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 292
    .local v2, pBar4:Landroid/widget/ProgressBar;
    const v4, 0x7f0c005e

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 295
    .local v3, tv4:Landroid/widget/TextView;
    const v4, 0x7f0a00cd

    invoke-virtual {p0, v4}, Lcom/android/music/list/activity/MpListReorderActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 298
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 299
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 146
    iget-object v1, p0, Lcom/android/music/list/activity/MpListReorderActivity;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    if-eqz v1, :cond_1

    .line 147
    iget-object v1, p0, Lcom/android/music/list/activity/MpListReorderActivity;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    invoke-virtual {v1}, Lcom/android/music/common/util/BatteryChecker;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v1, v2, :cond_0

    .line 148
    iget-object v1, p0, Lcom/android/music/list/activity/MpListReorderActivity;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/music/common/util/BatteryChecker;->cancel(Z)Z

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/android/music/list/activity/MpListReorderActivity;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    invoke-virtual {v1}, Lcom/android/music/common/util/BatteryChecker;->removeCallback()V

    .line 154
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/music/list/activity/MpListReorderActivity;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/music/list/activity/MpListReorderActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 161
    return-void

    .line 155
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 156
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "MpListReorderActivity"

    const-string v2, "onDestroy : mMediaReceiver is not registered."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/android/music/list/activity/MpListReorderActivity;->mListType:I

    invoke-direct {p0, v0}, Lcom/android/music/list/activity/MpListReorderActivity;->initListByID(I)V

    .line 139
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/music/list/activity/MpListReorderActivity;->initIndexer(Z)V

    .line 140
    invoke-direct {p0}, Lcom/android/music/list/activity/MpListReorderActivity;->setTitleLayout()V

    .line 141
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 142
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 111
    iget-object v0, p0, Lcom/android/music/list/activity/MpListReorderActivity;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/music/list/activity/MpListReorderActivity;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    invoke-virtual {v0}, Lcom/android/music/common/util/BatteryChecker;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/music/list/activity/MpListReorderActivity;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    invoke-virtual {v0, v2}, Lcom/android/music/common/util/BatteryChecker;->cancel(Z)Z

    .line 119
    :cond_0
    new-instance v0, Lcom/android/music/common/util/BatteryChecker;

    invoke-direct {v0, p0}, Lcom/android/music/common/util/BatteryChecker;-><init>(Lcom/android/music/common/util/OnLowBatteryListener;)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpListReorderActivity;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    .line 120
    iget-object v0, p0, Lcom/android/music/list/activity/MpListReorderActivity;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    new-array v1, v2, [Landroid/app/Activity;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/music/common/util/BatteryChecker;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 121
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 122
    return-void
.end method
