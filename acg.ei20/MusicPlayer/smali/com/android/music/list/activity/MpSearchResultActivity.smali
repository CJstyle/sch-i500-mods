.class public Lcom/android/music/list/activity/MpSearchResultActivity;
.super Landroid/app/Activity;
.source "MpSearchResultActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/music/common/util/OnLowBatteryListener;
.implements Lcom/android/music/list/interfaces/MpHandlerInterface;


# instance fields
.field protected TAG:Ljava/lang/String;

.field protected layoutData:Lcom/android/music/list/data/LayoutData;

.field private mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

.field protected mConditions:[Ljava/lang/String;

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


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 94
    iput-boolean v1, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mMediaScannerRunCheck:Z

    .line 99
    const-string v0, "MpSearchResultActivity"

    iput-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->TAG:Ljava/lang/String;

    .line 104
    iput-boolean v1, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mIsBackKeyDoStartPreviousActivity:Z

    .line 1071
    new-instance v0, Lcom/android/music/list/activity/MpSearchResultActivity$1;

    invoke-direct {v0, p0}, Lcom/android/music/list/activity/MpSearchResultActivity$1;-><init>(Lcom/android/music/list/activity/MpSearchResultActivity;)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    .line 1093
    new-instance v0, Lcom/android/music/list/activity/MpSearchResultActivity$2;

    invoke-direct {v0, p0}, Lcom/android/music/list/activity/MpSearchResultActivity$2;-><init>(Lcom/android/music/list/activity/MpSearchResultActivity;)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/music/list/activity/MpSearchResultActivity;)Lcom/android/music/common/util/BatteryChecker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/music/list/activity/MpSearchResultActivity;Lcom/android/music/common/util/BatteryChecker;)Lcom/android/music/common/util/BatteryChecker;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    return-object p1
.end method

