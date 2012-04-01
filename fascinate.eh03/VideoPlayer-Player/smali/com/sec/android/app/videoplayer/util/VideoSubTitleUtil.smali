.class public Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;
.super Ljava/lang/Object;
.source "VideoSubTitleUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$SubTitleListAdapter;,
        Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$SubTitleItem;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

.field private static mSubTitleHandler:Landroid/os/Handler;

.field private static mSubtTitleFile:Ljava/lang/String;


# instance fields
.field private final ACTIVATION:I

.field private final CHINESE:Ljava/lang/String;

.field private final COLOR:I

.field private final ENGLISH:Ljava/lang/String;

.field private final FRENCH:Ljava/lang/String;

.field private final GERMAN:Ljava/lang/String;

.field private final ITALIAN:Ljava/lang/String;

.field private final JAPANESE:Ljava/lang/String;

.field private final KOREAN:Ljava/lang/String;

.field private final LANGUAGE:I

.field private final SIZE:I

.field private final SPANISH:Ljava/lang/String;

.field private final SYNC:I

.field private TAG:Ljava/lang/String;

.field private final UNKNOWN:Ljava/lang/String;

.field private mAdapter:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$SubTitleListAdapter;

.field private mContext:Landroid/content/Context;

.field private mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private mSubTitleHandle:J

.field private mSubtitleProcesser:Ljava/lang/Runnable;

