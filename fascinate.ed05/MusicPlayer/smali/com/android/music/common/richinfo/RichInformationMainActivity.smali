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


# static fields
.field public static final MEDIA_DURATION:Ljava/lang/String; = "media.duration"

.field public static final MEDIA_LAUNCHMODE:Ljava/lang/String; = "media.launch.mode"

.field static final MOVE_TO_ANOTHER_PAGE_DIALOG:I = 0x0

.field public static final PLAYING_URI:Ljava/lang/String; = "playing_uri"

.field static final RICH_INFORMATION_INDEX_BIOGRAPHY:I = 0x3

.field static final RICH_INFORMATION_INDEX_CREDITS:I = 0x5

.field static final RICH_INFORMATION_INDEX_DISCOGRAPHY:I = 0x4

.field static final RICH_INFORMATION_INDEX_LYRIC:I = 0x1

.field static final RICH_INFORMATION_INDEX_MEDIA_INFO:I = 0x6

.field static final RICH_INFORMATION_INDEX_REVIEW:I = 0x2

.field static final RICH_INFORMATION_INDEX_TRACK_LIST:I


# instance fields
.field public final MAJOR_MOVE:I

.field private final TAG:Ljava/lang/String;

.field albumartBitmap:Landroid/graphics/Bitmap;

.field private bHasRichInfo:Z

.field private bIsDrmFile:Z

.field private centerViewLayout:Landroid/view/ViewGroup;

.field private currentPage:I

