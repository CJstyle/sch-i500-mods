.class public Lcom/android/music/list/activity/MpSearchResultActivity;
.super Landroid/app/Activity;
.source "MpSearchResultActivity.java"

# interfaces
.implements Lcom/android/music/list/interfaces/MpCorePlayer;
.implements Lcom/android/music/list/interfaces/MpHandlerInterface;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/music/common/util/OnLowBatteryListener;


# instance fields
.field protected TAG:Ljava/lang/String;

.field protected layoutData:Lcom/android/music/list/data/LayoutData;

.field private mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

.field protected mConditions:[Ljava/lang/String;

.field private mConnection:Landroid/content/ServiceConnection;

.field public mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

.field protected mCur:Landroid/database/Cursor;

.field protected mFilterString:Ljava/lang/String;

.field protected mHasCheck:Z

.field protected mIsBackKeyDoStartPreviousActivity:Z

.field protected mListData:Lcom/android/music/list/data/MpListDisplayData;

.field protected mListTitleText:[Ljava/lang/String;

.field protected mListType:I

.field public mListView:Lcom/android/music/list/view/AbstractMpListView;

.field protected final mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private final mMediaReceiver:Landroid/content/BroadcastReceiver;

.field protected mMediaScannerRunCheck:Z

.field private mNoTrackView:Landroid/view/View;

.field protected mSubListType:I

.field private mTitleLayout1:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

.field private mTitleLayout2:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

.field private mTitleLayout3:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

.field protected mUri:Landroid/net/Uri;

.field private playerButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 83
    iput-boolean v1, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mMediaScannerRunCheck:Z

    .line 88
    const-string v0, "MpSearchResultActivity"

    iput-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->TAG:Ljava/lang/String;

    .line 93
    iput-boolean v1, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mIsBackKeyDoStartPreviousActivity:Z

    .line 95
    new-instance v0, Lcom/android/music/list/activity/MpSearchResultActivity$1;

    invoke-direct {v0, p0}, Lcom/android/music/list/activity/MpSearchResultActivity$1;-><init>(Lcom/android/music/list/activity/MpSearchResultActivity;)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mConnection:Landroid/content/ServiceConnection;

    .line 972
    new-instance v0, Lcom/android/music/list/activity/MpSearchResultActivity$2;

    invoke-direct {v0, p0}, Lcom/android/music/list/activity/MpSearchResultActivity$2;-><init>(Lcom/android/music/list/activity/MpSearchResultActivity;)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    .line 994
    new-instance v0, Lcom/android/music/list/activity/MpSearchResultActivity$3;

    invoke-direct {v0, p0}, Lcom/android/music/list/activity/MpSearchResultActivity$3;-><init>(Lcom/android/music/list/activity/MpSearchResultActivity;)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/music/list/activity/MpSearchResultActivity;)Lcom/android/music/common/util/BatteryChecker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/music/list/activity/MpSearchResultActivity;Lcom/android/music/common/util/BatteryChecker;)Lcom/android/music/common/util/BatteryChecker;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    return-object p1
.end method

