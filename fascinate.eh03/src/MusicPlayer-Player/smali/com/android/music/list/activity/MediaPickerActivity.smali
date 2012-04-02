.class public Lcom/android/music/list/activity/MediaPickerActivity;
.super Landroid/app/Activity;
.source "MediaPickerActivity.java"

# interfaces
.implements Lcom/android/music/list/interfaces/MpHandlerInterface;


# instance fields
.field private TAG:Ljava/lang/String;

.field protected activityCheck:Z

.field protected mConditions:[Ljava/lang/String;

.field private mCursor:Landroid/database/Cursor;

.field private mCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

.field protected mHasCheck:Z

.field private mIndexView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

.field protected mListTitleText:[Ljava/lang/String;

.field protected mListType:I

.field public mListView:Lcom/android/music/list/view/AbstractMpListView;

.field private final mMediaReceiver:Landroid/content/BroadcastReceiver;

.field protected mMediaScannerRunCheck:Z

.field private mNoItemView:Landroid/view/View;

.field private mNoTrackView:Landroid/view/View;

.field protected mSubListType:I

.field private mTitleLayout:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 87
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 65
    iput-boolean v0, p0, Lcom/android/music/list/activity/MediaPickerActivity;->activityCheck:Z

    .line 66
    iput-boolean v0, p0, Lcom/android/music/list/activity/MediaPickerActivity;->mMediaScannerRunCheck:Z

    .line 75
    const-class v0, Lcom/android/music/list/activity/MediaPickerActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/list/activity/MediaPickerActivity;->TAG:Ljava/lang/String;

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/list/activity/MediaPickerActivity;->mIndexView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    .line 305
    new-instance v0, Lcom/android/music/list/activity/MediaPickerActivity$2;

    invoke-direct {v0, p0}, Lcom/android/music/list/activity/MediaPickerActivity$2;-><init>(Lcom/android/music/list/activity/MediaPickerActivity;)V

    iput-object v0, p0, Lcom/android/music/list/activity/MediaPickerActivity;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/android/music/list/activity/MediaPickerActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/music/list/activity/MediaPickerActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private initIndexer()V
    .locals 8

    .prologue
    const/4 v5, -0x1

    .line 172
    iget-object v4, p0, Lcom/android/music/list/activity/MediaPickerActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    if-eqz v4, :cond_0

    .line 174
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    invoke-direct {v0, v5, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 178
    .local v0, containerParams:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/android/music/list/activity/MediaPickerActivity;->mTitleLayout:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    invoke-virtual {v4}, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;->GetView()Landroid/view/View;

    move-result-object v3

    .line 179
    .local v3, tempView:Landroid/view/View;
    iget-object v4, p0, Lcom/android/music/list/activity/MediaPickerActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v4}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    check-cast v4, Lcom/android/music/list/interfaces/MpSetViewInterface;

    const v5, 0x7f0c0022

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    invoke-interface {v4, v5}, Lcom/android/music/list/interfaces/MpSetViewInterface;->setIndexView(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)V

    .line 182
    iget-object v4, p0, Lcom/android/music/list/activity/MediaPickerActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v4}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    check-cast v4, Lcom/android/music/list/interfaces/MpSetViewInterface;

    invoke-interface {v4}, Lcom/android/music/list/interfaces/MpSetViewInterface;->getIndexView()Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    move-result-object v4

    iput-object v4, p0, Lcom/android/music/list/activity/MediaPickerActivity;->mIndexView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    .line 184
    iget-object v4, p0, Lcom/android/music/list/activity/MediaPickerActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v4, v0}, Lcom/android/music/list/view/AbstractMpListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    const v4, 0x7f0c0021

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 187
    .local v1, fl:Landroid/widget/RelativeLayout;
    iget-object v4, p0, Lcom/android/music/list/activity/MediaPickerActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 190
    iget-object v4, p0, Lcom/android/music/list/activity/MediaPickerActivity;->mIndexView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/music/list/activity/MediaPickerActivity;->mListType:I

    invoke-static {v4}, Lcom/android/music/common/util/ListUtil;->isEnableFastScroll(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 191
    const/4 v2, 0x0

    .line 193
    .local v2, index:I
    iget-object v4, p0, Lcom/android/music/list/activity/MediaPickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 195
    iget v4, p0, Lcom/android/music/list/activity/MediaPickerActivity;->mListType:I

    invoke-static {v4}, Lcom/android/music/common/util/ListType;->getIndexerKeyIndex(I)I

    move-result v2

    .line 196
    new-instance v4, Lcom/android/music/list/data/MpListTwCursorIndexer;

    iget-object v5, p0, Lcom/android/music/list/activity/MediaPickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0}, Lcom/android/music/list/activity/MediaPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a006e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v2, v6}, Lcom/android/music/list/data/MpListTwCursorIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    iput-object v4, p0, Lcom/android/music/list/activity/MediaPickerActivity;->mCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    .line 199
    iget-object v4, p0, Lcom/android/music/list/activity/MediaPickerActivity;->mIndexView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    iget-object v5, p0, Lcom/android/music/list/activity/MediaPickerActivity;->mCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->setIndexer(Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;)V

    .line 200
    iget-object v4, p0, Lcom/android/music/list/activity/MediaPickerActivity;->mIndexView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->invalidate()V

    .line 201
    iget-object v4, p0, Lcom/android/music/list/activity/MediaPickerActivity;->mIndexView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->setSubscrollLimit(I)V

    .line 202
    iget-object v4, p0, Lcom/android/music/list/activity/MediaPickerActivity;->mIndexView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 204
    iget-object v4, p0, Lcom/android/music/list/activity/MediaPickerActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    iget-object v5, p0, Lcom/android/music/list/activity/MediaPickerActivity;->mIndexView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    invoke-virtual {v4, v5}, Lcom/android/music/list/view/AbstractMpListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 205
    iget-object v4, p0, Lcom/android/music/list/activity/MediaPickerActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v4}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/android/music/list/activity/MediaPickerActivity;->mCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 206
    iget-object v4, p0, Lcom/android/music/list/activity/MediaPickerActivity;->mIndexView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->bringToFront()V

    .line 219
    iget-object v4, p0, Lcom/android/music/list/activity/MediaPickerActivity;->mIndexView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    new-instance v5, Lcom/android/music/list/activity/MediaPickerActivity$1indexEvent;

    iget-object v6, p0, Lcom/android/music/list/activity/MediaPickerActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-direct {v5, p0, v6}, Lcom/android/music/list/activity/MediaPickerActivity$1indexEvent;-><init>(Lcom/android/music/list/activity/MediaPickerActivity;Lcom/android/music/list/view/AbstractMpListView;)V

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->setOnIndexSelectedListener(Lcom/sec/android/touchwiz/widget/TwIndexScrollView$OnIndexSelectedListener;)V

    .line 223
    .end local v0           #containerParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v1           #fl:Landroid/widget/RelativeLayout;
    .end local v2           #index:I
    .end local v3           #tempView:Landroid/view/View;
    :cond_0
    return-void