.method private initListByID(I)V
    .locals 12
    .parameter "menuID"

    .prologue
    const/4 v11, 0x0

    .line 973
    invoke-static {p1}, Lcom/android/music/list/data/MpListDataController;->getListMenuData(I)Lcom/android/music/list/data/MpListDisplayData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListData:Lcom/android/music/list/data/MpListDisplayData;

    .line 975
    iget-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListData:Lcom/android/music/list/data/MpListDisplayData;

    if-nez v0, :cond_0

    .line 1065
    :goto_0
    return-void

    .line 978
    :cond_0
    iget-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListTitleText:[Ljava/lang/String;

    if-nez v0, :cond_1

    .line 979
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListTitleText:[Ljava/lang/String;

    .line 980
    iget-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListTitleText:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListData:Lcom/android/music/list/data/MpListDisplayData;

    invoke-virtual {v1}, Lcom/android/music/list/data/MpListDisplayData;->getListName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v11

    .line 983
    :cond_1
    iget-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListData:Lcom/android/music/list/data/MpListDisplayData;

    invoke-virtual {v0}, Lcom/android/music/list/data/MpListDisplayData;->getItemLayout()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1002
    :goto_1
    iget-boolean v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mHasCheck:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mSubListType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 1003
    iget-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListData:Lcom/android/music/list/data/MpListDisplayData;

    invoke-virtual {v0, v11}, Lcom/android/music/list/data/MpListDisplayData;->setMenuLayout(I)V

    .line 1006
    :cond_2
    iget-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListData:Lcom/android/music/list/data/MpListDisplayData;

    invoke-virtual {v0}, Lcom/android/music/list/data/MpListDisplayData;->getListLayout()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 1031
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

    .line 1032
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 1034
    .local v8, buttonView:Landroid/view/View;
    const v0, 0x7f0c002b

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    .line 1035
    .local v10, twoButtonLayout:Landroid/widget/RelativeLayout;
    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1036
    const v0, 0x7f0c002a

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 1038
    .local v9, buttonlayout:Landroid/widget/LinearLayout;
    iget-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mTitleLayout3:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    invoke-virtual {v0}, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;->GetView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1039
    const v0, 0x7f0c002d

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 1040
    .local v6, button1:Landroid/widget/Button;
    const v0, 0x7f0c002e

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 1041
    .local v7, button2:Landroid/widget/Button;
    iget-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    iget v1, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mSubListType:I

    invoke-virtual {v0, v1, v6, v7}, Lcom/android/music/list/view/AbstractMpListView;->setSoftKey(ILandroid/widget/Button;Landroid/widget/Button;)V

    .line 1042
    invoke-virtual {p0, v8}, Lcom/android/music/list/activity/MpSearchResultActivity;->setContentView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 985
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

    .line 989
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

    .line 993
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

    .line 997
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

    .line 1008
    :pswitch_5
    new-instance v0, Lcom/android/music/list/layout/MpListOneLineTitleScreenLayout;

    invoke-direct {v0, p0}, Lcom/android/music/list/layout/MpListOneLineTitleScreenLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mTitleLayout3:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    goto/16 :goto_2

    .line 1013
    :pswitch_6
    new-instance v0, Lcom/android/music/list/layout/MpListThumnailOneLineTitleScreenLayout;

    invoke-direct {v0, p0}, Lcom/android/music/list/layout/MpListThumnailOneLineTitleScreenLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mTitleLayout3:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    goto/16 :goto_2

    .line 1018
    :pswitch_7
    new-instance v0, Lcom/android/music/list/layout/MpListThumnailTwoLineTitleScreenLayout;

    invoke-direct {v0, p0}, Lcom/android/music/list/layout/MpListThumnailTwoLineTitleScreenLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mTitleLayout3:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    goto/16 :goto_2

    .line 1022
    :pswitch_8
    new-instance v0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;

    invoke-direct {v0, p0, p1}, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mTitleLayout3:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    goto/16 :goto_2

    .line 1026
    :pswitch_9
    new-instance v0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;

    invoke-direct {v0, p0, p1}, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mTitleLayout3:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    goto/16 :goto_2

    .line 1059
    :cond_3
    iget-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mTitleLayout3:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    invoke-virtual {v0}, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;->GetView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/music/list/activity/MpSearchResultActivity;->setContentView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 983
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 1006
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
.method public bridge synthetic GetView(Ljava/lang/String;Z)Landroid/view/View;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-virtual {p0, p1, p2}, Lcom/android/music/list/activity/MpSearchResultActivity;->GetView(Ljava/lang/String;Z)Lcom/android/music/list/view/AbstractMpListView;

    move-result-object v0

    return-object v0
.end method

.method public GetView(Ljava/lang/String;Z)Lcom/android/music/list/view/AbstractMpListView;
    .locals 1
    .parameter "tag"
    .parameter "set"

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 1112
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    return-object v0
.end method

.method public launchDiscPlus()V
    .locals 0

    .prologue
    .line 519
    return-void
.end method

.method protected makeAlbum()V
    .locals 7

    .prologue
    const/4 v5, -0x1

    .line 758
    iget v4, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListType:I

    invoke-direct {p0, v4}, Lcom/android/music/list/activity/MpSearchResultActivity;->initListByID(I)V

    .line 760
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    invoke-direct {v0, v5, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 764
    .local v0, containerParams:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v4, v0}, Lcom/android/music/list/view/AbstractMpListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 766
    iget-object v4, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/music/list/view/AbstractMpListView;->initViewAdapter(ZLandroid/database/Cursor;)Z

    .line 767
    iget-object v4, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v4}, Lcom/android/music/list/view/AbstractMpListView;->getCursor()Landroid/database/Cursor;

    move-result-object v4

    iput-object v4, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mCur:Landroid/database/Cursor;

    .line 772
    const/4 v2, 0x0

    .line 773
    .local v2, iCursorPosition:I
    iget-boolean v4, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mHasCheck:Z

    if-eqz v4, :cond_0

    .line 774
    add-int/lit8 v2, v2, 0x1

    .line 776
    :cond_0
    new-instance v4, Lcom/android/music/list/layout/MpListThumnailTwoLineTitleScreenLayout;

    invoke-direct {v4, p0}, Lcom/android/music/list/layout/MpListThumnailTwoLineTitleScreenLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mTitleLayout3:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    .line 778
    const/4 v4, 0x2

    invoke-virtual {p0, v4, v2}, Lcom/android/music/list/activity/MpSearchResultActivity;->setTitleLayout(II)V

    .line 780
    iget-object v4, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mTitleLayout3:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    invoke-virtual {v4}, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;->GetView()Landroid/view/View;

    move-result-object v3

    .line 781
    .local v3, tempView:Landroid/view/View;
    const v4, 0x7f0c0021

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 783
    .local v1, fl:Landroid/widget/RelativeLayout;
    iget-object v4, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 802
    iget-object v4, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mTitleLayout3:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    invoke-virtual {v4}, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;->GetView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/music/list/activity/MpSearchResultActivity;->setContentView(Landroid/view/View;)V

    .line 803
    return-void
.end method

.method protected makeArtist()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v2, -0x1

    .line 707
    new-instance v0, Lcom/android/music/list/data/LayoutData;

    invoke-direct {v0}, Lcom/android/music/list/data/LayoutData;-><init>()V

    iput-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    .line 708
    iget-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    iget v1, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListType:I

    iput v1, v0, Lcom/android/music/list/data/LayoutData;->mListType:I

    .line 709
    iget-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    iget-object v1, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListTitleText:[Ljava/lang/String;

    aget-object v1, v1, v9

    iput-object v1, v0, Lcom/android/music/list/data/LayoutData;->mBigText:Ljava/lang/String;

    .line 711
    new-instance v0, Lcom/android/music/list/layout/MpListOneLineTitleScreenLayout;

    invoke-direct {v0, p0}, Lcom/android/music/list/layout/MpListOneLineTitleScreenLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mTitleLayout2:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    .line 712
    iget-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mTitleLayout2:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    iget-object v1, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    invoke-virtual {v0, v1}, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;->setTitleDisplay(Lcom/android/music/list/data/LayoutData;)V

    .line 714
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, 0x0

    invoke-direct {v6, v2, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 718
    .local v6, containerParams:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v0, Lcom/android/music/list/view/MpListGroupView;

    iget v2, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListType:I

    iget-boolean v3, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mHasCheck:Z

    iget v4, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mSubListType:I

    iget-object v5, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mConditions:[Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/music/list/view/MpListGroupView;-><init>(Landroid/content/Context;IZI[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    .line 721
    iget-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v0, v6}, Lcom/android/music/list/view/AbstractMpListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 723
    iget-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v9, v1}, Lcom/android/music/list/view/AbstractMpListView;->initViewAdapter(ZLandroid/database/Cursor;)Z

    .line 724
    iget-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v0}, Lcom/android/music/list/view/AbstractMpListView;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mCur:Landroid/database/Cursor;

    .line 728
    iget-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mTitleLayout2:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    invoke-virtual {v0}, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;->GetView()Landroid/view/View;

    move-result-object v8

    .line 729
    .local v8, tempView:Landroid/view/View;
    const v0, 0x7f0c0021

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    .line 731
    .local v7, fl:Landroid/widget/RelativeLayout;
    iget-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v7, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 751
    iget-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mTitleLayout2:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    invoke-virtual {v0}, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;->GetView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/music/list/activity/MpSearchResultActivity;->setContentView(Landroid/view/View;)V

    .line 753
    return-void
.end method

.method protected makeSearchResult()V
    .locals 13

    .prologue
    .line 613
    const/16 v0, 0x1b

    iput v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListType:I

    .line 615
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

    .line 616
    new-instance v0, Lcom/android/music/list/data/LayoutData;

    invoke-direct {v0}, Lcom/android/music/list/data/LayoutData;-><init>()V

    iput-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    .line 617
    iget-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    iget v1, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListType:I

    iput v1, v0, Lcom/android/music/list/data/LayoutData;->mListType:I

    .line 618
    iget-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    const v1, 0x7f0a00c8

    invoke-virtual {p0, v1}, Lcom/android/music/list/activity/MpSearchResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/music/list/data/LayoutData;->mBigText:Ljava/lang/String;

    .line 620
    new-instance v0, Lcom/android/music/list/layout/MpListOneLineTitleScreenLayout;

    invoke-direct {v0, p0}, Lcom/android/music/list/layout/MpListOneLineTitleScreenLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mTitleLayout1:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    .line 621
    iget-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mTitleLayout1:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    iget-object v1, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    invoke-virtual {v0, v1}, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;->setTitleDisplay(Lcom/android/music/list/data/LayoutData;)V

    .line 623
    iget-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mCur:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 625
    invoke-virtual {p0}, Lcom/android/music/list/activity/MpSearchResultActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030011

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mNoTrackView:Landroid/view/View;

    .line 627
    iget-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mNoTrackView:Landroid/view/View;

    const v1, 0x7f0c0044

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 629
    .local v12, text:Landroid/widget/TextView;
    const v0, 0x7f0a00da

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(I)V

    .line 630
    iget-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mTitleLayout1:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    invoke-virtual {v0}, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;->GetView()Landroid/view/View;

    move-result-object v11

    .line 631
    .local v11, tempView:Landroid/view/View;
    const v0, 0x7f0c0021

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    .line 633
    .local v9, fl:Landroid/widget/RelativeLayout;
    iget-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mNoTrackView:Landroid/view/View;

    invoke-virtual {v9, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 699
    .end local v9           #fl:Landroid/widget/RelativeLayout;
    .end local v11           #tempView:Landroid/view/View;
    .end local v12           #text:Landroid/widget/TextView;
    :goto_0
    iget-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mTitleLayout1:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    invoke-virtual {v0}, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;->GetView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/music/list/activity/MpSearchResultActivity;->setContentView(Landroid/view/View;)V

    .line 701
    return-void

    .line 635
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mCur:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 636
    invoke-virtual {p0}, Lcom/android/music/list/activity/MpSearchResultActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030011

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mNoTrackView:Landroid/view/View;

    .line 638
    iget-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mNoTrackView:Landroid/view/View;

    const v1, 0x7f0c0044

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 640
    .restart local v12       #text:Landroid/widget/TextView;
    const v0, 0x7f0a00da

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(I)V

    .line 641
    iget-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mTitleLayout1:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    invoke-virtual {v0}, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;->GetView()Landroid/view/View;

    move-result-object v11

    .line 642
    .restart local v11       #tempView:Landroid/view/View;
    const v0, 0x7f0c0021

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    .line 644
    .restart local v9       #fl:Landroid/widget/RelativeLayout;
    iget-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mNoTrackView:Landroid/view/View;

    invoke-virtual {v9, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 658
    .end local v9           #fl:Landroid/widget/RelativeLayout;
    .end local v11           #tempView:Landroid/view/View;
    .end local v12           #text:Landroid/widget/TextView;
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 665
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

    .line 666
    invoke-static {p0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 667
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/android/music/list/activity/MpSearchResultActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 668
    .local v6, am:Landroid/app/ActivityManager;
    const-string v0, "com.android.music"

    invoke-virtual {v6, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_0

    .line 647
    .end local v6           #am:Landroid/app/ActivityManager;
    .end local v8           #e:Landroid/database/sqlite/SQLiteFullException;
    :cond_1
    :try_start_2
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v7, v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 650
    .local v7, containerParams:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v10, Lcom/android/music/list/view/MpListSearchResultView;

    iget-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mCur:Landroid/database/Cursor;

    invoke-direct {v10, p0, v0}, Lcom/android/music/list/view/MpListSearchResultView;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 651
    .local v10, mListView:Landroid/widget/ListView;
    invoke-virtual {v10, v7}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 652
    invoke-virtual {v10, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 653
    iget-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mTitleLayout1:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    invoke-virtual {v0}, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;->GetView()Landroid/view/View;

    move-result-object v11

    .line 654
    .restart local v11       #tempView:Landroid/view/View;
    const v0, 0x7f0c0021

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    .line 656
    .restart local v9       #fl:Landroid/widget/RelativeLayout;
    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 670
    .end local v7           #containerParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v9           #fl:Landroid/widget/RelativeLayout;
    .end local v10           #mListView:Landroid/widget/ListView;
    .end local v11           #tempView:Landroid/view/View;
    :catch_1
    move-exception v0

    move-object v8, v0

    .line 678
    .local v8, e:Landroid/database/sqlite/SQLiteDiskIOException;
    invoke-static {p0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 679
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/android/music/list/activity/MpSearchResultActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 680
    .restart local v6       #am:Landroid/app/ActivityManager;
    const-string v0, "com.android.music"

    invoke-virtual {v6, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected moveToTracklist([Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 586
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/music/list/activity/MpSearchResultActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 587
    const-string v1, "ListType"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 588
    const-string v1, "TitleText"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 589
    const-string v1, "Conditions"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 591
    const-string v1, "query"

    iget-object v2, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mFilterString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 592
    invoke-virtual {p0, v0}, Lcom/android/music/list/activity/MpSearchResultActivity;->startActivity(Landroid/content/Intent;)V

    .line 593
    invoke-virtual {p0}, Lcom/android/music/list/activity/MpSearchResultActivity;->finish()V

    .line 594
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 599
    iget-boolean v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mIsBackKeyDoStartPreviousActivity:Z

    if-eqz v0, :cond_0

    .line 601
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/music/list/activity/MpSearchResultActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 602
    const-string v1, "android.intent.action.SEARCH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 604
    const-string v1, "query"

    iget-object v2, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mFilterString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 605
    const-string v1, "Back"

    const-string v2, "putBackKey"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 606
    invoke-virtual {p0, v0}, Lcom/android/music/list/activity/MpSearchResultActivity;->startActivity(Landroid/content/Intent;)V

    .line 608
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 609
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 26
    .parameter "savedInstanceState"

    .prologue
    .line 173
    invoke-static/range {p0 .. p0}, Lcom/android/music/list/data/MpListDataController;->InitContext(Landroid/content/Context;)V

    .line 175
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/list/activity/MpSearchResultActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/Window;->requestFeature(I)Z

    .line 178
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/list/activity/MpSearchResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v19

    .line 179
    .local v19, intent:Landroid/content/Intent;
    const/4 v13, 0x0

    .line 180
    .local v13, bundle:Landroid/os/Bundle;
    const/4 v9, 0x0

    .line 182
    .local v9, action:Ljava/lang/String;
    if-nez v19, :cond_0

    .line 183
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/list/activity/MpSearchResultActivity;->finish()V

    .line 426
    :goto_0
    return-void

    .line 187
    :cond_0
    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v13

    .line 188
    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    .line 191
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 192
    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 193
    .local v4, mUri:Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v23

    .line 194
    .local v23, path:Ljava/lang/String;
    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v21

    .line 196
    .local v21, mLastPathSegment:Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    :try_start_0
    invoke-virtual/range {v3 .. v8}, Lcom/android/music/list/activity/MpSearchResultActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 208
    .local v14, c:Landroid/database/Cursor;
    if-eqz v14, :cond_1

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_4

    .line 209
    :cond_1
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 210
    if-eqz v14, :cond_2

    .line 211
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 213
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/list/activity/MpSearchResultActivity;->finish()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 308
    .end local v4           #mUri:Landroid/net/Uri;
    .end local v14           #c:Landroid/database/Cursor;
    :catch_0
    move-exception v3

    move-object v15, v3

    .line 315
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

    .line 316
    invoke-static/range {p0 .. p0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 317
    const-string v3, "activity"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/music/list/activity/MpSearchResultActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ActivityManager;

    .line 318
    .local v11, am:Landroid/app/ActivityManager;
    const-string v3, "com.android.music"

    invoke-virtual {v11, v3}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    .line 415
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

    .line 417
    .local v20, intentMediaStateFilter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    move-object/from16 v0, v20

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 418
    const-string v3, "android.intent.action.MEDIA_EJECT"

    move-object/from16 v0, v20

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 419
    const-string v3, "file"

    move-object/from16 v0, v20

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 420
    const-string v3, "android.intent.action.MEDIA_SCANNER_FINISHED"

    move-object/from16 v0, v20

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 421
    const-string v3, "android.intent.action.MEDIA_SCANNER_STARTED"

    move-object/from16 v0, v20

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpSearchResultActivity;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    move-object v3, v0

    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/music/list/activity/MpSearchResultActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 424
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 219
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

    .line 231
    const/16 v3, 0xe

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/list/activity/MpSearchResultActivity;->mListType:I

    .line 232
    const/4 v3, 0x7

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/list/activity/MpSearchResultActivity;->mSubListType:I

    .line 234
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/list/activity/MpSearchResultActivity;->mListTitleText:[Ljava/lang/String;

    .line 235
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

    .line 236
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

    .line 237
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

    .line 239
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/list/activity/MpSearchResultActivity;->mConditions:[Ljava/lang/String;

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpSearchResultActivity;->mConditions:[Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x0

    const-string v5, "0"

    aput-object v5, v3, v4

    .line 241
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

    .line 245
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/list/activity/MpSearchResultActivity;->makeAlbum()V

    .line 307
    :cond_5
    :goto_2
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 320
    .end local v14           #c:Landroid/database/Cursor;
    :catch_1
    move-exception v3

    move-object v15, v3

    .line 327
    .local v15, e:Landroid/database/sqlite/SQLiteDiskIOException;
    invoke-static/range {p0 .. p0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 328
    const-string v3, "activity"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/music/list/activity/MpSearchResultActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ActivityManager;

    .line 329
    .restart local v11       #am:Landroid/app/ActivityManager;
    const-string v3, "com.android.music"

    invoke-virtual {v11, v3}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 248
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

    .line 260
    const/16 v3, 0x10

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/list/activity/MpSearchResultActivity;->mListType:I

    .line 261
    const/4 v3, 0x7

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/list/activity/MpSearchResultActivity;->mSubListType:I

    .line 263
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/list/activity/MpSearchResultActivity;->mListTitleText:[Ljava/lang/String;

    .line 264
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

    .line 266
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/list/activity/MpSearchResultActivity;->mConditions:[Ljava/lang/String;

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpSearchResultActivity;->mConditions:[Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x0

    const-string v5, "0"

    aput-object v5, v3, v4

    .line 268
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

    .line 279
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/list/activity/MpSearchResultActivity;->makeArtist()V

    goto/16 :goto_2

    .line 281
    .restart local v4       #mUri:Landroid/net/Uri;
    :cond_7
    const-string v3, "content://media/external/audio/media/"

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 293
    const-string v3, "search"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/music/list/activity/MpSearchResultActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/app/SearchManager;

    .line 294
    .local v22, mSearchManager:Landroid/app/SearchManager;
    invoke-virtual/range {v22 .. v22}, Landroid/app/SearchManager;->stopSearch()V

    .line 296
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/list/activity/MpSearchResultActivity;->finish()V

    .line 297
    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getFlags()I

    move-result v16

    .line 298
    .local v16, flag:I
    new-instance v18, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    move-object/from16 v0, v18

    move-object v1, v3

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 299
    .local v18, i:Landroid/content/Intent;
    const-string v3, "com.android.music/search"

    move-object/from16 v0, v18

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    const/high16 v3, 0x400

    or-int v3, v3, v16

    move-object/from16 v0, v18

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 301
    const-string v3, "musicplayer.action"

    const-string v5, "Search"

    move-object/from16 v0, v18

    move-object v1, v3

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 303
    const-string v3, "SearchUri"

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .end local v4           #mUri:Landroid/net/Uri;
    move-object/from16 v0, v18

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/music/list/activity/MpSearchResultActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 335
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

    .line 336
    const-string v3, "query"

    move-object/from16 v0, v19

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/list/activity/MpSearchResultActivity;->mFilterString:Ljava/lang/String;

    .line 338
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

    .line 341
    const-string v3, "Back"

    invoke-virtual {v13, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 343
    .local v24, strBackKey:Ljava/lang/String;
    if-eqz v24, :cond_9

    .line 345
    const-string v3, "putBackKey"

    move-object/from16 v0, v24

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_9

    .line 347
    const v3, 0x10a0002

    const v4, 0x10a0003

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/music/list/activity/MpSearchResultActivity;->overridePendingTransition(II)V

    .line 351
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/list/activity/MpSearchResultActivity;->makeSearchResult()V

    goto/16 :goto_1

    .line 352
    .end local v24           #strBackKey:Ljava/lang/String;
    :cond_a
    const-string v3, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 353
    const-string v3, "query"

    move-object/from16 v0, v19

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/list/activity/MpSearchResultActivity;->mFilterString:Ljava/lang/String;

    .line 355
    const-string v3, "android.intent.extra.focus"

    move-object/from16 v0, v19

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 356
    .local v17, focus:Ljava/lang/String;
    const-string v3, "android.intent.extra.artist"

    move-object/from16 v0, v19

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 357
    .local v12, artist:Ljava/lang/String;
    const-string v3, "android.intent.extra.album"

    move-object/from16 v0, v19

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 358
    .local v10, album:Ljava/lang/String;
    const-string v3, "android.intent.extra.title"

    move-object/from16 v0, v19

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 359
    .local v25, title:Ljava/lang/String;
    if-eqz v17, :cond_b

    .line 360
    const-string v3, "audio/"

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    if-eqz v25, :cond_d

    .line 361
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/list/activity/MpSearchResultActivity;->mFilterString:Ljava/lang/String;

    .line 376
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

    .line 379
    const-string v3, "Back"

    invoke-virtual {v13, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 381
    .restart local v24       #strBackKey:Ljava/lang/String;
    if-eqz v24, :cond_c

    .line 383
    const-string v3, "putBackKey"

    move-object/from16 v0, v24

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_c

    .line 385
    const v3, 0x10a0002

    const v4, 0x10a0003

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/music/list/activity/MpSearchResultActivity;->overridePendingTransition(II)V

    .line 389
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/list/activity/MpSearchResultActivity;->makeSearchResult()V

    goto/16 :goto_1

    .line 362
    .end local v24           #strBackKey:Ljava/lang/String;
    :cond_d
    const-string v3, "vnd.android.cursor.item/album"

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 363
    if-eqz v10, :cond_b

    .line 364
    move-object v0, v10

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/list/activity/MpSearchResultActivity;->mFilterString:Ljava/lang/String;

    .line 365
    if-eqz v12, :cond_b

    .line 366
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

    .line 369
    :cond_e
    const-string v3, "vnd.android.cursor.item/artist"

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 370
    if-eqz v12, :cond_b

    .line 371
    move-object v0, v12

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/list/activity/MpSearchResultActivity;->mFilterString:Ljava/lang/String;

    goto/16 :goto_3

    .line 393
    .end local v10           #album:Ljava/lang/String;
    .end local v12           #artist:Ljava/lang/String;
    .end local v17           #focus:Ljava/lang/String;
    .end local v25           #title:Ljava/lang/String;
    :cond_f
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/music/list/activity/MpSearchResultActivity;->mIsBackKeyDoStartPreviousActivity:Z

    .line 395
    const-string v3, "ListType"

    invoke-virtual {v13, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/list/activity/MpSearchResultActivity;->mListType:I

    .line 396
    const-string v3, "TitleText"

    invoke-virtual {v13, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/list/activity/MpSearchResultActivity;->mListTitleText:[Ljava/lang/String;

    .line 398
    const-string v3, "Conditions"

    invoke-virtual {v13, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/list/activity/MpSearchResultActivity;->mConditions:[Ljava/lang/String;

    .line 401
    const-string v3, "query"

    move-object/from16 v0, v19

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/list/activity/MpSearchResultActivity;->mFilterString:Ljava/lang/String;

    .line 403
    const/4 v3, 0x7

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/list/activity/MpSearchResultActivity;->mSubListType:I

    .line 405
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListType:I

    move v3, v0

    const/16 v4, 0x10

    if-ne v3, v4, :cond_10

    .line 407
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/list/activity/MpSearchResultActivity;->makeArtist()V

    goto/16 :goto_1

    .line 409
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListType:I

    move v3, v0

    const/16 v4, 0xe

    if-ne v3, v4, :cond_3

    .line 411
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/list/activity/MpSearchResultActivity;->makeAlbum()V

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 129
    iget-object v1, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->TAG:Ljava/lang/String;

    const-string v2, "onDestroy entered"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :try_start_0
    iget-object v1, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/music/list/activity/MpSearchResultActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_0
    iget-object v1, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    if-eqz v1, :cond_1

    .line 147
    iget-object v1, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    invoke-virtual {v1}, Lcom/android/music/common/util/BatteryChecker;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v1, v2, :cond_0

    .line 148
    iget-object v1, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/music/common/util/BatteryChecker;->cancel(Z)Z

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    invoke-virtual {v1}, Lcom/android/music/common/util/BatteryChecker;->removeCallback()V

    .line 152
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 153
    return-void

    .line 142
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 143
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

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
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
    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v8, "artist"

    const-string v6, "_id"

    .line 528
    iget v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListType:I

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_0

    .line 532
    iget-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mCur:Landroid/database/Cursor;

    invoke-interface {v0, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 533
    iget-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mCur:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mCur:Landroid/database/Cursor;

    const-string v2, "mime_type"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 535
    const-string v1, "artist"

    invoke-virtual {v0, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 537
    new-array v0, v5, [Ljava/lang/String;

    .line 538
    iget-object v1, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mCur:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mCur:Landroid/database/Cursor;

    const-string v3, "artist"

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 541
    new-array v1, v7, [Ljava/lang/String;

    .line 542
    const-string v2, "0"

    aput-object v2, v1, v4

    .line 543
    iget-object v2, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mCur:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mCur:Landroid/database/Cursor;

    const-string v4, "_id"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 546
    const/16 v2, 0x10

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/music/list/activity/MpSearchResultActivity;->moveToTracklist([Ljava/lang/String;I[Ljava/lang/String;)V

    .line 583
    :cond_0
    :goto_0
    return-void

    .line 549
    :cond_1
    const-string v1, "album"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 551
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 552
    iget-object v1, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mCur:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mCur:Landroid/database/Cursor;

    const-string v3, "album"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 554
    iget-object v1, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mCur:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mCur:Landroid/database/Cursor;

    const-string v3, "artist"

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 556
    iget-object v1, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mCur:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mCur:Landroid/database/Cursor;

    const-string v3, "_id"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    .line 558
    new-array v1, v7, [Ljava/lang/String;

    .line 559
    const-string v2, "0"

    aput-object v2, v1, v4

    .line 560
    iget-object v2, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mCur:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mCur:Landroid/database/Cursor;

    const-string v4, "_id"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 562
    const/16 v2, 0xe

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/music/list/activity/MpSearchResultActivity;->moveToTracklist([Ljava/lang/String;I[Ljava/lang/String;)V

    goto :goto_0

    .line 567
    :cond_2
    new-array v0, v5, [Ljava/lang/String;

    .line 568
    iget-object v1, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mCur:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mCur:Landroid/database/Cursor;

    const-string v3, "_id"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 570
    const-string v1, "content://media/external/audio/media/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 571
    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 573
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/music/player/activity/MusicPlayer;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 574
    const-string v2, "musicplayer.action"

    const-string v3, "Search"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 575
    const-string v2, "SearchUri"

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 576
    const/high16 v0, 0x402

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 577
    invoke-virtual {p0, v1}, Lcom/android/music/list/activity/MpSearchResultActivity;->startActivity(Landroid/content/Intent;)V

    .line 578
    invoke-virtual {p0}, Lcom/android/music/list/activity/MpSearchResultActivity;->finish()V

    goto/16 :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->TAG:Ljava/lang/String;

    const-string v1, "onNewIntent is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 167
    invoke-virtual {p0}, Lcom/android/music/list/activity/MpSearchResultActivity;->finish()V

    .line 168
    invoke-virtual {p0, p1}, Lcom/android/music/list/activity/MpSearchResultActivity;->startActivity(Landroid/content/Intent;)V

    .line 169
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 454
    :try_start_0
    iget-object v1, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/music/list/activity/MpSearchResultActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    :goto_0
    iget-object v1, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    if-eqz v1, :cond_0

    .line 460
    iget-object v1, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    invoke-virtual {v1}, Lcom/android/music/common/util/BatteryChecker;->removeCallback()V

    .line 461
    :cond_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/music/common/util/BatteryChecker;->mShowPopup:Z

    .line 462
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 463
    return-void

    .line 455
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 456
    .local v0, e:Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->TAG:Ljava/lang/String;

    const-string v2, "onPause : mLowBatteryReceiver is not registered."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 444
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 445
    .local v0, intentFilterBattery:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 446
    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 447
    iget-object v1, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/music/list/activity/MpSearchResultActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 448
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 449
    return-void
.end method

.method protected setTitleLayout(II)V
    .locals 13
    .parameter "layoutType"
    .parameter "cursorPosition"

    .prologue
    const/4 v11, 0x1

    const/4 v9, 0x2

    const/4 v8, 0x0

    const-string v12, "album_id"

    const-string v10, "IOException occured:"

    .line 807
    new-instance v6, Lcom/android/music/list/data/LayoutData;

    invoke-direct {v6}, Lcom/android/music/list/data/LayoutData;-><init>()V

    iput-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    .line 808
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    iget v7, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListType:I

    iput v7, v6, Lcom/android/music/list/data/LayoutData;->mListType:I

    .line 809
    invoke-virtual {p0}, Lcom/android/music/list/activity/MpSearchResultActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 810
    .local v4, mResolver:Landroid/content/ContentResolver;
    const/4 v5, 0x0

    .line 812
    .local v5, uri:Landroid/net/Uri;
    packed-switch p1, :pswitch_data_0

    .line 962
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mTitleLayout3:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    iget-object v7, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    invoke-virtual {v6, v7}, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;->setTitleDisplay(Lcom/android/music/list/data/LayoutData;)V

    .line 963
    return-void

    .line 815
    :pswitch_1
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    iget-object v7, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListTitleText:[Ljava/lang/String;

    aget-object v7, v7, v8

    iput-object v7, v6, Lcom/android/music/list/data/LayoutData;->mBigText:Ljava/lang/String;

    goto :goto_0

    .line 820
    :pswitch_2
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    iget-object v7, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListTitleText:[Ljava/lang/String;

    aget-object v7, v7, v8

    iput-object v7, v6, Lcom/android/music/list/data/LayoutData;->mBigText:Ljava/lang/String;

    .line 821
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    iget v7, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListType:I

    iput v7, v6, Lcom/android/music/list/data/LayoutData;->mListType:I

    .line 823
    iget v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListType:I

    const/16 v7, 0x13

    if-ne v6, v7, :cond_1

    .line 825
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    iget-object v7, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListTitleText:[Ljava/lang/String;

    aget-object v7, v7, v8

    invoke-static {v7}, Lcom/android/music/common/util/ListUtil;->getGenreThumbnailRsrcID(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/android/music/list/data/LayoutData;->mTitleResource:I

    .line 827
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    iput-boolean v8, v6, Lcom/android/music/list/data/LayoutData;->hasBitmap:Z

    goto :goto_0

    .line 828
    :cond_1
    iget v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListType:I

    const/16 v7, 0xd

    if-eq v6, v7, :cond_2

    iget v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListType:I

    const/16 v7, 0x1a

    if-ne v6, v7, :cond_6

    .line 830
    :cond_2
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListTitleText:[Ljava/lang/String;

    aget-object v6, v6, v9

    if-eqz v6, :cond_5

    .line 831
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

    .line 832
    const/4 v2, 0x0

    .line 834
    .local v2, in:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 835
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, v6, Lcom/android/music/list/data/LayoutData;->mTitleBitmap:Landroid/graphics/Bitmap;

    .line 837
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    iget-object v6, v6, Lcom/android/music/list/data/LayoutData;->mTitleBitmap:Landroid/graphics/Bitmap;

    if-nez v6, :cond_3

    .line 838
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    const/4 v7, 0x2

    invoke-static {v7}, Lcom/android/music/common/util/ListUtil;->getDefaultPlaylistRsrcID(I)I

    move-result v7

    iput v7, v6, Lcom/android/music/list/data/LayoutData;->mTitleResource:I

    .line 840
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/android/music/list/data/LayoutData;->hasBitmap:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 851
    :goto_1
    if-eqz v2, :cond_0

    .line 853
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 854
    :catch_0
    move-exception v1

    .line 855
    .local v1, e:Ljava/io/IOException;
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException occured:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 842
    .end local v1           #e:Ljava/io/IOException;
    :cond_3
    :try_start_2
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/android/music/list/data/LayoutData;->hasBitmap:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 844
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 845
    .local v1, e:Ljava/lang/Exception;
    :try_start_3
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    const/4 v7, 0x2

    invoke-static {v7}, Lcom/android/music/common/util/ListUtil;->getDefaultPlaylistRsrcID(I)I

    move-result v7

    iput v7, v6, Lcom/android/music/list/data/LayoutData;->mTitleResource:I

    .line 847
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/android/music/list/data/LayoutData;->hasBitmap:Z

    .line 848
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 851
    if-eqz v2, :cond_0

    .line 853
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 854
    :catch_2
    move-exception v1

    .line 855
    .local v1, e:Ljava/io/IOException;
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException occured:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 851
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    if-eqz v2, :cond_4

    .line 853
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 856
    :cond_4
    :goto_2
    throw v6

    .line 854
    :catch_3
    move-exception v1

    .line 855
    .restart local v1       #e:Ljava/io/IOException;
    iget-object v7, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IOException occured:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 860
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #in:Ljava/io/InputStream;
    :cond_5
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    invoke-static {v9}, Lcom/android/music/common/util/ListUtil;->getDefaultPlaylistRsrcID(I)I

    move-result v7

    iput v7, v6, Lcom/android/music/list/data/LayoutData;->mTitleResource:I

    .line 862
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    iput-boolean v8, v6, Lcom/android/music/list/data/LayoutData;->hasBitmap:Z

    goto/16 :goto_0

    .line 865
    :cond_6
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v6}, Lcom/android/music/list/view/AbstractMpListView;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 866
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 868
    const-string v6, "content://media/external/audio/albumart"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 870
    .local v3, mAlbumArtUri:Landroid/net/Uri;
    const-string v6, "album_id"

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v6, v6

    invoke-static {v3, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 872
    const/4 v2, 0x0

    .line 874
    .restart local v2       #in:Ljava/io/InputStream;
    :try_start_6
    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 875
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, v6, Lcom/android/music/list/data/LayoutData;->mTitleBitmap:Landroid/graphics/Bitmap;

    .line 877
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    iget-object v6, v6, Lcom/android/music/list/data/LayoutData;->mTitleBitmap:Landroid/graphics/Bitmap;

    if-nez v6, :cond_7

    .line 878
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    invoke-static {}, Lcom/android/music/common/util/ListUtil;->getDefaultThumbnailRsrcID()I

    move-result v7

    iput v7, v6, Lcom/android/music/list/data/LayoutData;->mTitleResource:I

    .line 880
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/android/music/list/data/LayoutData;->hasBitmap:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 891
    :goto_3
    if-eqz v2, :cond_0

    .line 893
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_0

    .line 894
    :catch_4
    move-exception v1

    .line 895
    .restart local v1       #e:Ljava/io/IOException;
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException occured:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 882
    .end local v1           #e:Ljava/io/IOException;
    :cond_7
    :try_start_8
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/android/music/list/data/LayoutData;->hasBitmap:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_3

    .line 884
    :catch_5
    move-exception v6

    move-object v1, v6

    .line 885
    .local v1, e:Ljava/lang/Exception;
    :try_start_9
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    invoke-static {}, Lcom/android/music/common/util/ListUtil;->getDefaultThumbnailRsrcID()I

    move-result v7

    iput v7, v6, Lcom/android/music/list/data/LayoutData;->mTitleResource:I

    .line 887
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/android/music/list/data/LayoutData;->hasBitmap:Z

    .line 888
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 891
    if-eqz v2, :cond_0

    .line 893
    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto/16 :goto_0

    .line 894
    :catch_6
    move-exception v1

    .line 895
    .local v1, e:Ljava/io/IOException;
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException occured:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 891
    .end local v1           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v6

    if-eqz v2, :cond_8

    .line 893
    :try_start_b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 896
    :cond_8
    :goto_4
    throw v6

    .line 894
    :catch_7
    move-exception v1

    .line 895
    .restart local v1       #e:Ljava/io/IOException;
    iget-object v7, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IOException occured:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 900
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #in:Ljava/io/InputStream;
    .end local v3           #mAlbumArtUri:Landroid/net/Uri;
    :cond_9
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    invoke-static {}, Lcom/android/music/common/util/ListUtil;->getDefaultThumbnailRsrcID()I

    move-result v7

    iput v7, v6, Lcom/android/music/list/data/LayoutData;->mTitleResource:I

    .line 902
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    iput-boolean v8, v6, Lcom/android/music/list/data/LayoutData;->hasBitmap:Z

    goto/16 :goto_0

    .line 909
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

    .line 911
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    iget v7, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListType:I

    iput v7, v6, Lcom/android/music/list/data/LayoutData;->mListType:I

    .line 912
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    iget-object v7, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListTitleText:[Ljava/lang/String;

    aget-object v7, v7, v8

    iput-object v7, v6, Lcom/android/music/list/data/LayoutData;->mBigText:Ljava/lang/String;

    .line 913
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    iget-object v7, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListTitleText:[Ljava/lang/String;

    aget-object v7, v7, v11

    iput-object v7, v6, Lcom/android/music/list/data/LayoutData;->mSmallText:Ljava/lang/String;

    .line 915
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v6}, Lcom/android/music/list/view/AbstractMpListView;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 916
    .restart local v0       #cursor:Landroid/database/Cursor;
    invoke-interface {v0, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 918
    const-string v6, "content://media/external/audio/albumart"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 920
    .restart local v3       #mAlbumArtUri:Landroid/net/Uri;
    const-string v6, "album_id"

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v6, v6

    invoke-static {v3, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 922
    const/4 v2, 0x0

    .line 924
    .restart local v2       #in:Ljava/io/InputStream;
    :try_start_c
    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 925
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, v6, Lcom/android/music/list/data/LayoutData;->mTitleBitmap:Landroid/graphics/Bitmap;

    .line 927
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    iget-object v6, v6, Lcom/android/music/list/data/LayoutData;->mTitleBitmap:Landroid/graphics/Bitmap;

    if-nez v6, :cond_a

    .line 928
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    invoke-static {}, Lcom/android/music/common/util/ListUtil;->getDefaultThumbnailRsrcID()I

    move-result v7

    iput v7, v6, Lcom/android/music/list/data/LayoutData;->mTitleResource:I

    .line 930
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/android/music/list/data/LayoutData;->hasBitmap:Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_9

    .line 941
    :goto_5
    if-eqz v2, :cond_0

    .line 943
    :try_start_d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    goto/16 :goto_0

    .line 944
    :catch_8
    move-exception v1

    .line 945
    .restart local v1       #e:Ljava/io/IOException;
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException occured:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 932
    .end local v1           #e:Ljava/io/IOException;
    :cond_a
    :try_start_e
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/android/music/list/data/LayoutData;->hasBitmap:Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_9

    goto :goto_5

    .line 934
    :catch_9
    move-exception v6

    move-object v1, v6

    .line 935
    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_f
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    invoke-static {}, Lcom/android/music/common/util/ListUtil;->getDefaultThumbnailRsrcID()I

    move-result v7

    iput v7, v6, Lcom/android/music/list/data/LayoutData;->mTitleResource:I

    .line 937
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/android/music/list/data/LayoutData;->hasBitmap:Z

    .line 938
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 941
    if-eqz v2, :cond_0

    .line 943
    :try_start_10
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_a

    goto/16 :goto_0

    .line 944
    :catch_a
    move-exception v1

    .line 945
    .local v1, e:Ljava/io/IOException;
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException occured:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 941
    .end local v1           #e:Ljava/io/IOException;
    :catchall_2
    move-exception v6

    if-eqz v2, :cond_b

    .line 943
    :try_start_11
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_b

    .line 946
    :cond_b
    :goto_6
    throw v6

    .line 944
    :catch_b
    move-exception v1

    .line 945
    .restart local v1       #e:Ljava/io/IOException;
    iget-object v7, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IOException occured:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 950
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #in:Ljava/io/InputStream;
    .end local v3           #mAlbumArtUri:Landroid/net/Uri;
    :cond_c
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    invoke-static {}, Lcom/android/music/common/util/ListUtil;->getDefaultThumbnailRsrcID()I

    move-result v7

    iput v7, v6, Lcom/android/music/list/data/LayoutData;->mTitleResource:I

    .line 952
    iget-object v6, p0, Lcom/android/music/list/activity/MpSearchResultActivity;->layoutData:Lcom/android/music/list/data/LayoutData;

    iput-boolean v8, v6, Lcom/android/music/list/data/LayoutData;->hasBitmap:Z

    goto/16 :goto_0

    .line 812
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
