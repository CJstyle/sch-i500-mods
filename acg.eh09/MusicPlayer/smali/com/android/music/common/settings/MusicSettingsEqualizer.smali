.class public Lcom/android/music/common/settings/MusicSettingsEqualizer;
.super Landroid/app/Activity;
.source "MusicSettingsEqualizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;,
        Lcom/android/music/common/settings/MusicSettingsEqualizer$SettingsCustomEqOnClickListener;,
        Lcom/android/music/common/settings/MusicSettingsEqualizer$SettingsMenuOnClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mCheckBoxes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/CheckBox;",
            ">;"
        }
    .end annotation
.end field

.field private static mCheckedValue:I

.field public static final mEqualizerString:[I

.field private static mMenuLayouts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field public static mappingMenuArray:[I


# instance fields
.field private CUSTOM_MENU_INDEX:I

.field private beforeCustomEqArray:[I

.field customDialog:Landroid/app/AlertDialog;

.field private customEqArray:[I

.field private customEqString:Ljava/lang/String;

.field private mBeforeCheckedValue:I

.field private mBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mIsBubbleRunable:Z

.field private final mKillReceiver:Landroid/content/BroadcastReceiver;

.field private final mMediaReceiver:Landroid/content/BroadcastReceiver;

.field private mSettingEqToast:Landroid/widget/Toast;

.field private mToken:Lcom/android/music/common/util/MusicPlayerUtil$ServiceToken;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x9

    .line 63
    const-class v0, Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/music/common/settings/MusicSettingsEqualizer;->TAG:Ljava/lang/String;

    .line 79
    const/4 v0, 0x3

    sput v0, Lcom/android/music/common/settings/MusicSettingsEqualizer;->mCheckedValue:I

    .line 101
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/music/common/settings/MusicSettingsEqualizer;->mappingMenuArray:[I

    .line 108
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/music/common/settings/MusicSettingsEqualizer;->mEqualizerString:[I

    return-void

    .line 101
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x1t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x0t 0x8t 0x0t 0x0t
    .end array-data

    .line 108
    :array_1
    .array-data 0x4
        0x8t 0x0t 0xat 0x7ft
        0x5t 0x0t 0xat 0x7ft
        0x9t 0x0t 0xat 0x7ft
        0xat 0x0t 0xat 0x7ft
        0xbt 0x0t 0xat 0x7ft
        0xct 0x0t 0xat 0x7ft
        0xdt 0x0t 0xat 0x7ft
        0xet 0x0t 0xat 0x7ft
        0xft 0x0t 0xat 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 66
    iput-object v1, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer;->mContext:Landroid/content/Context;

    .line 67
    iput-object v1, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer;->mSettingEqToast:Landroid/widget/Toast;

    .line 85
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer;->mBeforeCheckedValue:I

    .line 86
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer;->beforeCustomEqArray:[I

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer;->CUSTOM_MENU_INDEX:I

    .line 92
    iput-object v1, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer;->customDialog:Landroid/app/AlertDialog;

    .line 94
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer;->customEqArray:[I

    .line 113
    new-instance v0, Lcom/android/music/common/settings/MusicSettingsEqualizer$1;

    invoke-direct {v0, p0}, Lcom/android/music/common/settings/MusicSettingsEqualizer$1;-><init>(Lcom/android/music/common/settings/MusicSettingsEqualizer;)V

    iput-object v0, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer;->mConnection:Landroid/content/ServiceConnection;

    .line 127
    new-instance v0, Lcom/android/music/common/settings/MusicSettingsEqualizer$2;

    invoke-direct {v0, p0}, Lcom/android/music/common/settings/MusicSettingsEqualizer$2;-><init>(Lcom/android/music/common/settings/MusicSettingsEqualizer;)V

    iput-object v0, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    .line 160
    new-instance v0, Lcom/android/music/common/settings/MusicSettingsEqualizer$3;

    invoke-direct {v0, p0}, Lcom/android/music/common/settings/MusicSettingsEqualizer$3;-><init>(Lcom/android/music/common/settings/MusicSettingsEqualizer;)V

    iput-object v0, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer;->mKillReceiver:Landroid/content/BroadcastReceiver;

    .line 697
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/android/music/common/settings/MusicSettingsEqualizer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/music/common/settings/MusicSettingsEqualizer;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer;->mSettingEqToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/music/common/settings/MusicSettingsEqualizer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer;->CUSTOM_MENU_INDEX:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/music/common/settings/MusicSettingsEqualizer;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer;->mSettingEqToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/music/common/settings/MusicSettingsEqualizer;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer;->mBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/music/common/settings/MusicSettingsEqualizer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer;->mIsBubbleRunable:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/music/common/settings/MusicSettingsEqualizer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer;->mIsBubbleRunable:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/music/common/settings/MusicSettingsEqualizer;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 61
    sget v0, Lcom/android/music/common/settings/MusicSettingsEqualizer;->mCheckedValue:I

    return v0
.end method

.method static synthetic access$302(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    sput p0, Lcom/android/music/common/settings/MusicSettingsEqualizer;->mCheckedValue:I

    return p0
.end method

.method static synthetic access$400()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/android/music/common/settings/MusicSettingsEqualizer;->mCheckBoxes:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/music/common/settings/MusicSettingsEqualizer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->setDisplayByValue()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/music/common/settings/MusicSettingsEqualizer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer;->mBeforeCheckedValue:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/music/common/settings/MusicSettingsEqualizer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer;->mBeforeCheckedValue:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/music/common/settings/MusicSettingsEqualizer;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer;->customEqString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/music/common/settings/MusicSettingsEqualizer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer;->customEqString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/music/common/settings/MusicSettingsEqualizer;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer;->customEqArray:[I

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/music/common/settings/MusicSettingsEqualizer;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer;->beforeCustomEqArray:[I

    return-object v0
.end method

.method private equalizerEventInit()V
    .locals 3

    .prologue
    .line 351
    const/4 v0, 0x0

    .line 353
    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/android/music/common/settings/MusicSettingsEqualizer;->mMenuLayouts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 354
    sget-object v1, Lcom/android/music/common/settings/MusicSettingsEqualizer;->mMenuLayouts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/music/common/settings/MusicSettingsEqualizer$SettingsMenuOnClickListener;

    invoke-direct {v2, p0, v0}, Lcom/android/music/common/settings/MusicSettingsEqualizer$SettingsMenuOnClickListener;-><init>(Lcom/android/music/common/settings/MusicSettingsEqualizer;I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 359
    :cond_0
    sget-object v1, Lcom/android/music/common/settings/MusicSettingsEqualizer;->mMenuLayouts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/music/common/settings/MusicSettingsEqualizer$SettingsCustomEqOnClickListener;

    invoke-direct {v2, p0, v0}, Lcom/android/music/common/settings/MusicSettingsEqualizer$SettingsCustomEqOnClickListener;-><init>(Lcom/android/music/common/settings/MusicSettingsEqualizer;I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    return-void
.end method

.method private equalizerLayoutInit()V
    .locals 2

    .prologue
    .line 319
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/music/common/settings/MusicSettingsEqualizer;->mMenuLayouts:Ljava/util/ArrayList;

    .line 320
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/music/common/settings/MusicSettingsEqualizer;->mCheckBoxes:Ljava/util/ArrayList;

    .line 322
    sget-object v1, Lcom/android/music/common/settings/MusicSettingsEqualizer;->mMenuLayouts:Ljava/util/ArrayList;

    const v0, 0x7f0c00c5

    invoke-virtual {p0, v0}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    sget-object v1, Lcom/android/music/common/settings/MusicSettingsEqualizer;->mCheckBoxes:Ljava/util/ArrayList;

    const v0, 0x7f0c00c7

    invoke-virtual {p0, v0}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    sget-object v1, Lcom/android/music/common/settings/MusicSettingsEqualizer;->mMenuLayouts:Ljava/util/ArrayList;

    const v0, 0x7f0c00c8

    invoke-virtual {p0, v0}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    sget-object v1, Lcom/android/music/common/settings/MusicSettingsEqualizer;->mCheckBoxes:Ljava/util/ArrayList;

    const v0, 0x7f0c00ca

    invoke-virtual {p0, v0}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    sget-object v1, Lcom/android/music/common/settings/MusicSettingsEqualizer;->mMenuLayouts:Ljava/util/ArrayList;

    const v0, 0x7f0c00cb

    invoke-virtual {p0, v0}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    sget-object v1, Lcom/android/music/common/settings/MusicSettingsEqualizer;->mCheckBoxes:Ljava/util/ArrayList;

    const v0, 0x7f0c00cd

    invoke-virtual {p0, v0}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    sget-object v1, Lcom/android/music/common/settings/MusicSettingsEqualizer;->mMenuLayouts:Ljava/util/ArrayList;

    const v0, 0x7f0c00ce

    invoke-virtual {p0, v0}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    sget-object v1, Lcom/android/music/common/settings/MusicSettingsEqualizer;->mCheckBoxes:Ljava/util/ArrayList;

    const v0, 0x7f0c00d0

    invoke-virtual {p0, v0}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    sget-object v1, Lcom/android/music/common/settings/MusicSettingsEqualizer;->mMenuLayouts:Ljava/util/ArrayList;

    const v0, 0x7f0c00d1

    invoke-virtual {p0, v0}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    sget-object v1, Lcom/android/music/common/settings/MusicSettingsEqualizer;->mCheckBoxes:Ljava/util/ArrayList;

    const v0, 0x7f0c00d3

    invoke-virtual {p0, v0}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    sget-object v1, Lcom/android/music/common/settings/MusicSettingsEqualizer;->mMenuLayouts:Ljava/util/ArrayList;

    const v0, 0x7f0c00d4

    invoke-virtual {p0, v0}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    sget-object v1, Lcom/android/music/common/settings/MusicSettingsEqualizer;->mCheckBoxes:Ljava/util/ArrayList;

    const v0, 0x7f0c00d6

    invoke-virtual {p0, v0}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    sget-object v1, Lcom/android/music/common/settings/MusicSettingsEqualizer;->mMenuLayouts:Ljava/util/ArrayList;

    const v0, 0x7f0c00d7

    invoke-virtual {p0, v0}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    sget-object v1, Lcom/android/music/common/settings/MusicSettingsEqualizer;->mCheckBoxes:Ljava/util/ArrayList;

    const v0, 0x7f0c00d9

    invoke-virtual {p0, v0}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    sget-object v1, Lcom/android/music/common/settings/MusicSettingsEqualizer;->mMenuLayouts:Ljava/util/ArrayList;

    const v0, 0x7f0c00da

    invoke-virtual {p0, v0}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    sget-object v1, Lcom/android/music/common/settings/MusicSettingsEqualizer;->mCheckBoxes:Ljava/util/ArrayList;

    const v0, 0x7f0c00dc

    invoke-virtual {p0, v0}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    sget-object v1, Lcom/android/music/common/settings/MusicSettingsEqualizer;->mMenuLayouts:Ljava/util/ArrayList;

    const v0, 0x7f0c00dd

    invoke-virtual {p0, v0}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    sget-object v0, Lcom/android/music/common/settings/MusicSettingsEqualizer;->mCheckBoxes:Ljava/util/ArrayList;

    const v1, 0x7f0c00df

    invoke-virtual {p0, v1}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    return-void
.end method

.method private getCheckedValue()V
    .locals 1

    .prologue
    .line 301
    invoke-static {p0}, Lcom/android/music/common/util/MusicValueSaveController;->getEqualizer(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/android/music/common/settings/MusicSettingsEqualizer;->mCheckedValue:I

    .line 303
    return-void
.end method

.method private setDisplayByValue()V
    .locals 3

    .prologue
    .line 306
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/android/music/common/settings/MusicSettingsEqualizer;->mCheckBoxes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 307
    sget-object v1, Lcom/android/music/common/settings/MusicSettingsEqualizer;->mCheckBoxes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 306
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 308
    :cond_0
    sget-object v1, Lcom/android/music/common/settings/MusicSettingsEqualizer;->mCheckBoxes:Ljava/util/ArrayList;

    sget v2, Lcom/android/music/common/settings/MusicSettingsEqualizer;->mCheckedValue:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 313
    sget v1, Lcom/android/music/common/settings/MusicSettingsEqualizer;->mCheckedValue:I

    invoke-static {v1}, Lcom/android/music/common/util/MusicValueSaveController;->setEqualizer(I)V

    .line 314
    invoke-static {p0}, Lcom/android/music/common/util/MusicValueSaveController;->saveSettingValue(Landroid/content/Context;)V

    .line 315
    return-void
.end method


# virtual methods
.method protected createDialog(I)Landroid/app/AlertDialog;
    .locals 12
    .parameter "id"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x4

    .line 534
    packed-switch p1, :pswitch_data_0

    .line 694
    const/4 v4, 0x0

    :goto_0
    return-object v4

    .line 536
    :pswitch_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 537
    .local v2, popup:Landroid/app/AlertDialog$Builder;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030027

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 540
    .local v3, popupBody:Landroid/view/View;
    const/16 v4, 0x8

    new-array v0, v4, [Lcom/sec/android/touchwiz/widget/TwSeekBar;

    .line 542
    .local v0, customSeekBar:[Lcom/sec/android/touchwiz/widget/TwSeekBar;
    const v4, 0x7f0c00e1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwSeekBar;

    aput-object v4, v0, v8

    .line 543
    const v4, 0x7f0c00e3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwSeekBar;

    aput-object v4, v0, v9

    .line 544
    const v4, 0x7f0c00e5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwSeekBar;

    aput-object v4, v0, v10

    .line 545
    const v4, 0x7f0c00e7

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwSeekBar;

    aput-object v4, v0, v11

    .line 546
    const v4, 0x7f0c00e9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwSeekBar;

    aput-object v4, v0, v7

    .line 547
    const/4 v5, 0x5

    const v4, 0x7f0c00eb

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwSeekBar;

    aput-object v4, v0, v5

    .line 548
    const/4 v5, 0x6

    const v4, 0x7f0c00ed

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwSeekBar;

    aput-object v4, v0, v5

    .line 549
    const/4 v5, 0x7

    const v4, 0x7f0c00ef

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwSeekBar;

    aput-object v4, v0, v5

    .line 551
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    const/16 v4, 0x8

    if-ge v1, v4, :cond_0

    .line 552
    aget-object v4, v0, v1

    iget-object v5, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer;->customEqArray:[I

    aget v5, v5, v1

    add-int/lit8 v5, v5, 0x6

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgress(I)V

    .line 551
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 555
    :cond_0
    aget-object v4, v0, v8

    new-instance v5, Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;

    invoke-direct {v5, p0, v8}, Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;-><init>(Lcom/android/music/common/settings/MusicSettingsEqualizer;I)V

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setOnTwSeekBarChangeListener(Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;)V

    .line 558
    aget-object v4, v0, v9

    new-instance v5, Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;

    invoke-direct {v5, p0, v9}, Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;-><init>(Lcom/android/music/common/settings/MusicSettingsEqualizer;I)V

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setOnTwSeekBarChangeListener(Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;)V

    .line 561
    aget-object v4, v0, v10

    new-instance v5, Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;

    invoke-direct {v5, p0, v10}, Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;-><init>(Lcom/android/music/common/settings/MusicSettingsEqualizer;I)V

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setOnTwSeekBarChangeListener(Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;)V

    .line 564
    aget-object v4, v0, v11

    new-instance v5, Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;

    invoke-direct {v5, p0, v11}, Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;-><init>(Lcom/android/music/common/settings/MusicSettingsEqualizer;I)V

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setOnTwSeekBarChangeListener(Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;)V

    .line 567
    aget-object v4, v0, v7

    new-instance v5, Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;

    invoke-direct {v5, p0, v7}, Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;-><init>(Lcom/android/music/common/settings/MusicSettingsEqualizer;I)V

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setOnTwSeekBarChangeListener(Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;)V

    .line 570
    const/4 v4, 0x5

    aget-object v4, v0, v4

    new-instance v5, Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;

    const/4 v6, 0x5

    invoke-direct {v5, p0, v6}, Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;-><init>(Lcom/android/music/common/settings/MusicSettingsEqualizer;I)V

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setOnTwSeekBarChangeListener(Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;)V

    .line 573
    const/4 v4, 0x6

    aget-object v4, v0, v4

    new-instance v5, Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;

    const/4 v6, 0x6

    invoke-direct {v5, p0, v6}, Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;-><init>(Lcom/android/music/common/settings/MusicSettingsEqualizer;I)V

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setOnTwSeekBarChangeListener(Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;)V

    .line 576
    const/4 v4, 0x7

    aget-object v4, v0, v4

    new-instance v5, Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;

    const/4 v6, 0x7

    invoke-direct {v5, p0, v6}, Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;-><init>(Lcom/android/music/common/settings/MusicSettingsEqualizer;I)V

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setOnTwSeekBarChangeListener(Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;)V

    .line 580
    const v4, 0x7f0c00e0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    iput-object v4, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer;->mBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    .line 581
    iget-object v4, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer;->mBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    const v5, 0x7f0200e8

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setBubbleBackgroundDrawable(I)V

    .line 583
    iget-object v4, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer;->mBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {p0}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0200e8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setBubbleFontSize(F)V

    .line 591
    iget-object v4, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer;->mBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v4, v7}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setBubbleAlign(I)V

    .line 593
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 595
    const v4, 0x7f0a00a8

    new-instance v5, Lcom/android/music/common/settings/MusicSettingsEqualizer$4;

    invoke-direct {v5, p0}, Lcom/android/music/common/settings/MusicSettingsEqualizer$4;-><init>(Lcom/android/music/common/settings/MusicSettingsEqualizer;)V

    invoke-virtual {v2, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 616
    const v4, 0x7f0a00a9

    new-instance v5, Lcom/android/music/common/settings/MusicSettingsEqualizer$5;

    invoke-direct {v5, p0}, Lcom/android/music/common/settings/MusicSettingsEqualizer$5;-><init>(Lcom/android/music/common/settings/MusicSettingsEqualizer;)V

    invoke-virtual {v2, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 651
    new-instance v4, Lcom/android/music/common/settings/MusicSettingsEqualizer$6;

    invoke-direct {v4, p0}, Lcom/android/music/common/settings/MusicSettingsEqualizer$6;-><init>(Lcom/android/music/common/settings/MusicSettingsEqualizer;)V

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 692
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    goto/16 :goto_0

    .line 534
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 287
    sget-object v0, Lcom/android/music/common/settings/MusicSettingsEqualizer;->TAG:Ljava/lang/String;

    const-string v1, "onConfigurationChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer;->customDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer;->customDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer;->customDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 291
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer;->customDialog:Landroid/app/AlertDialog;

    .line 292
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->createDialog(I)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer;->customDialog:Landroid/app/AlertDialog;

    .line 294
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer;->customDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 296
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 297
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 172
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 175
    iput-object p0, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer;->mContext:Landroid/content/Context;

    .line 177
    invoke-virtual {p0}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 178
    const v2, 0x7f030026

    invoke-virtual {p0, v2}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->setContentView(I)V

    .line 180
    iget-object v2, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer;->mConnection:Landroid/content/ServiceConnection;

    invoke-static {p0, v2}, Lcom/android/music/common/util/MusicPlayerUtil;->bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcom/android/music/common/util/MusicPlayerUtil$ServiceToken;

    move-result-object v2

    iput-object v2, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer;->mToken:Lcom/android/music/common/util/MusicPlayerUtil$ServiceToken;

    .line 183
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 185
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "file"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 186
    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 187
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 188
    iget-object v2, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 190
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.android.music.kill.garbageActivity"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 191
    .local v1, killIntentFilter:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer;->mKillReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 193
    sget-object v2, Lcom/android/music/common/settings/MusicSettingsEqualizer;->mappingMenuArray:[I

    array-length v2, v2

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer;->CUSTOM_MENU_INDEX:I

    .line 195
    invoke-direct {p0}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->equalizerLayoutInit()V

    .line 196
    invoke-direct {p0}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->equalizerEventInit()V

    .line 198
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer;->mToken:Lcom/android/music/common/util/MusicPlayerUtil$ServiceToken;

    invoke-static {v0}, Lcom/android/music/common/util/MusicPlayerUtil;->unbindFromService(Lcom/android/music/common/util/MusicPlayerUtil$ServiceToken;)V

    .line 254
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 255
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer;->mKillReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 267
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 268
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    const v1, 0x7f0a00f3

    .line 202
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 203
    invoke-static {p0}, Lcom/android/music/common/util/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 204
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer;->mSettingEqToast:Landroid/widget/Toast;

    if-nez v0, :cond_1

    .line 205
    const/4 v0, 0x0

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer;->mSettingEqToast:Landroid/widget/Toast;

    .line 209
    :goto_0
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer;->mSettingEqToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 210
    invoke-virtual {p0}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->finish()V

    .line 229
    :cond_0
    :goto_1
    return-void

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer;->mSettingEqToast:Landroid/widget/Toast;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    goto :goto_0

    .line 224
    :cond_2
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer;->customDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer;->customDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    :cond_3
    invoke-direct {p0}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->getCheckedValue()V

    .line 226
    invoke-direct {p0}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->setDisplayByValue()V

    goto :goto_1
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 248
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 249
    return-void
.end method