.end method


# virtual methods
.method public GetView(Ljava/lang/String;Z)Landroid/view/View;
    .locals 1
    .parameter "tag"
    .parameter "set"

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/music/list/activity/MediaPickerActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    return-object v0
.end method

.method public init()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 158
    new-instance v0, Lcom/android/music/list/view/MpListMediaPickerView;

    iget v2, p0, Lcom/android/music/list/activity/MediaPickerActivity;->mListType:I

    iget v4, p0, Lcom/android/music/list/activity/MediaPickerActivity;->mSubListType:I

    iget-object v5, p0, Lcom/android/music/list/activity/MediaPickerActivity;->mConditions:[Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/music/list/view/MpListMediaPickerView;-><init>(Landroid/content/Context;IZI[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/music/list/activity/MediaPickerActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    .line 159
    new-instance v0, Lcom/android/music/list/layout/MpListOneLineTitleScreenLayout;

    invoke-direct {v0, p0}, Lcom/android/music/list/layout/MpListOneLineTitleScreenLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/music/list/activity/MediaPickerActivity;->mTitleLayout:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    .line 161
    new-instance v6, Lcom/android/music/list/data/LayoutData;

    invoke-direct {v6}, Lcom/android/music/list/data/LayoutData;-><init>()V

    .line 162
    .local v6, layoutData:Lcom/android/music/list/data/LayoutData;
    iget v0, p0, Lcom/android/music/list/activity/MediaPickerActivity;->mListType:I

    iput v0, v6, Lcom/android/music/list/data/LayoutData;->mListType:I

    .line 163
    iget-object v0, p0, Lcom/android/music/list/activity/MediaPickerActivity;->mListTitleText:[Ljava/lang/String;

    aget-object v0, v0, v3

    iput-object v0, v6, Lcom/android/music/list/data/LayoutData;->mBigText:Ljava/lang/String;

    .line 164
    iget-object v0, p0, Lcom/android/music/list/activity/MediaPickerActivity;->mTitleLayout:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    invoke-virtual {v0, v6}, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;->setTitleDisplay(Lcom/android/music/list/data/LayoutData;)V

    .line 166
    iget-object v0, p0, Lcom/android/music/list/activity/MediaPickerActivity;->mTitleLayout:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    invoke-virtual {v0}, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;->GetView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/music/list/activity/MediaPickerActivity;->setContentView(Landroid/view/View;)V

    .line 169
    return-void
.end method

.method public launchDiscPlus()V
    .locals 0

    .prologue
    .line 303
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v5, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 110
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 112
    invoke-virtual {p0}, Lcom/android/music/list/activity/MediaPickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 114
    iput v3, p0, Lcom/android/music/list/activity/MediaPickerActivity;->mListType:I

    .line 115
    new-array v1, v5, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/music/list/activity/MediaPickerActivity;->mListTitleText:[Ljava/lang/String;

    .line 116
    iget-object v1, p0, Lcom/android/music/list/activity/MediaPickerActivity;->mListTitleText:[Ljava/lang/String;

    const/high16 v2, 0x7f0a

    invoke-virtual {p0, v2}, Lcom/android/music/list/activity/MediaPickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 117
    new-array v1, v5, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/music/list/activity/MediaPickerActivity;->mConditions:[Ljava/lang/String;

    .line 118
    iget-object v1, p0, Lcom/android/music/list/activity/MediaPickerActivity;->mConditions:[Ljava/lang/String;

    const-string v2, "0"

    aput-object v2, v1, v4

    .line 119
    iget-object v1, p0, Lcom/android/music/list/activity/MediaPickerActivity;->mConditions:[Ljava/lang/String;

    const-string v2, "-1"

    aput-object v2, v1, v3

    .line 120
    iget-object v1, p0, Lcom/android/music/list/activity/MediaPickerActivity;->mConditions:[Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 121
    iput-boolean v4, p0, Lcom/android/music/list/activity/MediaPickerActivity;->mHasCheck:Z

    .line 122
    iput v4, p0, Lcom/android/music/list/activity/MediaPickerActivity;->mSubListType:I

    .line 125
    invoke-virtual {p0}, Lcom/android/music/list/activity/MediaPickerActivity;->init()V

    .line 126
    iget-object v1, p0, Lcom/android/music/list/activity/MediaPickerActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v1}, Lcom/android/music/list/view/AbstractMpListView;->initViewAdapter()I

    .line 128
    iget-object v1, p0, Lcom/android/music/list/activity/MediaPickerActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v1}, Lcom/android/music/list/view/AbstractMpListView;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/list/activity/MediaPickerActivity;->mCursor:Landroid/database/Cursor;

    .line 129
    iget-object v1, p0, Lcom/android/music/list/activity/MediaPickerActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/music/list/activity/MediaPickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 130
    invoke-direct {p0}, Lcom/android/music/list/activity/MediaPickerActivity;->initIndexer()V

    .line 132
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 135
    .local v0, intentMediaStateFilter:Landroid/content/IntentFilter;
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 137
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Lcom/android/music/list/activity/MediaPickerActivity;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/music/list/activity/MediaPickerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 140
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 146
    :try_start_0
    iget-object v1, p0, Lcom/android/music/list/activity/MediaPickerActivity;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/music/list/activity/MediaPickerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 151
    iget-object v1, p0, Lcom/android/music/list/activity/MediaPickerActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/android/music/list/activity/MediaPickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 154
    :cond_0
    return-void

    .line 147
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 148
    .local v0, e:Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Lcom/android/music/list/activity/MediaPickerActivity;->TAG:Ljava/lang/String;

    const-string v2, "onDestroy : mMediaReceiver is not registered."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/music/list/activity/MediaPickerActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyUp("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const/4 v0, 0x4

    if-ne v0, p1, :cond_0

    .line 277
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/music/list/activity/MediaPickerActivity;->setResult(I)V

    .line 281
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setNoItem()V
    .locals 11

    .prologue
    const v10, 0x7f0c0044

    const v9, 0x7f0c0021

    const/16 v8, 0x8

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 226
    iget-object v4, p0, Lcom/android/music/list/activity/MediaPickerActivity;->mNoItemView:Landroid/view/View;

    if-nez v4, :cond_2

    .line 227
    iget v4, p0, Lcom/android/music/list/activity/MediaPickerActivity;->mListType:I

    const/16 v5, 0x1a

    if-ne v4, v5, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/android/music/list/activity/MediaPickerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030011

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/music/list/activity/MediaPickerActivity;->mNoTrackView:Landroid/view/View;

    .line 230
    iget-object v4, p0, Lcom/android/music/list/activity/MediaPickerActivity;->mNoTrackView:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 232
    .local v3, text:Landroid/widget/TextView;
    iget v4, p0, Lcom/android/music/list/activity/MediaPickerActivity;->mListType:I

    invoke-static {p0, v4}, Lcom/android/music/common/util/ListUtil;->getNoItemString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget-object v4, p0, Lcom/android/music/list/activity/MediaPickerActivity;->mTitleLayout:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    invoke-virtual {v4}, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;->GetView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 235
    .local v2, fl:Landroid/widget/RelativeLayout;
    iget-object v4, p0, Lcom/android/music/list/activity/MediaPickerActivity;->mNoTrackView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 271
    .end local v2           #fl:Landroid/widget/RelativeLayout;
    .end local v3           #text:Landroid/widget/TextView;
    :goto_0
    return-void

    .line 238
    :cond_0
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    invoke-direct {v1, v6, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 241
    .local v1, containerParams:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/android/music/list/activity/MediaPickerActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v4, v8}, Lcom/android/music/list/view/AbstractMpListView;->setVisibility(I)V

    .line 242
    invoke-virtual {p0}, Lcom/android/music/list/activity/MediaPickerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030010

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/music/list/activity/MediaPickerActivity;->mNoItemView:Landroid/view/View;

    .line 244
    iget-object v4, p0, Lcom/android/music/list/activity/MediaPickerActivity;->mNoItemView:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 246
    .restart local v3       #text:Landroid/widget/TextView;
    iget v4, p0, Lcom/android/music/list/activity/MediaPickerActivity;->mListType:I

    invoke-static {p0, v4}, Lcom/android/music/common/util/ListUtil;->getNoItemString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    iget v4, p0, Lcom/android/music/list/activity/MediaPickerActivity;->mListType:I

    const/16 v5, 0xd

    if-ne v4, v5, :cond_1

    .line 248
    iget-object v4, p0, Lcom/android/music/list/activity/MediaPickerActivity;->mNoItemView:Landroid/view/View;

    const v5, 0x7f0c0040

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 254
    .local v0, addButton:Landroid/widget/RelativeLayout;
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 255
    new-instance v4, Lcom/android/music/list/activity/MediaPickerActivity$1;

    invoke-direct {v4, p0}, Lcom/android/music/list/activity/MediaPickerActivity$1;-><init>(Lcom/android/music/list/activity/MediaPickerActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    .end local v0           #addButton:Landroid/widget/RelativeLayout;
    :cond_1
    iget-object v4, p0, Lcom/android/music/list/activity/MediaPickerActivity;->mNoItemView:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    iget-object v4, p0, Lcom/android/music/list/activity/MediaPickerActivity;->mTitleLayout:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    invoke-virtual {v4}, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;->GetView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 266
    .restart local v2       #fl:Landroid/widget/RelativeLayout;
    iget-object v4, p0, Lcom/android/music/list/activity/MediaPickerActivity;->mNoItemView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 268
    .end local v1           #containerParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v2           #fl:Landroid/widget/RelativeLayout;
    .end local v3           #text:Landroid/widget/TextView;
    :cond_2
    iget-object v4, p0, Lcom/android/music/list/activity/MediaPickerActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v4, v8}, Lcom/android/music/list/view/AbstractMpListView;->setVisibility(I)V

    .line 269
    iget-object v4, p0, Lcom/android/music/list/activity/MediaPickerActivity;->mNoItemView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