.method private initListByID(I)V
    .locals 12
    .parameter "menuID"

    .prologue
    const/4 v11, 0x0

    .line 874
    invoke-static {p1}, Lcom/android/music/list/data/MpListDataController;->getListMenuData(I)Lcom/android/music/list/data/MpListDisplayData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListData:Lcom/android/music/list/data/MpListDisplayData;

    .line 876
    iget-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListData:Lcom/android/music/list/data/MpListDisplayData;

    if-nez v0, :cond_0

    .line 966
    :goto_0
    return-void

    .line 879
    :cond_0
    iget-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListTitleText:[Ljava/lang/String;

    if-nez v0, :cond_1

    .line 880
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListTitleText:[Ljava/lang/String;

    .line 881
    iget-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListTitleText:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListData:Lcom/android/music/list/data/MpListDisplayData;

    invoke-virtual {v1}, Lcom/android/music/list/data/MpListDisplayData;->getListName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v11

    .line 884
    :cond_1
    iget-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListData:Lcom/android/music/list/data/MpListDisplayData;

    invoke-virtual {v0}, Lcom/android/music/list/data/MpListDisplayData;->getItemLayout()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 903
    :goto_1
    iget-boolean v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mHasCheck:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mSubListType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 904
    iget-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListData:Lcom/android/music/list/data/MpListDisplayData;

    invoke-virtual {v0, v11}, Lcom/android/music/list/data/MpListDisplayData;->setMenuLayout(I)V

    .line 907
    :cond_2
    iget-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListData:Lcom/android/music/list/data/MpListDisplayData;

    invoke-virtual {v0}, Lcom/android/music/list/data/MpListDisplayData;->getListLayout()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 932
    :goto_2
    :pswitch_0
    iget-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    iget-boolean v1, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mHasCheck:Z

    iget v2, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListType:I

    invoke-virtual {v0, v1, v2}, Lcom/android/music/list/view/AbstractMpListView;->showCheck(ZI)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 933
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 935
    .local v8, buttonView:Landroid/view/View;
    const v0, 0x7f0c002b

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    .line 936
    .local v10, twoButtonLayout:Landroid/widget/RelativeLayout;
    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 937
    const v0, 0x7f0c002a

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 939
    .local v9, buttonlayout:Landroid/widget/LinearLayout;
    iget-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mTitleLayout3:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    invoke-virtual {v0}, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;->GetView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 940
    const v0, 0x7f0c002d

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 941
    .local v6, button1:Landroid/widget/Button;
    const v0, 0x7f0c002e

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 942
    .local v7, button2:Landroid/widget/Button;
    iget-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    iget v1, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mSubListType:I

    invoke-virtual {v0, v1, v6, v7}, Lcom/android/music/list/view/AbstractMpListView;->setSoftKey(ILandroid/widget/Button;Landroid/widget/Button;)V

    .line 943
    invoke-virtual {p0, v8}, Lcom/android/music/list/activity/MpSearchResultActivity;->setContentView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 886
    .end local v6           #button1:Landroid/widget/Button;
    .end local v7           #button2:Landroid/widget/Button;
    .end local v8           #buttonView:Landroid/view/View;
    .end local v9           #buttonlayout:Landroid/widget/LinearLayout;
    .end local v10           #twoButtonLayout:Landroid/widget/RelativeLayout;
    :pswitch_1
    new-instance v0, Lcom/android/music/list/view/MpListOneLineView;

    iget v2, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListType:I

    iget-boolean v3, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mHasCheck:Z

    iget v4, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mSubListType:I

    iget-object v5, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mConditions:[Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/music/list/view/MpListOneLineView;-><init>(Landroid/content/Context;IZI[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    goto :goto_1

    .line 890
    :pswitch_2
    new-instance v0, Lcom/android/music/list/view/MpListThumnailOneLineView;

    iget v2, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListType:I

    iget-boolean v3, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mHasCheck:Z

    iget v4, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mSubListType:I

    iget-object v5, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mConditions:[Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/music/list/view/MpListThumnailOneLineView;-><init>(Landroid/content/Context;IZI[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    goto/16 :goto_1

    .line 894
    :pswitch_3
    new-instance v0, Lcom/android/music/list/view/MpListThumnailTwoLineView;

    iget v2, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListType:I

    iget-boolean v3, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mHasCheck:Z

    iget v4, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mSubListType:I

    iget-object v5, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mConditions:[Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/music/list/view/MpListThumnailTwoLineView;-><init>(Landroid/content/Context;IZI[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    goto/16 :goto_1

    .line 898
    :pswitch_4
    new-instance v0, Lcom/android/music/list/view/MpListGroupView;

    iget v2, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListType:I

    iget-boolean v3, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mHasCheck:Z

    iget v4, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mSubListType:I

    iget-object v5, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mConditions:[Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/music/list/view/MpListGroupView;-><init>(Landroid/content/Context;IZI[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    goto/16 :goto_1

    .line 909
    :pswitch_5
    new-instance v0, Lcom/android/music/list/layout/MpListOneLineTitleScreenLayout;

    invoke-direct {v0, p0}, Lcom/android/music/list/layout/MpListOneLineTitleScreenLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mTitleLayout3:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    goto/16 :goto_2

    .line 914
    :pswitch_6
    new-instance v0, Lcom/android/music/list/layout/MpListThumnailOneLineTitleScreenLayout;

    invoke-direct {v0, p0}, Lcom/android/music/list/layout/MpListThumnailOneLineTitleScreenLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mTitleLayout3:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    goto/16 :goto_2

    .line 919
    :pswitch_7
    new-instance v0, Lcom/android/music/list/layout/MpListThumnailTwoLineTitleScreenLayout;

    invoke-direct {v0, p0}, Lcom/android/music/list/layout/MpListThumnailTwoLineTitleScreenLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mTitleLayout3:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    goto/16 :goto_2

    .line 923
    :pswitch_8
    new-instance v0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;

    invoke-direct {v0, p0, p1}, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mTitleLayout3:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    goto/16 :goto_2

    .line 927
    :pswitch_9
    new-instance v0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;

    invoke-direct {v0, p0, p1}, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mTitleLayout3:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    goto/16 :goto_2

    .line 960
    :cond_3
    iget-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mTitleLayout3:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    invoke-virtual {v0}, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;->GetView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/music/list/activity/MpSearchResultActivity;->setContentView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 884
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 907
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public GetCorePlayer()Lcom/android/music/player/service/ICorePlayerService;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    return-object v0
.end method

.method public bridge synthetic GetView(Ljava/lang/String;Z)Landroid/view/View;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/android/music/list/activity/MpSearchResultActivity;->GetView(Ljava/lang/String;Z)Lcom/android/music/list/view/AbstractMpListView;

    move-result-object v0

    return-object v0
.end method

.method public GetView(Ljava/lang/String;Z)Lcom/android/music/list/view/AbstractMpListView;
    .locals 1
    .parameter "tag"
    .parameter "set"

    .prologue
    .line 969
    iget-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    return-object v0
.end method

.method public checkPlayButtonEnable()V
    .locals 0

    .prologue
    .line 427
    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 1013
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    return-object v0
.end method

.method public isMediaScannerRunCheck()Z
    .locals 1

    .prologue
    .line 456
    iget-boolean v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mMediaScannerRunCheck:Z

    return v0
.end method

.method public launchDiscPlus()V
    .locals 0

    .prologue
    .line 453
    return-void
.end method

.method protected makeAlbum()V
    .locals 7

    .prologue
    const/4 v5, -0x1

    .line 686
    iget v4, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListType:I

    invoke-direct {p0, v4}, Lcom/android/music/list/activity/MpSearchResultActivity;->initListByID(I)V

    .line 688
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    invoke-direct {v0, v5, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 692
    .local v0, containerParams:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v4, v0}, Lcom/android/music/list/view/AbstractMpListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 694
    iget-object v4, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/music/list/view/AbstractMpListView;->initViewAdapter(ZLandroid/database/Cursor;)Z

    .line 695
    iget-object v4, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v4}, Lcom/android/music/list/view/AbstractMpListView;->getCursor()Landroid/database/Cursor;

    move-result-object v4

    iput-object v4, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mCur:Landroid/database/Cursor;

    .line 700
    const/4 v2, 0x0

    .line 701
    .local v2, iCursorPosition:I
    iget-boolean v4, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mHasCheck:Z

    if-eqz v4, :cond_0

    .line 702
    add-int/lit8 v2, v2, 0x1

    .line 704
    :cond_0
    new-instance v4, Lcom/android/music/list/layout/MpListThumnailTwoLineTitleScreenLayout;

    invoke-direct {v4, p0}, Lcom/android/music/list/layout/MpListThumnailTwoLineTitleScreenLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mTitleLayout3:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    .line 706
    const/4 v4, 0x2

    invoke-virtual {p0, v4, v2}, Lcom/android/music/list/activity/MpSearchResultActivity;->setTitleLayout(II)V

    .line 708
    iget-object v4, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mTitleLayout3:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    invoke-virtual {v4}, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;->GetView()Landroid/view/View;

    move-result-object v3

    .line 709
    .local v3, tempView:Landroid/view/View;
    const v4, 0x7f0c0021

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 711
    .local v1, fl:Landroid/widget/RelativeLayout;
    iget-object v4, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 730
    iget-object v4, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mTitleLayout3:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    invoke-virtual {v4}, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;->GetView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/music/list/activity/MpSearchResultActivity;->setContentView(Landroid/view/View;)V

    .line 731
    return-void
.end method

.method protected makeArtist()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v2, -0x1

    .line 635
    new-instance v0, Lcom/android/music/list/data/LayoutData;

    invoke-direct {v0}, Lcom/android/music/list/data/LayoutData;-><init>()V

    iput-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    .line 636
    iget-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    iget v1, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListType:I

    iput v1, v0, Lcom/android/music/list/data/LayoutData;->mListType:I

    .line 637
    iget-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    iget-object v1, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListTitleText:[Ljava/lang/String;

    aget-object v1, v1, v9

    iput-object v1, v0, Lcom/android/music/list/data/LayoutData;->mBigText:Ljava/lang/String;

    .line 639
    new-instance v0, Lcom/android/music/list/layout/MpListOneLineTitleScreenLayout;

    invoke-direct {v0, p0}, Lcom/android/music/list/layout/MpListOneLineTitleScreenLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mTitleLayout2:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    .line 640
    iget-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mTitleLayout2:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    iget-object v1, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    invoke-virtual {v0, v1}, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;->setTitleDisplay(Lcom/android/music/list/data/LayoutData;)V

    .line 642
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, 0x0

    invoke-direct {v6, v2, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 646
    .local v6, containerParams:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v0, Lcom/android/music/list/view/MpListGroupView;

    iget v2, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListType:I

    iget-boolean v3, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mHasCheck:Z

    iget v4, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mSubListType:I

    iget-object v5, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mConditions:[Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/music/list/view/MpListGroupView;-><init>(Landroid/content/Context;IZI[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    .line 649
    iget-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v0, v6}, Lcom/android/music/list/view/AbstractMpListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 651
    iget-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v9, v1}, Lcom/android/music/list/view/AbstractMpListView;->initViewAdapter(ZLandroid/database/Cursor;)Z

    .line 652
    iget-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v0}, Lcom/android/music/list/view/AbstractMpListView;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mCur:Landroid/database/Cursor;

    .line 656
    iget-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mTitleLayout2:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    invoke-virtual {v0}, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;->GetView()Landroid/view/View;

    move-result-object v8

    .line 657
    .local v8, tempView:Landroid/view/View;
    const v0, 0x7f0c0021

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    .line 659
    .local v7, fl:Landroid/widget/RelativeLayout;
    iget-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v7, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 679
    iget-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mTitleLayout2:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    invoke-virtual {v0}, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;->GetView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/music/list/activity/MpSearchResultActivity;->setContentView(Landroid/view/View;)V

    .line 681
    return-void
.end method

.method protected makeSearchResult()V
    .locals 13

    .prologue
    .line 547
    const/16 v0, 0x1b

    iput v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListType:I

    .line 549
    :try_start_0
    iget-object v1, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mUri:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/music/list/activity/MpSearchResultActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mCur:Landroid/database/Cursor;

    .line 550
    new-instance v0, Lcom/android/music/list/data/LayoutData;

    invoke-direct {v0}, Lcom/android/music/list/data/LayoutData;-><init>()V

    iput-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    .line 551
    iget-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    iget v1, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListType:I

    iput v1, v0, Lcom/android/music/list/data/LayoutData;->mListType:I

    .line 552
    iget-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    const v1, 0x7f0a00c1

    invoke-virtual {p0, v1}, Lcom/android/music/list/activity/MpSearchResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/music/list/data/LayoutData;->mBigText:Ljava/lang/String;

    .line 554
    new-instance v0, Lcom/android/music/list/layout/MpListOneLineTitleScreenLayout;

    invoke-direct {v0, p0}, Lcom/android/music/list/layout/MpListOneLineTitleScreenLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mTitleLayout1:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    .line 555
    iget-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mTitleLayout1:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    iget-object v1, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    invoke-virtual {v0, v1}, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;->setTitleDisplay(Lcom/android/music/list/data/LayoutData;)V

    .line 557
    iget-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mCur:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 559
    invoke-virtual {p0}, Lcom/android/music/list/activity/MpSearchResultActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030011

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mNoTrackView:Landroid/view/View;

    .line 561
    iget-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mNoTrackView:Landroid/view/View;

    const v1, 0x7f0c0044

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 563
    .local v12, text:Landroid/widget/TextView;
    const v0, 0x7f0a00d3

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(I)V

    .line 564
    iget-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mTitleLayout1:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    invoke-virtual {v0}, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;->GetView()Landroid/view/View;

    move-result-object v11

    .line 565
    .local v11, tempView:Landroid/view/View;
    const v0, 0x7f0c0021

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    .line 567
    .local v9, fl:Landroid/widget/RelativeLayout;
    iget-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mNoTrackView:Landroid/view/View;

    invoke-virtual {v9, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 627
    .end local v9           #fl:Landroid/widget/RelativeLayout;
    .end local v11           #tempView:Landroid/view/View;
    .end local v12           #text:Landroid/widget/TextView;
    :goto_0
    iget-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mTitleLayout1:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    invoke-virtual {v0}, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;->GetView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/music/list/activity/MpSearchResultActivity;->setContentView(Landroid/view/View;)V

    .line 629
    return-void

    .line 569
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mCur:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 570
    invoke-virtual {p0}, Lcom/android/music/list/activity/MpSearchResultActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030011

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mNoTrackView:Landroid/view/View;

    .line 572
    iget-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mNoTrackView:Landroid/view/View;

    const v1, 0x7f0c0044

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 574
    .restart local v12       #text:Landroid/widget/TextView;
    const v0, 0x7f0a00d3

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(I)V

    .line 575
    iget-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mTitleLayout1:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    invoke-virtual {v0}, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;->GetView()Landroid/view/View;

    move-result-object v11

    .line 576
    .restart local v11       #tempView:Landroid/view/View;
    const v0, 0x7f0c0021

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    .line 578
    .restart local v9       #fl:Landroid/widget/RelativeLayout;
    iget-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mNoTrackView:Landroid/view/View;

    invoke-virtual {v9, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 592
    .end local v9           #fl:Landroid/widget/RelativeLayout;
    .end local v11           #tempView:Landroid/view/View;
    .end local v12           #text:Landroid/widget/TextView;
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 594
    .local v8, e:Landroid/database/sqlite/SQLiteFullException;
    iget-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SQLiteFullException getMusicMainListCursor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    invoke-static {p0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 598
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/android/music/list/activity/MpSearchResultActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 599
    .local v6, am:Landroid/app/ActivityManager;
    const-string v0, "com.android.music"

    invoke-virtual {v6, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_0

    .line 581
    .end local v6           #am:Landroid/app/ActivityManager;
    .end local v8           #e:Landroid/database/sqlite/SQLiteFullException;
    :cond_1
    :try_start_2
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v7, v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 584
    .local v7, containerParams:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v10, Lcom/android/music/list/view/MpListSearchResultView;

    iget-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mCur:Landroid/database/Cursor;

    invoke-direct {v10, p0, v0}, Lcom/android/music/list/view/MpListSearchResultView;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 585
    .local v10, mListView:Landroid/widget/ListView;
    invoke-virtual {v10, v7}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 586
    invoke-virtual {v10, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 587
    iget-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mTitleLayout1:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    invoke-virtual {v0}, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;->GetView()Landroid/view/View;

    move-result-object v11

    .line 588
    .restart local v11       #tempView:Landroid/view/View;
    const v0, 0x7f0c0021

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    .line 590
    .restart local v9       #fl:Landroid/widget/RelativeLayout;
    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 601
    .end local v7           #containerParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v9           #fl:Landroid/widget/RelativeLayout;
    .end local v10           #mListView:Landroid/widget/ListView;
    .end local v11           #tempView:Landroid/view/View;
    :catch_1
    move-exception v0

    move-object v8, v0

    .line 603
    .local v8, e:Landroid/database/sqlite/SQLiteDiskIOException;
    invoke-static {p0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 606
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/android/music/list/activity/MpSearchResultActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 607
    .restart local v6       #am:Landroid/app/ActivityManager;
    const-string v0, "com.android.music"

    invoke-virtual {v6, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected moveToTracklist([Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 3
    .parameter "title"
    .parameter "listType"
    .parameter "con"

    .prologue
    .line 520
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/music/list/activity/MpSearchResultActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 521
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "ListType"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 522
    const-string v1, "TitleText"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 523
    const-string v1, "Conditions"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 525
    const-string v1, "query"

    iget-object v2, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mFilterString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 526
    invoke-virtual {p0, v0}, Lcom/android/music/list/activity/MpSearchResultActivity;->startActivity(Landroid/content/Intent;)V

    .line 527
    invoke-virtual {p0}, Lcom/android/music/list/activity/MpSearchResultActivity;->finish()V

    .line 528
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 533
    iget-boolean v1, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mIsBackKeyDoStartPreviousActivity:Z

    if-eqz v1, :cond_0

    .line 535
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/music/list/activity/MpSearchResultActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 536
    .local v0, serchIentent:Landroid/content/Intent;
    const-string v1, "android.intent.action.SEARCH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 538
    const-string v1, "query"

    iget-object v2, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mFilterString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 539
    const-string v1, "Back"

    const-string v2, "putBackKey"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 540
    invoke-virtual {p0, v0}, Lcom/android/music/list/activity/MpSearchResultActivity;->startActivity(Landroid/content/Intent;)V

    .line 542
    .end local v0           #serchIentent:Landroid/content/Intent;
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 543
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 26
    .parameter "savedInstanceState"

    .prologue
    .line 160
    invoke-static/range {p0 .. p0}, Lcom/android/music/list/data/MpListDataController;->InitContext(Landroid/content/Context;)V

    .line 162
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/list/activity/MpSearchResultActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/Window;->requestFeature(I)Z

    .line 165
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/list/activity/MpSearchResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v19

    .line 166
    .local v19, intent:Landroid/content/Intent;
    const/4 v13, 0x0

    .line 167
    .local v13, bundle:Landroid/os/Bundle;
    const/4 v9, 0x0

    .line 169
    .local v9, action:Ljava/lang/String;
    if-nez v19, :cond_0

    .line 170
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/list/activity/MpSearchResultActivity;->finish()V

    .line 371
    :goto_0
    return-void

    .line 174
    :cond_0
    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v13

    .line 175
    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    .line 178
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 179
    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 180
    .local v4, mUri:Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v23

    .line 181
    .local v23, path:Ljava/lang/String;
    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v21

    .line 183
    .local v21, mLastPathSegment:Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    :try_start_0
    invoke-virtual/range {v3 .. v8}, Lcom/android/music/list/activity/MpSearchResultActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 186
    .local v14, c:Landroid/database/Cursor;
    if-eqz v14, :cond_1

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_4

    .line 188
    :cond_1
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 190
    if-eqz v14, :cond_2

    .line 192
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 195
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/list/activity/MpSearchResultActivity;->finish()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 259
    .end local v4           #mUri:Landroid/net/Uri;
    .end local v14           #c:Landroid/database/Cursor;
    :catch_0
    move-exception v3

    move-object v15, v3

    .line 261
    .local v15, e:Landroid/database/sqlite/SQLiteFullException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpSearchResultActivity;->TAG:Ljava/lang/String;

    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SQLiteFullException getMusicMainListCursor"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-static/range {p0 .. p0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 265
    const-string v3, "activity"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/music/list/activity/MpSearchResultActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ActivityManager;

    .line 266
    .local v11, am:Landroid/app/ActivityManager;
    const-string v3, "com.android.music"

    invoke-virtual {v11, v3}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    .line 360
    .end local v11           #am:Landroid/app/ActivityManager;
    .end local v15           #e:Landroid/database/sqlite/SQLiteFullException;
    .end local v21           #mLastPathSegment:Ljava/lang/String;
    .end local v23           #path:Ljava/lang/String;
    :cond_3
    :goto_1
    new-instance v20, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    move-object/from16 v0, v20

    move-object v1, v3

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 362
    .local v20, intentMediaStateFilter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    move-object/from16 v0, v20

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 363
    const-string v3, "android.intent.action.MEDIA_EJECT"

    move-object/from16 v0, v20

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 364
    const-string v3, "file"

    move-object/from16 v0, v20

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 365
    const-string v3, "android.intent.action.MEDIA_SCANNER_FINISHED"

    move-object/from16 v0, v20

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 366
    const-string v3, "android.intent.action.MEDIA_SCANNER_STARTED"

    move-object/from16 v0, v20

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpSearchResultActivity;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    move-object v3, v0

    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/music/list/activity/MpSearchResultActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 369
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 201
    .end local v20           #intentMediaStateFilter:Landroid/content/IntentFilter;
    .restart local v4       #mUri:Landroid/net/Uri;
    .restart local v14       #c:Landroid/database/Cursor;
    .restart local v21       #mLastPathSegment:Ljava/lang/String;
    .restart local v23       #path:Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string v3, "content://media/external/audio/albums/"

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 202
    const/16 v3, 0xe

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/list/activity/MpSearchResultActivity;->mListType:I

    .line 203
    const/4 v3, 0x7

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/list/activity/MpSearchResultActivity;->mSubListType:I

    .line 205
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/list/activity/MpSearchResultActivity;->mListTitleText:[Ljava/lang/String;

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListTitleText:[Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x0

    const-string v5, "album"

    .end local v4           #mUri:Landroid/net/Uri;
    invoke-interface {v14, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListTitleText:[Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x1

    const-string v5, "artist"

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListTitleText:[Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 210
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/list/activity/MpSearchResultActivity;->mConditions:[Ljava/lang/String;

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpSearchResultActivity;->mConditions:[Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x0

    const-string v5, "0"

    aput-object v5, v3, v4

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpSearchResultActivity;->mConditions:[Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 216
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/list/activity/MpSearchResultActivity;->makeAlbum()V

    .line 258
    :cond_5
    :goto_2
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 268
    .end local v14           #c:Landroid/database/Cursor;
    :catch_1
    move-exception v3

    move-object v15, v3

    .line 270
    .local v15, e:Landroid/database/sqlite/SQLiteDiskIOException;
    invoke-static/range {p0 .. p0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 273
    const-string v3, "activity"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/music/list/activity/MpSearchResultActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ActivityManager;

    .line 274
    .restart local v11       #am:Landroid/app/ActivityManager;
    const-string v3, "com.android.music"

    invoke-virtual {v11, v3}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 219
    .end local v11           #am:Landroid/app/ActivityManager;
    .end local v15           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    .restart local v4       #mUri:Landroid/net/Uri;
    .restart local v14       #c:Landroid/database/Cursor;
    :cond_6
    :try_start_2
    const-string v3, "content://media/external/audio/artists/"

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 221
    const/16 v3, 0x10

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/list/activity/MpSearchResultActivity;->mListType:I

    .line 222
    const/4 v3, 0x7

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/list/activity/MpSearchResultActivity;->mSubListType:I

    .line 224
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/list/activity/MpSearchResultActivity;->mListTitleText:[Ljava/lang/String;

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListTitleText:[Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x0

    const-string v5, "artist"

    .end local v4           #mUri:Landroid/net/Uri;
    invoke-interface {v14, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 227
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/list/activity/MpSearchResultActivity;->mConditions:[Ljava/lang/String;

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpSearchResultActivity;->mConditions:[Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x0

    const-string v5, "0"

    aput-object v5, v3, v4

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpSearchResultActivity;->mConditions:[Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 240
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/list/activity/MpSearchResultActivity;->makeArtist()V

    goto/16 :goto_2

    .line 242
    .restart local v4       #mUri:Landroid/net/Uri;
    :cond_7
    const-string v3, "content://media/external/audio/media/"

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 244
    const-string v3, "search"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/music/list/activity/MpSearchResultActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/app/SearchManager;

    .line 245
    .local v22, mSearchManager:Landroid/app/SearchManager;
    invoke-virtual/range {v22 .. v22}, Landroid/app/SearchManager;->stopSearch()V

    .line 247
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/list/activity/MpSearchResultActivity;->finish()V

    .line 248
    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getFlags()I

    move-result v16

    .line 249
    .local v16, flag:I
    new-instance v18, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    move-object/from16 v0, v18

    move-object v1, v3

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 250
    .local v18, i:Landroid/content/Intent;
    const-string v3, "com.android.music/search"

    move-object/from16 v0, v18

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 252
    const-string v3, "musicplayer.action"

    const-string v5, "Search"

    move-object/from16 v0, v18

    move-object v1, v3

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    const-string v3, "SearchUri"

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .end local v4           #mUri:Landroid/net/Uri;
    move-object/from16 v0, v18

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/music/list/activity/MpSearchResultActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 280
    .end local v14           #c:Landroid/database/Cursor;
    .end local v16           #flag:I
    .end local v18           #i:Landroid/content/Intent;
    .end local v21           #mLastPathSegment:Ljava/lang/String;
    .end local v22           #mSearchManager:Landroid/app/SearchManager;
    .end local v23           #path:Ljava/lang/String;
    :cond_8
    const-string v3, "android.intent.action.SEARCH"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 281
    const-string v3, "query"

    move-object/from16 v0, v19

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/list/activity/MpSearchResultActivity;->mFilterString:Ljava/lang/String;

    .line 283
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://media/external/audio/search/fancy/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpSearchResultActivity;->mFilterString:Ljava/lang/String;

    move-object v4, v0

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/list/activity/MpSearchResultActivity;->mUri:Landroid/net/Uri;

    .line 286
    const-string v3, "Back"

    invoke-virtual {v13, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 288
    .local v24, strBackKey:Ljava/lang/String;
    if-eqz v24, :cond_9

    .line 290
    const-string v3, "putBackKey"

    move-object/from16 v0, v24

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_9

    .line 292
    const v3, 0x10a0002

    const v4, 0x10a0003

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/music/list/activity/MpSearchResultActivity;->overridePendingTransition(II)V

    .line 296
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/list/activity/MpSearchResultActivity;->makeSearchResult()V

    goto/16 :goto_1

    .line 297
    .end local v24           #strBackKey:Ljava/lang/String;
    :cond_a
    const-string v3, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 298
    const-string v3, "query"

    move-object/from16 v0, v19

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/list/activity/MpSearchResultActivity;->mFilterString:Ljava/lang/String;

    .line 300
    const-string v3, "android.intent.extra.focus"

    move-object/from16 v0, v19

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 301
    .local v17, focus:Ljava/lang/String;
    const-string v3, "android.intent.extra.artist"

    move-object/from16 v0, v19

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 302
    .local v12, artist:Ljava/lang/String;
    const-string v3, "android.intent.extra.album"

    move-object/from16 v0, v19

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 303
    .local v10, album:Ljava/lang/String;
    const-string v3, "android.intent.extra.title"

    move-object/from16 v0, v19

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 304
    .local v25, title:Ljava/lang/String;
    if-eqz v17, :cond_b

    .line 305
    const-string v3, "audio/"

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    if-eqz v25, :cond_d

    .line 306
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/list/activity/MpSearchResultActivity;->mFilterString:Ljava/lang/String;

    .line 321
    :cond_b
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://media/external/audio/search/fancy/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpSearchResultActivity;->mFilterString:Ljava/lang/String;

    move-object v4, v0

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/list/activity/MpSearchResultActivity;->mUri:Landroid/net/Uri;

    .line 324
    const-string v3, "Back"

    invoke-virtual {v13, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 326
    .restart local v24       #strBackKey:Ljava/lang/String;
    if-eqz v24, :cond_c

    .line 328
    const-string v3, "putBackKey"

    move-object/from16 v0, v24

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_c

    .line 330
    const v3, 0x10a0002

    const v4, 0x10a0003

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/music/list/activity/MpSearchResultActivity;->overridePendingTransition(II)V

    .line 334
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/list/activity/MpSearchResultActivity;->makeSearchResult()V

    goto/16 :goto_1

    .line 307
    .end local v24           #strBackKey:Ljava/lang/String;
    :cond_d
    const-string v3, "vnd.android.cursor.item/album"

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 308
    if-eqz v10, :cond_b

    .line 309
    move-object v0, v10

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/list/activity/MpSearchResultActivity;->mFilterString:Ljava/lang/String;

    .line 310
    if-eqz v12, :cond_b

    .line 311
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpSearchResultActivity;->mFilterString:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/list/activity/MpSearchResultActivity;->mFilterString:Ljava/lang/String;

    goto :goto_3

    .line 314
    :cond_e
    const-string v3, "vnd.android.cursor.item/artist"

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 315
    if-eqz v12, :cond_b

    .line 316
    move-object v0, v12

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/list/activity/MpSearchResultActivity;->mFilterString:Ljava/lang/String;

    goto/16 :goto_3

    .line 338
    .end local v10           #album:Ljava/lang/String;
    .end local v12           #artist:Ljava/lang/String;
    .end local v17           #focus:Ljava/lang/String;
    .end local v25           #title:Ljava/lang/String;
    :cond_f
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/music/list/activity/MpSearchResultActivity;->mIsBackKeyDoStartPreviousActivity:Z

    .line 340
    const-string v3, "ListType"

    invoke-virtual {v13, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/list/activity/MpSearchResultActivity;->mListType:I

    .line 341
    const-string v3, "TitleText"

    invoke-virtual {v13, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/list/activity/MpSearchResultActivity;->mListTitleText:[Ljava/lang/String;

    .line 343
    const-string v3, "Conditions"

    invoke-virtual {v13, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/list/activity/MpSearchResultActivity;->mConditions:[Ljava/lang/String;

    .line 346
    const-string v3, "query"

    move-object/from16 v0, v19

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/list/activity/MpSearchResultActivity;->mFilterString:Ljava/lang/String;

    .line 348
    const/4 v3, 0x7

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/list/activity/MpSearchResultActivity;->mSubListType:I

    .line 350
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListType:I

    move v3, v0

    const/16 v4, 0x10

    if-ne v3, v4, :cond_10

    .line 352
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/list/activity/MpSearchResultActivity;->makeArtist()V

    goto/16 :goto_1

    .line 354
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListType:I

    move v3, v0

    const/16 v4, 0xe

    if-ne v3, v4, :cond_3

    .line 356
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/list/activity/MpSearchResultActivity;->makeAlbum()V

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 118
    iget-object v1, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->TAG:Ljava/lang/String;

    const-string v2, "onDestroy entered"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-static {p0}, Lcom/android/music/common/util/MusicPlayerUtil;->unbindService(Landroid/content/Context;)V

    .line 125
    :try_start_0
    iget-object v1, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/music/list/activity/MpSearchResultActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    iget-object v1, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    if-eqz v1, :cond_1

    .line 134
    iget-object v1, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    invoke-virtual {v1}, Lcom/android/music/common/util/BatteryChecker;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v1, v2, :cond_0

    .line 135
    iget-object v1, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/music/common/util/BatteryChecker;->cancel(Z)Z

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    invoke-virtual {v1}, Lcom/android/music/common/util/BatteryChecker;->removeCallback()V

    .line 139
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 140
    return-void

    .line 127
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 129
    .local v0, e:Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDestroy(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onFinishActivity()V
    .locals 0

    .prologue
    .line 1019
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 462
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListType:I

    const/16 v7, 0x1b

    if-ne v6, v7, :cond_0

    .line 466
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mCur:Landroid/database/Cursor;

    invoke-interface {v6, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 467
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mCur:Landroid/database/Cursor;

    iget-object v7, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mCur:Landroid/database/Cursor;

    const-string v8, "mime_type"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 469
    .local v2, mSearchResult:Ljava/lang/String;
    const-string v6, "artist"

    invoke-virtual {v2, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1

    .line 471
    const/4 v6, 0x1

    new-array v5, v6, [Ljava/lang/String;

    .line 472
    .local v5, title:[Ljava/lang/String;
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mCur:Landroid/database/Cursor;

    iget-object v8, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mCur:Landroid/database/Cursor;

    const-string v9, "artist"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 475
    const/4 v6, 0x2

    new-array v0, v6, [Ljava/lang/String;

    .line 476
    .local v0, con:[Ljava/lang/String;
    const/4 v6, 0x0

    const-string v7, "0"

    aput-object v7, v0, v6

    .line 477
    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mCur:Landroid/database/Cursor;

    iget-object v8, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mCur:Landroid/database/Cursor;

    const-string v9, "_id"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    .line 480
    const/16 v6, 0x10

    invoke-virtual {p0, v5, v6, v0}, Lcom/android/music/list/activity/MpSearchResultActivity;->moveToTracklist([Ljava/lang/String;I[Ljava/lang/String;)V

    .line 517
    .end local v0           #con:[Ljava/lang/String;
    .end local v2           #mSearchResult:Ljava/lang/String;
    .end local v5           #title:[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 483
    .restart local v2       #mSearchResult:Ljava/lang/String;
    :cond_1
    const-string v6, "album"

    invoke-virtual {v2, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_2

    .line 485
    const/4 v6, 0x3

    new-array v5, v6, [Ljava/lang/String;

    .line 486
    .restart local v5       #title:[Ljava/lang/String;
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mCur:Landroid/database/Cursor;

    iget-object v8, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mCur:Landroid/database/Cursor;

    const-string v9, "album"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 488
    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mCur:Landroid/database/Cursor;

    iget-object v8, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mCur:Landroid/database/Cursor;

    const-string v9, "artist"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 490
    const/4 v6, 0x2

    iget-object v7, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mCur:Landroid/database/Cursor;

    iget-object v8, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mCur:Landroid/database/Cursor;

    const-string v9, "_id"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 492
    const/4 v6, 0x2

    new-array v0, v6, [Ljava/lang/String;

    .line 493
    .restart local v0       #con:[Ljava/lang/String;
    const/4 v6, 0x0

    const-string v7, "0"

    aput-object v7, v0, v6

    .line 494
    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mCur:Landroid/database/Cursor;

    iget-object v8, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mCur:Landroid/database/Cursor;

    const-string v9, "_id"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    .line 496
    const/16 v6, 0xe

    invoke-virtual {p0, v5, v6, v0}, Lcom/android/music/list/activity/MpSearchResultActivity;->moveToTracklist([Ljava/lang/String;I[Ljava/lang/String;)V

    goto :goto_0

    .line 501
    .end local v0           #con:[Ljava/lang/String;
    .end local v5           #title:[Ljava/lang/String;
    :cond_2
    const/4 v6, 0x1

    new-array v0, v6, [Ljava/lang/String;

    .line 502
    .restart local v0       #con:[Ljava/lang/String;
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mCur:Landroid/database/Cursor;

    iget-object v8, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mCur:Landroid/database/Cursor;

    const-string v9, "_id"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    .line 504
    const-string v6, "content://media/external/audio/media/"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 505
    .local v3, mTrackUri:Landroid/net/Uri;
    const/4 v6, 0x0

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-long v6, v6

    invoke-static {v3, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 507
    .local v4, mUri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-class v6, Lcom/android/music/player/activity/MusicPlayer;

    invoke-direct {v1, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 508
    .local v1, i:Landroid/content/Intent;
    const-string v6, "musicplayer.action"

    const-string v7, "Search"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 509
    const-string v6, "SearchUri"

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 510
    const/high16 v6, 0x2

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 511
    invoke-virtual {p0, v1}, Lcom/android/music/list/activity/MpSearchResultActivity;->startActivity(Landroid/content/Intent;)V

    .line 512
    invoke-virtual {p0}, Lcom/android/music/list/activity/MpSearchResultActivity;->finish()V

    goto/16 :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->TAG:Ljava/lang/String;

    const-string v1, "onNewIntent is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 154
    invoke-virtual {p0}, Lcom/android/music/list/activity/MpSearchResultActivity;->finish()V

    .line 155
    invoke-virtual {p0, p1}, Lcom/android/music/list/activity/MpSearchResultActivity;->startActivity(Landroid/content/Intent;)V

    .line 156
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/music/list/activity/MpSearchResultActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 395
    iget-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    invoke-virtual {v0}, Lcom/android/music/common/util/BatteryChecker;->removeCallback()V

    .line 396
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 397
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 376
    iget-object v1, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    if-nez v1, :cond_0

    .line 377
    iget-object v1, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-static {p0, v1}, Lcom/android/music/common/util/MusicPlayerUtil;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z

    .line 379
    :cond_0
    iget-object v1, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    invoke-virtual {v1}, Lcom/android/music/common/util/BatteryChecker;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v1, v2, :cond_1

    .line 380
    iget-object v1, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    invoke-virtual {v1, v3}, Lcom/android/music/common/util/BatteryChecker;->cancel(Z)Z

    .line 383
    :cond_1
    new-instance v1, Lcom/android/music/common/util/BatteryChecker;

    iget-object v2, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-direct {v1, v2, p0}, Lcom/android/music/common/util/BatteryChecker;-><init>(Lcom/android/music/player/service/ICorePlayerService;Lcom/android/music/common/util/OnLowBatteryListener;)V

    iput-object v1, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    .line 384
    iget-object v1, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    new-array v2, v3, [Landroid/app/Activity;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/music/common/util/BatteryChecker;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 385
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 386
    .local v0, intentFilterBattery:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 387
    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 388
    iget-object v1, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/music/list/activity/MpSearchResultActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 389
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 390
    return-void
.end method

.method protected setTitleLayout(II)V
    .locals 13
    .parameter "layoutType"
    .parameter "cursorPosition"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x2

    const/4 v8, 0x0

    const-string v12, "content://media/external/audio/albumart"

    const-string v11, "album_id"

    .line 735
    new-instance v6, Lcom/android/music/list/data/LayoutData;

    invoke-direct {v6}, Lcom/android/music/list/data/LayoutData;-><init>()V

    iput-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    .line 736
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    iget v7, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListType:I

    iput v7, v6, Lcom/android/music/list/data/LayoutData;->mListType:I

    .line 737
    invoke-virtual {p0}, Lcom/android/music/list/activity/MpSearchResultActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 738
    .local v4, mResolver:Landroid/content/ContentResolver;
    const/4 v5, 0x0

    .line 740
    .local v5, uri:Landroid/net/Uri;
    packed-switch p1, :pswitch_data_0

    .line 863
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mTitleLayout3:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    iget-object v7, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    invoke-virtual {v6, v7}, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;->setTitleDisplay(Lcom/android/music/list/data/LayoutData;)V

    .line 864
    return-void

    .line 743
    :pswitch_1
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    iget-object v7, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListTitleText:[Ljava/lang/String;

    aget-object v7, v7, v8

    iput-object v7, v6, Lcom/android/music/list/data/LayoutData;->mBigText:Ljava/lang/String;

    goto :goto_0

    .line 748
    :pswitch_2
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    iget-object v7, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListTitleText:[Ljava/lang/String;

    aget-object v7, v7, v8

    iput-object v7, v6, Lcom/android/music/list/data/LayoutData;->mBigText:Ljava/lang/String;

    .line 749
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    iget v7, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListType:I

    iput v7, v6, Lcom/android/music/list/data/LayoutData;->mListType:I

    .line 751
    iget v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListType:I

    const/16 v7, 0x13

    if-ne v6, v7, :cond_1

    .line 753
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    iget-object v7, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListTitleText:[Ljava/lang/String;

    aget-object v7, v7, v8

    invoke-static {v7}, Lcom/android/music/common/util/ListUtil;->getGenreThumbnailRsrcID(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/android/music/list/data/LayoutData;->mTitleResource:I

    .line 755
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    iput-boolean v8, v6, Lcom/android/music/list/data/LayoutData;->hasBitmap:Z

    goto :goto_0

    .line 756
    :cond_1
    iget v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListType:I

    const/16 v7, 0xd

    if-eq v6, v7, :cond_2

    iget v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListType:I

    const/16 v7, 0x1a

    if-ne v6, v7, :cond_5

    .line 758
    :cond_2
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListTitleText:[Ljava/lang/String;

    aget-object v6, v6, v9

    if-eqz v6, :cond_4

    .line 759
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListTitleText:[Ljava/lang/String;

    aget-object v7, v7, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 762
    :try_start_0
    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 763
    .local v2, in:Ljava/io/InputStream;
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, v6, Lcom/android/music/list/data/LayoutData;->mTitleBitmap:Landroid/graphics/Bitmap;

    .line 765
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    iget-object v6, v6, Lcom/android/music/list/data/LayoutData;->mTitleBitmap:Landroid/graphics/Bitmap;

    if-nez v6, :cond_3

    .line 766
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    const/4 v7, 0x2

    invoke-static {v7}, Lcom/android/music/common/util/ListUtil;->getDefaultPlaylistRsrcID(I)I

    move-result v7

    iput v7, v6, Lcom/android/music/list/data/LayoutData;->mTitleResource:I

    .line 768
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/android/music/list/data/LayoutData;->hasBitmap:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 772
    .end local v2           #in:Ljava/io/InputStream;
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 773
    .local v1, e:Ljava/lang/Exception;
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    invoke-static {v9}, Lcom/android/music/common/util/ListUtil;->getDefaultPlaylistRsrcID(I)I

    move-result v7

    iput v7, v6, Lcom/android/music/list/data/LayoutData;->mTitleResource:I

    .line 775
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    iput-boolean v8, v6, Lcom/android/music/list/data/LayoutData;->hasBitmap:Z

    .line 776
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 770
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #in:Ljava/io/InputStream;
    :cond_3
    :try_start_1
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/android/music/list/data/LayoutData;->hasBitmap:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 779
    .end local v2           #in:Ljava/io/InputStream;
    :cond_4
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    invoke-static {v9}, Lcom/android/music/common/util/ListUtil;->getDefaultPlaylistRsrcID(I)I

    move-result v7

    iput v7, v6, Lcom/android/music/list/data/LayoutData;->mTitleResource:I

    .line 781
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    iput-boolean v8, v6, Lcom/android/music/list/data/LayoutData;->hasBitmap:Z

    goto/16 :goto_0

    .line 784
    :cond_5
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v6}, Lcom/android/music/list/view/AbstractMpListView;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 785
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 787
    const-string v6, "content://media/external/audio/albumart"

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 789
    .local v3, mAlbumArtUri:Landroid/net/Uri;
    const-string v6, "album_id"

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v6, v6

    invoke-static {v3, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 793
    :try_start_2
    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 794
    .restart local v2       #in:Ljava/io/InputStream;
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, v6, Lcom/android/music/list/data/LayoutData;->mTitleBitmap:Landroid/graphics/Bitmap;

    .line 796
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    iget-object v6, v6, Lcom/android/music/list/data/LayoutData;->mTitleBitmap:Landroid/graphics/Bitmap;

    if-nez v6, :cond_6

    .line 797
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    invoke-static {}, Lcom/android/music/common/util/ListUtil;->getDefaultThumbnailRsrcID()I

    move-result v7

    iput v7, v6, Lcom/android/music/list/data/LayoutData;->mTitleResource:I

    .line 799
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/android/music/list/data/LayoutData;->hasBitmap:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 803
    .end local v2           #in:Ljava/io/InputStream;
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 804
    .restart local v1       #e:Ljava/lang/Exception;
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    invoke-static {}, Lcom/android/music/common/util/ListUtil;->getDefaultThumbnailRsrcID()I

    move-result v7

    iput v7, v6, Lcom/android/music/list/data/LayoutData;->mTitleResource:I

    .line 806
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    iput-boolean v8, v6, Lcom/android/music/list/data/LayoutData;->hasBitmap:Z

    .line 807
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 801
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #in:Ljava/io/InputStream;
    :cond_6
    :try_start_3
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/android/music/list/data/LayoutData;->hasBitmap:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 810
    .end local v2           #in:Ljava/io/InputStream;
    .end local v3           #mAlbumArtUri:Landroid/net/Uri;
    :cond_7
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    invoke-static {}, Lcom/android/music/common/util/ListUtil;->getDefaultThumbnailRsrcID()I

    move-result v7

    iput v7, v6, Lcom/android/music/list/data/LayoutData;->mTitleResource:I

    .line 812
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    iput-boolean v8, v6, Lcom/android/music/list/data/LayoutData;->hasBitmap:Z

    goto/16 :goto_0

    .line 819
    .end local v0           #cursor:Landroid/database/Cursor;
    :pswitch_3
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v6}, Lcom/android/music/list/view/AbstractMpListView;->getCursor()Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 821
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    iget v7, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListType:I

    iput v7, v6, Lcom/android/music/list/data/LayoutData;->mListType:I

    .line 822
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    iget-object v7, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListTitleText:[Ljava/lang/String;

    aget-object v7, v7, v8

    iput-object v7, v6, Lcom/android/music/list/data/LayoutData;->mBigText:Ljava/lang/String;

    .line 823
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    iget-object v7, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListTitleText:[Ljava/lang/String;

    aget-object v7, v7, v10

    iput-object v7, v6, Lcom/android/music/list/data/LayoutData;->mSmallText:Ljava/lang/String;

    .line 825
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v6}, Lcom/android/music/list/view/AbstractMpListView;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 826
    .restart local v0       #cursor:Landroid/database/Cursor;
    invoke-interface {v0, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 828
    const-string v6, "content://media/external/audio/albumart"

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 830
    .restart local v3       #mAlbumArtUri:Landroid/net/Uri;
    const-string v6, "album_id"

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v6, v6

    invoke-static {v3, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 834
    :try_start_4
    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 835
    .restart local v2       #in:Ljava/io/InputStream;
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, v6, Lcom/android/music/list/data/LayoutData;->mTitleBitmap:Landroid/graphics/Bitmap;

    .line 837
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    iget-object v6, v6, Lcom/android/music/list/data/LayoutData;->mTitleBitmap:Landroid/graphics/Bitmap;

    if-nez v6, :cond_8

    .line 838
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    invoke-static {}, Lcom/android/music/common/util/ListUtil;->getDefaultThumbnailRsrcID()I

    move-result v7

    iput v7, v6, Lcom/android/music/list/data/LayoutData;->mTitleResource:I

    .line 840
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/android/music/list/data/LayoutData;->hasBitmap:Z
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 844
    .end local v2           #in:Ljava/io/InputStream;
    :catch_2
    move-exception v6

    move-object v1, v6

    .line 845
    .local v1, e:Ljava/io/FileNotFoundException;
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    invoke-static {}, Lcom/android/music/common/util/ListUtil;->getDefaultThumbnailRsrcID()I

    move-result v7

    iput v7, v6, Lcom/android/music/list/data/LayoutData;->mTitleResource:I

    .line 847
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    iput-boolean v8, v6, Lcom/android/music/list/data/LayoutData;->hasBitmap:Z

    .line 848
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 842
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .restart local v2       #in:Ljava/io/InputStream;
    :cond_8
    :try_start_5
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/android/music/list/data/LayoutData;->hasBitmap:Z
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 851
    .end local v2           #in:Ljava/io/InputStream;
    .end local v3           #mAlbumArtUri:Landroid/net/Uri;
    :cond_9
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    invoke-static {}, Lcom/android/music/common/util/ListUtil;->getDefaultThumbnailRsrcID()I

    move-result v7

    iput v7, v6, Lcom/android/music/list/data/LayoutData;->mTitleResource:I

    .line 853
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    iput-boolean v8, v6, Lcom/android/music/list/data/LayoutData;->hasBitmap:Z

    goto/16 :goto_0

    .line 740
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