.field private duration:I

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

    .line 58
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 60
    const-class v0, Lcom/android/music/common/richinfo/RichInformationMainActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->TAG:Ljava/lang/String;

    .line 74
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->MAJOR_MOVE:I

    .line 78
    iput-object v3, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->parsedData:Lcom/android/music/common/richinfo/RichInformationData;

    .line 79
    iput-object v3, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->mMusicDB:Lcom/android/music/common/data/MusicDB;

    .line 80
    iput-object v3, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->mPlayingUri:Landroid/net/Uri;

    .line 81
    iput-object v3, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->mPlayingFilePath:Ljava/lang/String;

    .line 82
    iput-object v3, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->meta:Lcom/android/music/common/data/MediaMetadata;

    .line 83
    iput v2, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->currentPage:I

    .line 84
    iput v2, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->duration:I

    .line 85
    iput-boolean v2, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->bIsDrmFile:Z

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->mLaunchMode:I

    .line 87
    iput-boolean v2, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->bHasRichInfo:Z

    .line 89
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

    .line 96
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->mediaInfoDataStringId:[I

    .line 103
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->ratingDrawableResourceId:[I

    .line 114
    iput-object v3, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->albumartBitmap:Landroid/graphics/Bitmap;

    .line 116
    iput-object v3, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

    .line 121
    new-instance v0, Lcom/android/music/common/richinfo/RichInformationMainActivity$1;

    invoke-direct {v0, p0}, Lcom/android/music/common/richinfo/RichInformationMainActivity$1;-><init>(Lcom/android/music/common/richinfo/RichInformationMainActivity;)V

    iput-object v0, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    .line 929
    return-void

    .line 96
    nop

    :array_0
    .array-data 0x4
        0x53t 0x0t 0xat 0x7ft
        0x54t 0x0t 0xat 0x7ft
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
    .end array-data

    .line 103
    :array_1
    .array-data 0x4
        0xe8t 0x0t 0x2t 0x7ft
        0xe9t 0x0t 0x2t 0x7ft
        0xeat 0x0t 0x2t 0x7ft
        0xebt 0x0t 0x2t 0x7ft
        0xect 0x0t 0x2t 0x7ft
        0xedt 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/music/common/richinfo/RichInformationMainActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/music/common/richinfo/RichInformationMainActivity;)Landroid/view/GestureDetector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/music/common/richinfo/RichInformationMainActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->doMakeView(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/music/common/richinfo/RichInformationMainActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->bHasRichInfo:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/music/common/richinfo/RichInformationMainActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->currentPage:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/music/common/richinfo/RichInformationMainActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput p1, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->currentPage:I

    return p1
.end method

.method static synthetic access$408(Lcom/android/music/common/richinfo/RichInformationMainActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->currentPage:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->currentPage:I

    return v0
.end method

.method static synthetic access$410(Lcom/android/music/common/richinfo/RichInformationMainActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->currentPage:I

    const/4 v1, 0x1

    sub-int v1, v0, v1

    iput v1, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->currentPage:I

    return v0
.end method

.method private createBiography()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 743
    const/4 v5, 0x3

    iput v5, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->currentPage:I

    .line 744
    const/4 v2, 0x0

    .line 745
    .local v2, subtitleLayout:Landroid/widget/RelativeLayout;
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 747
    .local v4, vi:Landroid/view/LayoutInflater;
    const v5, 0x7f030034

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .end local v2           #subtitleLayout:Landroid/widget/RelativeLayout;
    check-cast v2, Landroid/widget/RelativeLayout;

    .line 750
    .restart local v2       #subtitleLayout:Landroid/widget/RelativeLayout;
    const v5, 0x7f0c0120

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 752
    .local v3, subtitleView:Landroid/widget/TextView;
    const v5, 0x7f0a0065

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 753
    iget-object v5, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->centerViewLayout:Landroid/view/ViewGroup;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 755
    const/4 v0, 0x0

    .line 757
    .local v0, itemLayout:Landroid/view/View;
    const v5, 0x7f03002c

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 759
    const v5, 0x7f0c0103

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 761
    .local v1, reviewContext:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->parsedData:Lcom/android/music/common/richinfo/RichInformationData;

    iget-object v5, v5, Lcom/android/music/common/richinfo/RichInformationData;->performerDetailInfo:Lcom/android/music/common/richinfo/RichInformationData$PerformerDetailInfo;

    iget-object v5, v5, Lcom/android/music/common/richinfo/RichInformationData$PerformerDetailInfo;->biography:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 763
    iget-object v5, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->centerViewLayout:Landroid/view/ViewGroup;

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 764
    iget-object v5, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->imageButtonPage:Landroid/widget/Button;

    const-string v6, "4/7"

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 766
    return-void
.end method

.method private createCreditView()V
    .locals 11

    .prologue
    const/4 v9, 0x0

    const-string v10, "layout_inflater"

    .line 505
    const/4 v8, 0x5

    iput v8, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->currentPage:I

    .line 507
    const/4 v5, 0x0

    .line 508
    .local v5, subtitleLayout:Landroid/widget/RelativeLayout;
    const-string v8, "layout_inflater"

    invoke-virtual {p0, v10}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 510
    .local v7, vi:Landroid/view/LayoutInflater;
    const v8, 0x7f030034

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .end local v5           #subtitleLayout:Landroid/widget/RelativeLayout;
    check-cast v5, Landroid/widget/RelativeLayout;

    .line 513
    .restart local v5       #subtitleLayout:Landroid/widget/RelativeLayout;
    const v8, 0x7f0c0120

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 515
    .local v6, subtitleView:Landroid/widget/TextView;
    const v8, 0x7f0a0067

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(I)V

    .line 516
    iget-object v8, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->centerViewLayout:Landroid/view/ViewGroup;

    invoke-virtual {v8, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 518
    const/4 v2, 0x0

    .line 519
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

    .line 520
    const-string v8, "layout_inflater"

    invoke-virtual {p0, v10}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #vi:Landroid/view/LayoutInflater;
    check-cast v7, Landroid/view/LayoutInflater;

    .line 521
    .restart local v7       #vi:Landroid/view/LayoutInflater;
    const v8, 0x7f03002d

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 522
    const/4 v1, 0x0

    .line 523
    .local v1, item:Lcom/android/music/common/richinfo/RichInformationData$Credit;
    iget-object v8, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->parsedData:Lcom/android/music/common/richinfo/RichInformationData;

    iget-object v8, v8, Lcom/android/music/common/richinfo/RichInformationData;->albumDetailInfo:Lcom/android/music/common/richinfo/RichInformationData$AlbumDetailInfo;

    iget-object v8, v8, Lcom/android/music/common/richinfo/RichInformationData$AlbumDetailInfo;->credits:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #item:Lcom/android/music/common/richinfo/RichInformationData$Credit;
    check-cast v1, Lcom/android/music/common/richinfo/RichInformationData$Credit;

    .line 525
    .restart local v1       #item:Lcom/android/music/common/richinfo/RichInformationData$Credit;
    if-eqz v1, :cond_2

    .line 526
    const v8, 0x7f0c0105

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 528
    .local v4, role:Landroid/widget/TextView;
    const v8, 0x7f0c0106

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 531
    .local v3, name:Landroid/widget/TextView;
    if-eqz v4, :cond_0

    .line 532
    iget-object v8, v1, Lcom/android/music/common/richinfo/RichInformationData$Credit;->role:Ljava/lang/String;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 534
    :cond_0
    if-eqz v3, :cond_1

    .line 535
    iget-object v8, v1, Lcom/android/music/common/richinfo/RichInformationData$Credit;->PerformerSimpleInfo:Lcom/android/music/common/richinfo/RichInformationData$ArtistInfo;

    iget-object v8, v8, Lcom/android/music/common/richinfo/RichInformationData$ArtistInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 538
    :cond_1
    iget-object v8, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->centerViewLayout:Landroid/view/ViewGroup;

    invoke-virtual {v8, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 519
    .end local v3           #name:Landroid/widget/TextView;
    .end local v4           #role:Landroid/widget/TextView;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 542
    .end local v1           #item:Lcom/android/music/common/richinfo/RichInformationData$Credit;
    :cond_3
    iget-object v8, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->imageButtonPage:Landroid/widget/Button;

    const-string v9, "6/7"

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 543
    return-void
.end method

.method private createDiscographyView()V
    .locals 26

    .prologue
    .line 546
    const/16 v20, 0x4

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/common/richinfo/RichInformationMainActivity;->currentPage:I

    .line 548
    const/4 v15, 0x0

    .line 549
    .local v15, subtitleLayout:Landroid/widget/RelativeLayout;
    const-string v20, "layout_inflater"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/LayoutInflater;

    .line 551
    .local v18, vi:Landroid/view/LayoutInflater;
    const v20, 0x7f030034

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    .end local v15           #subtitleLayout:Landroid/widget/RelativeLayout;
    check-cast v15, Landroid/widget/RelativeLayout;

    .line 554
    .restart local v15       #subtitleLayout:Landroid/widget/RelativeLayout;
    const v20, 0x7f0c0120

    move-object v0, v15

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 556
    .local v16, subtitleView:Landroid/widget/TextView;
    const v20, 0x7f0a0066

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->centerViewLayout:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 559
    const/4 v12, 0x0

    .line 560
    .local v12, itemLayout:Landroid/view/View;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->parsedData:Lcom/android/music/common/richinfo/RichInformationData;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationData;->performerDetailInfo:Lcom/android/music/common/richinfo/RichInformationData$PerformerDetailInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationData$PerformerDetailInfo;->albums:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move v0, v8

    move/from16 v1, v20

    if-ge v0, v1, :cond_6

    .line 561
    const-string v20, "layout_inflater"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    .end local v18           #vi:Landroid/view/LayoutInflater;
    check-cast v18, Landroid/view/LayoutInflater;

    .line 562
    .restart local v18       #vi:Landroid/view/LayoutInflater;
    const v20, 0x7f03002e

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 563
    const/4 v11, 0x0

    .line 564
    .local v11, item:Lcom/android/music/common/richinfo/RichInformationData$AlbumInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->parsedData:Lcom/android/music/common/richinfo/RichInformationData;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationData;->performerDetailInfo:Lcom/android/music/common/richinfo/RichInformationData$PerformerDetailInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationData$PerformerDetailInfo;->albums:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #item:Lcom/android/music/common/richinfo/RichInformationData$AlbumInfo;
    check-cast v11, Lcom/android/music/common/richinfo/RichInformationData$AlbumInfo;

    .line 566
    .restart local v11       #item:Lcom/android/music/common/richinfo/RichInformationData$AlbumInfo;
    if-eqz v11, :cond_4

    .line 567
    const v20, 0x7f0c0108

    move-object v0, v12

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 569
    .local v3, albumart:Landroid/widget/ImageView;
    const v20, 0x7f0c0109

    move-object v0, v12

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 571
    .local v17, title:Landroid/widget/TextView;
    const v20, 0x7f0c010a

    move-object v0, v12

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 573
    .local v19, year:Landroid/widget/TextView;
    const v20, 0x7f0c010b

    move-object v0, v12

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    .line 576
    .local v14, rating:Landroid/widget/ImageView;
    if-eqz v17, :cond_0

    .line 577
    move-object v0, v11

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationData$AlbumInfo;->title:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 578
    const/16 v20, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 584
    :cond_0
    if-eqz v3, :cond_4

    .line 585
    const/4 v9, 0x0

    .line 586
    .local v9, in:Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 588
    .local v5, bm:Landroid/graphics/Bitmap;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->parsedData:Lcom/android/music/common/richinfo/RichInformationData;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationData;->performerDetailInfo:Lcom/android/music/common/richinfo/RichInformationData$PerformerDetailInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationData$PerformerDetailInfo;->albums:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/music/common/richinfo/RichInformationData$AlbumInfo;

    move-object v0, v4

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationData$AlbumInfo;->artwork:Lcom/android/music/common/richinfo/RichInformationData$ArtworkInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationData$ArtworkInfo;->artwork:Ljava/lang/String;

    move-object v4, v0

    .line 592
    .local v4, artwork:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 593
    invoke-static {v4}, Lcom/android/music/common/util/Base64Decoder;->getDecodedString(Ljava/lang/String;)[B

    move-result-object v6

    .line 595
    .local v6, decodedString:[B
    if-eqz v6, :cond_1

    .line 596
    new-instance v10, Ljava/io/ByteArrayInputStream;

    invoke-direct {v10, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 597
    .end local v9           #in:Ljava/io/InputStream;
    .local v10, in:Ljava/io/InputStream;
    :try_start_1
    new-instance v13, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v13}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 598
    .local v13, mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    const/16 v20, 0x2

    move/from16 v0, v20

    move-object v1, v13

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 599
    const/16 v20, 0x74

    move/from16 v0, v20

    move-object v1, v13

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 600
    const/16 v20, 0x74

    move/from16 v0, v20

    move-object v1, v13

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 602
    const/16 v20, 0x0

    move-object v0, v10

    move-object/from16 v1, v20

    move-object v2, v13

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v5

    move-object v9, v10

    .line 610
    .end local v6           #decodedString:[B
    .end local v10           #in:Ljava/io/InputStream;
    .end local v13           #mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    .restart local v9       #in:Ljava/io/InputStream;
    :cond_1
    if-eqz v9, :cond_2

    .line 612
    :try_start_2
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 619
    :cond_2
    :goto_1
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 621
    if-eqz v14, :cond_3

    .line 622
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-direct {v0, v1}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->getRatingDrawableId(Lcom/android/music/common/richinfo/RichInformationData$AlbumInfo;)I

    move-result v20

    move-object v0, v14

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 625
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->centerViewLayout:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 560
    .end local v3           #albumart:Landroid/widget/ImageView;
    .end local v4           #artwork:Ljava/lang/String;
    .end local v5           #bm:Landroid/graphics/Bitmap;
    .end local v9           #in:Ljava/io/InputStream;
    .end local v14           #rating:Landroid/widget/ImageView;
    .end local v17           #title:Landroid/widget/TextView;
    .end local v19           #year:Landroid/widget/TextView;
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 613
    .restart local v3       #albumart:Landroid/widget/ImageView;
    .restart local v4       #artwork:Ljava/lang/String;
    .restart local v5       #bm:Landroid/graphics/Bitmap;
    .restart local v9       #in:Ljava/io/InputStream;
    .restart local v14       #rating:Landroid/widget/ImageView;
    .restart local v17       #title:Landroid/widget/TextView;
    .restart local v19       #year:Landroid/widget/TextView;
    :catch_0
    move-exception v7

    .line 614
    .local v7, e:Ljava/io/IOException;
    invoke-static/range {p0 .. p0}, Lcom/android/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 615
    const-string v20, "MpRichInfo"

    const-string v21, "fail to read image."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    const-string v20, "MpRichInfo"

    const-string v21, "IOException occured 2 :%s"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 606
    .end local v4           #artwork:Ljava/lang/String;
    .end local v7           #e:Ljava/io/IOException;
    :catch_1
    move-exception v20

    move-object/from16 v7, v20

    .line 607
    .local v7, e:Ljava/lang/OutOfMemoryError;
    :goto_2
    :try_start_3
    const-string v20, "MpRichInfo"

    const-string v21, "Memory allocation failed getArtwork:index:%d"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 610
    .end local v7           #e:Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v20

    :goto_3
    if-eqz v9, :cond_5

    .line 612
    :try_start_4
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 619
    :cond_5
    :goto_4
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    throw v20

    .line 613
    :catch_2
    move-exception v7

    .line 614
    .local v7, e:Ljava/io/IOException;
    invoke-static/range {p0 .. p0}, Lcom/android/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 615
    const-string v21, "MpRichInfo"

    const-string v22, "fail to read image."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    const-string v21, "MpRichInfo"

    const-string v22, "IOException occured 2 :%s"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 629
    .end local v3           #albumart:Landroid/widget/ImageView;
    .end local v5           #bm:Landroid/graphics/Bitmap;
    .end local v7           #e:Ljava/io/IOException;
    .end local v9           #in:Ljava/io/InputStream;
    .end local v11           #item:Lcom/android/music/common/richinfo/RichInformationData$AlbumInfo;
    .end local v14           #rating:Landroid/widget/ImageView;
    .end local v17           #title:Landroid/widget/TextView;
    .end local v19           #year:Landroid/widget/TextView;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->imageButtonPage:Landroid/widget/Button;

    move-object/from16 v20, v0

    const-string v21, "5/7"

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 631
    return-void

    .line 610
    .restart local v3       #albumart:Landroid/widget/ImageView;
    .restart local v4       #artwork:Ljava/lang/String;
    .restart local v5       #bm:Landroid/graphics/Bitmap;
    .restart local v6       #decodedString:[B
    .restart local v10       #in:Ljava/io/InputStream;
    .restart local v11       #item:Lcom/android/music/common/richinfo/RichInformationData$AlbumInfo;
    .restart local v14       #rating:Landroid/widget/ImageView;
    .restart local v17       #title:Landroid/widget/TextView;
    .restart local v19       #year:Landroid/widget/TextView;
    :catchall_1
    move-exception v20

    move-object v9, v10

    .end local v10           #in:Ljava/io/InputStream;
    .restart local v9       #in:Ljava/io/InputStream;
    goto :goto_3

    .line 606
    .end local v9           #in:Ljava/io/InputStream;
    .restart local v10       #in:Ljava/io/InputStream;
    :catch_3
    move-exception v20

    move-object/from16 v7, v20

    move-object v9, v10

    .end local v10           #in:Ljava/io/InputStream;
    .restart local v9       #in:Ljava/io/InputStream;
    goto :goto_2
.end method

.method private createLyricView()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 692
    const/4 v5, 0x1

    iput v5, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->currentPage:I

    .line 693
    const/4 v2, 0x0

    .line 694
    .local v2, subtitleLayout:Landroid/widget/RelativeLayout;
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 696
    .local v4, vi:Landroid/view/LayoutInflater;
    const v5, 0x7f030034

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .end local v2           #subtitleLayout:Landroid/widget/RelativeLayout;
    check-cast v2, Landroid/widget/RelativeLayout;

    .line 699
    .restart local v2       #subtitleLayout:Landroid/widget/RelativeLayout;
    const v5, 0x7f0c0120

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 701
    .local v3, subtitleView:Landroid/widget/TextView;
    const v5, 0x7f0a0063

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 702
    iget-object v5, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->centerViewLayout:Landroid/view/ViewGroup;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 704
    const/4 v0, 0x0

    .line 705
    .local v0, itemLayout:Landroid/view/View;
    const v5, 0x7f030033

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 707
    const v5, 0x7f0c011e

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 711
    .local v1, reviewContext:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->centerViewLayout:Landroid/view/ViewGroup;

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 712
    iget-object v5, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->imageButtonPage:Landroid/widget/Button;

    const-string v6, "2/7"

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 714
    return-void
.end method

.method private createMediaInfoView()V
    .locals 38

    .prologue
    .line 280
    const/16 v33, 0x6

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/common/richinfo/RichInformationMainActivity;->currentPage:I

    .line 281
    const/4 v6, 0x0

    .line 282
    .local v6, data:Lcom/android/music/common/richinfo/RichInformationMainActivity$MediaInfoData;
    const/16 v28, 0x0

    .line 283
    .local v28, subtitleLayout:Landroid/widget/RelativeLayout;
    const-string v33, "layout_inflater"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/view/LayoutInflater;

    .line 285
    .local v32, vi:Landroid/view/LayoutInflater;
    const v33, 0x7f030034

    const/16 v34, 0x0

    invoke-virtual/range {v32 .. v34}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v28

    .end local v28           #subtitleLayout:Landroid/widget/RelativeLayout;
    check-cast v28, Landroid/widget/RelativeLayout;

    .line 288
    .restart local v28       #subtitleLayout:Landroid/widget/RelativeLayout;
    const v33, 0x7f0c0120

    move-object/from16 v0, v28

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/TextView;

    .line 290
    .local v29, subtitleView:Landroid/widget/TextView;
    const/16 v33, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 291
    const v33, 0x7f0a0068

    move-object/from16 v0, v29

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->centerViewLayout:Landroid/view/ViewGroup;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->meta:Lcom/android/music/common/data/MediaMetadata;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/music/common/data/MediaMetadata;->albumImagePath:Ljava/lang/String;

    move-object/from16 v33, v0

    if-eqz v33, :cond_0

    .line 295
    const/4 v3, 0x0

    .line 296
    .local v3, albumartLayout:Landroid/widget/LinearLayout;
    const v33, 0x7f03002b

    const/16 v34, 0x0

    invoke-virtual/range {v32 .. v34}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .end local v3           #albumartLayout:Landroid/widget/LinearLayout;
    check-cast v3, Landroid/widget/LinearLayout;

    .line 297
    .restart local v3       #albumartLayout:Landroid/widget/LinearLayout;
    const v33, 0x7f0c0101

    move-object v0, v3

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 298
    .local v4, albumartView:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->albumartBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v33, v0

    move-object v0, v4

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->centerViewLayout:Landroid/view/ViewGroup;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 302
    .end local v3           #albumartLayout:Landroid/widget/LinearLayout;
    .end local v4           #albumartView:Landroid/widget/ImageView;
    :cond_0
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 303
    .local v17, mediaInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/music/common/richinfo/RichInformationMainActivity$MediaInfoData;>;"
    new-instance v7, Ljava/text/DecimalFormat;

    const-string v33, "0.##"

    move-object v0, v7

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 305
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

    .line 306
    new-instance v6, Lcom/android/music/common/richinfo/RichInformationMainActivity$MediaInfoData;

    .end local v6           #data:Lcom/android/music/common/richinfo/RichInformationMainActivity$MediaInfoData;
    move-object v0, v6

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/common/richinfo/RichInformationMainActivity$MediaInfoData;-><init>(Lcom/android/music/common/richinfo/RichInformationMainActivity;)V

    .line 307
    .restart local v6       #data:Lcom/android/music/common/richinfo/RichInformationMainActivity$MediaInfoData;
    packed-switch v15, :pswitch_data_0

    .line 389
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->mediaInfoDataList:[Ljava/lang/String;

    move-object/from16 v33, v0

    aget-object v33, v33, v15

    move-object/from16 v0, v33

    move-object v1, v6

    iput-object v0, v1, Lcom/android/music/common/richinfo/RichInformationMainActivity$MediaInfoData;->title:Ljava/lang/String;

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->mediaInfoDataStringId:[I

    move-object/from16 v33, v0

    aget v33, v33, v15

    move/from16 v0, v33

    move-object v1, v6

    iput v0, v1, Lcom/android/music/common/richinfo/RichInformationMainActivity$MediaInfoData;->textId:I

    .line 392
    move-object/from16 v0, v17

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    :cond_2
    :pswitch_0
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 309
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->meta:Lcom/android/music/common/data/MediaMetadata;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/music/common/data/MediaMetadata;->artist:Ljava/lang/String;

    move-object/from16 v33, v0

    if-eqz v33, :cond_2

    .line 311
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

    .line 314
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->meta:Lcom/android/music/common/data/MediaMetadata;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/music/common/data/MediaMetadata;->title:Ljava/lang/String;

    move-object/from16 v33, v0

    if-eqz v33, :cond_2

    .line 316
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

    .line 319
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->meta:Lcom/android/music/common/data/MediaMetadata;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/music/common/data/MediaMetadata;->album:Ljava/lang/String;

    move-object/from16 v33, v0

    if-eqz v33, :cond_2

    .line 321
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

    .line 324
    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->duration:I

    move/from16 v33, v0

    const/16 v34, 0x1

    invoke-static/range {v33 .. v34}, Lcom/android/music/common/data/MediaMetadata;->getTimeString(IZ)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    move-object v1, v6

    iput-object v0, v1, Lcom/android/music/common/richinfo/RichInformationMainActivity$MediaInfoData;->context:Ljava/lang/String;

    goto/16 :goto_1

    .line 327
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->meta:Lcom/android/music/common/data/MediaMetadata;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/music/common/data/MediaMetadata;->genre:Ljava/lang/String;

    move-object/from16 v33, v0

    if-eqz v33, :cond_2

    .line 329
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

    .line 340
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->meta:Lcom/android/music/common/data/MediaMetadata;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/music/common/data/MediaMetadata;->year:Ljava/lang/String;

    move-object/from16 v33, v0

    if-eqz v33, :cond_2

    .line 342
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

    .line 349
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->meta:Lcom/android/music/common/data/MediaMetadata;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/music/common/data/MediaMetadata;->track:Ljava/lang/String;

    move-object/from16 v33, v0

    if-eqz v33, :cond_2

    .line 351
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

    .line 358
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->meta:Lcom/android/music/common/data/MediaMetadata;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/music/common/data/MediaMetadata;->filetype:Ljava/lang/String;

    move-object/from16 v33, v0

    if-eqz v33, :cond_2

    .line 360
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

    .line 367
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->meta:Lcom/android/music/common/data/MediaMetadata;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/music/common/data/MediaMetadata;->size:Ljava/lang/String;

    move-object/from16 v33, v0

    if-eqz v33, :cond_2

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->meta:Lcom/android/music/common/data/MediaMetadata;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/music/common/data/MediaMetadata;->size:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    .line 370
    .local v27, sizeValue:I
    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v21, v0

    .line 372
    .local v21, result:D
    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v33, v0

    const-wide/high16 v35, 0x4130

    div-double v21, v33, v35

    const-wide/16 v33, 0x0

    cmpl-double v33, v21, v33

    if-lez v33, :cond_3

    .line 373
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

    .line 374
    :cond_3
    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v33, v0

    const-wide/high16 v35, 0x4090

    div-double v21, v33, v35

    const-wide/16 v33, 0x0

    cmpl-double v33, v21, v33

    if-lez v33, :cond_4

    .line 375
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

    .line 377
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

    .line 381
    .end local v21           #result:D
    .end local v27           #sizeValue:I
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->mPlayingUri:Landroid/net/Uri;

    move-object/from16 v33, v0

    if-eqz v33, :cond_1

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->mMusicDB:Lcom/android/music/common/data/MusicDB;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->mPlayingUri:Landroid/net/Uri;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Lcom/android/music/common/data/MusicDB;->getAudioFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v16

    .line 383
    .local v16, location:Ljava/lang/String;
    if-eqz v16, :cond_2

    .line 385
    move-object/from16 v0, v16

    move-object v1, v6

    iput-object v0, v1, Lcom/android/music/common/richinfo/RichInformationMainActivity$MediaInfoData;->context:Ljava/lang/String;

    goto/16 :goto_1

    .line 395
    .end local v16           #location:Ljava/lang/String;
    :cond_5
    const/4 v14, 0x0

    .line 396
    .local v14, itemLayout:Landroid/view/View;
    const/4 v12, 0x0

    .local v12, i:I
    :goto_2
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v33

    move v0, v12

    move/from16 v1, v33

    if-ge v0, v1, :cond_9

    .line 398
    const v33, 0x7f03002d

    const/16 v34, 0x0

    invoke-virtual/range {v32 .. v34}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 399
    move-object/from16 v0, v17

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/music/common/richinfo/RichInformationMainActivity$MediaInfoData;

    .line 401
    .local v13, item:Lcom/android/music/common/richinfo/RichInformationMainActivity$MediaInfoData;
    if-eqz v13, :cond_8

    .line 402
    const v33, 0x7f0c0105

    move-object v0, v14

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    .line 404
    .local v30, title:Landroid/widget/TextView;
    const v33, 0x7f0c0106

    move-object v0, v14

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 406
    .local v5, context:Landroid/widget/TextView;
    if-eqz v5, :cond_6

    .line 407
    const/16 v33, 0x1

    move-object v0, v5

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 408
    move-object v0, v13

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationMainActivity$MediaInfoData;->context:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object v0, v5

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    :cond_6
    if-eqz v30, :cond_7

    .line 412
    const/16 v33, 0x1

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 413
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

    .line 416
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->centerViewLayout:Landroid/view/ViewGroup;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 396
    .end local v5           #context:Landroid/widget/TextView;
    .end local v30           #title:Landroid/widget/TextView;
    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 421
    .end local v13           #item:Lcom/android/music/common/richinfo/RichInformationMainActivity$MediaInfoData;
    :cond_9
    const/4 v11, 0x0

    .line 422
    .local v11, filaPath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->mPlayingUri:Landroid/net/Uri;

    move-object/from16 v33, v0

    if-eqz v33, :cond_a

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->mMusicDB:Lcom/android/music/common/data/MusicDB;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->mPlayingUri:Landroid/net/Uri;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Lcom/android/music/common/data/MusicDB;->getAudioFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v11

    .line 425
    :cond_a
    if-eqz v11, :cond_10

    .line 427
    new-instance v9, Lcom/android/music/common/manager/MusicDrmManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v33

    move-object v0, v9

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/music/common/manager/MusicDrmManager;-><init>(Landroid/content/Context;)V

    .line 429
    .local v9, drmManager:Lcom/android/music/common/manager/MusicDrmManager;
    :try_start_0
    invoke-virtual {v9, v11}, Lcom/android/music/common/manager/MusicDrmManager;->IsDrmFile(Ljava/lang/String;)Z

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/music/common/richinfo/RichInformationMainActivity;->bIsDrmFile:Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 434
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->bIsDrmFile:Z

    move/from16 v33, v0

    if-eqz v33, :cond_10

    .line 436
    invoke-virtual {v9}, Lcom/android/music/common/manager/MusicDrmManager;->getOptionInfo()Landroid/drm/mobile2/Drm2Options;

    move-result-object v18

    .line 437
    .local v18, option:Landroid/drm/mobile2/Drm2Options;
    if-eqz v18, :cond_b

    move-object/from16 v0, v18

    iget-boolean v0, v0, Landroid/drm/mobile2/Drm2Options;->bSendAs:Z

    move/from16 v33, v0

    if-nez v33, :cond_b

    .line 438
    const v33, 0x7f03002d

    const/16 v34, 0x0

    invoke-virtual/range {v32 .. v34}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 439
    const v33, 0x7f0c0105

    move-object v0, v14

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    .line 440
    .restart local v30       #title:Landroid/widget/TextView;
    const v33, 0x7f0c0106

    move-object v0, v14

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 442
    .restart local v5       #context:Landroid/widget/TextView;
    const v33, 0x7f0a00a1

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 443
    const v33, 0x7f0a00a0

    move-object v0, v5

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->centerViewLayout:Landroid/view/ViewGroup;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 448
    .end local v5           #context:Landroid/widget/TextView;
    .end local v30           #title:Landroid/widget/TextView;
    :cond_b
    invoke-virtual {v9}, Lcom/android/music/common/manager/MusicDrmManager;->getDetailRightsPermission()Ljava/util/ArrayList;

    move-result-object v8

    .line 449
    .local v8, drmInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;>;"
    if-eqz v8, :cond_10

    .line 450
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 452
    .local v20, permissionCount:I
    if-lez v20, :cond_10

    .line 455
    const v33, 0x7f030034

    const/16 v34, 0x0

    invoke-virtual/range {v32 .. v34}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v28

    .end local v28           #subtitleLayout:Landroid/widget/RelativeLayout;
    check-cast v28, Landroid/widget/RelativeLayout;

    .line 457
    .restart local v28       #subtitleLayout:Landroid/widget/RelativeLayout;
    const v33, 0x7f0c0120

    move-object/from16 v0, v28

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v29

    .end local v29           #subtitleView:Landroid/widget/TextView;
    check-cast v29, Landroid/widget/TextView;

    .line 458
    .restart local v29       #subtitleView:Landroid/widget/TextView;
    const/16 v33, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 459
    const v33, 0x7f0a009f

    move-object/from16 v0, v29

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->centerViewLayout:Landroid/view/ViewGroup;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 462
    const/4 v12, 0x0

    :goto_4
    move v0, v12

    move/from16 v1, v20

    if-ge v0, v1, :cond_10

    .line 463
    const v33, 0x7f03002f

    const/16 v34, 0x0

    invoke-virtual/range {v32 .. v34}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 465
    const v33, 0x7f0c010d

    move-object v0, v14

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 466
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

    .line 467
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;

    .line 469
    .local v19, permission:Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->usesStr:I

    move/from16 v33, v0

    const/16 v34, -0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_c

    .line 470
    const v33, 0x7f0c010e

    move-object v0, v14

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    .line 471
    .local v25, roUsesTextView:Landroid/widget/TextView;
    const-string v33, "%s : %s"

    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    const v36, 0x7f0a009c

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

    .line 475
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

    .line 476
    const v33, 0x7f0c010f

    move-object v0, v14

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    .line 477
    .local v24, roTypeTextView:Landroid/widget/TextView;
    const/16 v31, 0x0

    .line 478
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

    .line 479
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

    .line 483
    :goto_5
    const-string v33, "%s : %s"

    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    const v36, 0x7f0a009d

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

    .line 486
    .end local v24           #roTypeTextView:Landroid/widget/TextView;
    .end local v31           #typeStr:Ljava/lang/String;
    :cond_d
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->validityStr:Ljava/lang/String;

    move-object/from16 v33, v0

    if-eqz v33, :cond_e

    .line 487
    const v33, 0x7f0c0110

    move-object v0, v14

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    .line 488
    .local v26, roValidityTextView:Landroid/widget/TextView;
    const-string v33, "%s : %s"

    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    const v36, 0x7f0a009e

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

    .line 491
    .end local v26           #roValidityTextView:Landroid/widget/TextView;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->centerViewLayout:Landroid/view/ViewGroup;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 462
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_4

    .line 430
    .end local v8           #drmInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;>;"
    .end local v18           #option:Landroid/drm/mobile2/Drm2Options;
    .end local v19           #permission:Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;
    .end local v20           #permissionCount:I
    .end local v23           #roCountTextView:Landroid/widget/TextView;
    :catch_0
    move-exception v33

    move-object/from16 v10, v33

    .line 431
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

    .line 481
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

    .line 498
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

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->imageButtonPage:Landroid/widget/Button;

    move-object/from16 v33, v0

    const-string v34, "7/7"

    invoke-virtual/range {v33 .. v34}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 502
    :goto_6
    return-void

    .line 501
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->imageButtonPage:Landroid/widget/Button;

    move-object/from16 v33, v0

    const/16 v34, 0x8

    invoke-virtual/range {v33 .. v34}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_6

    .line 307
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
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 717
    const/4 v5, 0x2

    iput v5, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->currentPage:I

    .line 718
    const/4 v2, 0x0

    .line 719
    .local v2, subtitleLayout:Landroid/widget/RelativeLayout;
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 721
    .local v4, vi:Landroid/view/LayoutInflater;
    const v5, 0x7f030034

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .end local v2           #subtitleLayout:Landroid/widget/RelativeLayout;
    check-cast v2, Landroid/widget/RelativeLayout;

    .line 724
    .restart local v2       #subtitleLayout:Landroid/widget/RelativeLayout;
    const v5, 0x7f0c0120

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 726
    .local v3, subtitleView:Landroid/widget/TextView;
    const v5, 0x7f0a0064

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 727
    iget-object v5, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->centerViewLayout:Landroid/view/ViewGroup;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 729
    const/4 v0, 0x0

    .line 731
    .local v0, itemLayout:Landroid/view/View;
    const v5, 0x7f030033

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 733
    const v5, 0x7f0c011e

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 735
    .local v1, reviewContext:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->parsedData:Lcom/android/music/common/richinfo/RichInformationData;

    iget-object v5, v5, Lcom/android/music/common/richinfo/RichInformationData;->albumDetailInfo:Lcom/android/music/common/richinfo/RichInformationData$AlbumDetailInfo;

    iget-object v5, v5, Lcom/android/music/common/richinfo/RichInformationData$AlbumDetailInfo;->review:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 737
    iget-object v5, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->centerViewLayout:Landroid/view/ViewGroup;

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 738
    iget-object v5, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->imageButtonPage:Landroid/widget/Button;

    const-string v6, "3/7"

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 740
    return-void
.end method

.method private createTrackListView()V
    .locals 13

    .prologue
    .line 634
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->currentPage:I

    .line 635
    const/4 v6, 0x0

    .line 636
    .local v6, subtitleLayout:Landroid/widget/RelativeLayout;
    const-string v11, "layout_inflater"

    invoke-virtual {p0, v11}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/LayoutInflater;

    .line 638
    .local v10, vi:Landroid/view/LayoutInflater;
    const v11, 0x7f030035

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .end local v6           #subtitleLayout:Landroid/widget/RelativeLayout;
    check-cast v6, Landroid/widget/RelativeLayout;

    .line 641
    .restart local v6       #subtitleLayout:Landroid/widget/RelativeLayout;
    const v11, 0x7f0c0122

    invoke-virtual {v6, v11}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 643
    .local v8, subtitleView:Landroid/widget/TextView;
    iget-object v11, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->parsedData:Lcom/android/music/common/richinfo/RichInformationData;

    iget-object v11, v11, Lcom/android/music/common/richinfo/RichInformationData;->albumDetailInfo:Lcom/android/music/common/richinfo/RichInformationData$AlbumDetailInfo;

    iget-object v11, v11, Lcom/android/music/common/richinfo/RichInformationData$AlbumDetailInfo;->albumSimpleInfo:Lcom/android/music/common/richinfo/RichInformationData$AlbumInfo;

    iget-object v11, v11, Lcom/android/music/common/richinfo/RichInformationData$AlbumInfo;->title:Ljava/lang/String;

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 644
    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setSelected(Z)V

    .line 645
    const v11, 0x7f0c0123

    invoke-virtual {v6, v11}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 647
    .local v7, subtitleRatingView:Landroid/widget/ImageView;
    iget-object v11, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->parsedData:Lcom/android/music/common/richinfo/RichInformationData;

    iget-object v11, v11, Lcom/android/music/common/richinfo/RichInformationData;->albumDetailInfo:Lcom/android/music/common/richinfo/RichInformationData$AlbumDetailInfo;

    iget-object v11, v11, Lcom/android/music/common/richinfo/RichInformationData$AlbumDetailInfo;->albumSimpleInfo:Lcom/android/music/common/richinfo/RichInformationData$AlbumInfo;

    invoke-direct {p0, v11}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->getRatingDrawableId(Lcom/android/music/common/richinfo/RichInformationData$AlbumInfo;)I

    move-result v11

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 650
    iget-object v11, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->centerViewLayout:Landroid/view/ViewGroup;

    invoke-virtual {v11, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 652
    const/4 v3, 0x0

    .line 654
    .local v3, itemLayout:Landroid/view/View;
    const/4 v4, 0x0

    .local v4, j:I
    :goto_0
    iget-object v11, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->parsedData:Lcom/android/music/common/richinfo/RichInformationData;

    iget-object v11, v11, Lcom/android/music/common/richinfo/RichInformationData;->albumDetailInfo:Lcom/android/music/common/richinfo/RichInformationData$AlbumDetailInfo;

    iget-object v11, v11, Lcom/android/music/common/richinfo/RichInformationData$AlbumDetailInfo;->discs:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v4, v11, :cond_5

    .line 655
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v11, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->parsedData:Lcom/android/music/common/richinfo/RichInformationData;

    iget-object v11, v11, Lcom/android/music/common/richinfo/RichInformationData;->albumDetailInfo:Lcom/android/music/common/richinfo/RichInformationData$AlbumDetailInfo;

    iget-object v11, v11, Lcom/android/music/common/richinfo/RichInformationData$AlbumDetailInfo;->discs:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/common/richinfo/RichInformationData$Disc;

    iget-object v11, v0, Lcom/android/music/common/richinfo/RichInformationData$Disc;->tracks:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v1, v11, :cond_4

    .line 657
    const-string v11, "layout_inflater"

    invoke-virtual {p0, v11}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #vi:Landroid/view/LayoutInflater;
    check-cast v10, Landroid/view/LayoutInflater;

    .line 658
    .restart local v10       #vi:Landroid/view/LayoutInflater;
    const v11, 0x7f030036

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 659
    const/4 v2, 0x0

    .line 660
    .local v2, item:Lcom/android/music/common/richinfo/RichInformationData$TrackInfo;
    iget-object v11, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->parsedData:Lcom/android/music/common/richinfo/RichInformationData;

    iget-object v11, v11, Lcom/android/music/common/richinfo/RichInformationData;->albumDetailInfo:Lcom/android/music/common/richinfo/RichInformationData$AlbumDetailInfo;

    iget-object v11, v11, Lcom/android/music/common/richinfo/RichInformationData$AlbumDetailInfo;->discs:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/common/richinfo/RichInformationData$Disc;

    iget-object v11, v0, Lcom/android/music/common/richinfo/RichInformationData$Disc;->tracks:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #item:Lcom/android/music/common/richinfo/RichInformationData$TrackInfo;
    check-cast v2, Lcom/android/music/common/richinfo/RichInformationData$TrackInfo;

    .line 662
    .restart local v2       #item:Lcom/android/music/common/richinfo/RichInformationData$TrackInfo;
    if-eqz v2, :cond_3

    .line 663
    const v11, 0x7f0c0125

    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 665
    .local v5, num:Landroid/widget/TextView;
    const v11, 0x7f0c0126

    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 667
    .local v9, title:Landroid/widget/TextView;
    const v11, 0x7f0c0127

    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 670
    .local v0, duration:Landroid/widget/TextView;
    if-eqz v5, :cond_0

    .line 671
    add-int/lit8 v11, v1, 0x1

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 674
    :cond_0
    if-eqz v9, :cond_1

    .line 675
    iget-object v11, v2, Lcom/android/music/common/richinfo/RichInformationData$TrackInfo;->title:Ljava/lang/String;

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 676
    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setSelected(Z)V

    .line 678
    :cond_1
    if-eqz v0, :cond_2

    .line 679
    iget v11, v2, Lcom/android/music/common/richinfo/RichInformationData$TrackInfo;->playLength:I

    mul-int/lit16 v11, v11, 0x3e8

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/android/music/common/data/MediaMetadata;->getTimeString(IZ)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 684
    :cond_2
    iget-object v11, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->centerViewLayout:Landroid/view/ViewGroup;

    invoke-virtual {v11, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 656
    .end local v0           #duration:Landroid/widget/TextView;
    .end local v5           #num:Landroid/widget/TextView;
    .end local v9           #title:Landroid/widget/TextView;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 654
    .end local v2           #item:Lcom/android/music/common/richinfo/RichInformationData$TrackInfo;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 688
    .end local v1           #i:I
    :cond_5
    iget-object v11, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->imageButtonPage:Landroid/widget/Button;

    const-string v12, "1/7"

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 689
    return-void
.end method

.method private doMakeView(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 910
    iget-object v0, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->centerViewLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 912
    if-nez p1, :cond_1

    .line 913
    invoke-direct {p0}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->createTrackListView()V

    .line 927
    :cond_0
    :goto_0
    return-void

    .line 914
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 915
    invoke-direct {p0}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->createLyricView()V

    goto :goto_0

    .line 916
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 917
    invoke-direct {p0}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->createReviewView()V

    goto :goto_0

    .line 918
    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 919
    invoke-direct {p0}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->createBiography()V

    goto :goto_0

    .line 920
    :cond_4
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    .line 921
    invoke-direct {p0}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->createDiscographyView()V

    goto :goto_0

    .line 922
    :cond_5
    const/4 v0, 0x5

    if-ne p1, v0, :cond_6

    .line 923
    invoke-direct {p0}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->createCreditView()V

    goto :goto_0

    .line 924
    :cond_6
    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 925
    invoke-direct {p0}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->createMediaInfoView()V

    goto :goto_0
.end method

.method private getRatingDrawableId(Lcom/android/music/common/richinfo/RichInformationData$AlbumInfo;)I
    .locals 2
    .parameter "item"

    .prologue
    .line 885
    iget v0, p1, Lcom/android/music/common/richinfo/RichInformationData$AlbumInfo;->rating:I

    .line 886
    .local v0, ratingCount:I
    if-gtz v0, :cond_1

    .line 887
    const/4 v0, 0x0

    .line 891
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->ratingDrawableResourceId:[I

    aget v1, v1, v0

    return v1

    .line 888
    :cond_1
    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 889
    const/4 v0, 0x5

    goto :goto_0
.end method

.method private initializeControls()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 248
    const v3, 0x7f0c0118

    invoke-virtual {p0, v3}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->imageButtonPage:Landroid/widget/Button;

    .line 249
    iget-object v3, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->imageButtonPage:Landroid/widget/Button;

    new-instance v4, Lcom/android/music/common/richinfo/RichInformationMainActivity$2;

    invoke-direct {v4, p0}, Lcom/android/music/common/richinfo/RichInformationMainActivity$2;-><init>(Lcom/android/music/common/richinfo/RichInformationMainActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    const v3, 0x7f0c0117

    invoke-virtual {p0, v3}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->centerViewLayout:Landroid/view/ViewGroup;

    .line 256
    iget-object v3, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->centerViewLayout:Landroid/view/ViewGroup;

    new-instance v4, Lcom/android/music/common/richinfo/RichInformationMainActivity$3;

    invoke-direct {v4, p0}, Lcom/android/music/common/richinfo/RichInformationMainActivity$3;-><init>(Lcom/android/music/common/richinfo/RichInformationMainActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 262
    const v3, 0x7f0c0112

    invoke-virtual {p0, v3}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 263
    .local v0, mAlbumArt:Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->albumartBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 264
    const v3, 0x7f0c0113

    invoke-virtual {p0, v3}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 265
    .local v2, mTitle:Landroid/widget/TextView;
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 266
    iget-object v3, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->meta:Lcom/android/music/common/data/MediaMetadata;

    iget-object v3, v3, Lcom/android/music/common/data/MediaMetadata;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    const v3, 0x7f0c0114

    invoke-virtual {p0, v3}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 268
    .local v1, mArtist:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->meta:Lcom/android/music/common/data/MediaMetadata;

    iget-object v3, v3, Lcom/android/music/common/data/MediaMetadata;->artist:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 271
    iget-boolean v3, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->bHasRichInfo:Z

    if-eqz v3, :cond_0

    .line 272
    invoke-direct {p0}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->createTrackListView()V

    .line 276
    :goto_0
    return-void

    .line 274
    :cond_0
    invoke-direct {p0}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->createMediaInfoView()V

    goto :goto_0
.end method

.method private processIntent()V
    .locals 4

    .prologue
    .line 874
    invoke-virtual {p0}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 875
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 876
    const-string v2, "playing_uri"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 877
    .local v0, extraData:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 878
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->mPlayingUri:Landroid/net/Uri;

    .line 879
    :cond_0
    const-string v2, "media.duration"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->duration:I

    .line 880
    const-string v2, "media.launch.mode"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->mLaunchMode:I

    .line 882
    .end local v0           #extraData:Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 137
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 141
    invoke-virtual {p0}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 144
    const v1, 0x7f030030

    invoke-virtual {p0, v1}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->setContentView(I)V

    .line 145
    const v1, 0x7f0c0115

    invoke-virtual {p0, v1}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->parentViewLayout:Landroid/view/ViewGroup;

    .line 147
    invoke-direct {p0}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->processIntent()V

    .line 148
    invoke-virtual {p0}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/music/common/data/MusicDB;->createInstance(Landroid/content/Context;)Lcom/android/music/common/data/MusicDB;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->mMusicDB:Lcom/android/music/common/data/MusicDB;

    .line 194
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 196
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 197
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 198
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 199
    iget-object v1, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 202
    iget-object v1, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->meta:Lcom/android/music/common/data/MediaMetadata;

    if-nez v1, :cond_0

    .line 203
    new-instance v1, Lcom/android/music/common/data/MediaMetadata;

    iget-object v2, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->mMusicDB:Lcom/android/music/common/data/MusicDB;

    invoke-direct {v1, v2}, Lcom/android/music/common/data/MediaMetadata;-><init>(Lcom/android/music/common/data/MusicDB;)V

    iput-object v1, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->meta:Lcom/android/music/common/data/MediaMetadata;

    .line 204
    :cond_0
    iget-object v1, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->meta:Lcom/android/music/common/data/MediaMetadata;

    iget-object v2, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->mPlayingUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/android/music/common/data/MediaMetadata;->parse(Landroid/net/Uri;)Z

    .line 206
    iget-object v1, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->meta:Lcom/android/music/common/data/MediaMetadata;

    iget-object v1, v1, Lcom/android/music/common/data/MediaMetadata;->albumImagePath:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 207
    iget-object v1, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->meta:Lcom/android/music/common/data/MediaMetadata;

    iget-object v1, v1, Lcom/android/music/common/data/MediaMetadata;->albumImagePath:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->albumartBitmap:Landroid/graphics/Bitmap;

    .line 210
    :cond_1
    iget-object v1, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->albumartBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    .line 211
    invoke-virtual {p0}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200bc

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->albumartBitmap:Landroid/graphics/Bitmap;

    .line 213
    :cond_2
    new-instance v1, Lcom/android/music/common/richinfo/RichInformationMainActivity$OnGestureListener;

    invoke-direct {v1, p0}, Lcom/android/music/common/richinfo/RichInformationMainActivity$OnGestureListener;-><init>(Lcom/android/music/common/richinfo/RichInformationMainActivity;)V

    iput-object v1, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->mGestureSweepListener:Lcom/android/music/common/richinfo/RichInformationMainActivity$OnGestureListener;

    .line 214
    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->mGestureSweepListener:Lcom/android/music/common/richinfo/RichInformationMainActivity$OnGestureListener;

    invoke-direct {v1, p0, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->mGestureDetector:Landroid/view/GestureDetector;

    .line 216
    invoke-direct {p0}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->initializeControls()V

    .line 218
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 10
    .parameter "optionPopupDialogId"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 769
    packed-switch p1, :pswitch_data_0

    move-object v6, v9

    .line 813
    :goto_0
    return-object v6

    .line 771
    :pswitch_0
    const/4 v6, 0x7

    new-array v5, v6, [Ljava/lang/CharSequence;

    const v6, 0x7f0a0062

    invoke-virtual {p0, v6}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x1

    const v7, 0x7f0a0063

    invoke-virtual {p0, v7}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const v7, 0x7f0a0064

    invoke-virtual {p0, v7}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const v7, 0x7f0a0065

    invoke-virtual {p0, v7}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const v7, 0x7f0a0066

    invoke-virtual {p0, v7}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const v7, 0x7f0a0067

    invoke-virtual {p0, v7}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const v7, 0x7f0a0068

    invoke-virtual {p0, v7}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 777
    .local v5, page:[Ljava/lang/CharSequence;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

    .line 779
    invoke-virtual {p0}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f030031

    invoke-virtual {v6, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 781
    .local v2, layoutview:Landroid/view/View;
    const v6, 0x7f0c0119

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    .line 784
    .local v3, listView:Landroid/widget/ListView;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 786
    .local v0, arrayListItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v6, v5

    if-ge v1, v6, :cond_0

    .line 787
    aget-object v6, v5, v1

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 786
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 790
    :cond_0
    new-instance v4, Lcom/android/music/common/richinfo/RichInformationMainActivity$MoveToAnotherPageDialogAdapter;

    const v6, 0x7f030032

    invoke-direct {v4, p0, p0, v6, v0}, Lcom/android/music/common/richinfo/RichInformationMainActivity$MoveToAnotherPageDialogAdapter;-><init>(Lcom/android/music/common/richinfo/RichInformationMainActivity;Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 792
    .local v4, listadapter:Lcom/android/music/common/richinfo/RichInformationMainActivity$MoveToAnotherPageDialogAdapter;
    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 794
    invoke-virtual {v3, v8}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 795
    new-instance v6, Lcom/android/music/common/richinfo/RichInformationMainActivity$4;

    invoke-direct {v6, p0}, Lcom/android/music/common/richinfo/RichInformationMainActivity$4;-><init>(Lcom/android/music/common/richinfo/RichInformationMainActivity;)V

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 807
    iget-object v6, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 809
    iget-object v6, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    goto/16 :goto_0

    .line 769
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 233
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 234
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 237
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

    .line 238
    const/4 v0, 0x4

    if-ne v0, p1, :cond_0

    .line 239
    invoke-virtual {p0}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->finish()V

    .line 240
    const v0, 0x7f04000a

    const v1, 0x7f04000b

    invoke-virtual {p0, v0, v1}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->overridePendingTransition(II)V

    .line 243
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 222
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 223
    invoke-static {p0}, Lcom/android/music/common/util/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    const v0, 0x7f0a00eb

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 225
    invoke-virtual {p0}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->finish()V

    .line 229
    :cond_0
    return-void
.end method
