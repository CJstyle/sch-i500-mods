.class public Lcom/android/music/discplus/view/TopView;
.super Landroid/widget/FrameLayout;
.source "TopView.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataUpdateListener:Lcom/android/music/discplus/data/DiscPlusData$DataUpdateListener;

.field private mDiscIndexCycleDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/music/discplus/data/DiscPlusListInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDiscPlusData:Lcom/android/music/discplus/data/DiscPlusData;

.field private mDiscPlusDataType:I

.field private mIsDataThreadStart:Z

.field private mOldNowPosition:I

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mPanelSwitcher:Lcom/android/music/discplus/view/PanelSwitcher;

.field private mPlayBtn:Landroid/widget/ImageView;

.field private mTopView:Landroid/widget/RelativeLayout;

.field private mTouchJogDial:Lcom/android/music/discplus/view/TouchJogDial;

.field private mTypeMainBtn:Landroid/widget/Button;

.field private mTypeSelect:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    iput-object v0, p0, Lcom/android/music/discplus/view/TopView;->mContext:Landroid/content/Context;

    .line 35
    iput-object v0, p0, Lcom/android/music/discplus/view/TopView;->mTopView:Landroid/widget/RelativeLayout;

    .line 36
    iput v1, p0, Lcom/android/music/discplus/view/TopView;->mDiscPlusDataType:I

    .line 37
    iput-object v0, p0, Lcom/android/music/discplus/view/TopView;->mDiscPlusData:Lcom/android/music/discplus/data/DiscPlusData;

    .line 38
    iput-object v0, p0, Lcom/android/music/discplus/view/TopView;->mTouchJogDial:Lcom/android/music/discplus/view/TouchJogDial;

    .line 39
    iput-object v0, p0, Lcom/android/music/discplus/view/TopView;->mTypeMainBtn:Landroid/widget/Button;

    .line 40
    iput-object v0, p0, Lcom/android/music/discplus/view/TopView;->mTypeSelect:Landroid/widget/LinearLayout;

    .line 41
    iput-object v0, p0, Lcom/android/music/discplus/view/TopView;->mPlayBtn:Landroid/widget/ImageView;

    .line 44
    iput-object v0, p0, Lcom/android/music/discplus/view/TopView;->mDiscIndexCycleDataList:Ljava/util/ArrayList;

    .line 45
    iput-object v0, p0, Lcom/android/music/discplus/view/TopView;->mDataUpdateListener:Lcom/android/music/discplus/data/DiscPlusData$DataUpdateListener;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/discplus/view/TopView;->mIsDataThreadStart:Z

    .line 328
    iput v1, p0, Lcom/android/music/discplus/view/TopView;->mOldNowPosition:I

    .line 365
    new-instance v0, Lcom/android/music/discplus/view/TopView$4;

    invoke-direct {v0, p0}, Lcom/android/music/discplus/view/TopView$4;-><init>(Lcom/android/music/discplus/view/TopView;)V

    iput-object v0, p0, Lcom/android/music/discplus/view/TopView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 50
    iput-object p1, p0, Lcom/android/music/discplus/view/TopView;->mContext:Landroid/content/Context;

    .line 51
    invoke-direct {p0}, Lcom/android/music/discplus/view/TopView;->initSetting()V

    .line 54
    new-instance v0, Lcom/android/music/discplus/view/TopView$1;

    invoke-direct {v0, p0}, Lcom/android/music/discplus/view/TopView$1;-><init>(Lcom/android/music/discplus/view/TopView;)V

    iput-object v0, p0, Lcom/android/music/discplus/view/TopView;->mDataUpdateListener:Lcom/android/music/discplus/data/DiscPlusData$DataUpdateListener;

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/android/music/discplus/view/TopView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/android/music/discplus/view/TopView;->mDiscPlusDataType:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/music/discplus/view/TopView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/android/music/discplus/view/TopView;->mIsDataThreadStart:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/music/discplus/view/TopView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/android/music/discplus/view/TopView;->mIsDataThreadStart:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/music/discplus/view/TopView;)Lcom/android/music/discplus/view/TouchJogDial;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/music/discplus/view/TopView;->mTouchJogDial:Lcom/android/music/discplus/view/TouchJogDial;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/music/discplus/view/TopView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/music/discplus/view/TopView;->setDataChange(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/music/discplus/view/TopView;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/music/discplus/view/TopView;->mTypeSelect:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/music/discplus/view/TopView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/music/discplus/view/TopView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/music/discplus/view/TopView;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/music/discplus/view/TopView;->mTypeMainBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/music/discplus/view/TopView;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/music/discplus/view/TopView;->getTypeStringResId(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/music/discplus/view/TopView;)Lcom/android/music/discplus/data/DiscPlusData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/music/discplus/view/TopView;->mDiscPlusData:Lcom/android/music/discplus/data/DiscPlusData;

    return-object v0
.end method

.method private getTypeStringResId(I)I
    .locals 1
    .parameter "type"

    .prologue
    .line 383
    const/4 v0, -0x1

    .line 384
    .local v0, resId:I
    packed-switch p1, :pswitch_data_0

    .line 420
    :goto_0
    return v0

    .line 386
    :pswitch_0
    const v0, 0x7f0a0016

    .line 387
    goto :goto_0

    .line 389
    :pswitch_1
    const v0, 0x7f0a0017

    .line 390
    goto :goto_0

    .line 392
    :pswitch_2
    const v0, 0x7f0a0018

    .line 393
    goto :goto_0

    .line 395
    :pswitch_3
    const v0, 0x7f0a0019

    .line 396
    goto :goto_0

    .line 398
    :pswitch_4
    const v0, 0x7f0a001a

    .line 399
    goto :goto_0

    .line 408
    :pswitch_5
    const v0, 0x7f0a001b

    .line 409
    goto :goto_0

    .line 411
    :pswitch_6
    const v0, 0x7f0a001e

    .line 412
    goto :goto_0

    .line 414
    :pswitch_7
    const v0, 0x7f0a001c

    .line 415
    goto :goto_0

    .line 384
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method private initSetting()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/music/discplus/view/TopView;->mDiscPlusData:Lcom/android/music/discplus/data/DiscPlusData;

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/music/discplus/view/TopView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/music/discplus/data/DiscPlusData;->createInstance(Landroid/content/Context;)Lcom/android/music/discplus/data/DiscPlusData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/discplus/view/TopView;->mDiscPlusData:Lcom/android/music/discplus/data/DiscPlusData;

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/android/music/discplus/view/TopView;->mDiscPlusData:Lcom/android/music/discplus/data/DiscPlusData;

    invoke-virtual {v0}, Lcom/android/music/discplus/data/DiscPlusData;->clearDiscPlusListInfos()V

    .line 130
    iget-object v0, p0, Lcom/android/music/discplus/view/TopView;->mDiscPlusData:Lcom/android/music/discplus/data/DiscPlusData;

    iget v0, v0, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusType:I

    iput v0, p0, Lcom/android/music/discplus/view/TopView;->mDiscPlusDataType:I

    .line 131
    return-void
.end method

.method private initTopView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 134
    iget-object v2, p0, Lcom/android/music/discplus/view/TopView;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 136
    iget-object v2, p0, Lcom/android/music/discplus/view/TopView;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 137
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f030038

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/music/discplus/view/TopView;->mTopView:Landroid/widget/RelativeLayout;

    .line 139
    iget-object v2, p0, Lcom/android/music/discplus/view/TopView;->mTopView:Landroid/widget/RelativeLayout;

    const v3, 0x7f0c0134

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/music/discplus/view/TouchJogDial;

    iput-object v2, p0, Lcom/android/music/discplus/view/TopView;->mTouchJogDial:Lcom/android/music/discplus/view/TouchJogDial;

    .line 140
    iget-object v2, p0, Lcom/android/music/discplus/view/TopView;->mTopView:Landroid/widget/RelativeLayout;

    const v3, 0x7f0c012e

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 141
    .local v1, relativeLayout:Landroid/widget/RelativeLayout;
    iget-object v2, p0, Lcom/android/music/discplus/view/TopView;->mTouchJogDial:Lcom/android/music/discplus/view/TouchJogDial;

    invoke-virtual {v2, p0, v1}, Lcom/android/music/discplus/view/TouchJogDial;->setCycleCursorIndexData(Lcom/android/music/discplus/view/TopView;Landroid/widget/RelativeLayout;)V

    .line 142
    iget-object v2, p0, Lcom/android/music/discplus/view/TopView;->mTouchJogDial:Lcom/android/music/discplus/view/TouchJogDial;

    iget-object v3, p0, Lcom/android/music/discplus/view/TopView;->mTopView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Lcom/android/music/discplus/view/TouchJogDial;->setArrowUp(Landroid/widget/RelativeLayout;)V

    .line 145
    iget v2, p0, Lcom/android/music/discplus/view/TopView;->mDiscPlusDataType:I

    invoke-virtual {p0, v4, v4, v2}, Lcom/android/music/discplus/view/TopView;->changeTopView(ZZI)V

    .line 147
    iget-object v2, p0, Lcom/android/music/discplus/view/TopView;->mTopView:Landroid/widget/RelativeLayout;

    const v3, 0x7f0c0136

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/music/discplus/view/TopView;->mTypeMainBtn:Landroid/widget/Button;

    .line 148
    iget-object v2, p0, Lcom/android/music/discplus/view/TopView;->mTypeMainBtn:Landroid/widget/Button;

    iget v3, p0, Lcom/android/music/discplus/view/TopView;->mDiscPlusDataType:I

    invoke-direct {p0, v3}, Lcom/android/music/discplus/view/TopView;->getTypeStringResId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 149
    iget-object v2, p0, Lcom/android/music/discplus/view/TopView;->mTypeMainBtn:Landroid/widget/Button;

    new-instance v3, Lcom/android/music/discplus/view/TopView$2;

    invoke-direct {v3, p0}, Lcom/android/music/discplus/view/TopView$2;-><init>(Lcom/android/music/discplus/view/TopView;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v2, p0, Lcom/android/music/discplus/view/TopView;->mTopView:Landroid/widget/RelativeLayout;

    const v3, 0x7f0c0137

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/music/discplus/view/TopView;->mTypeSelect:Landroid/widget/LinearLayout;

    .line 179
    iget-object v2, p0, Lcom/android/music/discplus/view/TopView;->mTypeSelect:Landroid/widget/LinearLayout;

    const/high16 v3, 0x200

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setScrollBarStyle(I)V

    .line 181
    iget-object v2, p0, Lcom/android/music/discplus/view/TopView;->mTopView:Landroid/widget/RelativeLayout;

    const v3, 0x7f0c0135

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/music/discplus/view/TopView;->mPlayBtn:Landroid/widget/ImageView;

    .line 182
    iget-object v2, p0, Lcom/android/music/discplus/view/TopView;->mPlayBtn:Landroid/widget/ImageView;

    new-instance v3, Lcom/android/music/discplus/view/TopView$3;

    invoke-direct {v3, p0}, Lcom/android/music/discplus/view/TopView$3;-><init>(Lcom/android/music/discplus/view/TopView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    invoke-direct {p0}, Lcom/android/music/discplus/view/TopView;->setMenuType()V

    .line 208
    iget-object v2, p0, Lcom/android/music/discplus/view/TopView;->mTopView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v2}, Lcom/android/music/discplus/view/TopView;->addView(Landroid/view/View;)V

    .line 210
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    .end local v1           #relativeLayout:Landroid/widget/RelativeLayout;
    :cond_0
    return-void
.end method

.method private setDataChange(Z)V
    .locals 7
    .parameter "isDataThreadStop"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/music/discplus/view/TopView;->mDiscPlusData:Lcom/android/music/discplus/data/DiscPlusData;

    if-eqz v0, :cond_0

    .line 104
    iget v0, p0, Lcom/android/music/discplus/view/TopView;->mDiscPlusDataType:I

    invoke-static {v0}, Lcom/android/music/common/util/ListType;->getDiscPlusViewType(I)I

    move-result v6

    .line 105
    .local v6, viewType:I
    iget-object v0, p0, Lcom/android/music/discplus/view/TopView;->mDiscPlusData:Lcom/android/music/discplus/data/DiscPlusData;

    iget-object v1, p0, Lcom/android/music/discplus/view/TopView;->mDiscPlusData:Lcom/android/music/discplus/data/DiscPlusData;

    iget-object v1, v1, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v6, v1}, Lcom/android/music/discplus/data/DiscPlusData;->reDefineDiscPlusListInfos(ILjava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/discplus/view/TopView;->mDiscIndexCycleDataList:Ljava/util/ArrayList;

    .line 106
    iget-object v0, p0, Lcom/android/music/discplus/view/TopView;->mTouchJogDial:Lcom/android/music/discplus/view/TouchJogDial;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/music/discplus/view/TopView;->mTouchJogDial:Lcom/android/music/discplus/view/TouchJogDial;

    iget v2, p0, Lcom/android/music/discplus/view/TopView;->mOldNowPosition:I

    iget v3, p0, Lcom/android/music/discplus/view/TopView;->mDiscPlusDataType:I

    iget-object v4, p0, Lcom/android/music/discplus/view/TopView;->mDiscPlusData:Lcom/android/music/discplus/data/DiscPlusData;

    iget-object v5, p0, Lcom/android/music/discplus/view/TopView;->mDiscIndexCycleDataList:Ljava/util/ArrayList;

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/music/discplus/view/TouchJogDial;->setTypeIndexDataInfos(ZIILcom/android/music/discplus/data/DiscPlusData;Ljava/util/ArrayList;)V

    .line 110
    if-eqz p1, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/music/discplus/view/TopView;->mDiscPlusData:Lcom/android/music/discplus/data/DiscPlusData;

    iget v0, v0, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusNowPosition:I

    iput v0, p0, Lcom/android/music/discplus/view/TopView;->mOldNowPosition:I

    .line 115
    .end local v6           #viewType:I
    :cond_0
    return-void
.end method

.method private setMenuType()V
    .locals 15

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 281
    iget-object v10, p0, Lcom/android/music/discplus/view/TopView;->mTypeSelect:Landroid/widget/LinearLayout;

    if-nez v10, :cond_1

    .line 326
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    iget-object v10, p0, Lcom/android/music/discplus/view/TopView;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/music/common/util/MusicValueSaveController;->getMusicMenu(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 286
    .local v3, settingString:Ljava/lang/String;
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v10, "|"

    invoke-direct {v4, v3, v10}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    .local v4, stringTokenizer:Ljava/util/StringTokenizer;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 290
    .local v7, types:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    :cond_2
    :goto_1
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 295
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 296
    .local v5, token:Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 297
    .local v6, type:I
    const/4 v10, 0x3

    if-gt v10, v6, :cond_2

    const/4 v10, 0x7

    if-lt v10, v6, :cond_2

    .line 298
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 303
    .end local v5           #token:Ljava/lang/String;
    .end local v6           #type:I
    :cond_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 304
    .local v8, typesCount:I
    const/4 v2, 0x0

    .line 305
    .local v2, index:I
    move v1, v2

    .local v1, i:I
    :goto_2
    if-ge v1, v8, :cond_6

    .line 306
    iget-object v10, p0, Lcom/android/music/discplus/view/TopView;->mTypeSelect:Landroid/widget/LinearLayout;

    if-le v1, v14, :cond_4

    const/4 v11, 0x5

    sub-int v11, v1, v11

    :goto_3
    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 307
    .local v9, viewGroup:Landroid/view/ViewGroup;
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 308
    .restart local v6       #type:I
    const/4 v0, 0x0

    .line 309
    .local v0, button:Landroid/widget/Button;
    if-le v2, v14, :cond_5

    .line 310
    invoke-virtual {v9, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 315
    .restart local v0       #button:Landroid/widget/Button;
    :goto_4
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 316
    invoke-direct {p0, v6}, Lcom/android/music/discplus/view/TopView;->getTypeStringResId(I)I

    move-result v10

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setText(I)V

    .line 317
    iget-object v10, p0, Lcom/android/music/discplus/view/TopView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    invoke-virtual {v0, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 319
    add-int/lit8 v2, v2, 0x1

    .line 305
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v0           #button:Landroid/widget/Button;
    .end local v6           #type:I
    .end local v9           #viewGroup:Landroid/view/ViewGroup;
    :cond_4
    move v11, v1

    .line 306
    goto :goto_3

    .line 312
    .restart local v0       #button:Landroid/widget/Button;
    .restart local v6       #type:I
    .restart local v9       #viewGroup:Landroid/view/ViewGroup;
    :cond_5
    invoke-virtual {v9, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .restart local v0       #button:Landroid/widget/Button;
    goto :goto_4

    .line 322
    .end local v0           #button:Landroid/widget/Button;
    .end local v6           #type:I
    .end local v9           #viewGroup:Landroid/view/ViewGroup;
    :cond_6
    if-eqz v7, :cond_0

    .line 323
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 324
    const/4 v7, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public changeDiscView()V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/music/discplus/view/TopView;->mPanelSwitcher:Lcom/android/music/discplus/view/PanelSwitcher;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/music/discplus/view/TopView;->mPanelSwitcher:Lcom/android/music/discplus/view/PanelSwitcher;

    invoke-virtual {v0}, Lcom/android/music/discplus/view/PanelSwitcher;->moveUp()Z

    .line 220
    :cond_0
    return-void
.end method

.method public changeTopView(ZZI)V
    .locals 5
    .parameter "isInit"
    .parameter "isMediaChange"
    .parameter "type"

    .prologue
    const/4 v4, 0x1

    .line 330
    iget-object v2, p0, Lcom/android/music/discplus/view/TopView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    iget-object v2, p0, Lcom/android/music/discplus/view/TopView;->mTouchJogDial:Lcom/android/music/discplus/view/TouchJogDial;

    if-eqz v2, :cond_0

    .line 338
    if-nez p2, :cond_2

    if-ne p1, v4, :cond_2

    iget v2, p0, Lcom/android/music/discplus/view/TopView;->mDiscPlusDataType:I

    if-ne v2, p3, :cond_2

    iget-object v2, p0, Lcom/android/music/discplus/view/TopView;->mDiscIndexCycleDataList:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/music/discplus/view/TopView;->mDiscIndexCycleDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_0

    .line 343
    :cond_2
    iget-object v2, p0, Lcom/android/music/discplus/view/TopView;->mDiscPlusData:Lcom/android/music/discplus/data/DiscPlusData;

    if-nez v2, :cond_3

    .line 344
    iget-object v2, p0, Lcom/android/music/discplus/view/TopView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/music/discplus/data/DiscPlusData;->createInstance(Landroid/content/Context;)Lcom/android/music/discplus/data/DiscPlusData;

    move-result-object v2

    iput-object v2, p0, Lcom/android/music/discplus/view/TopView;->mDiscPlusData:Lcom/android/music/discplus/data/DiscPlusData;

    .line 347
    :cond_3
    if-eqz p1, :cond_4

    .line 348
    iget-object v2, p0, Lcom/android/music/discplus/view/TopView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/music/discplus/util/DiscPlusManager;->createInstance(Landroid/content/Context;)Lcom/android/music/discplus/util/DiscPlusManager;

    move-result-object v0

    .line 349
    .local v0, mgr:Lcom/android/music/discplus/util/DiscPlusManager;
    invoke-virtual {v0}, Lcom/android/music/discplus/util/DiscPlusManager;->changeType()V

    .line 351
    .end local v0           #mgr:Lcom/android/music/discplus/util/DiscPlusManager;
    :cond_4
    iget-object v2, p0, Lcom/android/music/discplus/view/TopView;->mTouchJogDial:Lcom/android/music/discplus/view/TouchJogDial;

    iput-boolean v4, v2, Lcom/android/music/discplus/view/TouchJogDial;->mIsDataChange:Z

    .line 352
    iput p3, p0, Lcom/android/music/discplus/view/TopView;->mDiscPlusDataType:I

    .line 353
    iget-object v2, p0, Lcom/android/music/discplus/view/TopView;->mDiscPlusData:Lcom/android/music/discplus/data/DiscPlusData;

    iget-object v3, p0, Lcom/android/music/discplus/view/TopView;->mDataUpdateListener:Lcom/android/music/discplus/data/DiscPlusData$DataUpdateListener;

    invoke-virtual {v2, v3}, Lcom/android/music/discplus/data/DiscPlusData;->setTopViewDataUpdateListener(Lcom/android/music/discplus/data/DiscPlusData$DataUpdateListener;)V

    .line 354
    iget-object v2, p0, Lcom/android/music/discplus/view/TopView;->mDiscPlusData:Lcom/android/music/discplus/data/DiscPlusData;

    const/16 v3, 0xc8

    invoke-virtual {v2, p2, p3, v3}, Lcom/android/music/discplus/data/DiscPlusData;->getTypeDiscPlusListInfos(ZII)V

    .line 356
    if-eqz p1, :cond_5

    .line 357
    invoke-static {}, Lcom/android/music/common/manager/MusicAppManager;->getInstance()Lcom/android/music/common/manager/MusicAppManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/music/common/manager/MusicAppManager;->getManagFilter()Lcom/android/music/common/manager/MusicAppManageFilter;

    move-result-object v1

    .line 358
    .local v1, musicAppManageFilter:Lcom/android/music/common/manager/MusicAppManageFilter;
    iput p3, v1, Lcom/android/music/common/manager/MusicAppManageFilter;->listType:I

    .line 359
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/music/discplus/view/TopView;->mOldNowPosition:I

    goto :goto_0

    .line 361
    .end local v1           #musicAppManageFilter:Lcom/android/music/common/manager/MusicAppManageFilter;
    :cond_5
    iget-object v2, p0, Lcom/android/music/discplus/view/TopView;->mDiscPlusData:Lcom/android/music/discplus/data/DiscPlusData;

    iget v2, v2, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusNowPosition:I

    iput v2, p0, Lcom/android/music/discplus/view/TopView;->mOldNowPosition:I

    goto :goto_0
.end method

.method public closeTypeSelect()V
    .locals 2

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/music/discplus/view/TopView;->mTypeSelect:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/android/music/discplus/view/TopView;->mTypeSelect:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 445
    :cond_0
    return-void
.end method

.method public getMoveUp(II)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/music/discplus/view/TopView;->mTouchJogDial:Lcom/android/music/discplus/view/TouchJogDial;

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/android/music/discplus/view/TopView;->mTouchJogDial:Lcom/android/music/discplus/view/TouchJogDial;

    invoke-virtual {v0, p1, p2}, Lcom/android/music/discplus/view/TouchJogDial;->isMoveUpPosition(II)Z

    move-result v0

    .line 438
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTopViewDataType()I
    .locals 1

    .prologue
    .line 424
    iget v0, p0, Lcom/android/music/discplus/view/TopView;->mDiscPlusDataType:I

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/music/discplus/view/TopView;->mTouchJogDial:Lcom/android/music/discplus/view/TouchJogDial;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/android/music/discplus/view/TopView;->mTouchJogDial:Lcom/android/music/discplus/view/TouchJogDial;

    invoke-virtual {v0}, Lcom/android/music/discplus/view/TouchJogDial;->clearTouchJogDial()V

    .line 276
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/discplus/view/TopView;->mTouchJogDial:Lcom/android/music/discplus/view/TouchJogDial;

    .line 278
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 119
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 120
    invoke-direct {p0}, Lcom/android/music/discplus/view/TopView;->initTopView()V

    .line 121
    return-void
.end method

.method public resetRenderMode()V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/music/discplus/view/TopView;->mPanelSwitcher:Lcom/android/music/discplus/view/PanelSwitcher;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/music/discplus/view/TopView;->mPanelSwitcher:Lcom/android/music/discplus/view/PanelSwitcher;

    invoke-virtual {v0}, Lcom/android/music/discplus/view/PanelSwitcher;->resetRenderMode()V

    .line 225
    :cond_0
    return-void
.end method

.method public setNowPosition()V
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/music/discplus/view/TopView;->mTouchJogDial:Lcom/android/music/discplus/view/TouchJogDial;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/android/music/discplus/view/TopView;->mTouchJogDial:Lcom/android/music/discplus/view/TouchJogDial;

    invoke-virtual {v0}, Lcom/android/music/discplus/view/TouchJogDial;->setNowDegree()V

    .line 431
    :cond_0
    return-void
.end method

.method public setPanelSwitcher(Lcom/android/music/discplus/view/PanelSwitcher;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 214
    iput-object p1, p0, Lcom/android/music/discplus/view/TopView;->mPanelSwitcher:Lcom/android/music/discplus/view/PanelSwitcher;

    .line 215
    return-void
.end method

.method public setPlayButtonImage()V
    .locals 5

    .prologue
    .line 229
    :try_start_0
    iget-object v2, p0, Lcom/android/music/discplus/view/TopView;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/android/music/discplus/activity/DiscPlus;

    invoke-virtual {v2}, Lcom/android/music/discplus/activity/DiscPlus;->getCorePlayer()Lcom/android/music/player/service/ICorePlayerService;

    move-result-object v1

    .line 231
    .local v1, player:Lcom/android/music/player/service/ICorePlayerService;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/music/discplus/view/TopView;->mPlayBtn:Landroid/widget/ImageView;

    if-nez v2, :cond_1

    .line 243
    .end local v1           #player:Lcom/android/music/player/service/ICorePlayerService;
    :cond_0
    :goto_0
    return-void

    .line 235
    .restart local v1       #player:Lcom/android/music/player/service/ICorePlayerService;
    :cond_1
    invoke-interface {v1}, Lcom/android/music/player/service/ICorePlayerService;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 236
    iget-object v2, p0, Lcom/android/music/discplus/view/TopView;->mPlayBtn:Landroid/widget/ImageView;

    const v3, 0x7f020080

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 240
    .end local v1           #player:Lcom/android/music/player/service/ICorePlayerService;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 241
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "TopView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPlayButtonImage(), RemoteException,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 238
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #player:Lcom/android/music/player/service/ICorePlayerService;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/music/discplus/view/TopView;->mPlayBtn:Landroid/widget/ImageView;

    const v3, 0x7f020081

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 4
    .parameter "visibility"

    .prologue
    .line 248
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 250
    if-nez p1, :cond_1

    .line 251
    iget-object v2, p0, Lcom/android/music/discplus/view/TopView;->mDiscPlusData:Lcom/android/music/discplus/data/DiscPlusData;

    iget v2, v2, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusNowPosition:I

    iput v2, p0, Lcom/android/music/discplus/view/TopView;->mOldNowPosition:I

    .line 252
    iget-object v2, p0, Lcom/android/music/discplus/view/TopView;->mTopView:Landroid/widget/RelativeLayout;

    if-nez v2, :cond_0

    .line 253
    invoke-direct {p0}, Lcom/android/music/discplus/view/TopView;->initTopView()V

    .line 256
    :cond_0
    invoke-virtual {p0}, Lcom/android/music/discplus/view/TopView;->setPlayButtonImage()V

    .line 258
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v2, 0x3f19999a

    const/high16 v3, 0x3f80

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 259
    .local v0, alphaAnimation:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 260
    iget-object v2, p0, Lcom/android/music/discplus/view/TopView;->mTopView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 271
    .end local v0           #alphaAnimation:Landroid/view/animation/AlphaAnimation;
    :goto_0
    return-void

    .line 262
    :cond_1
    iget-object v2, p0, Lcom/android/music/discplus/view/TopView;->mTouchJogDial:Lcom/android/music/discplus/view/TouchJogDial;

    if-eqz v2, :cond_2

    .line 263
    iget-object v2, p0, Lcom/android/music/discplus/view/TopView;->mTouchJogDial:Lcom/android/music/discplus/view/TouchJogDial;

    invoke-virtual {v2}, Lcom/android/music/discplus/view/TouchJogDial;->invisibleCycleCursorIndexData()V

    .line 266
    :cond_2
    iget-object v2, p0, Lcom/android/music/discplus/view/TopView;->mTopView:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 268
    iget-object v2, p0, Lcom/android/music/discplus/view/TopView;->mTopView:Landroid/widget/RelativeLayout;

    const v3, 0x7f0c012d

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 269
    .local v1, flickup:Landroid/widget/ImageView;
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