.field private mWasPlaying:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubtTitleFile:Ljava/lang/String;

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubTitleHandler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "VideoSubTitleUtil"

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->TAG:Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mAdapter:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$SubTitleListAdapter;

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubTitleHandle:J

    .line 40
    iput-boolean v2, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mWasPlaying:Z

    .line 42
    iput v2, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->ACTIVATION:I

    .line 43
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->COLOR:I

    .line 44
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->SIZE:I

    .line 45
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->SYNC:I

    .line 46
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->LANGUAGE:I

    .line 48
    const-string v0, "ENGLISH"

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->ENGLISH:Ljava/lang/String;

    .line 49
    const-string v0, "CHINESE"

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->CHINESE:Ljava/lang/String;

    .line 50
    const-string v0, "JAPANESE"

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->JAPANESE:Ljava/lang/String;

    .line 51
    const-string v0, "KOREAN"

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->KOREAN:Ljava/lang/String;

    .line 52
    const-string v0, "SPANISH"

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->SPANISH:Ljava/lang/String;

    .line 53
    const-string v0, "ITALIAN"

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->ITALIAN:Ljava/lang/String;

    .line 54
    const-string v0, "FRENCH"

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->FRENCH:Ljava/lang/String;

    .line 55
    const-string v0, "GERMAN"

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->GERMAN:Ljava/lang/String;

    .line 56
    const-string v0, "UNKNOWN"

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->UNKNOWN:Ljava/lang/String;

    .line 293
    new-instance v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$1;-><init>(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubtitleProcesser:Ljava/lang/Runnable;

    .line 501
    new-instance v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$4;-><init>(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 60
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mContext:Landroid/content/Context;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubTitleHandle:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-wide p1, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubTitleHandle:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubtitleProcesser:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubTitleHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->resumeByDialog()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->createColorPopup()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->createSizePopup()V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->createLanguagePopup()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private createColorPopup()V
    .locals 4

    .prologue
    .line 593
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 595
    .local v1, popup:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f070073

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 596
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 598
    const/4 v0, 0x0

    .line 600
    .local v0, nSelectedID:I
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getSubTitleColorType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 614
    :goto_0
    const v2, 0x7f040007

    new-instance v3, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$6;

    invoke-direct {v3, p0}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$6;-><init>(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 655
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleSubDialog:Landroid/app/AlertDialog;

    .line 656
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleSubDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 657
    return-void

    .line 603
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 605
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 607
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 609
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 611
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 600
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static createInstance(Landroid/content/Context;)Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;
    .locals 1
    .parameter "context"

    .prologue
    .line 65
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mInstance:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mInstance:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    .line 68
    :cond_0
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mInstance:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    return-object v0
.end method

.method private createLanguagePopup()V
    .locals 10

    .prologue
    .line 661
    const/4 v2, 0x0

    .line 662
    .local v2, nSelectedID:I
    sget-object v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleLangArr:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 663
    .local v4, totalLang:I
    new-array v1, v4, [Ljava/lang/String;

    .line 665
    .local v1, lang:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 667
    sget-object v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleLangArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->getLanguageString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v0

    .line 669
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getSubTitleDefaultLanguage()J

    move-result-wide v6

    sget-object v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleLangArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    .line 670
    move v2, v0

    .line 665
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 673
    :cond_1
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 674
    .local v3, popup:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f07007d

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 675
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 677
    new-instance v5, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$7;

    invoke-direct {v5, p0}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$7;-><init>(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)V

    invoke-virtual {v3, v1, v2, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 709
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    sput-object v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleSubDialog:Landroid/app/AlertDialog;

    .line 710
    sget-object v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleSubDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 711
    return-void
.end method

.method private createSizePopup()V
    .locals 4

    .prologue
    .line 537
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 539
    .local v1, popup:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f070020

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 540
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 542
    const/4 v0, 0x0

    .line 544
    .local v0, nSelectedID:I
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getSubTitleSizeType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 554
    :goto_0
    const v2, 0x7f040006

    new-instance v3, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$5;

    invoke-direct {v3, p0}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$5;-><init>(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 587
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleSubDialog:Landroid/app/AlertDialog;

    .line 588
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleSubDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 589
    return-void

    .line 547
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 549
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 551
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 544
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static existFile(Ljava/lang/String;)Z
    .locals 2
    .parameter "subTitleFileName"

    .prologue
    .line 351
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 352
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method private getActivationString(Z)Ljava/lang/String;
    .locals 2
    .parameter "active"

    .prologue
    .line 800
    if-eqz p1, :cond_0

    .line 801
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mContext:Landroid/content/Context;

    const v1, 0x7f07005f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 803
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mContext:Landroid/content/Context;

    const v1, 0x7f070060

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getColorString(I)Ljava/lang/String;
    .locals 2
    .parameter "color"

    .prologue
    .line 818
    packed-switch p1, :pswitch_data_0

    .line 830
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mContext:Landroid/content/Context;

    const v1, 0x7f070074

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 821
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mContext:Landroid/content/Context;

    const v1, 0x7f070075

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 823
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mContext:Landroid/content/Context;

    const v1, 0x7f070076

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 825
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mContext:Landroid/content/Context;

    const v1, 0x7f070078

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 827
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mContext:Landroid/content/Context;

    const v1, 0x7f070077

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 818
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private getSizeString(I)Ljava/lang/String;
    .locals 2
    .parameter "color"

    .prologue
    .line 836
    packed-switch p1, :pswitch_data_0

    .line 844
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mContext:Landroid/content/Context;

    const v1, 0x7f07007a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 839
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mContext:Landroid/content/Context;

    const v1, 0x7f070079

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 841
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mContext:Landroid/content/Context;

    const v1, 0x7f07007b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 836
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getSyncString(J)Ljava/lang/String;
    .locals 4
    .parameter "sync"

    .prologue
    .line 808
    sget-wide v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleSyncInterval:J

    long-to-float v2, v2

    const/high16 v3, 0x447a

    div-float v0, v2, v3

    .line 810
    .local v0, a:F
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 811
    .local v1, str:Ljava/lang/StringBuilder;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 812
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mContext:Landroid/content/Context;

    const v3, 0x7f07007e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 813
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private pauseByDialog()V
    .locals 4

    .prologue
    .line 357
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v1, :cond_0

    .line 361
    :try_start_0
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v1}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 363
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v1}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->pause()V

    .line 364
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mWasPlaying:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    :cond_0
    :goto_0
    return-void

    .line 366
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 367
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 368
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException occured  1 :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private resumeByDialog()V
    .locals 4

    .prologue
    .line 375
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v1, :cond_0

    .line 379
    :try_start_0
    iget-boolean v1, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mWasPlaying:Z

    if-eqz v1, :cond_0

    .line 381
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mWasPlaying:Z

    .line 382
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v1}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->play()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 385
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 387
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 388
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException occured  1 :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateAdapter()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 715
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 717
    .local v0, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$SubTitleItem;>;"
    new-instance v1, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$SubTitleItem;

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mContext:Landroid/content/Context;

    const v3, 0x7f070072

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getSubTitleActivationFlag()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->getActivationString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v6, v2, v3}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$SubTitleItem;-><init>(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 721
    new-instance v1, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$SubTitleItem;

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mContext:Landroid/content/Context;

    const v3, 0x7f070073

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getSubTitleColorType()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->getColorString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v5, v2, v3}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$SubTitleItem;-><init>(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 722
    new-instance v1, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$SubTitleItem;

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mContext:Landroid/content/Context;

    const v3, 0x7f070020

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getSubTitleSizeType()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->getSizeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v5, v2, v3}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$SubTitleItem;-><init>(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 723
    new-instance v1, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$SubTitleItem;

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mContext:Landroid/content/Context;

    const v3, 0x7f07007c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-wide v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleSyncInterval:J

    invoke-direct {p0, v3, v4}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->getSyncString(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v5, v2, v3}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$SubTitleItem;-><init>(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 725
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleLangArr:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleLangArr:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v6, :cond_0

    .line 726
    new-instance v1, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$SubTitleItem;

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mContext:Landroid/content/Context;

    const v3, 0x7f07007d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getSubTitleDefaultLanguage()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->getLanguageString(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v5, v2, v3}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$SubTitleItem;-><init>(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 729
    :cond_0
    new-instance v1, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$SubTitleListAdapter;

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, v0}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$SubTitleListAdapter;-><init>(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mAdapter:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$SubTitleListAdapter;

    .line 730
    return-void
.end method


# virtual methods
.method public checkExistSubTitle(Ljava/lang/String;)Z
    .locals 18
    .parameter "filePath"

    .prologue
    .line 73
    if-nez p1, :cond_0

    .line 75
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->TAG:Ljava/lang/String;

    move-object v3, v0

    const-string v4, "checkExistSubTitle() - path is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const/4 v3, 0x0

    .line 137
    :goto_0
    return v3

    .line 79
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->TAG:Ljava/lang/String;

    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkExistSubTitle(). filePath : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 82
    .local v6, string_to_find:Ljava/lang/String;
    new-instance v17, Ljava/lang/String;

    invoke-direct/range {v17 .. v17}, Ljava/lang/String;-><init>()V

    .line 83
    .local v17, subtitleFileName:Ljava/lang/String;
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13}, Ljava/lang/String;-><init>()V

    .line 84
    .local v13, smiFileName:Ljava/lang/String;
    new-instance v14, Ljava/lang/String;

    invoke-direct {v14}, Ljava/lang/String;-><init>()V

    .line 85
    .local v14, srtFileName:Ljava/lang/String;
    new-instance v16, Ljava/lang/String;

    invoke-direct/range {v16 .. v16}, Ljava/lang/String;-><init>()V

    .line 87
    .local v16, subFileName:Ljava/lang/String;
    const/4 v11, 0x0

    .line 88
    .local v11, pos:I
    const/4 v10, 0x0

    .line 89
    .local v10, path_len:I
    const/4 v12, 0x0

    .line 90
    .local v12, slash_pos:I
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v15

    .line 92
    .local v15, stringToFindLength:I
    if-eqz p1, :cond_2

    .line 94
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v10

    .line 95
    const-string v3, "."

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    .line 97
    if-lez v11, :cond_1

    .line 99
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    sub-int v3, v10, v15

    if-ge v5, v3, :cond_1

    .line 101
    const/4 v4, 0x1

    const/4 v7, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 103
    move v12, v5

    .line 110
    .end local v5           #i:I
    :cond_1
    :try_start_0
    move-object/from16 v0, p1

    move v1, v12

    move v2, v11

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    .line 117
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".smi"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 118
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".srt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 119
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".sub"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 121
    invoke-static {v13}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->existFile(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 122
    const/4 v3, 0x1

    sput-boolean v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mHasSubtitle:Z

    .line 123
    sput-object v13, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubtTitleFile:Ljava/lang/String;

    .line 136
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->TAG:Ljava/lang/String;

    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkExistSubTitle() - VideoServiceUtil.mHasSubtitle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mHasSubtitle:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    sget-boolean v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mHasSubtitle:Z

    goto/16 :goto_0

    .line 99
    .restart local v5       #i:I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 111
    .end local v5           #i:I
    :catch_0
    move-exception v9

    .line 112
    .local v9, e:Ljava/lang/StringIndexOutOfBoundsException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->TAG:Ljava/lang/String;

    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkExistSubTitle() - slash_pos : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pos : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/4 v3, 0x0

    sput-boolean v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mHasSubtitle:Z

    .line 114
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 124
    .end local v9           #e:Ljava/lang/StringIndexOutOfBoundsException;
    :cond_4
    invoke-static {v14}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->existFile(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 125
    const/4 v3, 0x1

    sput-boolean v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mHasSubtitle:Z

    .line 126
    sput-object v14, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubtTitleFile:Ljava/lang/String;

    goto :goto_2

    .line 127
    :cond_5
    invoke-static/range {v16 .. v16}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->existFile(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 128
    const/4 v3, 0x1

    sput-boolean v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mHasSubtitle:Z

    .line 129
    sput-object v16, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubtTitleFile:Ljava/lang/String;

    goto :goto_2

    .line 131
    :cond_6
    const/4 v3, 0x0

    sput-boolean v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mHasSubtitle:Z

    .line 132
    const/4 v3, 0x0

    sput-object v3, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubtTitleFile:Ljava/lang/String;

    goto :goto_2
.end method

.method public createSubTitleSettingPopup(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 395
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->pauseByDialog()V

    .line 397
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mContext:Landroid/content/Context;

    .line 399
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->updateAdapter()V

    .line 401
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 402
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f07000b

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 403
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mAdapter:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$SubTitleListAdapter;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 404
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleDialog:Landroid/app/AlertDialog;

    .line 405
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 406
    .local v1, dialogList:Landroid/widget/ListView;
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 408
    new-instance v2, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$2;-><init>(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 466
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleDialog:Landroid/app/AlertDialog;

    new-instance v3, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$3;

    invoke-direct {v3, p0}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$3;-><init>(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 499
    return-void
.end method

.method public getCurrentSetLanguage(J)Ljava/lang/String;
    .locals 2
    .parameter "lang"

    .prologue
    .line 756
    const-wide/16 v0, 0x15c7

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 757
    const-string v0, "ENGLISH"

    .line 773
    :goto_0
    return-object v0

    .line 758
    :cond_0
    const-wide/16 v0, 0x690f

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 759
    const-string v0, "CHINESE"

    goto :goto_0

    .line 760
    :cond_1
    const-wide/16 v0, 0x2a0e

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    .line 761
    const-string v0, "JAPANESE"

    goto :goto_0

    .line 762
    :cond_2
    const-wide/16 v0, 0x1a45

    cmp-long v0, p1, v0

    if-nez v0, :cond_3

    .line 763
    const-string v0, "FRENCH"

    goto :goto_0

    .line 764
    :cond_3
    const-wide/16 v0, 0x2df2

    cmp-long v0, p1, v0

    if-nez v0, :cond_4

    .line 765
    const-string v0, "KOREAN"

    goto :goto_0

    .line 766
    :cond_4
    const-wide/16 v0, 0x1cb2

    cmp-long v0, p1, v0

    if-nez v0, :cond_5

    .line 767
    const-string v0, "GERMAN"

    goto :goto_0

    .line 768
    :cond_5
    const-wide/16 v0, 0x4e01

    cmp-long v0, p1, v0

    if-nez v0, :cond_6

    .line 769
    const-string v0, "SPANISH"

    goto :goto_0

    .line 770
    :cond_6
    const-wide/16 v0, 0x2681

    cmp-long v0, p1, v0

    if-nez v0, :cond_7

    .line 771
    const-string v0, "ITALIAN"

    goto :goto_0

    .line 773
    :cond_7
    const-string v0, "UNKNOWN"

    goto :goto_0
.end method

.method public getLanguageString(J)Ljava/lang/String;
    .locals 2
    .parameter "langID"

    .prologue
    .line 734
    const-wide/16 v0, 0x15c7

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 735
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mContext:Landroid/content/Context;

    const v1, 0x7f07007f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 751
    :goto_0
    return-object v0

    .line 736
    :cond_0
    const-wide/16 v0, 0x690f

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 737
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mContext:Landroid/content/Context;

    const v1, 0x7f070080

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 738
    :cond_1
    const-wide/16 v0, 0x2a0e

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    .line 739
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mContext:Landroid/content/Context;

    const v1, 0x7f070081

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 740
    :cond_2
    const-wide/16 v0, 0x1a45

    cmp-long v0, p1, v0

    if-nez v0, :cond_3

    .line 741
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mContext:Landroid/content/Context;

    const v1, 0x7f070083

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 742
    :cond_3
    const-wide/16 v0, 0x2df2

    cmp-long v0, p1, v0

    if-nez v0, :cond_4

    .line 743
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mContext:Landroid/content/Context;

    const v1, 0x7f070082

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 744
    :cond_4
    const-wide/16 v0, 0x1cb2

    cmp-long v0, p1, v0

    if-nez v0, :cond_5

    .line 745
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mContext:Landroid/content/Context;

    const v1, 0x7f070085

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 746
    :cond_5
    const-wide/16 v0, 0x4e01

    cmp-long v0, p1, v0

    if-nez v0, :cond_6

    .line 747
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mContext:Landroid/content/Context;

    const v1, 0x7f070086

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 748
    :cond_6
    const-wide/16 v0, 0x2681

    cmp-long v0, p1, v0

    if-nez v0, :cond_7

    .line 749
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mContext:Landroid/content/Context;

    const v1, 0x7f070084

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 751
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mContext:Landroid/content/Context;

    const v1, 0x7f07002f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public initSubTitle()Z
    .locals 31

    .prologue
    .line 181
    sget-object v4, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubtTitleFile:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->TAG:Ljava/lang/String;

    move-object v4, v0

    const-string v5, "initSubtitle() - mSubtTitleFile NULL"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/4 v4, 0x0

    .line 290
    :goto_0
    return v4

    .line 186
    :cond_0
    sget-object v4, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubtTitleFile:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubtTitleFile:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    int-to-long v5, v5

    invoke-static {v4, v5, v6}, Lcom/sec/android/app/videoplayer/activity/Native;->ARCSubtitleInit([BJ)J

    move-result-wide v4

    move-wide v0, v4

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubTitleHandle:J

    .line 188
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubTitleHandle:J

    move-wide v4, v0

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_1

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->TAG:Ljava/lang/String;

    move-object v4, v0

    const-string v5, "initSubtitle() - create mSubTitleHandle fail"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const/4 v4, 0x0

    goto :goto_0

    .line 193
    :cond_1
    const-wide/16 v22, 0x0

    .line 194
    .local v22, lLanguage:J
    const-wide/16 v6, 0x457

    .line 195
    .local v6, CfgType:J
    const-wide/16 v24, 0x0

    .line 196
    .local v24, lTrackIndex:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubTitleHandle:J

    move-wide v4, v0

    invoke-static {v4, v5}, Lcom/sec/android/app/videoplayer/activity/Native;->ARCSubtitleGetTrackNumber(J)I

    move-result v26

    .line 198
    .local v26, lTrackNum:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->TAG:Ljava/lang/String;

    move-object v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initSubtitle() - TrackNum : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    if-gtz v26, :cond_2

    .line 202
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubTitleHandle:J

    move-wide v4, v0

    invoke-static {v4, v5}, Lcom/sec/android/app/videoplayer/activity/Native;->ARCSubtitleUnInit(J)I

    .line 203
    const/4 v4, 0x0

    goto :goto_0

    .line 206
    :cond_2
    const-string v18, ""

    .line 207
    .local v18, default_lang:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getID()J

    move-result-wide v20

    .line 210
    .local v20, id:J
    sget-object v4, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    if-eqz v4, :cond_3

    .line 211
    sget-object v4, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    move-object v0, v4

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getSubTitleLanguage(J)Ljava/lang/String;

    move-result-object v18

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->TAG:Ljava/lang/String;

    move-object v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initSubtitle() - default setting languate : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_3
    if-nez v18, :cond_4

    .line 216
    const-string v18, "ENGLISH"

    .line 219
    :cond_4
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 221
    .local v30, subTitleLangArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/16 v19, 0x0

    .local v19, i:I
    :goto_1
    move/from16 v0, v19

    move/from16 v1, v26

    if-ge v0, v1, :cond_5

    .line 223
    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v24, v0

    .line 224
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubTitleHandle:J

    move-wide v4, v0

    move-wide v0, v4

    move-wide/from16 v2, v24

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/videoplayer/activity/Native;->ARCSubtitleGetTrackInfo_Language(JJ)J

    move-result-wide v22

    .line 226
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v30

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 229
    :cond_5
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_6

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->TAG:Ljava/lang/String;

    move-object v4, v0

    const-string v5, "initSubtitle() - The language array is null."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubTitleHandle:J

    move-wide v4, v0

    invoke-static {v4, v5}, Lcom/sec/android/app/videoplayer/activity/Native;->ARCSubtitleUnInit(J)I

    .line 233
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 237
    :cond_6
    const-wide/16 v8, 0x0

    .line 238
    .local v8, selected_langID:J
    const/16 v29, 0x0

    .line 240
    .local v29, selected_lang_trackIndex:I
    const/16 v19, 0x0

    :goto_2
    move/from16 v0, v19

    move/from16 v1, v26

    if-ge v0, v1, :cond_7

    .line 242
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, p0

    move-wide v1, v4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->getCurrentSetLanguage(J)Ljava/lang/String;

    move-result-object v27

    .line 243
    .local v27, lang:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->TAG:Ljava/lang/String;

    move-object v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initSubtitle() - find selected_langID. i ="

    .end local v8           #selected_langID:J
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", string: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->TAG:Ljava/lang/String;

    move-object v4, v0

    const-string v5, "initSubtitle() - find seleted language in DB value."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 249
    .restart local v8       #selected_langID:J
    move/from16 v29, v19

    .line 260
    .end local v27           #lang:Ljava/lang/String;
    :cond_7
    invoke-static {v8, v9}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->setSubTitleDefaultLanguage(J)V

    .line 261
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubTitleHandle:J

    move-wide v4, v0

    invoke-static/range {v4 .. v9}, Lcom/sec/android/app/videoplayer/activity/Native;->ARCSubtitleSetConfig(JJJ)I

    move-result v28

    .line 263
    .local v28, ret:I
    const/4 v4, -0x1

    move/from16 v0, v28

    move v1, v4

    if-ne v0, v1, :cond_9

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->TAG:Ljava/lang/String;

    move-object v4, v0

    const-string v5, "initSubtitle() - ARCSubtitleSetConfig fail"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubTitleHandle:J

    move-wide v4, v0

    invoke-static {v4, v5}, Lcom/sec/android/app/videoplayer/activity/Native;->ARCSubtitleUnInit(J)I

    .line 266
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 254
    .end local v8           #selected_langID:J
    .end local v28           #ret:I
    .restart local v27       #lang:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->TAG:Ljava/lang/String;

    move-object v4, v0

    const-string v5, "initSubtitle() - NOT find seleted language in DB value."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const/4 v4, 0x0

    move-object/from16 v0, v30

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 256
    .restart local v8       #selected_langID:J
    const/16 v29, 0x0

    .line 240
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_2

    .line 269
    .end local v27           #lang:Ljava/lang/String;
    .restart local v28       #ret:I
    :cond_9
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubTitleHandle:J

    move-wide v10, v0

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide v12, v0

    const-wide/16 v14, 0x0

    move-wide/from16 v16, v8

    invoke-static/range {v10 .. v17}, Lcom/sec/android/app/videoplayer/activity/Native;->ARCSubtitleSelectTrack(JJJJ)I

    move-result v28

    .line 271
    if-eqz v28, :cond_a

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->TAG:Ljava/lang/String;

    move-object v4, v0

    const-string v5, "initSubtitle() - ARCSubtitleSelectTrack fail"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubTitleHandle:J

    move-wide v4, v0

    invoke-static {v4, v5}, Lcom/sec/android/app/videoplayer/activity/Native;->ARCSubtitleUnInit(J)I

    .line 274
    const-wide/16 v4, 0x0

    move-wide v0, v4

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubTitleHandle:J

    .line 275
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 279
    :cond_a
    sget-object v4, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleLangArr:Ljava/util/ArrayList;

    if-eqz v4, :cond_c

    .line 280
    sget-object v4, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleLangArr:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 284
    :goto_3
    sput-object v30, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleLangArr:Ljava/util/ArrayList;

    .line 287
    sget-object v4, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    if-eqz v4, :cond_b

    .line 288
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->updateSyncTime()V

    .line 290
    :cond_b
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 282
    :cond_c
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleLangArr:Ljava/util/ArrayList;

    goto :goto_3
.end method

.method public pauseSubTitleProcessor()V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->TAG:Ljava/lang/String;

    const-string v1, "pauseSubTitleProcessor E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubTitleHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubtitleProcesser:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 152
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubTitleHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 153
    return-void
.end method

.method public startSubTitleProccessor()V
    .locals 4

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->TAG:Ljava/lang/String;

    const-string v1, "startSubTitleProccessor E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    sget-boolean v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mHasSubtitle:Z

    if-eqz v0, :cond_0

    .line 145
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubTitleHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubtitleProcesser:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 146
    :cond_0
    return-void
.end method

.method public stopSubTitleProcessor()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const-wide/16 v3, 0x0

    .line 157
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubTitleHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 159
    const/4 v1, 0x0

    sput-boolean v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mHasSubtitle:Z

    .line 160
    sput-wide v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleSyncInterval:J

    .line 162
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleLangArr:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 163
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleLangArr:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 165
    :cond_0
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getSubTitleView()Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;

    move-result-object v0

    .line 167
    .local v0, subTitleView:Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;
    if-eqz v0, :cond_1

    .line 168
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;->setVisibility(I)V

    .line 169
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;->updateSubTitle(Ljava/lang/String;)V

    .line 172
    :cond_1
    iget-wide v1, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubTitleHandle:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 173
    iget-wide v1, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubTitleHandle:J

    invoke-static {v1, v2}, Lcom/sec/android/app/videoplayer/activity/Native;->ARCSubtitleUnInit(J)I

    .line 175
    :cond_2
    iput-wide v3, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubTitleHandle:J

    .line 176
    sput-object v5, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubtTitleFile:Ljava/lang/String;

    .line 177
    return-void
.end method
