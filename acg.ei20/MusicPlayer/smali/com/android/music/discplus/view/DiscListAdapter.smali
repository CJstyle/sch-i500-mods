.class public Lcom/android/music/discplus/view/DiscListAdapter;
.super Landroid/widget/BaseAdapter;
.source "DiscListAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAudioId:J

.field private mContext:Landroid/content/Context;

.field private mId:J

.field private mListViewDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/music/discplus/data/ListViewData;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayer:Lcom/android/music/player/service/ICorePlayerService;

.field private mSubListType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/android/music/discplus/view/DiscListAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/music/discplus/view/DiscListAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/music/player/service/ICorePlayerService;Ljava/util/ArrayList;)V
    .locals 3
    .parameter "context"
    .parameter "player"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/music/player/service/ICorePlayerService;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/music/discplus/data/ListViewData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, listViewDatas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/music/discplus/data/ListViewData;>;"
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/android/music/discplus/view/DiscListAdapter;->mContext:Landroid/content/Context;

    .line 26
    iput-object v0, p0, Lcom/android/music/discplus/view/DiscListAdapter;->mPlayer:Lcom/android/music/player/service/ICorePlayerService;

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/music/discplus/view/DiscListAdapter;->mSubListType:I

    .line 29
    iput-wide v1, p0, Lcom/android/music/discplus/view/DiscListAdapter;->mId:J

    .line 30
    iput-wide v1, p0, Lcom/android/music/discplus/view/DiscListAdapter;->mAudioId:J

    .line 33
    iput-object p1, p0, Lcom/android/music/discplus/view/DiscListAdapter;->mContext:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/android/music/discplus/view/DiscListAdapter;->mPlayer:Lcom/android/music/player/service/ICorePlayerService;

    .line 36
    invoke-virtual {p3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/music/discplus/view/DiscListAdapter;->mListViewDatas:Ljava/util/ArrayList;

    .line 37
    return-void
.end method

.method private newView()Landroid/view/View;
    .locals 5

    .prologue
    .line 136
    const/4 v2, 0x0

    .line 137
    .local v2, view:Landroid/view/View;
    iget-object v3, p0, Lcom/android/music/discplus/view/DiscListAdapter;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    .line 138
    iget-object v3, p0, Lcom/android/music/discplus/view/DiscListAdapter;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 139
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f030002

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 140
    .local v1, linearLayout:Landroid/widget/LinearLayout;
    move-object v2, v1

    .line 143
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    .end local v1           #linearLayout:Landroid/widget/LinearLayout;
    :cond_0
    return-object v2
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscListAdapter;->mListViewDatas:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscListAdapter;->mListViewDatas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscListAdapter;->mListViewDatas:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscListAdapter;->mListViewDatas:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/discplus/data/ListViewData;

    move-object v0, p0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 54
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 58
    iget-object v7, p0, Lcom/android/music/discplus/view/DiscListAdapter;->mListViewDatas:Ljava/util/ArrayList;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/music/discplus/view/DiscListAdapter;->mListViewDatas:Ljava/util/ArrayList;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/music/discplus/view/DiscListAdapter;->mListViewDatas:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 59
    :cond_0
    const/4 v7, 0x0

    .line 132
    :goto_0
    return-object v7

    .line 62
    :cond_1
    move-object v6, p2

    .line 63
    .local v6, view:Landroid/view/View;
    if-nez v6, :cond_2

    .line 64
    invoke-direct {p0}, Lcom/android/music/discplus/view/DiscListAdapter;->newView()Landroid/view/View;

    move-result-object v6

    .line 68
    if-nez v6, :cond_2

    .line 69
    const/4 v7, 0x0

    goto :goto_0

    .line 72
    :cond_2
    const v7, 0x7f0c0009

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 73
    .local v3, playState:Landroid/widget/ImageView;
    const v7, 0x7f0c000a

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 74
    .local v2, number:Landroid/widget/TextView;
    const v7, 0x7f0c000b

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 75
    .local v5, title:Landroid/widget/TextView;
    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    if-nez v5, :cond_4

    .line 76
    :cond_3
    const/4 v7, 0x0

    goto :goto_0

    .line 79
    :cond_4
    iget-object v7, p0, Lcom/android/music/discplus/view/DiscListAdapter;->mListViewDatas:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/music/discplus/data/ListViewData;

    .line 82
    .local v1, listViewData:Lcom/android/music/discplus/data/ListViewData;
    invoke-static {}, Lcom/android/music/common/util/ListUtil;->FEATURE_MUSIC_PLAYLIST()Z

    move-result v7

    if-eqz v7, :cond_8

    iget v7, p0, Lcom/android/music/discplus/view/DiscListAdapter;->mSubListType:I

    const/16 v8, 0xd

    if-ne v7, v8, :cond_8

    .line 83
    iget-wide v7, v1, Lcom/android/music/discplus/data/ListViewData;->mAudioId:J

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    if-nez v7, :cond_5

    .line 84
    iget-object v7, p0, Lcom/android/music/discplus/view/DiscListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x205005b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 85
    iget-object v7, p0, Lcom/android/music/discplus/view/DiscListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x205005b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    add-int/lit8 v7, p1, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v7, v1, Lcom/android/music/discplus/data/ListViewData;->mTitle:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v7, v6

    .line 88
    goto :goto_0

    .line 90
    :cond_5
    iget-object v7, p0, Lcom/android/music/discplus/view/DiscListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/high16 v8, 0x205

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 91
    iget-object v7, p0, Lcom/android/music/discplus/view/DiscListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/high16 v8, 0x205

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 92
    add-int/lit8 v7, p1, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v7, v1, Lcom/android/music/discplus/data/ListViewData;->mTitle:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    :goto_1
    iget-object v7, p0, Lcom/android/music/discplus/view/DiscListAdapter;->mPlayer:Lcom/android/music/player/service/ICorePlayerService;

    if-eqz v7, :cond_a

    iget-wide v7, p0, Lcom/android/music/discplus/view/DiscListAdapter;->mAudioId:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_a

    iget-wide v7, p0, Lcom/android/music/discplus/view/DiscListAdapter;->mAudioId:J

    iget-wide v9, v1, Lcom/android/music/discplus/data/ListViewData;->mAudioId:J

    cmp-long v7, v7, v9

    if-nez v7, :cond_a

    iget v7, p0, Lcom/android/music/discplus/view/DiscListAdapter;->mSubListType:I

    const/16 v8, 0xd

    if-eq v7, v8, :cond_6

    iget v7, p0, Lcom/android/music/discplus/view/DiscListAdapter;->mSubListType:I

    const/16 v8, 0x9

    if-ne v7, v8, :cond_7

    :cond_6
    iget-wide v7, p0, Lcom/android/music/discplus/view/DiscListAdapter;->mId:J

    iget v9, v1, Lcom/android/music/discplus/data/ListViewData;->mId:I

    int-to-long v9, v9

    cmp-long v7, v7, v9

    if-nez v7, :cond_a

    .line 105
    :cond_7
    :try_start_0
    iget-object v7, p0, Lcom/android/music/discplus/view/DiscListAdapter;->mPlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v7}, Lcom/android/music/player/service/ICorePlayerService;->isPlaying()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 106
    const v7, 0x7f02007e

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_2
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 116
    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    const/high16 v7, -0x100

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 119
    const v7, 0x7f0200c2

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 129
    :goto_3
    iget-object v4, v1, Lcom/android/music/discplus/data/ListViewData;->mTitle:Ljava/lang/String;

    .line 130
    .local v4, strTitle:Ljava/lang/String;
    if-nez v4, :cond_b

    const-string v7, "  <unknown>"

    :goto_4
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v7, v6

    .line 132
    goto/16 :goto_0

    .line 96
    .end local v4           #strTitle:Ljava/lang/String;
    :cond_8
    add-int/lit8 v7, p1, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v7, v1, Lcom/android/music/discplus/data/ListViewData;->mTitle:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 108
    :cond_9
    const v7, 0x7f02007f

    :try_start_1
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 110
    :catch_0
    move-exception v7

    move-object v0, v7

    .line 111
    .local v0, e:Ljava/lang/Exception;
    sget-object v7, Lcom/android/music/discplus/view/DiscListAdapter;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isPlaying : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const v7, 0x7f020080

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 121
    .end local v0           #e:Ljava/lang/Exception;
    :cond_a
    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 122
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    add-int/lit8 v7, p1, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    const v7, 0x7f0200c2

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 126
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_3

    .line 130
    .restart local v4       #strTitle:Ljava/lang/String;
    :cond_b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_4
.end method

.method public setPlayingAudioId(IJJ)V
    .locals 0
    .parameter "subListType"
    .parameter "id"
    .parameter "audioId"

    .prologue
    .line 40
    iput p1, p0, Lcom/android/music/discplus/view/DiscListAdapter;->mSubListType:I

    .line 41
    iput-wide p2, p0, Lcom/android/music/discplus/view/DiscListAdapter;->mId:J

    .line 42
    iput-wide p4, p0, Lcom/android/music/discplus/view/DiscListAdapter;->mAudioId:J

    .line 43
    return-void
.end method
