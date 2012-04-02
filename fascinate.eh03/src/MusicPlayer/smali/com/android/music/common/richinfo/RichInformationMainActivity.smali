.class public Lcom/android/music/common/richinfo/RichInformationMainActivity;
.super Landroid/app/Activity;
.source "RichInformationMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/common/richinfo/RichInformationMainActivity$OnGestureListener;,
        Lcom/android/music/common/richinfo/RichInformationMainActivity$MediaInfoData;,
        Lcom/android/music/common/richinfo/RichInformationMainActivity$MoveToAnotherPageDialogAdapter;
    }
.end annotation


# instance fields
.field public final MAJOR_MOVE:I

.field private final TAG:Ljava/lang/String;

.field albumartBitmap:Landroid/graphics/Bitmap;

.field private bHasRichInfo:Z

.field private bIsDrmFile:Z

.field private centerViewLayout:Landroid/view/ViewGroup;

.field private currentPage:I

.field private duration:J

.field private imageButtonPage:Landroid/widget/Button;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureSweepListener:Lcom/android/music/common/richinfo/RichInformationMainActivity$OnGestureListener;

.field private mLaunchMode:I

.field private final mMediaReceiver:Landroid/content/BroadcastReceiver;

.field private mMusicDB:Lcom/android/music/common/data/MusicDB;

.field private mPlayingFilePath:Ljava/lang/String;

.field private mPlayingUri:Landroid/net/Uri;

.field private mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

.field private mediaInfoDataList:[Ljava/lang/String;

.field private mediaInfoDataStringId:[I

.field private meta:Lcom/android/music/common/data/MediaMetadata;

.field private parentViewLayout:Landroid/view/ViewGroup;

.field private parsedData:Lcom/android/music/common/richinfo/RichInformationData;

.field private ratingDrawableResourceId:[I


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/16 v5, 0xf

    const/4 v4, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 80
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 82
    const-class v0, Lcom/android/music/common/richinfo/RichInformationMainActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->TAG:Ljava/lang/String;

    .line 96
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->MAJOR_MOVE:I

    .line 100
    iput-object v3, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->parsedData:Lcom/android/music/common/richinfo/RichInformationData;

    .line 101
    iput-object v3, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->mMusicDB:Lcom/android/music/common/data/MusicDB;

    .line 102
    iput-object v3, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->mPlayingUri:Landroid/net/Uri;

    .line 103
    iput-object v3, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->mPlayingFilePath:Ljava/lang/String;

    .line 104
    iput-object v3, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->meta:Lcom/android/music/common/data/MediaMetadata;

    .line 105
    iput v2, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->currentPage:I

    .line 106
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->duration:J

    .line 107
    iput-boolean v2, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->bIsDrmFile:Z

    .line 108
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->mLaunchMode:I

    .line 109
    iput-boolean v2, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->bHasRichInfo:Z

    .line 111
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "Artist"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "Title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Album"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Track length"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Genre"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Author"

    aput-object v2, v0, v1

    const-string v1, "Copyright"

    aput-object v1, v0, v4

    const/4 v1, 0x7

    const-string v2, "Recrding date"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Description"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Track number"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "parent rating"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Format"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Transaction ID"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Size"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Location"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->mediaInfoDataList:[Ljava/lang/String;

    .line 118
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->mediaInfoDataStringId:[I

    .line 125
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->ratingDrawableResourceId:[I

    .line 136
    iput-object v3, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->albumartBitmap:Landroid/graphics/Bitmap;

    .line 138
    iput-object v3, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

    .line 150
    new-instance v0, Lcom/android/music/common/richinfo/RichInformationMainActivity$1;

    invoke-direct {v0, p0}, Lcom/android/music/common/richinfo/RichInformationMainActivity$1;-><init>(Lcom/android/music/common/richinfo/RichInformationMainActivity;)V

    iput-object v0, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    .line 1020
    return-void

    .line 118
    nop

    :array_0
    .array-data 0x4
        0x55t 0x0t 0xat 0x7ft
        0x56t 0x0t 0xat 0x7ft
        0x57t 0x0t 0xat 0x7ft
        0x58t 0x0t 0xat 0x7ft
        0x59t 0x0t 0xat 0x7ft
        0x5at 0x0t 0xat 0x7ft
        0x5bt 0x0t 0xat 0x7ft
        0x5ct 0x0t 0xat 0x7ft
        0x5dt 0x0t 0xat 0x7ft
        0x5et 0x0t 0xat 0x7ft
        0x5ft 0x0t 0xat 0x7ft
        0x60t 0x0t 0xat 0x7ft
        0x61t 0x0t 0xat 0x7ft
        0x62t 0x0t 0xat 0x7ft
        0x63t 0x0t 0xat 0x7ft
    .end array-data

    .line 125
    :array_1
    .array-data 0x4
        0xd9t 0x0t 0x2t 0x7ft
        0xdat 0x0t 0x2t 0x7ft
        0xdbt 0x0t 0x2t 0x7ft
        0xdct 0x0t 0x2t 0x7ft
        0xddt 0x0t 0x2t 0x7ft
        0xdet 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/music/common/richinfo/RichInformationMainActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/music/common/richinfo/RichInformationMainActivity;)Landroid/view/GestureDetector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/music/common/richinfo/RichInformationMainActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->doMakeView(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/music/common/richinfo/RichInformationMainActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->bHasRichInfo:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/music/common/richinfo/RichInformationMainActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->currentPage:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/music/common/richinfo/RichInformationMainActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput p1, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->currentPage:I

    return p1
.end method

.method static synthetic access$408(Lcom/android/music/common/richinfo/RichInformationMainActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->currentPage:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->currentPage:I

    return v0
.end method

.method static synthetic access$410(Lcom/android/music/common/richinfo/RichInformationMainActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->currentPage:I

    const/4 v1, 0x1

    sub-int v1, v0, v1

    iput v1, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->currentPage:I

    return v0
.end method

.method private createBiography()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 832
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->currentPage:I

    .line 834
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 836
    const v1, 0x7f030038

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 839
    const v2, 0x7f0c0139

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 841
    const v3, 0x7f0a0067

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 842
    iget-object v2, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->centerViewLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 846
    const v1, 0x7f030030

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 848
    const v0, 0x7f0c011c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 850
    iget-object v2, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->parsedData:Lcom/android/music/common/richinfo/RichInformationData;

    iget-object v2, v2, Lcom/android/music/common/richinfo/RichInformationData;->performerDetailInfo:Lcom/android/music/common/richinfo/RichInformationData$PerformerDetailInfo;

    iget-object v2, v2, Lcom/android/music/common/richinfo/RichInformationData$PerformerDetailInfo;->biography:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 852
    iget-object v0, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->centerViewLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 853
    iget-object v0, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->imageButtonPage:Landroid/widget/Button;

    const-string v1, "4/7"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 855
    return-void
.end method

.method private createCreditView()V
    .locals 11

    .prologue
    const/4 v9, 0x0

    const-string v10, "layout_inflater"

    .line 594
    const/4 v8, 0x5

    iput v8, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->currentPage:I

    .line 596
    const/4 v5, 0x0

    .line 597
    .local v5, subtitleLayout:Landroid/widget/RelativeLayout;
    const-string v8, "layout_inflater"

    invoke-virtual {p0, v10}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 599
    .local v7, vi:Landroid/view/LayoutInflater;
    const v8, 0x7f030038

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .end local v5           #subtitleLayout:Landroid/widget/RelativeLayout;
    check-cast v5, Landroid/widget/RelativeLayout;

    .line 602
    .restart local v5       #subtitleLayout:Landroid/widget/RelativeLayout;
    const v8, 0x7f0c0139

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 604
    .local v6, subtitleView:Landroid/widget/TextView;
    const v8, 0x7f0a0069

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(I)V

    .line 605
    iget-object v8, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->centerViewLayout:Landroid/view/ViewGroup;

    invoke-virtual {v8, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 607
    const/4 v2, 0x0

    .line 608
    .local v2, itemLayout:Landroid/view/View;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v8, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->parsedData:Lcom/android/music/common/richinfo/RichInformationData;

    iget-object v8, v8, Lcom/android/music/common/richinfo/RichInformationData;->albumDetailInfo:Lcom/android/music/common/richinfo/RichInformationData$AlbumDetailInfo;

    iget-object v8, v8, Lcom/android/music/common/richinfo/RichInformationData$AlbumDetailInfo;->credits:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_3

    .line 609
    const-string v8, "layout_inflater"

    invoke-virtual {p0, v10}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #vi:Landroid/view/LayoutInflater;
    check-cast v7, Landroid/view/LayoutInflater;

    .line 610
    .restart local v7       #vi:Landroid/view/LayoutInflater;
    const v8, 0x7f030031

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 611
    const/4 v1, 0x0

    .line 612
    .local v1, item:Lcom/android/music/common/richinfo/RichInformationData$Credit;
    iget-object v8, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->parsedData:Lcom/android/music/common/richinfo/RichInformationData;

    iget-object v8, v8, Lcom/android/music/common/richinfo/RichInformationData;->albumDetailInfo:Lcom/android/music/common/richinfo/RichInformationData$AlbumDetailInfo;

    iget-object v8, v8, Lcom/android/music/common/richinfo/RichInformationData$AlbumDetailInfo;->credits:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #item:Lcom/android/music/common/richinfo/RichInformationData$Credit;
    check-cast v1, Lcom/android/music/common/richinfo/RichInformationData$Credit;

    .line 614
    .restart local v1       #item:Lcom/android/music/common/richinfo/RichInformationData$Credit;
    if-eqz v1, :cond_2

    .line 615
    const v8, 0x7f0c011e

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 617
    .local v4, role:Landroid/widget/TextView;
    const v8, 0x7f0c011f

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 620
    .local v3, name:Landroid/widget/TextView;
    if-eqz v4, :cond_0

    .line 621
    iget-object v8, v1, Lcom/android/music/common/richinfo/RichInformationData$Credit;->role:Ljava/lang/String;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 623
    :cond_0
    if-eqz v3, :cond_1

    .line 624
    iget-object v8, v1, Lcom/android/music/common/richinfo/RichInformationData$Credit;->PerformerSimpleInfo:Lcom/android/music/common/richinfo/RichInformationData$ArtistInfo;

    iget-object v8, v8, Lcom/android/music/common/richinfo/RichInformationData$ArtistInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 627
    :cond_1
    iget-object v8, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->centerViewLayout:Landroid/view/ViewGroup;

    invoke-virtual {v8, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 608
    .end local v3           #name:Landroid/widget/TextView;
    .end local v4           #role:Landroid/widget/TextView;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 631
    .end local v1           #item:Lcom/android/music/common/richinfo/RichInformationData$Credit;
    :cond_3
    iget-object v8, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->imageButtonPage:Landroid/widget/Button;

    const-string v9, "6/7"

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 632
    return-void
.end method

.method private createDiscographyView()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v9, 0x0

    const-string v10, "MpRichInfo"

    .line 635
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->currentPage:I

    .line 638
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 640
    const v1, 0x7f030038

    invoke-virtual {v0, v1, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 643
    const v1, 0x7f0c0139

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 645
    const v2, 0x7f0a0068

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 646
    iget-object v1, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->centerViewLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move v4, v11

    .line 649
    :goto_0
    iget-object v0, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->parsedData:Lcom/android/music/common/richinfo/RichInformationData;

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationData;->performerDetailInfo:Lcom/android/music/common/richinfo/RichInformationData$PerformerDetailInfo;

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationData$PerformerDetailInfo;->albums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_5

    .line 650
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 651
    const v1, 0x7f030032

    invoke-virtual {v0, v1, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 653
    iget-object v0, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->parsedData:Lcom/android/music/common/richinfo/RichInformationData;

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationData;->performerDetailInfo:Lcom/android/music/common/richinfo/RichInformationData$PerformerDetailInfo;

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationData$PerformerDetailInfo;->albums:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/common/richinfo/RichInformationData$AlbumInfo;

    .line 655
    if-eqz v0, :cond_3

    .line 656
    const v1, 0x7f0c0121

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 658
    const v2, 0x7f0c0122

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 660
    const v3, 0x7f0c0123

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 662
    const v3, 0x7f0c0124

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 665
    if-eqz v2, :cond_0

    .line 666
    iget-object v6, v0, Lcom/android/music/common/richinfo/RichInformationData$AlbumInfo;->title:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 667
    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setSelected(Z)V

    .line 673
    :cond_0
    if-eqz v1, :cond_3

    .line 677
    :try_start_0
    iget-object v2, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->parsedData:Lcom/android/music/common/richinfo/RichInformationData;

    iget-object v2, v2, Lcom/android/music/common/richinfo/RichInformationData;->performerDetailInfo:Lcom/android/music/common/richinfo/RichInformationData$PerformerDetailInfo;

    iget-object v2, v2, Lcom/android/music/common/richinfo/RichInformationData$PerformerDetailInfo;->albums:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/music/common/richinfo/RichInformationData$AlbumInfo;

    iget-object v2, v2, Lcom/android/music/common/richinfo/RichInformationData$AlbumInfo;->artwork:Lcom/android/music/common/richinfo/RichInformationData$ArtworkInfo;

    iget-object v2, v2, Lcom/android/music/common/richinfo/RichInformationData$ArtworkInfo;->artwork:Ljava/lang/String;

    .line 681
    if-eqz v2, :cond_6

    .line 682
    invoke-static {v2}, Lcom/android/music/common/util/Base64Decoder;->getDecodedString(Ljava/lang/String;)[B

    move-result-object v2

    .line 684
    if-eqz v2, :cond_6

    .line 685
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 686
    :try_start_1
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 687
    const/4 v7, 0x2

    iput v7, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 688
    const/16 v7, 0x74

    iput v7, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 689
    const/16 v7, 0x74

    iput v7, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 691
    const/4 v7, 0x0

    invoke-static {v6, v7, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v2

    .line 699
    :goto_1
    if-eqz v6, :cond_1

    .line 701
    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 708
    :cond_1
    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 710
    if-eqz v3, :cond_2

    .line 711
    invoke-direct {p0, v0}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->getRatingDrawableId(Lcom/android/music/common/richinfo/RichInformationData$AlbumInfo;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 714
    :cond_2
    iget-object v0, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->centerViewLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 649
    :cond_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_0

    .line 702
    :catch_0
    move-exception v6

    .line 703
    invoke-static {p0}, Lcom/android/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 704
    const-string v7, "MpRichInfo"

    const-string v7, "fail to read image."

    invoke-static {v10, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    const-string v7, "MpRichInfo"

    const-string v7, "IOException occured 2 :%s"

    new-array v8, v12, [Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 695
    :catch_1
    move-exception v0

    move-object v2, v9

    .line 696
    :goto_3
    :try_start_3
    const-string v3, "MpRichInfo"

    const-string v5, "Memory allocation failed getArtwork:index:%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 699
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v2, :cond_4

    .line 701
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 708
    :cond_4
    :goto_5
    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    throw v0

    .line 702
    :catch_2
    move-exception v2

    .line 703
    invoke-static {p0}, Lcom/android/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 704
    const-string v3, "MpRichInfo"

    const-string v3, "fail to read image."

    invoke-static {v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    const-string v3, "MpRichInfo"

    const-string v3, "IOException occured 2 :%s"

    new-array v4, v12, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v11

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 718
    :cond_5
    iget-object v0, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->imageButtonPage:Landroid/widget/Button;

    const-string v1, "5/7"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 720
    return-void

    .line 699
    :catchall_1
    move-exception v0

    move-object v2, v9

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v2, v6

    goto :goto_4

    .line 695
    :catch_3
    move-exception v0

    move-object v2, v6

    goto :goto_3

    :cond_6
    move-object v2, v9

    move-object v6, v9

    goto/16 :goto_1
.end method

.method private createLyricView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 781
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->currentPage:I

    .line 783
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 785
    const v1, 0x7f030038

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 788
    const v2, 0x7f0c0139

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 790
    const v3, 0x7f0a0065

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 791
    iget-object v2, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->centerViewLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 794
    const v1, 0x7f030037

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 796
    const v0, 0x7f0c0137

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 800
    iget-object v0, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->centerViewLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 801
    iget-object v0, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->imageButtonPage:Landroid/widget/Button;

    const-string v1, "2/7"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 803
    return-void
.end method

.method private createMediaInfoView()V
    .locals 38

    .prologue
    .line 367
    const/16 v33, 0x6

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/common/richinfo/RichInformationMainActivity;->currentPage:I

    .line 368
    const/4 v6, 0x0

    .line 369
    .local v6, data:Lcom/android/music/common/richinfo/RichInformationMainActivity$MediaInfoData;
    const/16 v28, 0x0

    .line 370
    .local v28, subtitleLayout:Landroid/widget/RelativeLayout;
    const-string v33, "layout_inflater"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/view/LayoutInflater;

    .line 372
    .local v32, vi:Landroid/view/LayoutInflater;
    const v33, 0x7f030038

    const/16 v34, 0x0

    invoke-virtual/range {v32 .. v34}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v28

    .end local v28           #subtitleLayout:Landroid/widget/RelativeLayout;
    check-cast v28, Landroid/widget/RelativeLayout;

    .line 375
    .restart local v28       #subtitleLayout:Landroid/widget/RelativeLayout;
    const v33, 0x7f0c0139

    move-object/from16 v0, v28

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/TextView;

    .line 377
    .local v29, subtitleView:Landroid/widget/TextView;
    const/16 v33, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 378
    const v33, 0x7f0a006a

    move-object/from16 v0, v29

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->centerViewLayout:Landroid/view/ViewGroup;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->meta:Lcom/android/music/common/data/MediaMetadata;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/music/common/data/MediaMetadata;->albumImagePath:Ljava/lang/String;

    move-object/from16 v33, v0

    if-eqz v33, :cond_0

    .line 382
    const/4 v3, 0x0

    .line 383
    .local v3, albumartLayout:Landroid/widget/LinearLayout;
    const v33, 0x7f03002f

    const/16 v34, 0x0

    invoke-virtual/range {v32 .. v34}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .end local v3           #albumartLayout:Landroid/widget/LinearLayout;
    check-cast v3, Landroid/widget/LinearLayout;

    .line 384
    .restart local v3       #albumartLayout:Landroid/widget/LinearLayout;
    const v33, 0x7f0c011a

    move-object v0, v3

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 385
    .local v4, albumartView:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->albumartBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v33, v0

    move-object v0, v4

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->centerViewLayout:Landroid/view/ViewGroup;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 389
    .end local v3           #albumartLayout:Landroid/widget/LinearLayout;
    .end local v4           #albumartView:Landroid/widget/ImageView;
    :cond_0
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 390
    .local v17, mediaInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/music/common/richinfo/RichInformationMainActivity$MediaInfoData;>;"
    new-instance v7, Ljava/text/DecimalFormat;

    const-string v33, "0.##"

    move-object v0, v7

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 392
    .local v7, df:Ljava/text/DecimalFormat;
    const/4 v15, 0x0

    .local v15, j:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->mediaInfoDataList:[Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    array-length v0, v0

    move/from16 v33, v0

    move v0, v15

    move/from16 v1, v33

    if-ge v0, v1, :cond_5

    .line 393
    new-instance v6, Lcom/android/music/common/richinfo/RichInformationMainActivity$MediaInfoData;

    .end local v6           #data:Lcom/android/music/common/richinfo/RichInformationMainActivity$MediaInfoData;
    move-object v0, v6

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/common/richinfo/RichInformationMainActivity$MediaInfoData;-><init>(Lcom/android/music/common/richinfo/RichInformationMainActivity;)V

    .line 394
    .restart local v6       #data:Lcom/android/music/common/richinfo/RichInformationMainActivity$MediaInfoData;
    packed-switch v15, :pswitch_data_0

    .line 476
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->mediaInfoDataList:[Ljava/lang/String;

    move-object/from16 v33, v0

    aget-object v33, v33, v15

    move-object/from16 v0, v33

    move-object v1, v6

    iput-object v0, v1, Lcom/android/music/common/richinfo/RichInformationMainActivity$MediaInfoData;->title:Ljava/lang/String;

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->mediaInfoDataStringId:[I

    move-object/from16 v33, v0

    aget v33, v33, v15

    move/from16 v0, v33

    move-object v1, v6

    iput v0, v1, Lcom/android/music/common/richinfo/RichInformationMainActivity$MediaInfoData;->textId:I

    .line 479
    move-object/from16 v0, v17

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    :cond_2
    :pswitch_0
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 396
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->meta:Lcom/android/music/common/data/MediaMetadata;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/music/common/data/MediaMetadata;->artist:Ljava/lang/String;

    move-object/from16 v33, v0

    if-eqz v33, :cond_2

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->meta:Lcom/android/music/common/data/MediaMetadata;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/music/common/data/MediaMetadata;->artist:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object v1, v6

    iput-object v0, v1, Lcom/android/music/common/richinfo/RichInformationMainActivity$MediaInfoData;->context:Ljava/lang/String;

    goto :goto_1

    .line 401
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->meta:Lcom/android/music/common/data/MediaMetadata;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/music/common/data/MediaMetadata;->title:Ljava/lang/String;

    move-object/from16 v33, v0

    if-eqz v33, :cond_2

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->meta:Lcom/android/music/common/data/MediaMetadata;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/music/common/data/MediaMetadata;->title:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object v1, v6

    iput-object v0, v1, Lcom/android/music/common/richinfo/RichInformationMainActivity$MediaInfoData;->context:Ljava/lang/String;

    goto :goto_1

    .line 406
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->meta:Lcom/android/music/common/data/MediaMetadata;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/music/common/data/MediaMetadata;->album:Ljava/lang/String;

    move-object/from16 v33, v0

    if-eqz v33, :cond_2

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->meta:Lcom/android/music/common/data/MediaMetadata;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/music/common/data/MediaMetadata;->album:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object v1, v6

    iput-object v0, v1, Lcom/android/music/common/richinfo/RichInformationMainActivity$MediaInfoData;->context:Ljava/lang/String;

    goto/16 :goto_1

    .line 411
    :pswitch_4
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->duration:J

    move-wide/from16 v33, v0

    const/16 v35, 0x1

    invoke-static/range {v33 .. v35}, Lcom/android/music/common/util/MusicUtils;->getTimeString(JZ)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    move-object v1, v6

    iput-object v0, v1, Lcom/android/music/common/richinfo/RichInformationMainActivity$MediaInfoData;->context:Ljava/lang/String;

    goto/16 :goto_1

    .line 414
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->meta:Lcom/android/music/common/data/MediaMetadata;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/music/common/data/MediaMetadata;->genre:Ljava/lang/String;

    move-object/from16 v33, v0

    if-eqz v33, :cond_2

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->meta:Lcom/android/music/common/data/MediaMetadata;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/music/common/data/MediaMetadata;->genre:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object v1, v6

    iput-object v0, v1, Lcom/android/music/common/richinfo/RichInformationMainActivity$MediaInfoData;->context:Ljava/lang/String;

    goto/16 :goto_1

    .line 427
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->meta:Lcom/android/music/common/data/MediaMetadata;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/music/common/data/MediaMetadata;->year:Ljava/lang/String;

    move-object/from16 v33, v0

    if-eqz v33, :cond_2

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->meta:Lcom/android/music/common/data/MediaMetadata;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/music/common/data/MediaMetadata;->year:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object v1, v6

    iput-object v0, v1, Lcom/android/music/common/richinfo/RichInformationMainActivity$MediaInfoData;->context:Ljava/lang/String;

    goto/16 :goto_1

    .line 436
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->meta:Lcom/android/music/common/data/MediaMetadata;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/music/common/data/MediaMetadata;->track:Ljava/lang/String;

    move-object/from16 v33, v0

    if-eqz v33, :cond_2

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->meta:Lcom/android/music/common/data/MediaMetadata;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/music/common/data/MediaMetadata;->track:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object v1, v6

    iput-object v0, v1, Lcom/android/music/common/richinfo/RichInformationMainActivity$MediaInfoData;->context:Ljava/lang/String;

    goto/16 :goto_1

    .line 445
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->meta:Lcom/android/music/common/data/MediaMetadata;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/music/common/data/MediaMetadata;->filetype:Ljava/lang/String;

    move-object/from16 v33, v0

    if-eqz v33, :cond_2

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->meta:Lcom/android/music/common/data/MediaMetadata;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/music/common/data/MediaMetadata;->filetype:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object v1, v6

    iput-object v0, v1, Lcom/android/music/common/richinfo/RichInformationMainActivity$MediaInfoData;->context:Ljava/lang/String;

    goto/16 :goto_1

    .line 454
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->meta:Lcom/android/music/common/data/MediaMetadata;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/music/common/data/MediaMetadata;->size:Ljava/lang/String;

    move-object/from16 v33, v0

    if-eqz v33, :cond_2

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->meta:Lcom/android/music/common/data/MediaMetadata;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/music/common/data/MediaMetadata;->size:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    .line 457
    .local v27, sizeValue:I
    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v21, v0

    .line 459
    .local v21, result:D
    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v33, v0

    const-wide/high16 v35, 0x4130

    div-double v21, v33, v35

    const-wide/high16 v33, 0x3ff0

    cmpl-double v33, v21, v33

    if-ltz v33, :cond_3

    .line 460
    move-object v0, v7

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v33

    const-string v34, "MB"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    move-object v1, v6

    iput-object v0, v1, Lcom/android/music/common/richinfo/RichInformationMainActivity$MediaInfoData;->context:Ljava/lang/String;

    goto/16 :goto_1

    .line 461
    :cond_3
    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v33, v0

    const-wide/high16 v35, 0x4090

    div-double v21, v33, v35

    const-wide/high16 v33, 0x3ff0

    cmpl-double v33, v21, v33

    if-ltz v33, :cond_4

    .line 462
    move-object v0, v7

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v33

    const-string v34, "KB"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    move-object v1, v6

    iput-object v0, v1, Lcom/android/music/common/richinfo/RichInformationMainActivity$MediaInfoData;->context:Ljava/lang/String;

    goto/16 :goto_1

    .line 464
    :cond_4
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "Bytes"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    move-object v1, v6

    iput-object v0, v1, Lcom/android/music/common/richinfo/RichInformationMainActivity$MediaInfoData;->context:Ljava/lang/String;

    goto/16 :goto_1

    .line 468
    .end local v21           #result:D
    .end local v27           #sizeValue:I
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->mPlayingUri:Landroid/net/Uri;

    move-object/from16 v33, v0

    if-eqz v33, :cond_1

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->mMusicDB:Lcom/android/music/common/data/MusicDB;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->mPlayingUri:Landroid/net/Uri;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Lcom/android/music/common/data/MusicDB;->getAudioFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v16

    .line 470
    .local v16, location:Ljava/lang/String;
    if-eqz v16, :cond_2

    .line 472
    move-object/from16 v0, v16

    move-object v1, v6

    iput-object v0, v1, Lcom/android/music/common/richinfo/RichInformationMainActivity$MediaInfoData;->context:Ljava/lang/String;

    goto/16 :goto_1

    .line 482
    .end local v16           #location:Ljava/lang/String;
    :cond_5
    const/4 v14, 0x0

    .line 483
    .local v14, itemLayout:Landroid/view/View;
    const/4 v12, 0x0

    .local v12, i:I
    :goto_2
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v33

    move v0, v12

    move/from16 v1, v33

    if-ge v0, v1, :cond_9

    .line 485
    const v33, 0x7f030031

    const/16 v34, 0x0

    invoke-virtual/range {v32 .. v34}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 486
    move-object/from16 v0, v17

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/music/common/richinfo/RichInformationMainActivity$MediaInfoData;

    .line 488
    .local v13, item:Lcom/android/music/common/richinfo/RichInformationMainActivity$MediaInfoData;
    if-eqz v13, :cond_8

    .line 489
    const v33, 0x7f0c011e

    move-object v0, v14

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    .line 491
    .local v30, title:Landroid/widget/TextView;
    const v33, 0x7f0c011f

    move-object v0, v14

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 493
    .local v5, context:Landroid/widget/TextView;
    if-eqz v5, :cond_6

    .line 494
    const/16 v33, 0x1

    move-object v0, v5

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 495
    move-object v0, v13

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationMainActivity$MediaInfoData;->context:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object v0, v5

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 498
    :cond_6
    if-eqz v30, :cond_7

    .line 499
    const/16 v33, 0x1

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 500
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    move-object v0, v13

    iget v0, v0, Lcom/android/music/common/richinfo/RichInformationMainActivity$MediaInfoData;->textId:I

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v30

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 503
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->centerViewLayout:Landroid/view/ViewGroup;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 483
    .end local v5           #context:Landroid/widget/TextView;
    .end local v30           #title:Landroid/widget/TextView;
    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 509
    .end local v13           #item:Lcom/android/music/common/richinfo/RichInformationMainActivity$MediaInfoData;
    :cond_9
    const/4 v11, 0x0

    .line 510
    .local v11, filePath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->mPlayingUri:Landroid/net/Uri;

    move-object/from16 v33, v0

    if-eqz v33, :cond_a

    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->mMusicDB:Lcom/android/music/common/data/MusicDB;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->mPlayingUri:Landroid/net/Uri;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Lcom/android/music/common/data/MusicDB;->getAudioFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v11

    .line 513
    :cond_a
    if-eqz v11, :cond_10

    .line 515
    new-instance v9, Lcom/android/music/common/manager/MusicDrmManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v33

    move-object v0, v9

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/music/common/manager/MusicDrmManager;-><init>(Landroid/content/Context;)V

    .line 517
    .local v9, drmManager:Lcom/android/music/common/manager/MusicDrmManager;
    :try_start_0
    invoke-virtual {v9, v11}, Lcom/android/music/common/manager/MusicDrmManager;->IsDrmFile(Ljava/lang/String;)Z

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/music/common/richinfo/RichInformationMainActivity;->bIsDrmFile:Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->bIsDrmFile:Z

    move/from16 v33, v0

    if-eqz v33, :cond_10

    .line 524
    invoke-virtual {v9}, Lcom/android/music/common/manager/MusicDrmManager;->getOptionInfo()Landroid/drm/mobile2/Drm2Options;

    move-result-object v18

    .line 525
    .local v18, option:Landroid/drm/mobile2/Drm2Options;
    if-eqz v18, :cond_b

    move-object/from16 v0, v18

    iget-boolean v0, v0, Landroid/drm/mobile2/Drm2Options;->bSendAs:Z

    move/from16 v33, v0

    if-nez v33, :cond_b

    .line 526
    const v33, 0x7f030031

    const/16 v34, 0x0

    invoke-virtual/range {v32 .. v34}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 527
    const v33, 0x7f0c011e

    move-object v0, v14

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    .line 528
    .restart local v30       #title:Landroid/widget/TextView;
    const v33, 0x7f0c011f

    move-object v0, v14

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 530
    .restart local v5       #context:Landroid/widget/TextView;
    const v33, 0x7f0a00a4

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 531
    const v33, 0x7f0a00a3

    move-object v0, v5

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->centerViewLayout:Landroid/view/ViewGroup;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 536
    .end local v5           #context:Landroid/widget/TextView;
    .end local v30           #title:Landroid/widget/TextView;
    :cond_b
    invoke-virtual {v9}, Lcom/android/music/common/manager/MusicDrmManager;->getDetailRightsPermission()Ljava/util/ArrayList;

    move-result-object v8

    .line 537
    .local v8, drmInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;>;"
    if-eqz v8, :cond_10

    .line 538
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 540
    .local v20, permissionCount:I
    if-lez v20, :cond_10

    .line 543
    const v33, 0x7f030038

    const/16 v34, 0x0

    invoke-virtual/range {v32 .. v34}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v28

    .end local v28           #subtitleLayout:Landroid/widget/RelativeLayout;
    check-cast v28, Landroid/widget/RelativeLayout;

    .line 545
    .restart local v28       #subtitleLayout:Landroid/widget/RelativeLayout;
    const v33, 0x7f0c0139

    move-object/from16 v0, v28

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v29

    .end local v29           #subtitleView:Landroid/widget/TextView;
    check-cast v29, Landroid/widget/TextView;

    .line 546
    .restart local v29       #subtitleView:Landroid/widget/TextView;
    const/16 v33, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 547
    const v33, 0x7f0a00a2

    move-object/from16 v0, v29

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->centerViewLayout:Landroid/view/ViewGroup;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 550
    const/4 v12, 0x0

    :goto_4
    move v0, v12

    move/from16 v1, v20

    if-ge v0, v1, :cond_10

    .line 551
    const v33, 0x7f030033

    const/16 v34, 0x0

    invoke-virtual/range {v32 .. v34}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 553
    const v33, 0x7f0c0126

    move-object v0, v14

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 554
    .local v23, roCountTextView:Landroid/widget/TextView;
    const-string v33, "(%d/%d)"

    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    add-int/lit8 v36, v12, 0x1

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    aput-object v36, v34, v35

    const/16 v35, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    aput-object v36, v34, v35

    invoke-static/range {v33 .. v34}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 555
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;

    .line 557
    .local v19, permission:Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->usesStr:I

    move/from16 v33, v0

    const/16 v34, -0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_c

    .line 558
    const v33, 0x7f0c0127

    move-object v0, v14

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    .line 559
    .local v25, roUsesTextView:Landroid/widget/TextView;
    const-string v33, "%s : %s"

    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    const v36, 0x7f0a009f

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v36

    aput-object v36, v34, v35

    const/16 v35, 0x1

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->usesStr:I

    move/from16 v36, v0

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v36

    aput-object v36, v34, v35

    invoke-static/range {v33 .. v34}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 563
    .end local v25           #roUsesTextView:Landroid/widget/TextView;
    :cond_c
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->typeStr:[I

    move-object/from16 v33, v0

    const/16 v34, 0x0

    aget v33, v33, v34

    const/16 v34, -0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_d

    .line 564
    const v33, 0x7f0c0128

    move-object v0, v14

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    .line 565
    .local v24, roTypeTextView:Landroid/widget/TextView;
    const/16 v31, 0x0

    .line 566
    .local v31, typeStr:Ljava/lang/String;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->typeStr:[I

    move-object/from16 v33, v0

    const/16 v34, 0x1

    aget v33, v33, v34

    const/16 v34, -0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_f

    .line 567
    const-string v33, "%s-%s"

    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->typeStr:[I

    move-object/from16 v36, v0

    const/16 v37, 0x0

    aget v36, v36, v37

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v36

    aput-object v36, v34, v35

    const/16 v35, 0x1

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->typeStr:[I

    move-object/from16 v36, v0

    const/16 v37, 0x1

    aget v36, v36, v37

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v36

    aput-object v36, v34, v35

    invoke-static/range {v33 .. v34}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    .line 571
    :goto_5
    const-string v33, "%s : %s"

    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    const v36, 0x7f0a00a0

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v36

    aput-object v36, v34, v35

    const/16 v35, 0x1

    aput-object v31, v34, v35

    invoke-static/range {v33 .. v34}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 574
    .end local v24           #roTypeTextView:Landroid/widget/TextView;
    .end local v31           #typeStr:Ljava/lang/String;
    :cond_d
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->validityStr:Ljava/lang/String;

    move-object/from16 v33, v0

    if-eqz v33, :cond_e

    .line 575
    const v33, 0x7f0c0129

    move-object v0, v14

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    .line 576
    .local v26, roValidityTextView:Landroid/widget/TextView;
    const-string v33, "%s : %s"

    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    const v36, 0x7f0a00a1

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v36

    aput-object v36, v34, v35

    const/16 v35, 0x1

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->validityStr:Ljava/lang/String;

    move-object/from16 v36, v0

    aput-object v36, v34, v35

    invoke-static/range {v33 .. v34}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v26

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 579
    .end local v26           #roValidityTextView:Landroid/widget/TextView;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->centerViewLayout:Landroid/view/ViewGroup;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 550
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_4

    .line 518
    .end local v8           #drmInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;>;"
    .end local v18           #option:Landroid/drm/mobile2/Drm2Options;
    .end local v19           #permission:Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;
    .end local v20           #permissionCount:I
    .end local v23           #roCountTextView:Landroid/widget/TextView;
    :catch_0
    move-exception v33

    move-object/from16 v10, v33

    .line 519
    .local v10, e:Ljava/io/FileNotFoundException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->TAG:Ljava/lang/String;

    move-object/from16 v33, v0

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "FileNotFoundException is occured,DRM  Info Page,"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual {v10}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 569
    .end local v10           #e:Ljava/io/FileNotFoundException;
    .restart local v8       #drmInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;>;"
    .restart local v18       #option:Landroid/drm/mobile2/Drm2Options;
    .restart local v19       #permission:Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;
    .restart local v20       #permissionCount:I
    .restart local v23       #roCountTextView:Landroid/widget/TextView;
    .restart local v24       #roTypeTextView:Landroid/widget/TextView;
    .restart local v31       #typeStr:Ljava/lang/String;
    :cond_f
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->typeStr:[I

    move-object/from16 v33, v0

    const/16 v34, 0x0

    aget v33, v33, v34

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v31

    goto/16 :goto_5

    .line 587
    .end local v8           #drmInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;>;"
    .end local v9           #drmManager:Lcom/android/music/common/manager/MusicDrmManager;
    .end local v18           #option:Landroid/drm/mobile2/Drm2Options;
    .end local v19           #permission:Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;
    .end local v20           #permissionCount:I
    .end local v23           #roCountTextView:Landroid/widget/TextView;
    .end local v24           #roTypeTextView:Landroid/widget/TextView;
    .end local v31           #typeStr:Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->bHasRichInfo:Z

    move/from16 v33, v0

    if-eqz v33, :cond_11

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->imageButtonPage:Landroid/widget/Button;

    move-object/from16 v33, v0

    const-string v34, "7/7"

    invoke-virtual/range {v33 .. v34}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 591
    :goto_6
    return-void

    .line 590
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->imageButtonPage:Landroid/widget/Button;

    move-object/from16 v33, v0

    const/16 v34, 0x8

    invoke-virtual/range {v33 .. v34}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_6

    .line 394
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private createReviewView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 806
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->currentPage:I

    .line 808
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 810
    const v1, 0x7f030038

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 813
    const v2, 0x7f0c0139

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 815
    const v3, 0x7f0a0066

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 816
    iget-object v2, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->centerViewLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 820
    const v1, 0x7f030037

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 822
    const v0, 0x7f0c0137

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 824
    iget-object v2, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->parsedData:Lcom/android/music/common/richinfo/RichInformationData;

    iget-object v2, v2, Lcom/android/music/common/richinfo/RichInformationData;->albumDetailInfo:Lcom/android/music/common/richinfo/RichInformationData$AlbumDetailInfo;

    iget-object v2, v2, Lcom/android/music/common/richinfo/RichInformationData$AlbumDetailInfo;->review:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 826
    iget-object v0, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->centerViewLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 827
    iget-object v0, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->imageButtonPage:Landroid/widget/Button;

    const-string v1, "3/7"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 829
    return-void
.end method

.method private createTrackListView()V
    .locals 12

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v11, "layout_inflater"

    .line 723
    iput v8, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->currentPage:I

    .line 725
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v11}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 727
    const v1, 0x7f030039

    invoke-virtual {v0, v1, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 730
    const v1, 0x7f0c013b

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 732
    iget-object v2, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->parsedData:Lcom/android/music/common/richinfo/RichInformationData;

    iget-object v2, v2, Lcom/android/music/common/richinfo/RichInformationData;->albumDetailInfo:Lcom/android/music/common/richinfo/RichInformationData$AlbumDetailInfo;

    iget-object v2, v2, Lcom/android/music/common/richinfo/RichInformationData$AlbumDetailInfo;->albumSimpleInfo:Lcom/android/music/common/richinfo/RichInformationData$AlbumInfo;

    iget-object v2, v2, Lcom/android/music/common/richinfo/RichInformationData$AlbumInfo;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 733
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setSelected(Z)V

    .line 734
    const v1, 0x7f0c013c

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 736
    iget-object v2, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->parsedData:Lcom/android/music/common/richinfo/RichInformationData;

    iget-object v2, v2, Lcom/android/music/common/richinfo/RichInformationData;->albumDetailInfo:Lcom/android/music/common/richinfo/RichInformationData$AlbumDetailInfo;

    iget-object v2, v2, Lcom/android/music/common/richinfo/RichInformationData$AlbumDetailInfo;->albumSimpleInfo:Lcom/android/music/common/richinfo/RichInformationData$AlbumInfo;

    invoke-direct {p0, v2}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->getRatingDrawableId(Lcom/android/music/common/richinfo/RichInformationData$AlbumInfo;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 739
    iget-object v1, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->centerViewLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move v4, v8

    .line 743
    :goto_0
    iget-object v0, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->parsedData:Lcom/android/music/common/richinfo/RichInformationData;

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationData;->albumDetailInfo:Lcom/android/music/common/richinfo/RichInformationData$AlbumDetailInfo;

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationData$AlbumDetailInfo;->discs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_5

    move v5, v8

    .line 744
    :goto_1
    iget-object v0, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->parsedData:Lcom/android/music/common/richinfo/RichInformationData;

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationData;->albumDetailInfo:Lcom/android/music/common/richinfo/RichInformationData$AlbumDetailInfo;

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationData$AlbumDetailInfo;->discs:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/common/richinfo/RichInformationData$Disc;

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationData$Disc;->tracks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_4

    .line 746
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v11}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 747
    const v1, 0x7f03003a

    invoke-virtual {v0, v1, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 749
    iget-object v0, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->parsedData:Lcom/android/music/common/richinfo/RichInformationData;

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationData;->albumDetailInfo:Lcom/android/music/common/richinfo/RichInformationData$AlbumDetailInfo;

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationData$AlbumDetailInfo;->discs:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/common/richinfo/RichInformationData$Disc;

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationData$Disc;->tracks:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/common/richinfo/RichInformationData$TrackInfo;

    .line 751
    if-eqz v0, :cond_3

    .line 752
    const v1, 0x7f0c013e

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 754
    const v2, 0x7f0c013f

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 756
    const v3, 0x7f0c0140

    invoke-virtual {v6, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 759
    if-eqz v1, :cond_0

    .line 760
    add-int/lit8 v7, v5, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 763
    :cond_0
    if-eqz v2, :cond_1

    .line 764
    iget-object v1, v0, Lcom/android/music/common/richinfo/RichInformationData$TrackInfo;->title:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 765
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setSelected(Z)V

    .line 767
    :cond_1
    if-eqz v3, :cond_2

    .line 768
    iget v0, v0, Lcom/android/music/common/richinfo/RichInformationData$TrackInfo;->playLength:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {v0, v1, v9}, Lcom/android/music/common/util/MusicUtils;->getTimeString(JZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 773
    :cond_2
    iget-object v0, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->centerViewLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 745
    :cond_3
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1

    .line 743
    :cond_4
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_0

    .line 777
    :cond_5
    iget-object v0, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->imageButtonPage:Landroid/widget/Button;

    const-string v1, "1/7"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 778
    return-void
.end method

.method private doMakeView(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->centerViewLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 1003
    if-nez p1, :cond_1

    .line 1004
    invoke-direct {p0}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->createTrackListView()V

    .line 1018
    :cond_0
    :goto_0
    return-void

    .line 1005
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 1006
    invoke-direct {p0}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->createLyricView()V

    goto :goto_0

    .line 1007
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 1008
    invoke-direct {p0}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->createReviewView()V

    goto :goto_0

    .line 1009
    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 1010
    invoke-direct {p0}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->createBiography()V

    goto :goto_0

    .line 1011
    :cond_4
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    .line 1012
    invoke-direct {p0}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->createDiscographyView()V

    goto :goto_0

    .line 1013
    :cond_5
    const/4 v0, 0x5

    if-ne p1, v0, :cond_6

    .line 1014
    invoke-direct {p0}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->createCreditView()V

    goto :goto_0

    .line 1015
    :cond_6
    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 1016
    invoke-direct {p0}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->createMediaInfoView()V

    goto :goto_0
.end method

.method private getRatingDrawableId(Lcom/android/music/common/richinfo/RichInformationData$AlbumInfo;)I
    .locals 2
    .parameter "item"

    .prologue
    .line 976
    iget v0, p1, Lcom/android/music/common/richinfo/RichInformationData$AlbumInfo;->rating:I

    .line 977
    .local v0, ratingCount:I
    if-gtz v0, :cond_1

    .line 978
    const/4 v0, 0x0

    .line 982
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->ratingDrawableResourceId:[I

    aget v1, v1, v0

    return v1

    .line 979
    :cond_1
    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 980
    const/4 v0, 0x5

    goto :goto_0
.end method

.method private initializeControls()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 335
    const v3, 0x7f0c0131

    invoke-virtual {p0, v3}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->imageButtonPage:Landroid/widget/Button;

    .line 336
    iget-object v3, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->imageButtonPage:Landroid/widget/Button;

    new-instance v4, Lcom/android/music/common/richinfo/RichInformationMainActivity$2;

    invoke-direct {v4, p0}, Lcom/android/music/common/richinfo/RichInformationMainActivity$2;-><init>(Lcom/android/music/common/richinfo/RichInformationMainActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    const v3, 0x7f0c0130

    invoke-virtual {p0, v3}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->centerViewLayout:Landroid/view/ViewGroup;

    .line 343
    iget-object v3, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->centerViewLayout:Landroid/view/ViewGroup;

    new-instance v4, Lcom/android/music/common/richinfo/RichInformationMainActivity$3;

    invoke-direct {v4, p0}, Lcom/android/music/common/richinfo/RichInformationMainActivity$3;-><init>(Lcom/android/music/common/richinfo/RichInformationMainActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 349
    const v3, 0x7f0c012b

    invoke-virtual {p0, v3}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 350
    .local v0, mAlbumArt:Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->albumartBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 351
    const v3, 0x7f0c012c

    invoke-virtual {p0, v3}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 352
    .local v2, mTitle:Landroid/widget/TextView;
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 353
    iget-object v3, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->meta:Lcom/android/music/common/data/MediaMetadata;

    iget-object v3, v3, Lcom/android/music/common/data/MediaMetadata;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    const v3, 0x7f0c012d

    invoke-virtual {p0, v3}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 355
    .local v1, mArtist:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->meta:Lcom/android/music/common/data/MediaMetadata;

    iget-object v3, v3, Lcom/android/music/common/data/MediaMetadata;->artist:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 358
    iget-boolean v3, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->bHasRichInfo:Z

    if-eqz v3, :cond_0

    .line 359
    invoke-direct {p0}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->createTrackListView()V

    .line 363
    :goto_0
    return-void

    .line 361
    :cond_0
    invoke-direct {p0}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->createMediaInfoView()V

    goto :goto_0
.end method

.method private processIntent()V
    .locals 4

    .prologue
    .line 965
    invoke-virtual {p0}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 966
    if-eqz v0, :cond_1

    .line 967
    const-string v1, "playing_uri"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 968
    if-eqz v1, :cond_0

    .line 969
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->mPlayingUri:Landroid/net/Uri;

    .line 970
    :cond_0
    const-string v1, "media.duration"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->duration:J

    .line 971
    const-string v1, "media.launch.mode"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->mLaunchMode:I

    .line 973
    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 184
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 187
    invoke-virtual {p0}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 190
    const v1, 0x7f030034

    invoke-virtual {p0, v1}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->setContentView(I)V

    .line 191
    const v1, 0x7f0c012e

    invoke-virtual {p0, v1}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->parentViewLayout:Landroid/view/ViewGroup;

    .line 193
    invoke-direct {p0}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->processIntent()V

    .line 194
    invoke-virtual {p0}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/music/common/data/MusicDB;->createInstance(Landroid/content/Context;)Lcom/android/music/common/data/MusicDB;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->mMusicDB:Lcom/android/music/common/data/MusicDB;

    .line 240
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 242
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 243
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 244
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 245
    iget-object v1, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 248
    iget-object v1, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->meta:Lcom/android/music/common/data/MediaMetadata;

    if-nez v1, :cond_0

    .line 249
    new-instance v1, Lcom/android/music/common/data/MediaMetadata;

    iget-object v2, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->mMusicDB:Lcom/android/music/common/data/MusicDB;

    invoke-direct {v1, v2}, Lcom/android/music/common/data/MediaMetadata;-><init>(Lcom/android/music/common/data/MusicDB;)V

    iput-object v1, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->meta:Lcom/android/music/common/data/MediaMetadata;

    .line 250
    :cond_0
    iget-object v1, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->meta:Lcom/android/music/common/data/MediaMetadata;

    iget-object v2, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->mPlayingUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/android/music/common/data/MediaMetadata;->parse(Landroid/net/Uri;)Z

    .line 252
    iget-object v1, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->meta:Lcom/android/music/common/data/MediaMetadata;

    iget-object v1, v1, Lcom/android/music/common/data/MediaMetadata;->albumImagePath:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 253
    iget-object v1, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->meta:Lcom/android/music/common/data/MediaMetadata;

    iget-object v1, v1, Lcom/android/music/common/data/MediaMetadata;->albumImagePath:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->albumartBitmap:Landroid/graphics/Bitmap;

    .line 256
    :cond_1
    iget-object v1, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->albumartBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    .line 257
    invoke-virtual {p0}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200b5

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->albumartBitmap:Landroid/graphics/Bitmap;

    .line 259
    :cond_2
    new-instance v1, Lcom/android/music/common/richinfo/RichInformationMainActivity$OnGestureListener;

    invoke-direct {v1, p0}, Lcom/android/music/common/richinfo/RichInformationMainActivity$OnGestureListener;-><init>(Lcom/android/music/common/richinfo/RichInformationMainActivity;)V

    iput-object v1, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->mGestureSweepListener:Lcom/android/music/common/richinfo/RichInformationMainActivity$OnGestureListener;

    .line 260
    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->mGestureSweepListener:Lcom/android/music/common/richinfo/RichInformationMainActivity$OnGestureListener;

    invoke-direct {v1, p0, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->mGestureDetector:Landroid/view/GestureDetector;

    .line 264
    invoke-direct {p0}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->initializeControls()V

    .line 266
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 858
    packed-switch p1, :pswitch_data_0

    move-object v0, v3

    .line 904
    :goto_0
    return-object v0

    .line 860
    :pswitch_0
    const/4 v0, 0x7

    new-array v2, v0, [Ljava/lang/CharSequence;

    const v0, 0x7f0a0064

    invoke-virtual {p0, v0}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v6

    const/4 v0, 0x1

    const v1, 0x7f0a0065

    invoke-virtual {p0, v1}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const v1, 0x7f0a0066

    invoke-virtual {p0, v1}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const v1, 0x7f0a0067

    invoke-virtual {p0, v1}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const v1, 0x7f0a0068

    invoke-virtual {p0, v1}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const v1, 0x7f0a0069

    invoke-virtual {p0, v1}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const v1, 0x7f0a006a

    invoke-virtual {p0, v1}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    .line 866
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

    .line 868
    invoke-virtual {p0}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030035

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 870
    const v0, 0x7f0c0132

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 873
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v5, v6

    .line 875
    :goto_1
    array-length v1, v2

    if-ge v5, v1, :cond_0

    .line 876
    aget-object v1, v2, v5

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 875
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_1

    .line 879
    :cond_0
    new-instance v1, Lcom/android/music/common/richinfo/RichInformationMainActivity$MoveToAnotherPageDialogAdapter;

    const v2, 0x7f030036

    invoke-direct {v1, p0, p0, v2, v4}, Lcom/android/music/common/richinfo/RichInformationMainActivity$MoveToAnotherPageDialogAdapter;-><init>(Lcom/android/music/common/richinfo/RichInformationMainActivity;Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 881
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 883
    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 884
    new-instance v1, Lcom/android/music/common/richinfo/RichInformationMainActivity$4;

    invoke-direct {v1, p0}, Lcom/android/music/common/richinfo/RichInformationMainActivity$4;-><init>(Lcom/android/music/common/richinfo/RichInformationMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 898
    iget-object v0, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 900
    iget-object v0, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 858
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 320
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 321
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyDown("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const/4 v0, 0x4

    if-ne v0, p1, :cond_0

    .line 326
    invoke-virtual {p0}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->finish()V

    .line 327
    const v0, 0x7f04000a

    const v1, 0x7f04000b

    invoke-virtual {p0, v0, v1}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->overridePendingTransition(II)V

    .line 330
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 270
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 271
    invoke-static {p0}, Lcom/android/music/common/util/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    const v0, 0x7f0a00f3

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 273
    invoke-virtual {p0}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->finish()V

    .line 286
    :cond_0
    return-void
.end method
